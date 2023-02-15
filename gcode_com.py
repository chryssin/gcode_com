import sys
import copy
import trimesh
import numpy as np


def read_gcode_file(filepath):
    try:
        with open(filepath) as file:
            lines = [line.rstrip() for line in file]
        return lines
    except FileNotFoundError:
        print(f"File not found: {filepath}")
        exit(1)


skip_commands = [
    "T0",  # tool
    "M104",  # set hotend temperature
    "M105",  # report temperatures
    "M109",  # wait for hotend temperature
    "G28",  # home
    "G92",  # set position (should handle?)
    "M107",  # fan off
    "M106",  # set fan speed
    "M140",  # set bed temperature
    "T1",  # tool
    "M84",  # disable steppers
    "M190",  # wait for bed temperature
    "G29",  # bed leveling
    "M204",  # set starting acceleration
    "M205",  # set advanced settings
    "M220",  # set feedrate percentage
    "M221",  # set flow percentage (should handle?)
    "G4",  # wait
    "M420",  # bed leveling state
]


def parse_gcode_lines(lines):
    absolute_positioning = True
    absolute_extrusion = True
    cur_region = "none"
    cur_layer = 0
    cur_mesh = ""
    cur_pos = [0, 0, 0]
    cur_e = 0

    segments_list = []
    for line in lines:

        tokens = line.split()
        if len(tokens) == 0:
            continue
        if tokens[0] == "G0" or tokens[0] == "G1":
            prev_pos = copy.copy(cur_pos)
            for t in tokens:
                if t[0] == ";":
                    break
                if t[0] == "X":
                    x = float(t[1:])
                    if absolute_positioning is True:
                        cur_pos[0] = x
                    else:
                        cur_pos[0] += x
                elif t[0] == "Y":
                    y = float(t[1:])
                    if absolute_positioning is True:
                        cur_pos[1] = y
                    else:
                        cur_pos[1] += y
                elif t[0] == "Z":
                    z = float(t[1:])
                    if absolute_positioning is True:
                        cur_pos[2] = z
                    else:
                        cur_pos[2] += z
                elif t[0] == "E":
                    e = float(t[1:])
                    if absolute_extrusion is True:
                        cur_e = e
                    else:
                        cur_e += e
            if tokens[0] == "G1":
                new_pos = copy.copy(cur_pos)
                new_segment = {
                    "start": prev_pos,
                    "end": new_pos,
                    "extrusion": 1,  # cur_e,
                    "region": cur_region,
                    # "layer": cur_layer,
                    "mesh": cur_mesh,
                }
                segments_list.append(new_segment)

        elif tokens[0] == "G90":  # Absolute positioning
            absolute_positioning = True
        elif tokens[0] == "G91":  # Relative positioning
            absolute_positioning = False
        elif tokens[0] == "M82":  # Absolute extrusion
            absolute_extrusion = True
        elif tokens[0] == "M83":  # Relative extrusion
            absolute_extrusion = False

        elif tokens[0][0] == ";":
            if tokens[0].startswith(";TYPE"):
                cur_region = tokens[0].split(":")[1]
            elif tokens[0].startswith(";LAYER"):
                cur_layer = int(tokens[0].split(":")[1])
            elif tokens[0].startswith(";MESH"):
                cur_mesh = tokens[0]
            elif tokens[0].startswith(";TIME_ELAPSED"):
                # hack, but TIME_ELAPSED denotes the layer's end, thus also the general end
                cur_mesh = ""
            else:
                # the rest of the comments
                pass
        elif tokens[0] in skip_commands:
            pass
        else:
            # Unknown command
            print(tokens)

    return segments_list


if __name__ == "__main__":

    if len(sys.argv) != 2:
        print(f"Usage: {sys.argv[0]} <GCODE_FILE>")
        exit(1)
    gcode_file = sys.argv[1]

    print(f'- Reading "{gcode_file}"')
    lines = read_gcode_file(gcode_file)

    print(f"- Processing {len(lines)} gcode lines")
    segments_list = parse_gcode_lines(lines)

    path = []
    segment_vertices = []
    com = np.array([0, 0, 0])
    accumulated_mass = 0

    print("- Calculating Center Of Mass")
    for s in segments_list:
        if s["mesh"] == "":
            continue

        # Center of mass calculation
        segment_start = np.array(s["start"])
        segment_end = np.array(s["end"])
        segment_mass = s["extrusion"]
        segment_com = (segment_start + segment_end) / 2
        com = (com * accumulated_mass + segment_com * segment_mass) / (
            accumulated_mass + segment_mass
        )
        accumulated_mass += segment_mass

        # gather vertices
        segment_vertices.append(segment_start)
        segment_vertices.append(segment_end)

        # gather segments for visualisation
        segment_vis = [segment_start, segment_end]
        path.append(segment_vis)

        path.append(segment_vis)

    # p = trimesh.load_path(path)
    print("- Finding Convex Hull")
    points = trimesh.points.PointCloud(vertices=segment_vertices)
    ch = trimesh.convex.convex_hull(segment_vertices, qhull_options="QbB Pp Qt")
    aabb_center = (points.bounds[1] + points.bounds[0]) / 2
    print("-------------------------------------")
    print("Axis Aligned Bounding Box dimensions:")
    print(f"X: {points.bounds[1][0]-points.bounds[0][0]:.2f}")
    print(f"Y: {points.bounds[1][1]-points.bounds[0][1]:.2f}")
    print(f"Z: {points.bounds[1][2]-points.bounds[0][2]:.2f}")
    print("-------------------------------------")
    print(f"CoM distances from AABB bounds:")
    print(
        f"X-: {com[0]-points.bounds[0][0]:.2f}, X+: {points.bounds[1][0] - com[0]:.2f}"
    )
    print(
        f"Y-: {com[1]-points.bounds[0][1]:.2f}, Y+: {points.bounds[1][1] - com[1]:.2f}"
    )
    print(
        f"Z-: {com[2]-points.bounds[0][2]:.2f}, Z+: {points.bounds[1][2] - com[2]:.2f}"
    )

    # Draw CoM and CH
    c = trimesh.points.PointCloud(
        vertices=[com, aabb_center], colors=[[255, 0, 0], [0, 200, 0]]
    )
    ch.visual.face_colors = [200, 200, 250, 100]

    ch = trimesh.Trimesh(
        *trimesh.remesh.subdivide_to_size(ch.vertices, ch.faces, ch.scale / 40)
    )
    distances = []
    for v in ch.vertices:
        dist = np.linalg.norm(v - com)
        distances.append(
            1 / (dist ** 2)
        )  # use square to make the coloring more intense

    ch.visual.vertex_colors = trimesh.visual.interpolate(distances, color_map="turbo")

    scene = trimesh.Scene()
    scene.add_geometry(ch)
    scene.add_geometry(c)
    scene.add_geometry(
        trimesh.creation.axis(
            origin_size=(points.bounds[1][0] - points.bounds[0][0]) / 10,
            transform=trimesh.transformations.translation_matrix(points.bounds[0]),
        )
    )
    scene.show()
