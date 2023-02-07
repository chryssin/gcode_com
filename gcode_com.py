import sys
import copy
import trimesh


def read_gcode_file(filepath):
    try:
        with open(filepath) as file:
            lines = [line.rstrip() for line in file]
        return lines
    except FileNotFoundError:
        print(f"File not found: {filepath}")
        exit(1)


skip_commands = [
    "M82",  # absolute extrusion mode
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
                    "extrusion": cur_e,
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

    lines = read_gcode_file(sys.argv[1])
    segments_list = parse_gcode_lines(lines)

    path = []
    for s in segments_list:
        # print(s)
        segment_vis = [s["start"], s["end"]]
        path.append(segment_vis)

    p = trimesh.load_path(path)
    p.show()