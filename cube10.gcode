;FLAVOR:Marlin
;TIME:203
;Filament used: 0.386172m
;Layer height: 0.5
;MINX:100
;MINY:100
;MINZ:0.32
;MAXX:135
;MAXY:135
;MAXZ:9.82
;Generated with Cura_SteamEngine 4.7.1
M140 S50
M105
M190 S50
M104 S200
M105
M109 S200
M82 ;absolute extrusion mode
; Ender 3 Custom Start G-code
G92 E0 ; Reset Extruder
G28 ; Home all axes
G29 ;
G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed
G1 X0.1 Y20 Z0.3 F5000.0 ; Move to start position
G1 X0.1 Y200.0 Z0.3 F1500.0 E15 ; Draw the first line
G1 X0.4 Y200.0 Z0.3 F5000.0 ; Move to side a little
G1 X0.4 Y20 Z0.3 F1500.0 E30 ; Draw the second line
G92 E0 ; Reset Extruder
G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed
G1 X5 Y20 Z0.3 F5000.0 ; Move over to prevent blob squish
G92 E0
G92 E0
G1 F2700 E-5
;LAYER_COUNT:20
;LAYER:0
M107
G0 F6000 X103.923 Y103.425 Z0.32
;TYPE:SKIRT
G1 F2700 E0
G1 F1200 X104.676 Y102.767 E0.13304
G1 X105.48 Y102.173 E0.26603
G1 X106.328 Y101.644 E0.399
G1 X107.217 Y101.185 E0.53211
G1 X108.139 Y100.798 E0.66514
G1 X109.088 Y100.486 E0.79804
G1 X110.06 Y100.251 E0.93108
G1 X111.048 Y100.095 E1.06416
G1 X112.159 Y100.014 E1.21236
G1 X112.48 Y100.005 E1.25508
G1 X112.83 Y100 E1.30165
G1 X121.972 Y100.001 E2.5179
G1 X122.67 Y100.011 E2.61078
G1 X123.668 Y100.066 E2.74375
G1 X124.659 Y100.199 E2.87678
G1 X125.636 Y100.412 E3.00981
G1 X126.593 Y100.702 E3.14285
G1 X127.523 Y101.068 E3.27581
G1 X128.422 Y101.507 E3.40891
G1 X129.282 Y102.016 E3.54187
G1 X130.099 Y102.592 E3.67486
G1 X130.868 Y103.232 E3.80796
G1 X131.582 Y103.931 E3.9409
G1 X132.239 Y104.685 E4.07395
G1 X132.833 Y105.489 E4.20694
G1 X133.361 Y106.338 E4.33995
G1 X133.82 Y107.227 E4.47306
G1 X134.206 Y108.149 E4.60604
G1 X134.517 Y109.099 E4.73903
G1 X134.751 Y110.071 E4.87204
G1 X134.906 Y111.059 E5.00509
G1 X134.986 Y112.159 E5.15182
G1 X134.995 Y112.479 E5.19441
G1 X135 Y112.83 E5.24111
G1 X134.999 Y121.919 E6.45032
G1 X134.99 Y122.646 E6.54705
G1 X134.938 Y123.644 E6.68
G1 X134.806 Y124.635 E6.81301
G1 X134.595 Y125.613 E6.94611
G1 X134.307 Y126.57 E7.07907
G1 X133.943 Y127.501 E7.21207
G1 X133.506 Y128.4 E7.34505
G1 X132.998 Y129.262 E7.47817
G1 X132.424 Y130.08 E7.61111
G1 X131.785 Y130.849 E7.74413
G1 X131.088 Y131.566 E7.87717
G1 X130.335 Y132.224 E8.0102
G1 X129.532 Y132.819 E8.14317
G1 X128.684 Y133.349 E8.27621
G1 X127.796 Y133.809 E8.40926
G1 X126.875 Y134.197 E8.54222
G1 X125.925 Y134.51 E8.67529
G1 X124.954 Y134.746 E8.80823
G1 X123.967 Y134.904 E8.94122
G1 X122.841 Y134.986 E9.09142
G1 X122.52 Y134.995 E9.13414
G1 X122.17 Y135 E9.18071
G1 X113.046 Y134.999 E10.39457
G1 X112.348 Y134.99 E10.48744
G1 X111.349 Y134.937 E10.62053
G1 X110.358 Y134.805 E10.75354
G1 X109.381 Y134.593 E10.88655
G1 X108.424 Y134.305 E11.01951
G1 X107.493 Y133.94 E11.15255
G1 X106.594 Y133.503 E11.28553
G1 X105.733 Y132.995 E11.41853
G1 X104.915 Y132.42 E11.55156
G1 X104.146 Y131.781 E11.68458
G1 X103.43 Y131.083 E11.81761
G1 X102.772 Y130.33 E11.95065
G1 X102.177 Y129.527 E12.08361
G1 X101.648 Y128.678 E12.21669
G1 X101.188 Y127.791 E12.34962
G1 X100.801 Y126.869 E12.48265
G1 X100.488 Y125.919 E12.61573
G1 X100.253 Y124.948 E12.74864
G1 X100.096 Y123.96 E12.88173
G1 X100.014 Y122.829 E13.0326
G1 X100.005 Y122.496 E13.07691
G1 X100 Y122.158 E13.12189
G1 X100.001 Y113.005 E14.33961
G1 X100.01 Y112.34 E14.42809
G1 X100.064 Y111.341 E14.56119
G1 X100.197 Y110.351 E14.69408
G1 X100.409 Y109.373 E14.82722
G1 X100.698 Y108.416 E14.96022
G1 X101.063 Y107.486 E15.09313
G1 X101.501 Y106.587 E15.22618
G1 X102.009 Y105.726 E15.35917
G1 X102.585 Y104.909 E15.49217
G1 X103.224 Y104.14 E15.62519
G1 X103.923 Y103.425 E15.75821
G0 F6000 X104.899 Y103.887
G1 F1200 X105.644 Y103.283 E15.88581
G1 X106.436 Y102.743 E16.01334
G1 X107.271 Y102.271 E16.14095
G1 X108.142 Y101.87 E16.26852
G1 X109.044 Y101.544 E16.39612
G1 X109.969 Y101.293 E16.52363
G1 X110.913 Y101.12 E16.65131
G1 X112.187 Y101.014 E16.82139
G1 X112.508 Y101.005 E16.86412
G1 X112.83 Y101 E16.90696
G1 X121.958 Y101.001 E18.12135
G1 X122.656 Y101.011 E18.21423
G1 X123.613 Y101.065 E18.34175
G1 X124.563 Y101.198 E18.46937
G1 X125.498 Y101.41 E18.59692
G1 X126.412 Y101.699 E18.72445
G1 X127.299 Y102.064 E18.85206
G1 X128.153 Y102.5 E18.97963
G1 X128.967 Y103.007 E19.10721
G1 X129.737 Y103.58 E19.2349
G1 X130.455 Y104.214 E19.36234
G1 X131.119 Y104.907 E19.49002
G1 X131.722 Y105.652 E19.61754
G1 X132.262 Y106.445 E19.74518
G1 X132.733 Y107.28 E19.87272
G1 X133.133 Y108.152 E20.00035
G1 X133.459 Y109.053 E20.12783
G1 X133.709 Y109.979 E20.25543
G1 X133.881 Y110.923 E20.38309
G1 X133.986 Y112.187 E20.55184
G1 X133.995 Y112.507 E20.59443
G1 X134 Y112.83 E20.6374
G1 X133.999 Y121.906 E21.84488
G1 X133.99 Y122.633 E21.94161
G1 X133.938 Y123.591 E22.06925
G1 X133.807 Y124.541 E22.19683
G1 X133.597 Y125.476 E22.32432
G1 X133.309 Y126.391 E22.45194
G1 X132.947 Y127.279 E22.57952
G1 X132.512 Y128.134 E22.70715
G1 X132.007 Y128.949 E22.8347
G1 X131.435 Y129.719 E22.96232
G1 X130.802 Y130.439 E23.08986
G1 X130.111 Y131.104 E23.21745
G1 X129.367 Y131.709 E23.34503
G1 X128.575 Y132.25 E23.47263
G1 X127.741 Y132.723 E23.60019
G1 X126.87 Y133.125 E23.72781
G1 X125.969 Y133.452 E23.85533
G1 X125.044 Y133.704 E23.98288
G1 X124.1 Y133.878 E24.11059
G1 X122.813 Y133.986 E24.28241
G1 X122.492 Y133.995 E24.32514
G1 X122.17 Y134 E24.36798
G1 X113.059 Y133.999 E25.58011
G1 X112.361 Y133.99 E25.67298
G1 X111.403 Y133.938 E25.80062
G1 X110.453 Y133.806 E25.92823
G1 X109.518 Y133.595 E26.05575
G1 X108.603 Y133.307 E26.18337
G1 X107.715 Y132.944 E26.311
G1 X106.861 Y132.509 E26.4385
G1 X106.046 Y132.003 E26.56613
G1 X105.276 Y131.432 E26.69366
G1 X104.556 Y130.798 E26.8213
G1 X103.892 Y130.107 E26.94879
G1 X103.287 Y129.362 E27.07647
G1 X102.747 Y128.57 E27.204
G1 X102.275 Y127.736 E27.33149
G1 X101.873 Y126.865 E27.45912
G1 X101.546 Y125.963 E27.58676
G1 X101.295 Y125.038 E27.71428
G1 X101.121 Y124.095 E27.84185
G1 X101.013 Y122.802 E28.01447
G1 X101.004 Y122.469 E28.05879
G1 X101 Y122.158 E28.10017
G1 X101.001 Y113.018 E29.31616
G1 X101.01 Y112.353 E29.40464
G1 X101.063 Y111.396 E29.53216
G1 X101.196 Y110.446 E29.65978
G1 X101.407 Y109.511 E29.7873
G1 X101.695 Y108.596 E29.91492
G1 X102.059 Y107.709 E30.04247
G1 X102.495 Y106.855 E30.17004
G1 X103.001 Y106.04 E30.29767
G1 X103.573 Y105.27 E30.42528
G1 X104.207 Y104.551 E30.55281
G1 X104.899 Y103.887 E30.68041
G0 F6000 X105.187 Y104.983
G1 F1200 X105.871 Y104.373 E30.80234
G1 X106.606 Y103.825 E30.92431
G1 X107.386 Y103.344 E31.04622
G1 X108.204 Y102.932 E31.16808
G1 X109.055 Y102.593 E31.28995
G1 X109.933 Y102.33 E31.41188
G1 X110.83 Y102.144 E31.53376
G1 X111.74 Y102.037 E31.65566
G1 X112.215 Y102.013 E31.71894
G1 X112.536 Y102.004 E31.76166
G1 X112.83 Y102 E31.80078
G1 X121.793 Y102 E32.99322
G1 X122.641 Y102.011 E33.10605
G1 X123.556 Y102.064 E33.22798
G1 X124.463 Y102.197 E33.34994
G1 X125.354 Y102.408 E33.47176
G1 X126.224 Y102.696 E33.59368
G1 X127.066 Y103.059 E33.71567
G1 X127.872 Y103.494 E33.83752
G1 X128.638 Y103.997 E33.95943
G1 X129.357 Y104.566 E34.08142
G1 X130.023 Y105.194 E34.20321
G1 X130.632 Y105.879 E34.32515
G1 X131.179 Y106.614 E34.44704
G1 X131.66 Y107.394 E34.56896
G1 X132.071 Y108.213 E34.69087
G1 X132.41 Y109.064 E34.81274
G1 X132.672 Y109.942 E34.93464
G1 X132.857 Y110.84 E35.05661
G1 X132.963 Y111.75 E35.1785
G1 X132.987 Y112.215 E35.24045
G1 X132.996 Y112.535 E35.28304
G1 X133 Y112.83 E35.32229
G1 X132.999 Y121.894 E36.52817
G1 X132.99 Y122.621 E36.62489
G1 X132.939 Y123.536 E36.74681
G1 X132.808 Y124.443 E36.86873
G1 X132.599 Y125.335 E36.99062
G1 X132.312 Y126.205 E37.1125
G1 X131.951 Y127.047 E37.23438
G1 X131.518 Y127.855 E37.35634
G1 X131.016 Y128.621 E37.47819
G1 X130.449 Y129.341 E37.60011
G1 X129.821 Y130.009 E37.72209
G1 X129.138 Y130.619 E37.84392
G1 X128.404 Y131.168 E37.96587
G1 X127.625 Y131.65 E38.08774
G1 X126.807 Y132.063 E38.20965
G1 X125.956 Y132.403 E38.33157
G1 X125.079 Y132.667 E38.45342
G1 X124.182 Y132.854 E38.57532
G1 X123.272 Y132.962 E38.69724
G1 X122.785 Y132.987 E38.76211
G1 X122.464 Y132.996 E38.80484
G1 X122.17 Y133 E38.84395
G1 X113.072 Y132.999 E40.05436
G1 X112.374 Y132.99 E40.14723
G1 X111.459 Y132.938 E40.26916
G1 X110.552 Y132.807 E40.39108
G1 X109.66 Y132.597 E40.51299
G1 X108.79 Y132.31 E40.63487
G1 X107.948 Y131.949 E40.75675
G1 X107.141 Y131.515 E40.87866
G1 X106.374 Y131.013 E41.00061
G1 X105.655 Y130.445 E41.12252
G1 X104.987 Y129.817 E41.2445
G1 X104.377 Y129.134 E41.36633
G1 X103.829 Y128.4 E41.48819
G1 X103.347 Y127.62 E41.61018
G1 X102.935 Y126.802 E41.73203
G1 X102.595 Y125.951 E41.85395
G1 X102.332 Y125.073 E41.97589
G1 X102.145 Y124.176 E42.09779
G1 X102.038 Y123.266 E42.21969
G1 X102.013 Y122.775 E42.2851
G1 X102.004 Y122.442 E42.32942
G1 X102 Y122.158 E42.3672
G1 X102.001 Y113.032 E43.58133
G1 X102.01 Y112.367 E43.66981
G1 X102.062 Y111.452 E43.79174
G1 X102.194 Y110.545 E43.91368
G1 X102.405 Y109.654 E44.0355
G1 X102.692 Y108.784 E44.15738
G1 X103.054 Y107.942 E44.27931
G1 X103.489 Y107.135 E44.40128
G1 X103.991 Y106.369 E44.52312
G1 X104.559 Y105.65 E44.64503
G1 X105.187 Y104.983 E44.76691
G1 F2700 E39.76691
;MESH:cube10.stl
G0 F6000 X113.514 Y111.835
G0 X113.514 Y113.514
G0 X120.518 Y114.482
G0 X121 Y121
;TYPE:WALL-INNER
G1 F2700 E44.76691
G1 F1200 X114 Y121 E45.69819
G1 X114 Y114 E46.62948
G1 X121 Y114 E47.56076
G1 X121 Y121 E48.49204
G0 F6000 X121.43 Y121.43
G0 X122 Y122
;TYPE:WALL-OUTER
G1 F1200 X113 Y122 E49.68941
G1 X113 Y113 E50.88677
G1 X122 Y113 E52.08414
G1 X122 Y122 E53.2815
G0 F6000 X121.43 Y121.43
G0 X120.59 Y120.01
G0 X120.01 Y120.01
;TYPE:SKIN
G1 F1200 X114.99 Y120.01 E53.94937
G1 X114.99 Y114.99 E54.61723
G1 X120.01 Y114.99 E55.28509
G1 X120.01 Y120.01 E55.95296
G0 F6000 X120.59 Y120.01
G0 X120.59 Y116.781
G0 X119.609 Y116.781
G1 F1200 X118.219 Y115.39 E56.21458
G0 F6000 X118.219 Y114.41
G0 X116.804 Y114.41
G0 X116.804 Y115.39
G1 F1200 X119.609 Y118.195 E56.74233
G0 F6000 X120.59 Y118.195
G0 X120.59 Y119.609
G0 X119.609 Y119.609
G1 F1200 X115.389 Y115.389 E57.53631
G0 F6000 X115.389 Y114.41
G0 X114.482 Y114.482
G0 X114.41 Y116.804
G0 X115.389 Y116.804
G1 F1200 X118.195 Y119.609 E58.06416
G0 F6000 X118.195 Y120.59
G0 X116.78 Y120.59
G0 X116.78 Y119.609
G1 F1200 X115.389 Y118.218 E58.32588
G0 F6000 X114.5 Y118.218
;MESH:NONMESH
G0 F300 X114.5 Y118.218 Z0.82
G0 F6000 X114.41 Y118.218
G0 X114.482 Y120.518
G0 X121 Y121
;TIME_ELAPSED:29.910665
;LAYER:1
M106 S85
;TYPE:WALL-INNER
;MESH:cube10.stl
G1 F627.3 X114 Y121 E59.78101
G1 X114 Y114 E61.23614
G1 X121 Y114 E62.69127
G1 X121 Y121 E64.1464
G0 F7500 X121.43 Y121.43
G0 X122 Y122
;TYPE:WALL-OUTER
G1 F627.3 X113 Y122 E66.01728
G1 X113 Y113 E67.88816
G1 X122 Y113 E69.75905
G1 X122 Y122 E71.62993
G0 F7500 X121.43 Y121.43
G0 X120.59 Y120.01
G0 X120.01 Y120.01
;TYPE:SKIN
G1 F627.3 X114.99 Y120.01 E72.67347
G1 X114.99 Y114.99 E73.717
G1 X120.01 Y114.99 E74.76054
G1 X120.01 Y120.01 E75.80408
G0 F7500 X119.392 Y119.609
G1 F627.3 X119.609 Y119.392 E75.86787
G0 F7500 X120.59 Y119.392
G0 X120.59 Y117.978
G0 X119.609 Y117.978
G1 F627.3 X117.977 Y119.609 E76.3475
G0 F7500 X117.977 Y120.59
G0 X116.563 Y120.59
G0 X116.563 Y119.609
G1 F627.3 X119.609 Y116.564 E77.24282
G0 F7500 X120.59 Y116.564
G0 X120.518 Y114.482
G0 X119.369 Y114.41
G0 X119.369 Y115.389
G1 F627.3 X115.39 Y119.368 E78.41257
G0 F7500 X114.41 Y119.368
G0 X114.41 Y117.954
G0 X115.39 Y117.954
G1 F627.3 X117.955 Y115.389 E79.16663
G0 F7500 X117.955 Y114.41
G0 X116.541 Y114.41
G0 X116.541 Y115.389
G1 F627.3 X115.39 Y116.54 E79.505
G0 F7500 X114.5 Y116.54
;MESH:NONMESH
G0 F300 X114.5 Y116.54 Z1.32
G0 F7500 X114.41 Y116.54
G0 X114.482 Y120.518
G0 X121 Y121
;TIME_ELAPSED:41.802825
;LAYER:2
M106 S170
;TYPE:WALL-INNER
;MESH:cube10.stl
G1 F625.4 X114 Y121 E80.96013
G1 X114 Y114 E82.41526
G1 X121 Y114 E83.87039
G1 X121 Y121 E85.32553
G0 F9000 X121.43 Y121.43
G0 X122 Y122
;TYPE:WALL-OUTER
G1 F625.4 X113 Y122 E87.19641
G1 X113 Y113 E89.06729
G1 X122 Y113 E90.93817
G1 X122 Y122 E92.80906
G0 F9000 X121.43 Y121.43
G0 X120.59 Y120.01
G0 X120.01 Y120.01
;TYPE:SKIN
G1 F625.4 X114.99 Y120.01 E93.85259
G1 X114.99 Y114.99 E94.89613
G1 X120.01 Y114.99 E95.93967
G1 X120.01 Y120.01 E96.9832
G0 F9000 X120.59 Y120.01
G0 X120.59 Y116.781
G0 X119.609 Y116.781
G1 F625.4 X118.219 Y115.39 E97.39198
G0 F9000 X118.219 Y114.41
G0 X116.804 Y114.41
G0 X116.804 Y115.39
G1 F625.4 X119.609 Y118.195 E98.2166
G0 F9000 X120.59 Y118.195
G0 X120.59 Y119.609
G0 X119.609 Y119.609
G1 F625.4 X115.389 Y115.389 E99.4572
G0 F9000 X115.389 Y114.41
G0 X114.482 Y114.482
G0 X114.41 Y116.804
G0 X115.389 Y116.804
G1 F625.4 X118.195 Y119.609 E100.28196
G0 F9000 X118.195 Y120.59
G0 X116.78 Y120.59
G0 X116.78 Y119.609
G1 F625.4 X115.389 Y118.218 E100.69089
G0 F9000 X114.5 Y118.218
;MESH:NONMESH
G0 F300 X114.5 Y118.218 Z1.82
G0 F9000 X114.41 Y118.218
G0 X114.482 Y120.518
G0 X121 Y121
;TIME_ELAPSED:53.652060
;LAYER:3
M106 S255
;TYPE:WALL-INNER
;MESH:cube10.stl
G1 F624.6 X114 Y121 E102.14602
G1 X114 Y114 E103.60115
G1 X121 Y114 E105.05628
G1 X121 Y121 E106.51141
G0 F9000 X121.43 Y121.43
G0 X122 Y122
;TYPE:WALL-OUTER
G1 F624.6 X113 Y122 E108.3823
G1 X113 Y113 E110.25318
G1 X122 Y113 E112.12406
G1 X122 Y122 E113.99494
G0 F9000 X121.43 Y121.43
G0 X120.59 Y120.01
G0 X120.01 Y120.01
;TYPE:SKIN
G1 F624.6 X114.99 Y120.01 E115.03848
G1 X114.99 Y114.99 E116.08202
G1 X120.01 Y114.99 E117.12555
G1 X120.01 Y120.01 E118.16909
G0 F9000 X119.392 Y119.609
G1 F624.6 X119.609 Y119.392 E118.23288
G0 F9000 X120.59 Y119.392
G0 X120.59 Y117.978
G0 X119.609 Y117.978
G1 F624.6 X117.977 Y119.609 E118.71251
G0 F9000 X117.977 Y120.59
G0 X116.563 Y120.59
G0 X116.563 Y119.609
G1 F624.6 X119.609 Y116.564 E119.60783
G0 F9000 X120.59 Y116.564
G0 X120.518 Y114.482
G0 X119.369 Y114.41
G0 X119.369 Y115.389
G1 F624.6 X115.39 Y119.368 E120.77758
G0 F9000 X114.41 Y119.368
G0 X114.41 Y117.954
G0 X115.39 Y117.954
G1 F624.6 X117.955 Y115.389 E121.53164
G0 F9000 X117.955 Y114.41
G0 X116.541 Y114.41
G0 X116.541 Y115.389
G1 F624.6 X115.39 Y116.54 E121.87001
G0 F9000 X114.5 Y116.54
;MESH:NONMESH
G0 F300 X114.5 Y116.54 Z2.32
G0 F9000 X114.41 Y116.54
G0 X114.482 Y120.518
G0 X121 Y121
;TIME_ELAPSED:65.591297
;LAYER:4
;TYPE:WALL-INNER
;MESH:cube10.stl
G1 F600 X114 Y121 E123.32515
G1 X114 Y114 E124.78028
G1 X121 Y114 E126.23541
G1 X121 Y121 E127.69054
G0 F9000 X121.43 Y121.43
G0 X122 Y122
;TYPE:WALL-OUTER
G1 F600 X113 Y122 E129.56142
G1 X113 Y113 E131.4323
G1 X122 Y113 E133.30319
G1 X122 Y122 E135.17407
G0 F9000 X121.43 Y121.43
G0 X120.799 Y118.479
;TYPE:FILL
G1 F1200 X116.519 Y114.2 E136.43216
G0 F9000 X116.686 Y114.198
G1 F1200 X114.917 Y120.799 E137.85277
G0 F9000 X114.199 Y120.081
G1 F1200 X120.798 Y118.313 E139.27292
G0 F9000 X120.5 Y118.313
;MESH:NONMESH
G0 F300 X120.5 Y118.313 Z2.82
G0 F9000 X121 Y121
;TIME_ELAPSED:73.720244
;LAYER:5
;TYPE:WALL-INNER
;MESH:cube10.stl
G1 F600 X114 Y121 E140.72805
G1 X114 Y114 E142.18318
G1 X121 Y114 E143.63831
G1 X121 Y121 E145.09344
G0 F9000 X121.43 Y121.43
G0 X122 Y122
;TYPE:WALL-OUTER
G1 F600 X113 Y122 E146.96433
G1 X113 Y113 E148.83521
G1 X122 Y113 E150.70609
G1 X122 Y122 E152.57698
G0 F9000 X121.43 Y121.43
G0 X120.798 Y118.679
;TYPE:FILL
G1 F1200 X114.199 Y120.448 E153.99718
G0 F9000 X114.55 Y120.8
G1 F1200 X116.319 Y114.198 E155.41799
G0 F9000 X117.02 Y114.2
G1 F1200 X120.799 Y117.979 E156.52894
G0 F9000 X120.5 Y117.979
;MESH:NONMESH
G0 F300 X120.5 Y117.979 Z3.32
G0 F9000 X121 Y121
;TIME_ELAPSED:81.822971
;LAYER:6
;TYPE:WALL-INNER
;MESH:cube10.stl
G1 F600 X114 Y121 E157.98408
G1 X114 Y114 E159.43921
G1 X121 Y114 E160.89434
G1 X121 Y121 E162.34947
G0 F9000 X121.43 Y121.43
G0 X122 Y122
;TYPE:WALL-OUTER
G1 F600 X113 Y122 E164.22035
G1 X113 Y113 E166.09123
G1 X122 Y113 E167.96212
G1 X122 Y122 E169.833
G0 F9000 X121.43 Y121.43
G0 X120.799 Y119.045
;TYPE:FILL
G1 F1200 X114.253 Y120.799 E171.24176
G0 F9000 X114.2 Y120.744
G1 F1200 X115.954 Y114.198 E172.65051
G0 F9000 X117.519 Y114.2
G1 F1200 X120.799 Y117.48 E173.61477
G0 F9000 X120.5 Y117.48
;MESH:NONMESH
G0 F300 X120.5 Y117.48 Z3.82
G0 F9000 X121 Y121
;TIME_ELAPSED:89.888918
;LAYER:7
;TYPE:WALL-INNER
;MESH:cube10.stl
G1 F600 X114 Y121 E175.0699
G1 X114 Y114 E176.52503
G1 X121 Y114 E177.98016
G1 X121 Y121 E179.4353
G0 F9000 X121.43 Y121.43
G0 X122 Y122
;TYPE:WALL-OUTER
G1 F600 X113 Y122 E181.30618
G1 X113 Y113 E183.17706
G1 X122 Y113 E185.04794
G1 X122 Y122 E186.91883
G0 F9000 X121.43 Y121.43
G0 X120.799 Y119.411
;TYPE:FILL
G1 F1200 X115.619 Y120.799 E188.03361
G0 F9000 X114.2 Y119.377
G1 F1200 X115.587 Y114.198 E189.14814
G0 F9000 X118.02 Y114.2
G1 F1200 X120.799 Y116.979 E189.96511
G0 F9000 X120.5 Y116.979
;MESH:NONMESH
G0 F300 X120.5 Y116.979 Z4.32
G0 F9000 X121 Y121
;TIME_ELAPSED:97.893864
;LAYER:8
;TYPE:WALL-INNER
;MESH:cube10.stl
G1 F600 X114 Y121 E191.42024
G1 X114 Y114 E192.87537
G1 X121 Y114 E194.3305
G1 X121 Y121 E195.78563
G0 F9000 X121.43 Y121.43
G0 X122 Y122
;TYPE:WALL-OUTER
G1 F600 X113 Y122 E197.65652
G1 X113 Y113 E199.5274
G1 X122 Y113 E201.39828
G1 X122 Y122 E203.26916
G0 F9000 X121.43 Y121.43
G0 X120.798 Y119.777
;TYPE:FILL
G1 F1200 X116.983 Y120.799 E204.09017
G0 F9000 X114.199 Y118.014
G1 F1200 X115.222 Y114.198 E204.91144
G0 F9000 X118.519 Y114.2
G1 F1200 X120.799 Y116.48 E205.58172
G0 F9000 X120.5 Y116.48
;MESH:NONMESH
G0 F300 X120.5 Y116.48 Z4.82
G0 F9000 X121 Y121
;TIME_ELAPSED:105.792142
;LAYER:9
;TYPE:WALL-INNER
;MESH:cube10.stl
G1 F600 X114 Y121 E207.03685
G1 X114 Y114 E208.49198
G1 X121 Y114 E209.94711
G1 X121 Y121 E211.40224
G0 F9000 X121.43 Y121.43
G0 X122 Y122
;TYPE:WALL-OUTER
G1 F600 X113 Y122 E213.27312
G1 X113 Y113 E215.144
G1 X122 Y113 E217.01489
G1 X122 Y122 E218.88577
G0 F9000 X121.43 Y121.43
G0 X120.798 Y120.143
;TYPE:FILL
G1 F1200 X118.35 Y120.799 E219.4126
G0 F9000 X120.799 Y115.979
G1 F1200 X119.02 Y114.2 E219.9356
G0 F9000 X114.855 Y114.199
G1 F1200 X114.199 Y116.646 E220.46223
G0 F9000 X114.5 Y116.646
;MESH:NONMESH
G0 F300 X114.5 Y116.646 Z5.32
G0 F9000 X121 Y121
;TIME_ELAPSED:113.611524
;LAYER:10
;TYPE:WALL-INNER
;MESH:cube10.stl
G1 F600 X114 Y121 E221.91736
G1 X114 Y114 E223.37249
G1 X121 Y114 E224.82762
G1 X121 Y121 E226.28275
G0 F9000 X121.43 Y121.43
G0 X122 Y122
;TYPE:WALL-OUTER
G1 F600 X113 Y122 E228.15364
G1 X113 Y113 E230.02452
G1 X122 Y113 E231.8954
G1 X122 Y122 E233.76628
G0 F9000 X121.43 Y121.43
G0 X120.799 Y120.509
;TYPE:FILL
G1 F1200 X119.713 Y120.8 E234
G0 F9000 X120.799 Y115.48
G1 F1200 X119.519 Y114.2 E234.3763
G0 F9000 X114.49 Y114.198
G1 F1200 X114.199 Y115.284 E234.61001
G0 F9000 X114.5 Y115.284
;MESH:NONMESH
G0 F300 X114.5 Y115.284 Z5.82
G0 F9000 X121 Y121
;TIME_ELAPSED:121.275299
;LAYER:11
;TYPE:WALL-INNER
;MESH:cube10.stl
G1 F600 X114 Y121 E236.06514
G1 X114 Y114 E237.52028
G1 X121 Y114 E238.97541
G1 X121 Y121 E240.43054
G0 F9000 X121.43 Y121.43
G0 X122 Y122
;TYPE:WALL-OUTER
G1 F600 X113 Y122 E242.30142
G1 X113 Y113 E244.1723
G1 X122 Y113 E246.04318
G1 X122 Y122 E247.91407
G0 F9000 X121.43 Y121.43
G0 X120.799 Y114.979
;TYPE:FILL
G1 F1200 X120.02 Y114.2 E248.14308
G0 F9000 X120.02 Y114.5
;MESH:NONMESH
G0 F300 X120.02 Y114.5 Z6.32
G0 F9000 X121 Y121
;TIME_ELAPSED:128.486530
;LAYER:12
;TYPE:WALL-INNER
;MESH:cube10.stl
G1 F600 X114 Y121 E249.59821
G1 X114 Y114 E251.05334
G1 X121 Y114 E252.50847
G1 X121 Y121 E253.9636
G0 F9000 X121.43 Y121.43
G0 X122 Y122
;TYPE:WALL-OUTER
G1 F600 X113 Y122 E255.83448
G1 X113 Y113 E257.70537
G1 X122 Y113 E259.57625
G1 X122 Y122 E261.44713
G0 F9000 X121.43 Y121.43
G0 X120.799 Y114.48
;TYPE:FILL
G1 F1200 X120.519 Y114.2 E261.52945
G0 F9000 X120.5 Y114.5
;MESH:NONMESH
G0 F300 X120.5 Y114.5 Z6.82
G0 F9000 X121 Y121
;TIME_ELAPSED:135.668239
;LAYER:13
;TYPE:WALL-INNER
;MESH:cube10.stl
G1 F600 X114 Y121 E262.98458
G1 X114 Y114 E264.43971
G1 X121 Y114 E265.89484
G1 X121 Y121 E267.34997
G0 F9000 X121.43 Y121.43
G0 X122 Y122
;TYPE:WALL-OUTER
G1 F600 X113 Y122 E269.22085
G1 X113 Y113 E271.09174
G1 X122 Y113 E272.96262
G1 X122 Y122 E274.8335
G0 F9000 X120.5 Y120.793
;MESH:NONMESH
G0 F300 X120.5 Y120.793 Z7.32
G0 F9000 X121 Y121
;TIME_ELAPSED:142.464799
;LAYER:14
;TYPE:WALL-INNER
;MESH:cube10.stl
G1 F600 X114 Y121 E276.28863
G1 X114 Y114 E277.74376
G1 X121 Y114 E279.19889
G1 X121 Y121 E280.65402
G0 F9000 X121.43 Y121.43
G0 X122 Y122
;TYPE:WALL-OUTER
G1 F600 X113 Y122 E282.52491
G1 X113 Y113 E284.39579
G1 X122 Y113 E286.26667
G1 X122 Y122 E288.13756
G0 F9000 X120.5 Y120.793
;MESH:NONMESH
G0 F300 X120.5 Y120.793 Z7.82
G0 F9000 X121 Y121
;TIME_ELAPSED:149.261359
;LAYER:15
;TYPE:WALL-INNER
;MESH:cube10.stl
G1 F600 X114 Y121 E289.59269
G1 X114 Y114 E291.04782
G1 X121 Y114 E292.50295
G1 X121 Y121 E293.95808
G0 F9000 X121.43 Y121.43
G0 X122 Y122
;TYPE:WALL-OUTER
G1 F600 X113 Y122 E295.82896
G1 X113 Y113 E297.69984
G1 X122 Y113 E299.57073
G1 X122 Y122 E301.44161
G0 F9000 X120.5 Y120.793
;MESH:NONMESH
G0 F300 X120.5 Y120.793 Z8.32
G0 F9000 X121 Y121
;TIME_ELAPSED:156.057919
;LAYER:16
;TYPE:WALL-INNER
;MESH:cube10.stl
G1 F622.3 X114 Y121 E302.89674
G1 X114 Y114 E304.35187
G1 X121 Y114 E305.807
G1 X121 Y121 E307.26213
G0 F9000 X121.43 Y121.43
G0 X122 Y122
;TYPE:WALL-OUTER
G1 F622.3 X113 Y122 E309.13302
G1 X113 Y113 E311.0039
G1 X122 Y113 E312.87478
G1 X122 Y122 E314.74566
G0 F9000 X121.43 Y121.43
G0 X120.59 Y120.01
G0 X120.01 Y120.01
;TYPE:SKIN
G1 F622.3 X114.99 Y120.01 E315.7892
G1 X114.99 Y114.99 E316.83274
G1 X120.01 Y114.99 E317.87627
G1 X120.01 Y120.01 E318.91981
G0 F9000 X120.59 Y120.01
G0 X120.59 Y116.781
G0 X119.609 Y116.781
G1 F622.3 X118.219 Y115.39 E319.32859
G0 F9000 X118.219 Y114.41
G0 X116.804 Y114.41
G0 X116.804 Y115.39
G1 F622.3 X119.609 Y118.195 E320.15321
G0 F9000 X120.59 Y118.195
G0 X120.59 Y119.609
G0 X119.609 Y119.609
G1 F622.3 X115.389 Y115.389 E321.39381
G0 F9000 X115.389 Y114.41
G0 X114.482 Y114.482
G0 X114.41 Y116.804
G0 X115.389 Y116.804
G1 F622.3 X118.195 Y119.609 E322.21857
G0 F9000 X118.195 Y120.59
G0 X116.78 Y120.59
G0 X116.78 Y119.609
G1 F622.3 X115.389 Y118.218 E322.6275
G0 F9000 X114.5 Y118.218
;MESH:NONMESH
G0 F300 X114.5 Y118.218 Z8.82
G0 F9000 X114.41 Y118.218
G0 X114.482 Y120.518
G0 X121 Y121
;TIME_ELAPSED:167.955634
;LAYER:17
;TYPE:WALL-INNER
;MESH:cube10.stl
G1 F624.6 X114 Y121 E324.08263
G1 X114 Y114 E325.53776
G1 X121 Y114 E326.99289
G1 X121 Y121 E328.44802
G0 F9000 X121.43 Y121.43
G0 X122 Y122
;TYPE:WALL-OUTER
G1 F624.6 X113 Y122 E330.3189
G1 X113 Y113 E332.18979
G1 X122 Y113 E334.06067
G1 X122 Y122 E335.93155
G0 F9000 X121.43 Y121.43
G0 X120.59 Y120.01
G0 X120.01 Y120.01
;TYPE:SKIN
G1 F624.6 X114.99 Y120.01 E336.97509
G1 X114.99 Y114.99 E338.01862
G1 X120.01 Y114.99 E339.06216
G1 X120.01 Y120.01 E340.1057
G0 F9000 X119.392 Y119.609
G1 F624.6 X119.609 Y119.392 E340.16949
G0 F9000 X120.59 Y119.392
G0 X120.59 Y117.978
G0 X119.609 Y117.978
G1 F624.6 X117.977 Y119.609 E340.64912
G0 F9000 X117.977 Y120.59
G0 X116.563 Y120.59
G0 X116.563 Y119.609
G1 F624.6 X119.609 Y116.564 E341.54444
G0 F9000 X120.59 Y116.564
G0 X120.518 Y114.482
G0 X119.369 Y114.41
G0 X119.369 Y115.389
G1 F624.6 X115.39 Y119.368 E342.71419
G0 F9000 X114.41 Y119.368
G0 X114.41 Y117.954
G0 X115.39 Y117.954
G1 F624.6 X117.955 Y115.389 E343.46825
G0 F9000 X117.955 Y114.41
G0 X116.541 Y114.41
G0 X116.541 Y115.389
G1 F624.6 X115.39 Y116.54 E343.80662
G0 F9000 X114.5 Y116.54
;MESH:NONMESH
G0 F300 X114.5 Y116.54 Z9.32
G0 F9000 X114.41 Y116.54
G0 X114.482 Y120.518
G0 X121 Y121
;TIME_ELAPSED:179.894870
;LAYER:18
;TYPE:WALL-INNER
;MESH:cube10.stl
G1 F625.4 X114 Y121 E345.26175
G1 X114 Y114 E346.71688
G1 X121 Y114 E348.17202
G1 X121 Y121 E349.62715
G0 F9000 X121.43 Y121.43
G0 X122 Y122
;TYPE:WALL-OUTER
G1 F625.4 X113 Y122 E351.49803
G1 X113 Y113 E353.36891
G1 X122 Y113 E355.23979
G1 X122 Y122 E357.11068
G0 F9000 X121.43 Y121.43
G0 X120.59 Y120.01
G0 X120.01 Y120.01
;TYPE:SKIN
G1 F625.4 X114.99 Y120.01 E358.15421
G1 X114.99 Y114.99 E359.19775
G1 X120.01 Y114.99 E360.24129
G1 X120.01 Y120.01 E361.28482
G0 F9000 X120.59 Y120.01
G0 X120.59 Y116.781
G0 X119.609 Y116.781
G1 F625.4 X118.219 Y115.39 E361.6936
G0 F9000 X118.219 Y114.41
G0 X116.804 Y114.41
G0 X116.804 Y115.39
G1 F625.4 X119.609 Y118.195 E362.51822
G0 F9000 X120.59 Y118.195
G0 X120.59 Y119.609
G0 X119.609 Y119.609
G1 F625.4 X115.389 Y115.389 E363.75882
G0 F9000 X115.389 Y114.41
G0 X114.482 Y114.482
G0 X114.41 Y116.804
G0 X115.389 Y116.804
G1 F625.4 X118.195 Y119.609 E364.58358
G0 F9000 X118.195 Y120.59
G0 X116.78 Y120.59
G0 X116.78 Y119.609
G1 F625.4 X115.389 Y118.218 E364.99251
G0 F9000 X114.5 Y118.218
;MESH:NONMESH
G0 F300 X114.5 Y118.218 Z9.82
G0 F9000 X114.41 Y118.218
G0 X114.482 Y120.518
G0 X121 Y121
;TIME_ELAPSED:191.744106
;LAYER:19
;TYPE:WALL-INNER
;MESH:cube10.stl
G1 F624.6 X114 Y121 E366.44764
G1 X114 Y114 E367.90277
G1 X121 Y114 E369.3579
G1 X121 Y121 E370.81303
G0 F9000 X121.43 Y121.43
G0 X122 Y122
;TYPE:WALL-OUTER
G1 F624.6 X113 Y122 E372.68392
G1 X113 Y113 E374.5548
G1 X122 Y113 E376.42568
G1 X122 Y122 E378.29656
G0 F9000 X121.43 Y121.43
G0 X120.59 Y120.01
G0 X120.01 Y120.01
;TYPE:SKIN
G1 F624.6 X114.99 Y120.01 E379.3401
G1 X114.99 Y114.99 E380.38364
G1 X120.01 Y114.99 E381.42717
G1 X120.01 Y120.01 E382.47071
G0 F9000 X119.392 Y119.609
G1 F624.6 X119.609 Y119.392 E382.5345
G0 F9000 X120.59 Y119.392
G0 X120.59 Y117.978
G0 X119.609 Y117.978
G1 F624.6 X117.977 Y119.609 E383.01413
G0 F9000 X117.977 Y120.59
G0 X116.563 Y120.59
G0 X116.563 Y119.609
G1 F624.6 X119.609 Y116.564 E383.90945
G0 F9000 X120.59 Y116.564
G0 X120.518 Y114.482
G0 X119.369 Y114.41
G0 X119.369 Y115.389
G1 F624.6 X115.39 Y119.368 E385.0792
G0 F9000 X114.41 Y119.368
G0 X114.41 Y117.954
G0 X115.39 Y117.954
G1 F624.6 X117.955 Y115.389 E385.83326
G0 F9000 X117.955 Y114.41
G0 X116.541 Y114.41
G0 X116.541 Y115.389
G1 F624.6 X115.39 Y116.54 E386.17164
G0 F9000 X114.5 Y116.54
;TIME_ELAPSED:203.183352
G1 F2700 E381.17164
M140 S0
M107
G91 ;Relative positioning
G1 E-2 F2700 ;Retract a bit
G1 E-2 Z0.2 F2400 ;Retract and raise Z
G1 X5 Y5 F3000 ;Wipe out
G1 Z10 ;Raise Z more
G90 ;Absolute positionning

G1 X0 Y235 ;Present print
M106 S0 ;Turn-off fan
M104 S0 ;Turn-off hotend
M140 S0 ;Turn-off bed

M84 X Y E ;Disable all steppers but Z

M82 ;absolute extrusion mode
M104 S0
;End of Gcode
;SETTING_3 {"extruder_quality": ["[general]\\nversion = 4\\nname = Draft Quality
;SETTING_3  #2\\ndefinition = creality_base\\n\\n[metadata]\\nposition = 0\\nqua
;SETTING_3 lity_type = draft\\ntype = quality_changes\\nsetting_version = 15\\n\
;SETTING_3 \n[values]\\n\\n"], "global_quality": "[general]\\nversion = 4\\nname
;SETTING_3  = Draft Quality #2\\ndefinition = creality_ender3\\n\\n[metadata]\\n
;SETTING_3 quality_type = draft\\ntype = quality_changes\\nsetting_version = 15\
;SETTING_3 \n\\n[values]\\nlayer_height = 0.5\\n\\n"}