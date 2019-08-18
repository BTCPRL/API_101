//Maya ASCII 2014 scene
//Name: snakeRig.ma
//Last modified: Sun, Nov 16, 2014 06:39:07 PM
//Codeset: 1252
requires maya "2014";
requires -nodeType "basicNode" "basicNode" "1.0";
requires -nodeType "decomposeMatrix" -nodeType "composeMatrix" -nodeType "inverseMatrix"
		 -nodeType "transposeMatrix" "matrixNodes" "1.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014";
fileInfo "cutIdentifier" "201307170459-880822";
fileInfo "osv" "Microsoft Windows 7 Business Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 12.148587028793223 11.996576315936784 8.1742263056606852 ;
	setAttr ".r" -type "double3" -40.538352735592973 54.200000000050878 -5.437238996029832e-015 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 20.238710259358953;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -2.2351741790771484e-008 0 -2.9802322387695313e-008 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "snake_geo";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "snake_geoShape" -p "snake_geo";
	setAttr -k off ".v";
	setAttr -s 8 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
	setAttr ".vcs" 2;
createNode mesh -n "snake_geoShapeOrig" -p "snake_geo";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "start_loc";
	setAttr ".t" -type "double3" 0 0 5 ;
createNode locator -n "start_locShape" -p "start_loc";
	setAttr -k off ".v";
createNode transform -n "end_loc";
	setAttr ".t" -type "double3" 0 0 -5.7 ;
createNode locator -n "end_locShape" -p "end_loc";
	setAttr -k off ".v";
createNode transform -n "C_snakeCnts1_grp";
	setAttr ".rp" -type "double3" 0 -1.1102230246251565e-016 -0.34999999999999964 ;
	setAttr ".sp" -type "double3" 0 -1.1102230246251565e-016 -0.34999999999999964 ;
createNode transform -n "C_snake1_grp" -p "C_snakeCnts1_grp";
	setAttr ".t" -type "double3" 0 0 5 ;
	setAttr ".rp" -type "double3" 0 -1.1102230246251565e-016 0 ;
	setAttr ".sp" -type "double3" 0 -1.1102230246251565e-016 0 ;
createNode transform -n "C_snake0_CNT" -p "C_snake1_grp";
createNode nurbsCurve -n "C_snake0_CNTShape" -p "C_snake0_CNT";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "C_snakeCenter1_loc" -p "C_snake0_CNT";
	setAttr ".v" no;
createNode locator -n "C_snakeCenter1_locShape" -p "C_snakeCenter1_loc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "C_snakeside1_loc" -p "C_snakeCenter1_loc";
	setAttr ".t" -type "double3" 0.4 0 0 ;
createNode locator -n "C_snakeside1_locShape" -p "C_snakeside1_loc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "C_snakeside11_loc" -p "C_snakeCenter1_loc";
	setAttr ".t" -type "double3" -0.4 0 0 ;
createNode locator -n "C_snakeside11_locShape" -p "C_snakeside11_loc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "C_snake2_grp" -p "C_snakeCnts1_grp";
	setAttr ".t" -type "double3" 0 0 3.8111111111111109 ;
	setAttr ".rp" -type "double3" 0 -1.1102230246251565e-016 0 ;
	setAttr ".sp" -type "double3" 0 -1.1102230246251565e-016 0 ;
createNode transform -n "C_snake1_CNT" -p "C_snake2_grp";
createNode nurbsCurve -n "C_snake1_CNTShape" -p "C_snake1_CNT";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "C_snakeCenter2_loc" -p "C_snake1_CNT";
	setAttr ".v" no;
createNode locator -n "C_snakeCenter2_locShape" -p "C_snakeCenter2_loc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "C_snakeside2_loc" -p "C_snakeCenter2_loc";
	setAttr ".t" -type "double3" 0.4 0 0 ;
createNode locator -n "C_snakeside2_locShape" -p "C_snakeside2_loc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "C_snakeside12_loc" -p "C_snakeCenter2_loc";
	setAttr ".t" -type "double3" -0.4 0 0 ;
createNode locator -n "C_snakeside12_locShape" -p "C_snakeside12_loc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "C_snake3_grp" -p "C_snakeCnts1_grp";
	setAttr ".t" -type "double3" 0 0 2.6222222222222222 ;
	setAttr ".rp" -type "double3" 0 -1.1102230246251565e-016 0 ;
	setAttr ".sp" -type "double3" 0 -1.1102230246251565e-016 0 ;
createNode transform -n "C_snake2_CNT" -p "C_snake3_grp";
createNode nurbsCurve -n "C_snake2_CNTShape" -p "C_snake2_CNT";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "C_snakeCenter3_loc" -p "C_snake2_CNT";
	setAttr ".v" no;
createNode locator -n "C_snakeCenter3_locShape" -p "C_snakeCenter3_loc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "C_snakeside3_loc" -p "C_snakeCenter3_loc";
	setAttr ".t" -type "double3" 0.4 0 0 ;
createNode locator -n "C_snakeside3_locShape" -p "C_snakeside3_loc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "C_snakeside13_loc" -p "C_snakeCenter3_loc";
	setAttr ".t" -type "double3" -0.4 0 0 ;
createNode locator -n "C_snakeside13_locShape" -p "C_snakeside13_loc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "C_snake4_grp" -p "C_snakeCnts1_grp";
	setAttr ".t" -type "double3" 0 0 1.4333333333333336 ;
	setAttr ".rp" -type "double3" 0 -1.1102230246251565e-016 0 ;
	setAttr ".sp" -type "double3" 0 -1.1102230246251565e-016 0 ;
createNode transform -n "C_snake3_CNT" -p "C_snake4_grp";
createNode nurbsCurve -n "C_snake3_CNTShape" -p "C_snake3_CNT";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "C_snakeCenter4_loc" -p "C_snake3_CNT";
	setAttr ".v" no;
createNode locator -n "C_snakeCenter4_locShape" -p "C_snakeCenter4_loc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "C_snakeside4_loc" -p "C_snakeCenter4_loc";
	setAttr ".t" -type "double3" 0.4 0 0 ;
createNode locator -n "C_snakeside4_locShape" -p "C_snakeside4_loc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "C_snakeside14_loc" -p "C_snakeCenter4_loc";
	setAttr ".t" -type "double3" -0.4 0 0 ;
createNode locator -n "C_snakeside14_locShape" -p "C_snakeside14_loc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "C_snake5_grp" -p "C_snakeCnts1_grp";
	setAttr ".t" -type "double3" 0 0 0.24444444444444446 ;
	setAttr ".rp" -type "double3" 0 -1.1102230246251565e-016 0 ;
	setAttr ".sp" -type "double3" 0 -1.1102230246251565e-016 0 ;
createNode transform -n "C_snake4_CNT" -p "C_snake5_grp";
createNode nurbsCurve -n "C_snake4_CNTShape" -p "C_snake4_CNT";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "C_snakeCenter5_loc" -p "C_snake4_CNT";
	setAttr ".v" no;
createNode locator -n "C_snakeCenter5_locShape" -p "C_snakeCenter5_loc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "C_snakeside5_loc" -p "C_snakeCenter5_loc";
	setAttr ".t" -type "double3" 0.4 0 0 ;
createNode locator -n "C_snakeside5_locShape" -p "C_snakeside5_loc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "C_snakeside15_loc" -p "C_snakeCenter5_loc";
	setAttr ".t" -type "double3" -0.4 0 0 ;
createNode locator -n "C_snakeside15_locShape" -p "C_snakeside15_loc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "C_snake6_grp" -p "C_snakeCnts1_grp";
	setAttr ".t" -type "double3" 0 0 -0.94444444444444464 ;
	setAttr ".rp" -type "double3" 0 -1.1102230246251565e-016 0 ;
	setAttr ".sp" -type "double3" 0 -1.1102230246251565e-016 0 ;
createNode transform -n "C_snake5_CNT" -p "C_snake6_grp";
createNode nurbsCurve -n "C_snake5_CNTShape" -p "C_snake5_CNT";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "C_snakeCenter6_loc" -p "C_snake5_CNT";
	setAttr ".v" no;
createNode locator -n "C_snakeCenter6_locShape" -p "C_snakeCenter6_loc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "C_snakeside6_loc" -p "C_snakeCenter6_loc";
	setAttr ".t" -type "double3" 0.4 0 0 ;
createNode locator -n "C_snakeside6_locShape" -p "C_snakeside6_loc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "C_snakeside16_loc" -p "C_snakeCenter6_loc";
	setAttr ".t" -type "double3" -0.4 0 0 ;
createNode locator -n "C_snakeside16_locShape" -p "C_snakeside16_loc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "C_snake7_grp" -p "C_snakeCnts1_grp";
	setAttr ".t" -type "double3" 0 0 -2.1333333333333329 ;
	setAttr ".rp" -type "double3" 0 -1.1102230246251565e-016 0 ;
	setAttr ".sp" -type "double3" 0 -1.1102230246251565e-016 0 ;
createNode transform -n "C_snake6_CNT" -p "C_snake7_grp";
createNode nurbsCurve -n "C_snake6_CNTShape" -p "C_snake6_CNT";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "C_snakeCenter7_loc" -p "C_snake6_CNT";
	setAttr ".v" no;
createNode locator -n "C_snakeCenter7_locShape" -p "C_snakeCenter7_loc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "C_snakeside7_loc" -p "C_snakeCenter7_loc";
	setAttr ".t" -type "double3" 0.4 0 0 ;
createNode locator -n "C_snakeside7_locShape" -p "C_snakeside7_loc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "C_snakeside17_loc" -p "C_snakeCenter7_loc";
	setAttr ".t" -type "double3" -0.4 0 0 ;
createNode locator -n "C_snakeside17_locShape" -p "C_snakeside17_loc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "C_snake8_grp" -p "C_snakeCnts1_grp";
	setAttr ".t" -type "double3" 0 0 -3.3222222222222229 ;
	setAttr ".rp" -type "double3" 0 -1.1102230246251565e-016 0 ;
	setAttr ".sp" -type "double3" 0 -1.1102230246251565e-016 0 ;
createNode transform -n "C_snake7_CNT" -p "C_snake8_grp";
createNode nurbsCurve -n "C_snake7_CNTShape" -p "C_snake7_CNT";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "C_snakeCenter8_loc" -p "C_snake7_CNT";
	setAttr ".v" no;
createNode locator -n "C_snakeCenter8_locShape" -p "C_snakeCenter8_loc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "C_snakeside8_loc" -p "C_snakeCenter8_loc";
	setAttr ".t" -type "double3" 0.4 0 0 ;
createNode locator -n "C_snakeside8_locShape" -p "C_snakeside8_loc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "C_snakeside18_loc" -p "C_snakeCenter8_loc";
	setAttr ".t" -type "double3" -0.4 0 0 ;
createNode locator -n "C_snakeside18_locShape" -p "C_snakeside18_loc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "C_snake9_grp" -p "C_snakeCnts1_grp";
	setAttr ".t" -type "double3" 0 0 -4.5111111111111111 ;
	setAttr ".rp" -type "double3" 0 -1.1102230246251565e-016 0 ;
	setAttr ".sp" -type "double3" 0 -1.1102230246251565e-016 0 ;
createNode transform -n "C_snake8_CNT" -p "C_snake9_grp";
createNode nurbsCurve -n "C_snake8_CNTShape" -p "C_snake8_CNT";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "C_snakeCenter9_loc" -p "C_snake8_CNT";
	setAttr ".v" no;
createNode locator -n "C_snakeCenter9_locShape" -p "C_snakeCenter9_loc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "C_snakeside9_loc" -p "C_snakeCenter9_loc";
	setAttr ".t" -type "double3" 0.4 0 0 ;
createNode locator -n "C_snakeside9_locShape" -p "C_snakeside9_loc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "C_snakeside19_loc" -p "C_snakeCenter9_loc";
	setAttr ".t" -type "double3" -0.4 0 0 ;
createNode locator -n "C_snakeside19_locShape" -p "C_snakeside19_loc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "C_snake10_grp" -p "C_snakeCnts1_grp";
	setAttr ".t" -type "double3" 0 0 -5.6999999999999993 ;
	setAttr ".rp" -type "double3" 0 -1.1102230246251565e-016 0 ;
	setAttr ".sp" -type "double3" 0 -1.1102230246251565e-016 0 ;
createNode transform -n "C_snake9_CNT" -p "C_snake10_grp";
createNode nurbsCurve -n "C_snake9_CNTShape" -p "C_snake9_CNT";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "C_snakeCenter10_loc" -p "C_snake9_CNT";
	setAttr ".v" no;
createNode locator -n "C_snakeCenter10_locShape" -p "C_snakeCenter10_loc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "C_snakeside10_loc" -p "C_snakeCenter10_loc";
	setAttr ".t" -type "double3" 0.4 0 0 ;
createNode locator -n "C_snakeside10_locShape" -p "C_snakeside10_loc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "C_snakeside20_loc" -p "C_snakeCenter10_loc";
	setAttr ".t" -type "double3" -0.4 0 0 ;
createNode locator -n "C_snakeside20_locShape" -p "C_snakeside20_loc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "C_snakeHooks_grp";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 0 0 -0.35000007152558643 ;
	setAttr ".sp" -type "double3" 0 0 -0.35000007152558643 ;
createNode transform -n "C_snake0_LOC" -p "C_snakeHooks_grp";
createNode locator -n "C_snake0_LOCShape" -p "C_snake0_LOC";
	setAttr -k off ".v";
createNode transform -n "C_snake1_LOC" -p "C_snakeHooks_grp";
createNode locator -n "C_snake1_LOCShape" -p "C_snake1_LOC";
	setAttr -k off ".v";
createNode transform -n "C_snake2_LOC" -p "C_snakeHooks_grp";
createNode locator -n "C_snake2_LOCShape" -p "C_snake2_LOC";
	setAttr -k off ".v";
createNode transform -n "C_snake3_LOC" -p "C_snakeHooks_grp";
createNode locator -n "C_snake3_LOCShape" -p "C_snake3_LOC";
	setAttr -k off ".v";
createNode transform -n "C_snake4_LOC" -p "C_snakeHooks_grp";
createNode locator -n "C_snake4_LOCShape" -p "C_snake4_LOC";
	setAttr -k off ".v";
createNode transform -n "C_snake5_LOC" -p "C_snakeHooks_grp";
createNode locator -n "C_snake5_LOCShape" -p "C_snake5_LOC";
	setAttr -k off ".v";
createNode transform -n "C_snake6_LOC" -p "C_snakeHooks_grp";
createNode locator -n "C_snake6_LOCShape" -p "C_snake6_LOC";
	setAttr -k off ".v";
createNode transform -n "C_snake7_LOC" -p "C_snakeHooks_grp";
createNode locator -n "C_snake7_LOCShape" -p "C_snake7_LOC";
	setAttr -k off ".v";
createNode transform -n "C_snake8_LOC" -p "C_snakeHooks_grp";
createNode locator -n "C_snake8_LOCShape" -p "C_snake8_LOC";
	setAttr -k off ".v";
createNode transform -n "C_snake9_LOC" -p "C_snakeHooks_grp";
createNode locator -n "C_snake9_LOCShape" -p "C_snake9_LOC";
	setAttr -k off ".v";
createNode transform -n "C_snake10_LOC" -p "C_snakeHooks_grp";
createNode locator -n "C_snake10_LOCShape" -p "C_snake10_LOC";
	setAttr -k off ".v";
createNode transform -n "C_snake11_LOC" -p "C_snakeHooks_grp";
createNode locator -n "C_snake11_LOCShape" -p "C_snake11_LOC";
	setAttr -k off ".v";
createNode transform -n "C_snake12_LOC" -p "C_snakeHooks_grp";
createNode locator -n "C_snake12_LOCShape" -p "C_snake12_LOC";
	setAttr -k off ".v";
createNode transform -n "C_snake13_LOC" -p "C_snakeHooks_grp";
createNode locator -n "C_snake13_LOCShape" -p "C_snake13_LOC";
	setAttr -k off ".v";
createNode transform -n "C_snake14_LOC" -p "C_snakeHooks_grp";
createNode locator -n "C_snake14_LOCShape" -p "C_snake14_LOC";
	setAttr -k off ".v";
createNode transform -n "C_snake15_LOC" -p "C_snakeHooks_grp";
createNode locator -n "C_snake15_LOCShape" -p "C_snake15_LOC";
	setAttr -k off ".v";
createNode transform -n "C_snake16_LOC" -p "C_snakeHooks_grp";
createNode locator -n "C_snake16_LOCShape" -p "C_snake16_LOC";
	setAttr -k off ".v";
createNode transform -n "C_snake17_LOC" -p "C_snakeHooks_grp";
createNode locator -n "C_snake17_LOCShape" -p "C_snake17_LOC";
	setAttr -k off ".v";
createNode transform -n "C_snake18_LOC" -p "C_snakeHooks_grp";
createNode locator -n "C_snake18_LOCShape" -p "C_snake18_LOC";
	setAttr -k off ".v";
createNode transform -n "C_snake19_LOC" -p "C_snakeHooks_grp";
createNode locator -n "C_snake19_LOCShape" -p "C_snake19_LOC";
	setAttr -k off ".v";
createNode transform -n "C_snake20_LOC" -p "C_snakeHooks_grp";
createNode locator -n "C_snake20_LOCShape" -p "C_snake20_LOC";
	setAttr -k off ".v";
createNode transform -n "C_snake21_LOC" -p "C_snakeHooks_grp";
createNode locator -n "C_snake21_LOCShape" -p "C_snake21_LOC";
	setAttr -k off ".v";
createNode transform -n "C_snake22_LOC" -p "C_snakeHooks_grp";
createNode locator -n "C_snake22_LOCShape" -p "C_snake22_LOC";
	setAttr -k off ".v";
createNode transform -n "C_snake23_LOC" -p "C_snakeHooks_grp";
createNode locator -n "C_snake23_LOCShape" -p "C_snake23_LOC";
	setAttr -k off ".v";
createNode transform -n "C_snake24_LOC" -p "C_snakeHooks_grp";
createNode locator -n "C_snake24_LOCShape" -p "C_snake24_LOC";
	setAttr -k off ".v";
createNode transform -n "C_snake25_LOC" -p "C_snakeHooks_grp";
createNode locator -n "C_snake25_LOCShape" -p "C_snake25_LOC";
	setAttr -k off ".v";
createNode transform -n "C_snake26_LOC" -p "C_snakeHooks_grp";
createNode locator -n "C_snake26_LOCShape" -p "C_snake26_LOC";
	setAttr -k off ".v";
createNode transform -n "C_snake27_LOC" -p "C_snakeHooks_grp";
createNode locator -n "C_snake27_LOCShape" -p "C_snake27_LOC";
	setAttr -k off ".v";
createNode transform -n "C_snake28_LOC" -p "C_snakeHooks_grp";
createNode locator -n "C_snake28_LOCShape" -p "C_snake28_LOC";
	setAttr -k off ".v";
createNode transform -n "C_snake29_LOC" -p "C_snakeHooks_grp";
createNode locator -n "C_snake29_LOCShape" -p "C_snake29_LOC";
	setAttr -k off ".v";
createNode transform -n "C_snake30_LOC" -p "C_snakeHooks_grp";
createNode locator -n "C_snake30_LOCShape" -p "C_snake30_LOC";
	setAttr -k off ".v";
createNode transform -n "C_snake31_LOC" -p "C_snakeHooks_grp";
createNode locator -n "C_snake31_LOCShape" -p "C_snake31_LOC";
	setAttr -k off ".v";
createNode transform -n "C_snake32_LOC" -p "C_snakeHooks_grp";
createNode locator -n "C_snake32_LOCShape" -p "C_snake32_LOC";
	setAttr -k off ".v";
createNode transform -n "C_snake33_LOC" -p "C_snakeHooks_grp";
createNode locator -n "C_snake33_LOCShape" -p "C_snake33_LOC";
	setAttr -k off ".v";
createNode transform -n "C_snake34_LOC" -p "C_snakeHooks_grp";
createNode locator -n "C_snake34_LOCShape" -p "C_snake34_LOC";
	setAttr -k off ".v";
createNode transform -n "C_snake35_LOC" -p "C_snakeHooks_grp";
createNode locator -n "C_snake35_LOCShape" -p "C_snake35_LOC";
	setAttr -k off ".v";
createNode transform -n "C_snake36_LOC" -p "C_snakeHooks_grp";
createNode locator -n "C_snake36_LOCShape" -p "C_snake36_LOC";
	setAttr -k off ".v";
createNode transform -n "C_snake37_LOC" -p "C_snakeHooks_grp";
createNode locator -n "C_snake37_LOCShape" -p "C_snake37_LOC";
	setAttr -k off ".v";
createNode transform -n "C_snake38_LOC" -p "C_snakeHooks_grp";
createNode locator -n "C_snake38_LOCShape" -p "C_snake38_LOC";
	setAttr -k off ".v";
createNode transform -n "C_snake39_LOC" -p "C_snakeHooks_grp";
createNode locator -n "C_snake39_LOCShape" -p "C_snake39_LOC";
	setAttr -k off ".v";
createNode transform -n "C_snake40_LOC" -p "C_snakeHooks_grp";
createNode locator -n "C_snake40_LOCShape" -p "C_snake40_LOC";
	setAttr -k off ".v";
createNode transform -n "C_snakeRig_grp";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" -3.1641356201816961e-015 0 -0.78300000000000036 ;
	setAttr ".sp" -type "double3" -3.1641356201816961e-015 0 -0.78300000000000036 ;
createNode transform -n "C_snakeNurbs_grp" -p "C_snakeRig_grp";
	setAttr ".rp" -type "double3" 0 0 -0.34999999999999964 ;
	setAttr ".sp" -type "double3" 0 0 -0.34999999999999964 ;
createNode transform -n "C_surface1_srf" -p "C_snakeNurbs_grp";
createNode nurbsSurface -n "C_surface1_srfShape" -p "C_surface1_srf";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
createNode transform -n "C_curve1_crv" -p "C_snakeNurbs_grp";
	addAttr -ci true -k true -sn "stretch" -ln "stretch" -min 0 -max 1 -at "float";
	addAttr -ci true -k true -sn "reverseRoot" -ln "reverseRoot" -min 0 -max 1 -at "float";
	addAttr -ci true -k true -sn "globalScale" -ln "globalScale" -dv 1 -min 0.001 -at "float";
	addAttr -ci true -sn "offset" -ln "offset" -at "float";
	setAttr -k on ".stretch";
	setAttr -k on ".reverseRoot";
	setAttr -k on ".globalScale";
createNode nurbsCurve -n "C_curve1_crvShape" -p "C_curve1_crv";
	setAttr -k off ".v";
	setAttr -s 10 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 7 0 no 3
		12 0 0 0 1 2 3 4 5 6 7 7 7
		10
		0 0 5
		0 0 3.8111111111111109
		0 0 2.6222222222222222
		0 0 1.4333333333333336
		0 0 0.24444444444444446
		0 0 -0.94444444444444464
		0 0 -2.1333333333333329
		0 0 -3.3222222222222229
		0 0 -4.5111111111111111
		0 0 -5.6999999999999993
		;
createNode transform -n "C_surfaceSide1_crv" -p "C_snakeNurbs_grp";
createNode nurbsCurve -n "C_surfaceSide1_crvShape" -p "C_surfaceSide1_crv";
	setAttr -k off ".v";
	setAttr -s 10 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 7 0 no 3
		12 0 0 0 1 2 3 4 5 6 7 7 7
		10
		0.40000000000000002 0 5
		0.40000000000000002 0 3.8111111111111109
		0.40000000000000002 0 2.6222222222222222
		0.40000000000000002 0 1.4333333333333336
		0.40000000000000002 0 0.24444444444444446
		0.40000000000000002 0 -0.94444444444444464
		0.40000000000000002 0 -2.1333333333333329
		0.40000000000000002 0 -3.3222222222222229
		0.40000000000000002 0 -4.5111111111111111
		0.40000000000000002 0 -5.6999999999999993
		;
createNode transform -n "C_surfaceSide2_crv" -p "C_snakeNurbs_grp";
createNode nurbsCurve -n "C_surfaceSide2_crvShape" -p "C_surfaceSide2_crv";
	setAttr -k off ".v";
	setAttr -s 10 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 7 0 no 3
		12 0 0 0 1 2 3 4 5 6 7 7 7
		10
		-0.40000000000000002 0 5
		-0.40000000000000002 0 3.8111111111111109
		-0.40000000000000002 0 2.6222222222222222
		-0.40000000000000002 0 1.4333333333333336
		-0.40000000000000002 0 0.24444444444444446
		-0.40000000000000002 0 -0.94444444444444464
		-0.40000000000000002 0 -2.1333333333333329
		-0.40000000000000002 0 -3.3222222222222229
		-0.40000000000000002 0 -4.5111111111111111
		-0.40000000000000002 0 -5.6999999999999993
		;
createNode transform -n "C_snakeDrivers_grp" -p "C_snakeRig_grp";
createNode transform -n "C_snakeCenterDrivers1_grp" -p "C_snakeDrivers_grp";
	setAttr ".rp" -type "double3" 0 0 -0.34999999999999964 ;
	setAttr ".sp" -type "double3" 0 0 -0.34999999999999964 ;
createNode joint -n "C_snakeChain1_jnt" -p "C_snakeRig_grp";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 89.999999999999986 0 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 0 0 5 1;
createNode joint -n "C_snakeChain2_jnt" -p "C_snakeChain1_jnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 0 0 4.7324999999999999 1;
createNode joint -n "C_snakeChain3_jnt" -p "C_snakeChain2_jnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 0 0 4.4649999999999999 1;
createNode joint -n "C_snakeChain4_jnt" -p "C_snakeChain3_jnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 0 0 4.1974999999999998 1;
createNode joint -n "C_snakeChain5_jnt" -p "C_snakeChain4_jnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 0 0 3.9300000000000002 1;
createNode joint -n "C_snakeChain6_jnt" -p "C_snakeChain5_jnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 0 0 3.6625000000000001 1;
createNode joint -n "C_snakeChain7_jnt" -p "C_snakeChain6_jnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 0 0 3.3950000000000005 1;
createNode joint -n "C_snakeChain8_jnt" -p "C_snakeChain7_jnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 0 0 3.1274999999999999 1;
createNode joint -n "C_snakeChain9_jnt" -p "C_snakeChain8_jnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 0 0 2.8599999999999999 1;
createNode joint -n "C_snakeChain10_jnt" -p "C_snakeChain9_jnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 0 0 2.5924999999999998 1;
createNode joint -n "C_snakeChain11_jnt" -p "C_snakeChain10_jnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 -9.8607613152626476e-032 0 2.3250000000000002 1;
createNode joint -n "C_snakeChain12_jnt" -p "C_snakeChain11_jnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 -9.8607613152626476e-032 0 2.0575000000000006 1;
createNode joint -n "C_snakeChain13_jnt" -p "C_snakeChain12_jnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 -9.8607613152626476e-032 0 1.7900000000000007 1;
createNode joint -n "C_snakeChain14_jnt" -p "C_snakeChain13_jnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 -1.4791141972893971e-031 0 1.5225000000000006 1;
createNode joint -n "C_snakeChain15_jnt" -p "C_snakeChain14_jnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 -1.4791141972893971e-031 0 1.255000000000001 1;
createNode joint -n "C_snakeChain16_jnt" -p "C_snakeChain15_jnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 -1.2325951644078309e-031 0 0.98750000000000093 1;
createNode joint -n "C_snakeChain17_jnt" -p "C_snakeChain16_jnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 -1.2325951644078309e-031 0 0.72000000000000086 1;
createNode joint -n "C_snakeChain18_jnt" -p "C_snakeChain17_jnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 -1.2325951644078309e-031 0 0.45250000000000079 1;
createNode joint -n "C_snakeChain19_jnt" -p "C_snakeChain18_jnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 -1.2325951644078309e-031 0 0.18500000000000072 1;
createNode joint -n "C_snakeChain20_jnt" -p "C_snakeChain19_jnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 -1.2325951644078309e-031 0 -0.082499999999999352 1;
createNode joint -n "C_snakeChain21_jnt" -p "C_snakeChain20_jnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 -1.2325951644078309e-031 0 -0.34999999999999942 1;
createNode joint -n "C_snakeChain22_jnt" -p "C_snakeChain21_jnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 -1.2325951644078309e-031 0 -0.61749999999999861 1;
createNode joint -n "C_snakeChain23_jnt" -p "C_snakeChain22_jnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 -1.2325951644078309e-031 0 -0.88499999999999868 1;
createNode joint -n "C_snakeChain24_jnt" -p "C_snakeChain23_jnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 -1.4791141972893971e-031 0 -1.1524999999999987 1;
createNode joint -n "C_snakeChain25_jnt" -p "C_snakeChain24_jnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 -9.8607613152626476e-032 0 -1.4199999999999988 1;
createNode joint -n "C_snakeChain26_jnt" -p "C_snakeChain25_jnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 -1.4791141972893971e-031 0 -1.6874999999999989 1;
createNode joint -n "C_snakeChain27_jnt" -p "C_snakeChain26_jnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 -1.4791141972893971e-031 0 -1.9549999999999987 1;
createNode joint -n "C_snakeChain28_jnt" -p "C_snakeChain27_jnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 -1.9721522630525295e-031 0 -2.2224999999999988 1;
createNode joint -n "C_snakeChain29_jnt" -p "C_snakeChain28_jnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 -1.9721522630525295e-031 0 -2.489999999999998 1;
createNode joint -n "C_snakeChain30_jnt" -p "C_snakeChain29_jnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 -1.9721522630525295e-031 0 -2.7574999999999981 1;
createNode joint -n "C_snakeChain31_jnt" -p "C_snakeChain30_jnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 -2.9582283945787943e-031 0 -3.0249999999999981 1;
createNode joint -n "C_snakeChain32_jnt" -p "C_snakeChain31_jnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 -2.9582283945787943e-031 0 -3.2924999999999986 1;
createNode joint -n "C_snakeChain33_jnt" -p "C_snakeChain32_jnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 -2.9582283945787943e-031 0 -3.5599999999999987 1;
createNode joint -n "C_snakeChain34_jnt" -p "C_snakeChain33_jnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 -1.9721522630525295e-031 0 -3.8274999999999983 1;
createNode joint -n "C_snakeChain35_jnt" -p "C_snakeChain34_jnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 -1.9721522630525295e-031 0 -4.0949999999999989 1;
createNode joint -n "C_snakeChain36_jnt" -p "C_snakeChain35_jnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 -1.9721522630525295e-031 0 -4.3624999999999989 1;
createNode joint -n "C_snakeChain37_jnt" -p "C_snakeChain36_jnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 -1.9721522630525295e-031 0 -4.629999999999999 1;
createNode joint -n "C_snakeChain38_jnt" -p "C_snakeChain37_jnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 -1.9721522630525295e-031 0 -4.8974999999999982 1;
createNode joint -n "C_snakeChain39_jnt" -p "C_snakeChain38_jnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 -1.9721522630525295e-031 0 -5.1649999999999983 1;
createNode joint -n "C_snakeChain40_jnt" -p "C_snakeChain39_jnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 0 0 -5.4324999999999992 1;
createNode joint -n "C_snakeChain41_jnt" -p "C_snakeChain40_jnt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 0 0 -5.6999999999999993 1;
createNode parentConstraint -n "C_snakeChain41_jnt_parentConstraint1" -p "C_snakeChain41_jnt";
	addAttr -ci true -k true -sn "w0" -ln "C_snake40_LOCW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 4.9591083906008748e-006 0 -1.1011432633713791e-021 ;
	setAttr ".lr" -type "double3" 0 1.2722218725854067e-014 0 ;
	setAttr ".rst" -type "double3" 0.26750000000000007 0 -5.9396931817445891e-017 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "C_snakeChain40_jnt_parentConstraint1" -p "C_snakeChain40_jnt";
	addAttr -ci true -k true -sn "w0" -ln "C_snake39_LOCW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.3644911032173468e-006 0 -3.0297788793761588e-022 ;
	setAttr ".tg[0].tor" -type "double3" 0 -1.4124500153760511e-030 0 ;
	setAttr ".lr" -type "double3" 0 1.2722218725854067e-014 0 ;
	setAttr ".rst" -type "double3" 0.26750000000000096 0 -5.9396931817445891e-017 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "C_snakeChain39_jnt_parentConstraint1" -p "C_snakeChain39_jnt";
	addAttr -ci true -k true -sn "w0" -ln "C_snake38_LOCW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.08832500714351e-006 0 4.6370130096902863e-022 ;
	setAttr ".lr" -type "double3" 0 1.2722218725854067e-014 0 ;
	setAttr ".rst" -type "double3" 0.26750000000000007 0 -5.9396931817445891e-017 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "C_snakeChain38_jnt_parentConstraint1" -p "C_snakeChain38_jnt";
	addAttr -ci true -k true -sn "w0" -ln "C_snake37_LOCW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 3.8225135776670527e-006 0 -8.4876851737086392e-022 ;
	setAttr ".lr" -type "double3" 0 1.2722218725854067e-014 0 ;
	setAttr ".rst" -type "double3" 0.26749999999999918 0 -5.9396931817445693e-017 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "C_snakeChain37_jnt_parentConstraint1" -p "C_snakeChain37_jnt";
	addAttr -ci true -k true -sn "w0" -ln "C_snake36_LOCW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -8.6383910069542935e-007 0 1.9181081163549572e-022 ;
	setAttr ".lr" -type "double3" 0 1.2722218725854067e-014 0 ;
	setAttr ".rst" -type "double3" 0.26750000000000007 0 -5.9396931817445891e-017 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "C_snakeChain36_jnt_parentConstraint1" -p "C_snakeChain36_jnt";
	addAttr -ci true -k true -sn "w0" -ln "C_snake35_LOCW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -4.6612506539034371e-006 0 1.0350055597053173e-021 ;
	setAttr ".lr" -type "double3" 0 1.2722218725854067e-014 0 ;
	setAttr ".rst" -type "double3" 0.26750000000000007 0 -5.9396931817445891e-017 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "C_snakeChain35_jnt_parentConstraint1" -p "C_snakeChain35_jnt";
	addAttr -ci true -k true -sn "w0" -ln "C_snake34_LOCW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.0595459478679459e-006 0 -2.3526646159147109e-022 ;
	setAttr ".lr" -type "double3" 0 1.2722218725854067e-014 0 ;
	setAttr ".rst" -type "double3" 0.26750000000000052 0 -5.9396931817445989e-017 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "C_snakeChain34_jnt_parentConstraint1" -p "C_snakeChain34_jnt";
	addAttr -ci true -k true -sn "w0" -ln "C_snake33_LOCW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.8707442329967137e-006 0 6.3743326885935209e-022 ;
	setAttr ".lr" -type "double3" 0 1.2722218725854067e-014 0 ;
	setAttr ".rst" -type "double3" 0.26749999999999963 0 -5.9396931817445693e-017 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "C_snakeChain33_jnt_parentConstraint1" -p "C_snakeChain33_jnt";
	addAttr -ci true -k true -sn "w0" -ln "C_snake32_LOCW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 4.3852437898728169e-006 0 -9.7371972511807948e-022 ;
	setAttr ".lr" -type "double3" 0 1.2722218725854067e-014 0 ;
	setAttr ".rst" -type "double3" 0.26750000000000007 0 -5.9396931817445891e-017 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "C_snakeChain32_jnt_parentConstraint1" -p "C_snakeChain32_jnt";
	addAttr -ci true -k true -sn "w0" -ln "C_snake31_LOCW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.3679736343696902e-006 0 3.0375116489565425e-022 ;
	setAttr ".tg[0].tor" -type "double3" 0 -1.4124500153760511e-030 0 ;
	setAttr ".lr" -type "double3" 0 1.2722218725854067e-014 0 ;
	setAttr ".rst" -type "double3" 0.26750000000000052 0 -5.9396931817445989e-017 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "C_snakeChain31_jnt_parentConstraint1" -p "C_snakeChain31_jnt";
	addAttr -ci true -k true -sn "w0" -ln "C_snake30_LOCW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -5.1495885853292123e-006 0 1.143438362660053e-021 ;
	setAttr ".lr" -type "double3" 0 1.2722218725854067e-014 0 ;
	setAttr ".rst" -type "double3" 0.26750000000000007 0 -5.9396931817445989e-017 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "C_snakeChain30_jnt_parentConstraint1" -p "C_snakeChain30_jnt";
	addAttr -ci true -k true -sn "w0" -ln "C_snake29_LOCW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.738108120097337e-006 0 -3.8593753104121728e-022 ;
	setAttr ".lr" -type "double3" 0 1.2722218725854067e-014 0 ;
	setAttr ".rst" -type "double3" 0.26750000000000007 0 -5.9396931817445891e-017 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "C_snakeChain29_jnt_parentConstraint1" -p "C_snakeChain29_jnt";
	addAttr -ci true -k true -sn "w0" -ln "C_snake28_LOCW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -3.0059777378355079e-006 0 6.6746113901390947e-022 ;
	setAttr ".lr" -type "double3" 0 1.2722218725854067e-014 0 ;
	setAttr ".rst" -type "double3" 0.26749999999999918 0 -5.9396931817445693e-017 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "C_snakeChain28_jnt_parentConstraint1" -p "C_snakeChain28_jnt";
	addAttr -ci true -k true -sn "w0" -ln "C_snake27_LOCW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 3.3106994341558504e-006 0 -7.3512294807987574e-022 ;
	setAttr ".lr" -type "double3" 0 1.2722218725854067e-014 0 ;
	setAttr ".rst" -type "double3" 0.26750000000000007 0 -5.939693181744594e-017 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "C_snakeChain27_jnt_parentConstraint1" -p "C_snakeChain27_jnt";
	addAttr -ci true -k true -sn "w0" -ln "C_snake26_LOCW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -8.7738037257700796e-007 0 1.9481757804992709e-022 ;
	setAttr ".lr" -type "double3" 0 1.2722218725854067e-014 0 ;
	setAttr ".rst" -type "double3" 0.26749999999999985 0 -5.9396931817445841e-017 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "C_snakeChain26_jnt_parentConstraint1" -p "C_snakeChain26_jnt";
	addAttr -ci true -k true -sn "w0" -ln "C_snake25_LOCW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -5.2452087409005088e-006 0 1.164670302474663e-021 ;
	setAttr ".lr" -type "double3" 0 1.2722218725854067e-014 0 ;
	setAttr ".rst" -type "double3" 0.26750000000000007 0 -5.939693181744594e-017 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "C_snakeChain25_jnt_parentConstraint1" -p "C_snakeChain25_jnt";
	addAttr -ci true -k true -sn "w0" -ln "C_snake24_LOCW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 8.7738037035656191e-007 0 -1.9481757780340805e-022 ;
	setAttr ".lr" -type "double3" 0 1.2722218725854067e-014 0 ;
	setAttr ".rst" -type "double3" 0.26750000000000007 0 -5.9396931817445841e-017 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "C_snakeChain24_jnt_parentConstraint1" -p "C_snakeChain24_jnt";
	addAttr -ci true -k true -sn "w0" -ln "C_snake23_LOCW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -3.0136108406519924e-006 0 6.691560283624517e-022 ;
	setAttr ".lr" -type "double3" 0 1.2722218725854067e-014 0 ;
	setAttr ".rst" -type "double3" 0.26750000000000007 0 -5.9396931817445915e-017 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "C_snakeChain23_jnt_parentConstraint1" -p "C_snakeChain23_jnt";
	addAttr -ci true -k true -sn "w0" -ln "C_snake22_LOCW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 3.1089782702720115e-006 0 -6.9033185186631551e-022 ;
	setAttr ".lr" -type "double3" 0 1.2722218725854067e-014 0 ;
	setAttr ".rst" -type "double3" 0.26750000000000007 0 -5.9396931817445891e-017 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "C_snakeChain22_jnt_parentConstraint1" -p "C_snakeChain22_jnt";
	addAttr -ci true -k true -sn "w0" -ln "C_snake21_LOCW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -7.8201294106960972e-007 0 1.7364175442280376e-022 ;
	setAttr ".lr" -type "double3" 0 1.2722218725854067e-014 0 ;
	setAttr ".rst" -type "double3" 0.26749999999999918 0 -5.9396931817445693e-017 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "C_snakeChain21_jnt_parentConstraint1" -p "C_snakeChain21_jnt";
	addAttr -ci true -k true -sn "w0" -ln "C_snake20_LOCW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -5.1498413093375994e-006 0 1.1434944788352137e-021 ;
	setAttr ".lr" -type "double3" 0 1.2722218725854067e-014 0 ;
	setAttr ".rst" -type "double3" 0.26750000000000007 0 -5.9396931817445891e-017 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "C_snakeChain20_jnt_parentConstraint1" -p "C_snakeChain20_jnt";
	addAttr -ci true -k true -sn "w0" -ln "C_snake19_LOCW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 9.7274780193334909e-007 0 -2.1599340149524262e-022 ;
	setAttr ".lr" -type "double3" 0 1.2722218725854067e-014 0 ;
	setAttr ".rst" -type "double3" 0.26750000000000007 0 -5.9396931817445891e-017 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "C_snakeChain19_jnt_parentConstraint1" -p "C_snakeChain19_jnt";
	addAttr -ci true -k true -sn "w0" -ln "C_snake18_LOCW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.9182434087005049e-006 0 6.4798020463672077e-022 ;
	setAttr ".lr" -type "double3" 0 1.2722218725854067e-014 0 ;
	setAttr ".rst" -type "double3" 0.26750000000000007 0 -5.9396931817445891e-017 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "C_snakeChain18_jnt_parentConstraint1" -p "C_snakeChain18_jnt";
	addAttr -ci true -k true -sn "w0" -ln "C_snake17_LOCW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 3.2043457021124766e-006 0 -7.1150767559204644e-022 ;
	setAttr ".lr" -type "double3" 0 1.2722218725854067e-014 0 ;
	setAttr ".rst" -type "double3" 0.26750000000000007 0 -5.9396931817445891e-017 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "C_snakeChain17_jnt_parentConstraint1" -p "C_snakeChain17_jnt";
	addAttr -ci true -k true -sn "w0" -ln "C_snake16_LOCW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.1634826668771581e-006 0 2.5834504898060086e-022 ;
	setAttr ".lr" -type "double3" 0 1.2722218725854067e-014 0 ;
	setAttr ".rst" -type "double3" 0.26750000000000007 0 -5.9396931817445891e-017 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "C_snakeChain16_jnt_parentConstraint1" -p "C_snakeChain16_jnt";
	addAttr -ci true -k true -sn "w0" -ln "C_snake15_LOCW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.9073486212661805e-007 0 -4.2351647229594739e-023 ;
	setAttr ".lr" -type "double3" 0 1.2722218725854067e-014 0 ;
	setAttr ".rst" -type "double3" 0.26750000000000007 0 -5.9396931817445866e-017 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "C_snakeChain15_jnt_parentConstraint1" -p "C_snakeChain15_jnt";
	addAttr -ci true -k true -sn "w0" -ln "C_snake14_LOCW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.0681152329272692e-006 0 -2.371692250576547e-022 ;
	setAttr ".lr" -type "double3" 0 1.2722218725854067e-014 0 ;
	setAttr ".rst" -type "double3" 0.26749999999999963 0 -5.9396931817445792e-017 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "C_snakeChain14_jnt_parentConstraint1" -p "C_snakeChain14_jnt";
	addAttr -ci true -k true -sn "w0" -ln "C_snake13_LOCW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -3.3583829681660404e-006 0 7.4571081920547102e-022 ;
	setAttr ".lr" -type "double3" 0 1.2722218725854067e-014 0 ;
	setAttr ".rst" -type "double3" 0.26750000000000007 0 -5.939693181744594e-017 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "C_snakeChain13_jnt_parentConstraint1" -p "C_snakeChain13_jnt";
	addAttr -ci true -k true -sn "w0" -ln "C_snake12_LOCW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.9582940246353218e-006 0 -6.5687322805083847e-022 ;
	setAttr ".lr" -type "double3" 0 1.2722218725854067e-014 0 ;
	setAttr ".rst" -type "double3" 0.26749999999999985 0 -5.9396931817445841e-017 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "C_snakeChain12_jnt_parentConstraint1" -p "C_snakeChain12_jnt";
	addAttr -ci true -k true -sn "w0" -ln "C_snake11_LOCW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.024211294582301e-006 0 4.4946519709170557e-022 ;
	setAttr ".lr" -type "double3" 0 1.2722218725854067e-014 0 ;
	setAttr ".rst" -type "double3" 0.26749999999999963 0 -5.9396931817445792e-017 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "C_snakeChain11_jnt_parentConstraint1" -p "C_snakeChain11_jnt";
	addAttr -ci true -k true -sn "w0" -ln "C_snake10_LOCW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 4.8634857634510809e-006 0 -1.0799107750026171e-021 ;
	setAttr ".tg[0].tor" -type "double3" 0 -1.4124500153760511e-030 0 ;
	setAttr ".lr" -type "double3" 0 1.2722218725854067e-014 0 ;
	setAttr ".rst" -type "double3" 0.26749999999999963 0 -5.9396931817445891e-017 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "C_snakeChain10_jnt_parentConstraint1" -p "C_snakeChain10_jnt";
	addAttr -ci true -k true -sn "w0" -ln "C_snake9_LOCW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 8.4345151263320872e-007 0 -1.8728385789606088e-022 ;
	setAttr ".lr" -type "double3" 0 1.2722218725854067e-014 0 ;
	setAttr ".rst" -type "double3" 0.26750000000000007 0 -5.9396931817445891e-017 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "C_snakeChain9_jnt_parentConstraint1" -p "C_snakeChain9_jnt";
	addAttr -ci true -k true -sn "w0" -ln "C_snake8_LOCW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -3.9560923736914333e-006 0 8.7842896816324363e-022 ;
	setAttr ".tg[0].tor" -type "double3" 0 -1.4124500153760511e-030 0 ;
	setAttr ".lr" -type "double3" 0 1.2722218725854067e-014 0 ;
	setAttr ".rst" -type "double3" 0.26750000000000007 0 -5.9396931817445891e-017 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "C_snakeChain8_jnt_parentConstraint1" -p "C_snakeChain8_jnt";
	addAttr -ci true -k true -sn "w0" -ln "C_snake7_LOCW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.7038510665988724e-006 0 -6.0037554185907114e-022 ;
	setAttr ".lr" -type "double3" 0 1.2722218725854067e-014 0 ;
	setAttr ".rst" -type "double3" 0.26750000000000052 0 -5.9396931817445989e-017 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "C_snakeChain7_jnt_parentConstraint1" -p "C_snakeChain7_jnt";
	addAttr -ci true -k true -sn "w0" -ln "C_snake6_LOCW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.3456488137109091e-006 0 2.9879405920827585e-022 ;
	setAttr ".lr" -type "double3" 0 1.2722218725854067e-014 0 ;
	setAttr ".rst" -type "double3" 0.26749999999999963 0 -5.9396931817445792e-017 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "C_snakeChain6_jnt_parentConstraint1" -p "C_snakeChain6_jnt";
	addAttr -ci true -k true -sn "w0" -ln "C_snake5_LOCW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 4.8519859063844706e-006 0 -1.0773572936849597e-021 ;
	setAttr ".lr" -type "double3" 0 1.2722218725854067e-014 0 ;
	setAttr ".rst" -type "double3" 0.26750000000000007 0 -5.9396931817445891e-017 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "C_snakeChain5_jnt_parentConstraint1" -p "C_snakeChain5_jnt";
	addAttr -ci true -k true -sn "w0" -ln "C_snake4_LOCW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 8.161553024521595e-007 0 -1.8122288169045919e-022 ;
	setAttr ".lr" -type "double3" 0 1.2722218725854067e-014 0 ;
	setAttr ".rst" -type "double3" 0.26749999999999963 0 -5.9396931817445792e-017 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "C_snakeChain4_jnt_parentConstraint1" -p "C_snakeChain4_jnt";
	addAttr -ci true -k true -sn "w0" -ln "C_snake3_LOCW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -4.049013178075711e-006 0 8.990615314620667e-022 ;
	setAttr ".lr" -type "double3" 0 1.2722218725854067e-014 0 ;
	setAttr ".rst" -type "double3" 0.26750000000000007 0 -5.9396931817445891e-017 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "C_snakeChain3_jnt_parentConstraint1" -p "C_snakeChain3_jnt";
	addAttr -ci true -k true -sn "w0" -ln "C_snake2_LOCW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.3386665608526869e-006 0 -5.1928829255591655e-022 ;
	setAttr ".lr" -type "double3" 0 1.2722218725854067e-014 0 ;
	setAttr ".rst" -type "double3" 0.26750000000000007 0 -5.9396931817445891e-017 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "C_snakeChain2_jnt_parentConstraint1" -p "C_snakeChain2_jnt";
	addAttr -ci true -k true -sn "w0" -ln "C_snake1_LOCW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.3227676243232622e-006 0 2.9371341455048099e-022 ;
	setAttr ".lr" -type "double3" 0 1.2722218725854067e-014 0 ;
	setAttr ".rst" -type "double3" 0.26750000000000007 0 -5.9396931817445891e-017 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "C_snakeChain1_jnt_parentConstraint1" -p "C_snakeChain1_jnt";
	addAttr -ci true -k true -sn "w0" -ln "C_snake0_LOCW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -5.1021595641742579e-006 0 1.132907004691543e-021 ;
	setAttr ".lr" -type "double3" 0 1.2722218725854067e-014 0 ;
	setAttr ".rst" -type "double3" 0 0 5 ;
	setAttr -k on ".w0";
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode polyCylinder -n "polyCylinder1";
	setAttr ".r" 0.19235339093842166;
	setAttr ".h" 9.5516209035703827;
	setAttr ".sh" 45;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n"
		+ "            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n"
		+ "                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n"
		+ "            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n"
		+ "            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 1\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n"
		+ "                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n"
		+ "                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
		+ "            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n"
		+ "            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n"
		+ "            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n"
		+ "                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n"
		+ "                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n"
		+ "                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n"
		+ "                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n"
		+ "                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n"
		+ "                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n"
		+ "                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels yes -displayOrthographicLabels yes -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition axis;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode multiplyDivide -n "C_snakeglobal1_cInfo";
	setAttr ".i1" -type "float3" 10.7 0 0 ;
createNode multiplyDivide -n "C_snakeinitRatio1_md";
	setAttr ".op" 2;
createNode blendColors -n "C_snakeblnCrvDtr1_bln";
	setAttr ".c2" -type "float3" 1 0 1 ;
createNode multiplyDivide -n "C_snakeLenGlobal1_md";
	setAttr ".i2" -type "float3" 5.1021575e-006 1 1 ;
createNode multiplyDivide -n "C_snakeStretch1_md";
createNode multiplyDivide -n "C_snakeRevGlobal1_md";
	setAttr ".i2" -type "float3" 10.699995 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch1_md";
createNode plusMinusAverage -n "C_snakeRevLen1_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1[0:1]"  10.69999981 0;
createNode blendColors -n "C_snakeBlendRoot1_bln";
createNode plusMinusAverage -n "C_snakeOffset1_pma";
	setAttr -s 2 ".i1[1]"  0;
createNode basicNode -n "C_snake0_bsn";
	setAttr ".incv" -type "nurbsCurve" 
		3 7 0 no 3
		12 0 0 0 1 2 3 4 5 6 7 7 7
		10
		0 0 5
		0 0 3.8111111111111109
		0 0 2.6222222222222222
		0 0 1.4333333333333336
		0 0 0.24444444444444446
		0 0 -0.94444444444444464
		0 0 -2.1333333333333329
		0 0 -3.3222222222222229
		0 0 -4.5111111111111111
		0 0 -5.6999999999999993
		;
createNode pointOnCurveInfo -n "C_snake0_pinf";
createNode closestPointOnSurface -n "C_snake1_pntSInfo";
createNode multiplyDivide -n "C_snakeLenGlobal2_md";
	setAttr ".i2" -type "float3" 0.26750103 1 1 ;
createNode multiplyDivide -n "C_snakeStretch2_md";
createNode multiplyDivide -n "C_snakeRevGlobal2_md";
	setAttr ".i2" -type "float3" 10.432499 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch2_md";
createNode plusMinusAverage -n "C_snakeRevLen2_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1[0:1]"  10.69999981 0;
createNode blendColors -n "C_snakeBlendRoot2_bln";
createNode plusMinusAverage -n "C_snakeOffset2_pma";
	setAttr -s 2 ".i1[1]"  0;
createNode basicNode -n "C_snake1_bsn";
	setAttr ".incv" -type "nurbsCurve" 
		3 7 0 no 3
		12 0 0 0 1 2 3 4 5 6 7 7 7
		10
		0 0 5
		0 0 3.8111111111111109
		0 0 2.6222222222222222
		0 0 1.4333333333333336
		0 0 0.24444444444444446
		0 0 -0.94444444444444464
		0 0 -2.1333333333333329
		0 0 -3.3222222222222229
		0 0 -4.5111111111111111
		0 0 -5.6999999999999993
		;
createNode pointOnCurveInfo -n "C_snake1_pinf";
createNode closestPointOnSurface -n "C_snake3_pntSInfo";
createNode multiplyDivide -n "C_snakeLenGlobal3_md";
	setAttr ".i2" -type "float3" 0.53499693 1 1 ;
createNode multiplyDivide -n "C_snakeStretch3_md";
createNode multiplyDivide -n "C_snakeRevGlobal3_md";
	setAttr ".i2" -type "float3" 10.165003 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch3_md";
createNode plusMinusAverage -n "C_snakeRevLen3_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1[0:1]"  10.69999981 0;
createNode blendColors -n "C_snakeBlendRoot3_bln";
createNode plusMinusAverage -n "C_snakeOffset3_pma";
	setAttr -s 2 ".i1[1]"  0;
createNode basicNode -n "C_snake2_bsn";
	setAttr ".incv" -type "nurbsCurve" 
		3 7 0 no 3
		12 0 0 0 1 2 3 4 5 6 7 7 7
		10
		0 0 5
		0 0 3.8111111111111109
		0 0 2.6222222222222222
		0 0 1.4333333333333336
		0 0 0.24444444444444446
		0 0 -0.94444444444444464
		0 0 -2.1333333333333329
		0 0 -3.3222222222222229
		0 0 -4.5111111111111111
		0 0 -5.6999999999999993
		;
createNode pointOnCurveInfo -n "C_snake2_pinf";
createNode closestPointOnSurface -n "C_snake5_pntSInfo";
createNode multiplyDivide -n "C_snakeLenGlobal4_md";
	setAttr ".i2" -type "float3" 0.80250305 1 1 ;
createNode multiplyDivide -n "C_snakeStretch4_md";
createNode multiplyDivide -n "C_snakeRevGlobal4_md";
	setAttr ".i2" -type "float3" 9.8974972 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch4_md";
createNode plusMinusAverage -n "C_snakeRevLen4_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1[0:1]"  10.69999981 0;
createNode blendColors -n "C_snakeBlendRoot4_bln";
createNode plusMinusAverage -n "C_snakeOffset4_pma";
	setAttr -s 2 ".i1[1]"  0;
createNode basicNode -n "C_snake3_bsn";
	setAttr ".incv" -type "nurbsCurve" 
		3 7 0 no 3
		12 0 0 0 1 2 3 4 5 6 7 7 7
		10
		0 0 5
		0 0 3.8111111111111109
		0 0 2.6222222222222222
		0 0 1.4333333333333336
		0 0 0.24444444444444446
		0 0 -0.94444444444444464
		0 0 -2.1333333333333329
		0 0 -3.3222222222222229
		0 0 -4.5111111111111111
		0 0 -5.6999999999999993
		;
createNode pointOnCurveInfo -n "C_snake3_pinf";
createNode closestPointOnSurface -n "C_snake7_pntSInfo";
createNode multiplyDivide -n "C_snakeLenGlobal5_md";
	setAttr ".i2" -type "float3" 1.069999 1 1 ;
createNode multiplyDivide -n "C_snakeStretch5_md";
createNode multiplyDivide -n "C_snakeRevGlobal5_md";
	setAttr ".i2" -type "float3" 9.6300011 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch5_md";
createNode plusMinusAverage -n "C_snakeRevLen5_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1[0:1]"  10.69999981 0;
createNode blendColors -n "C_snakeBlendRoot5_bln";
createNode plusMinusAverage -n "C_snakeOffset5_pma";
	setAttr -s 2 ".i1[1]"  0;
createNode basicNode -n "C_snake4_bsn";
	setAttr ".incv" -type "nurbsCurve" 
		3 7 0 no 3
		12 0 0 0 1 2 3 4 5 6 7 7 7
		10
		0 0 5
		0 0 3.8111111111111109
		0 0 2.6222222222222222
		0 0 1.4333333333333336
		0 0 0.24444444444444446
		0 0 -0.94444444444444464
		0 0 -2.1333333333333329
		0 0 -3.3222222222222229
		0 0 -4.5111111111111111
		0 0 -5.6999999999999993
		;
createNode pointOnCurveInfo -n "C_snake4_pinf";
createNode closestPointOnSurface -n "C_snake9_pntSInfo";
createNode multiplyDivide -n "C_snakeLenGlobal6_md";
	setAttr ".i2" -type "float3" 1.3374949 1 1 ;
createNode multiplyDivide -n "C_snakeStretch6_md";
createNode multiplyDivide -n "C_snakeRevGlobal6_md";
	setAttr ".i2" -type "float3" 9.362505 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch6_md";
createNode plusMinusAverage -n "C_snakeRevLen6_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1[0:1]"  10.69999981 0;
createNode blendColors -n "C_snakeBlendRoot6_bln";
createNode plusMinusAverage -n "C_snakeOffset6_pma";
	setAttr -s 2 ".i1[1]"  0;
createNode basicNode -n "C_snake5_bsn";
	setAttr ".incv" -type "nurbsCurve" 
		3 7 0 no 3
		12 0 0 0 1 2 3 4 5 6 7 7 7
		10
		0 0 5
		0 0 3.8111111111111109
		0 0 2.6222222222222222
		0 0 1.4333333333333336
		0 0 0.24444444444444446
		0 0 -0.94444444444444464
		0 0 -2.1333333333333329
		0 0 -3.3222222222222229
		0 0 -4.5111111111111111
		0 0 -5.6999999999999993
		;
createNode pointOnCurveInfo -n "C_snake5_pinf";
createNode closestPointOnSurface -n "C_snake11_pntSInfo";
createNode multiplyDivide -n "C_snakeLenGlobal7_md";
	setAttr ".i2" -type "float3" 1.605001 1 1 ;
createNode multiplyDivide -n "C_snakeStretch7_md";
createNode multiplyDivide -n "C_snakeRevGlobal7_md";
	setAttr ".i2" -type "float3" 9.0949993 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch7_md";
createNode plusMinusAverage -n "C_snakeRevLen7_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1[0:1]"  10.69999981 0;
createNode blendColors -n "C_snakeBlendRoot7_bln";
createNode plusMinusAverage -n "C_snakeOffset7_pma";
	setAttr -s 2 ".i1[1]"  0;
createNode basicNode -n "C_snake6_bsn";
	setAttr ".incv" -type "nurbsCurve" 
		3 7 0 no 3
		12 0 0 0 1 2 3 4 5 6 7 7 7
		10
		0 0 5
		0 0 3.8111111111111109
		0 0 2.6222222222222222
		0 0 1.4333333333333336
		0 0 0.24444444444444446
		0 0 -0.94444444444444464
		0 0 -2.1333333333333329
		0 0 -3.3222222222222229
		0 0 -4.5111111111111111
		0 0 -5.6999999999999993
		;
createNode pointOnCurveInfo -n "C_snake6_pinf";
createNode closestPointOnSurface -n "C_snake13_pntSInfo";
createNode multiplyDivide -n "C_snakeLenGlobal8_md";
	setAttr ".i2" -type "float3" 1.872497 1 1 ;
createNode multiplyDivide -n "C_snakeStretch8_md";
createNode multiplyDivide -n "C_snakeRevGlobal8_md";
	setAttr ".i2" -type "float3" 8.8275032 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch8_md";
createNode plusMinusAverage -n "C_snakeRevLen8_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1[0:1]"  10.69999981 0;
createNode blendColors -n "C_snakeBlendRoot8_bln";
createNode plusMinusAverage -n "C_snakeOffset8_pma";
	setAttr -s 2 ".i1[1]"  0;
createNode basicNode -n "C_snake7_bsn";
	setAttr ".incv" -type "nurbsCurve" 
		3 7 0 no 3
		12 0 0 0 1 2 3 4 5 6 7 7 7
		10
		0 0 5
		0 0 3.8111111111111109
		0 0 2.6222222222222222
		0 0 1.4333333333333336
		0 0 0.24444444444444446
		0 0 -0.94444444444444464
		0 0 -2.1333333333333329
		0 0 -3.3222222222222229
		0 0 -4.5111111111111111
		0 0 -5.6999999999999993
		;
createNode pointOnCurveInfo -n "C_snake7_pinf";
createNode closestPointOnSurface -n "C_snake15_pntSInfo";
createNode multiplyDivide -n "C_snakeLenGlobal9_md";
	setAttr ".i2" -type "float3" 2.140003 1 1 ;
createNode multiplyDivide -n "C_snakeStretch9_md";
createNode multiplyDivide -n "C_snakeRevGlobal9_md";
	setAttr ".i2" -type "float3" 8.5599966 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch9_md";
createNode plusMinusAverage -n "C_snakeRevLen9_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1[0:1]"  10.69999981 0;
createNode blendColors -n "C_snakeBlendRoot9_bln";
createNode plusMinusAverage -n "C_snakeOffset9_pma";
	setAttr -s 2 ".i1[1]"  0;
createNode basicNode -n "C_snake8_bsn";
	setAttr ".incv" -type "nurbsCurve" 
		3 7 0 no 3
		12 0 0 0 1 2 3 4 5 6 7 7 7
		10
		0 0 5
		0 0 3.8111111111111109
		0 0 2.6222222222222222
		0 0 1.4333333333333336
		0 0 0.24444444444444446
		0 0 -0.94444444444444464
		0 0 -2.1333333333333329
		0 0 -3.3222222222222229
		0 0 -4.5111111111111111
		0 0 -5.6999999999999993
		;
createNode pointOnCurveInfo -n "C_snake8_pinf";
createNode closestPointOnSurface -n "C_snake17_pntSInfo";
createNode multiplyDivide -n "C_snakeLenGlobal10_md";
	setAttr ".i2" -type "float3" 2.4074991 1 1 ;
createNode multiplyDivide -n "C_snakeStretch10_md";
createNode multiplyDivide -n "C_snakeRevGlobal10_md";
	setAttr ".i2" -type "float3" 8.2925014 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch10_md";
createNode plusMinusAverage -n "C_snakeRevLen10_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1[0:1]"  10.69999981 0;
createNode blendColors -n "C_snakeBlendRoot10_bln";
createNode plusMinusAverage -n "C_snakeOffset10_pma";
	setAttr -s 2 ".i1[1]"  0;
createNode basicNode -n "C_snake9_bsn";
	setAttr ".incv" -type "nurbsCurve" 
		3 7 0 no 3
		12 0 0 0 1 2 3 4 5 6 7 7 7
		10
		0 0 5
		0 0 3.8111111111111109
		0 0 2.6222222222222222
		0 0 1.4333333333333336
		0 0 0.24444444444444446
		0 0 -0.94444444444444464
		0 0 -2.1333333333333329
		0 0 -3.3222222222222229
		0 0 -4.5111111111111111
		0 0 -5.6999999999999993
		;
createNode pointOnCurveInfo -n "C_snake9_pinf";
createNode closestPointOnSurface -n "C_snake19_pntSInfo";
createNode multiplyDivide -n "C_snakeLenGlobal11_md";
	setAttr ".i2" -type "float3" 2.6749949 1 1 ;
createNode multiplyDivide -n "C_snakeStretch11_md";
createNode multiplyDivide -n "C_snakeRevGlobal11_md";
	setAttr ".i2" -type "float3" 8.0250053 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch11_md";
createNode plusMinusAverage -n "C_snakeRevLen11_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1[0:1]"  10.69999981 0;
createNode blendColors -n "C_snakeBlendRoot11_bln";
createNode plusMinusAverage -n "C_snakeOffset11_pma";
	setAttr -s 2 ".i1[1]"  0;
createNode basicNode -n "C_snake10_bsn";
	setAttr ".incv" -type "nurbsCurve" 
		3 7 0 no 3
		12 0 0 0 1 2 3 4 5 6 7 7 7
		10
		0 0 5
		0 0 3.8111111111111109
		0 0 2.6222222222222222
		0 0 1.4333333333333336
		0 0 0.24444444444444446
		0 0 -0.94444444444444464
		0 0 -2.1333333333333329
		0 0 -3.3222222222222229
		0 0 -4.5111111111111111
		0 0 -5.6999999999999993
		;
createNode pointOnCurveInfo -n "C_snake10_pinf";
createNode closestPointOnSurface -n "C_snake21_pntSInfo";
createNode multiplyDivide -n "C_snakeLenGlobal12_md";
	setAttr ".i2" -type "float3" 2.9425011 1 1 ;
createNode multiplyDivide -n "C_snakeStretch12_md";
createNode multiplyDivide -n "C_snakeRevGlobal12_md";
	setAttr ".i2" -type "float3" 7.7574987 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch12_md";
createNode plusMinusAverage -n "C_snakeRevLen12_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1[0:1]"  10.69999981 0;
createNode blendColors -n "C_snakeBlendRoot12_bln";
createNode plusMinusAverage -n "C_snakeOffset12_pma";
	setAttr -s 2 ".i1[1]"  0;
createNode basicNode -n "C_snake11_bsn";
	setAttr ".incv" -type "nurbsCurve" 
		3 7 0 no 3
		12 0 0 0 1 2 3 4 5 6 7 7 7
		10
		0 0 5
		0 0 3.8111111111111109
		0 0 2.6222222222222222
		0 0 1.4333333333333336
		0 0 0.24444444444444446
		0 0 -0.94444444444444464
		0 0 -2.1333333333333329
		0 0 -3.3222222222222229
		0 0 -4.5111111111111111
		0 0 -5.6999999999999993
		;
createNode pointOnCurveInfo -n "C_snake11_pinf";
createNode closestPointOnSurface -n "C_snake23_pntSInfo";
createNode multiplyDivide -n "C_snakeLenGlobal13_md";
	setAttr ".i2" -type "float3" 3.2099969 1 1 ;
createNode multiplyDivide -n "C_snakeStretch13_md";
createNode multiplyDivide -n "C_snakeRevGlobal13_md";
	setAttr ".i2" -type "float3" 7.4900031 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch13_md";
createNode plusMinusAverage -n "C_snakeRevLen13_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1[0:1]"  10.69999981 0;
createNode blendColors -n "C_snakeBlendRoot13_bln";
createNode plusMinusAverage -n "C_snakeOffset13_pma";
	setAttr -s 2 ".i1[1]"  0;
createNode basicNode -n "C_snake12_bsn";
	setAttr ".incv" -type "nurbsCurve" 
		3 7 0 no 3
		12 0 0 0 1 2 3 4 5 6 7 7 7
		10
		0 0 5
		0 0 3.8111111111111109
		0 0 2.6222222222222222
		0 0 1.4333333333333336
		0 0 0.24444444444444446
		0 0 -0.94444444444444464
		0 0 -2.1333333333333329
		0 0 -3.3222222222222229
		0 0 -4.5111111111111111
		0 0 -5.6999999999999993
		;
createNode pointOnCurveInfo -n "C_snake12_pinf";
createNode closestPointOnSurface -n "C_snake25_pntSInfo";
createNode multiplyDivide -n "C_snakeLenGlobal14_md";
	setAttr ".i2" -type "float3" 3.4775031 1 1 ;
createNode multiplyDivide -n "C_snakeStretch14_md";
createNode multiplyDivide -n "C_snakeRevGlobal14_md";
	setAttr ".i2" -type "float3" 7.222497 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch14_md";
createNode plusMinusAverage -n "C_snakeRevLen14_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1[0:1]"  10.69999981 0;
createNode blendColors -n "C_snakeBlendRoot14_bln";
createNode plusMinusAverage -n "C_snakeOffset14_pma";
	setAttr -s 2 ".i1[1]"  0;
createNode basicNode -n "C_snake13_bsn";
	setAttr ".incv" -type "nurbsCurve" 
		3 7 0 no 3
		12 0 0 0 1 2 3 4 5 6 7 7 7
		10
		0 0 5
		0 0 3.8111111111111109
		0 0 2.6222222222222222
		0 0 1.4333333333333336
		0 0 0.24444444444444446
		0 0 -0.94444444444444464
		0 0 -2.1333333333333329
		0 0 -3.3222222222222229
		0 0 -4.5111111111111111
		0 0 -5.6999999999999993
		;
createNode pointOnCurveInfo -n "C_snake13_pinf";
createNode closestPointOnSurface -n "C_snake27_pntSInfo";
createNode multiplyDivide -n "C_snakeLenGlobal15_md";
	setAttr ".i2" -type "float3" 3.7449989 1 1 ;
createNode multiplyDivide -n "C_snakeStretch15_md";
createNode multiplyDivide -n "C_snakeRevGlobal15_md";
	setAttr ".i2" -type "float3" 6.9550009 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch15_md";
createNode plusMinusAverage -n "C_snakeRevLen15_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1[0:1]"  10.69999981 0;
createNode blendColors -n "C_snakeBlendRoot15_bln";
createNode plusMinusAverage -n "C_snakeOffset15_pma";
	setAttr -s 2 ".i1[1]"  0;
createNode basicNode -n "C_snake14_bsn";
	setAttr ".incv" -type "nurbsCurve" 
		3 7 0 no 3
		12 0 0 0 1 2 3 4 5 6 7 7 7
		10
		0 0 5
		0 0 3.8111111111111109
		0 0 2.6222222222222222
		0 0 1.4333333333333336
		0 0 0.24444444444444446
		0 0 -0.94444444444444464
		0 0 -2.1333333333333329
		0 0 -3.3222222222222229
		0 0 -4.5111111111111111
		0 0 -5.6999999999999993
		;
createNode pointOnCurveInfo -n "C_snake14_pinf";
createNode closestPointOnSurface -n "C_snake29_pntSInfo";
createNode multiplyDivide -n "C_snakeLenGlobal16_md";
	setAttr ".i2" -type "float3" 4.0124998 1 1 ;
createNode multiplyDivide -n "C_snakeStretch16_md";
createNode multiplyDivide -n "C_snakeRevGlobal16_md";
	setAttr ".i2" -type "float3" 6.6875 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch16_md";
createNode plusMinusAverage -n "C_snakeRevLen16_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1[0:1]"  10.69999981 0;
createNode blendColors -n "C_snakeBlendRoot16_bln";
createNode plusMinusAverage -n "C_snakeOffset16_pma";
	setAttr -s 2 ".i1[1]"  0;
createNode basicNode -n "C_snake15_bsn";
	setAttr ".incv" -type "nurbsCurve" 
		3 7 0 no 3
		12 0 0 0 1 2 3 4 5 6 7 7 7
		10
		0 0 5
		0 0 3.8111111111111109
		0 0 2.6222222222222222
		0 0 1.4333333333333336
		0 0 0.24444444444444446
		0 0 -0.94444444444444464
		0 0 -2.1333333333333329
		0 0 -3.3222222222222229
		0 0 -4.5111111111111111
		0 0 -5.6999999999999993
		;
createNode pointOnCurveInfo -n "C_snake15_pinf";
createNode closestPointOnSurface -n "C_snake31_pntSInfo";
createNode multiplyDivide -n "C_snakeLenGlobal17_md";
	setAttr ".i2" -type "float3" 4.2800012 1 1 ;
createNode multiplyDivide -n "C_snakeStretch17_md";
createNode multiplyDivide -n "C_snakeRevGlobal17_md";
	setAttr ".i2" -type "float3" 6.4199991 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch17_md";
createNode plusMinusAverage -n "C_snakeRevLen17_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1[0:1]"  10.69999981 0;
createNode blendColors -n "C_snakeBlendRoot17_bln";
createNode plusMinusAverage -n "C_snakeOffset17_pma";
	setAttr -s 2 ".i1[1]"  0;
createNode basicNode -n "C_snake16_bsn";
	setAttr ".incv" -type "nurbsCurve" 
		3 7 0 no 3
		12 0 0 0 1 2 3 4 5 6 7 7 7
		10
		0 0 5
		0 0 3.8111111111111109
		0 0 2.6222222222222222
		0 0 1.4333333333333336
		0 0 0.24444444444444446
		0 0 -0.94444444444444464
		0 0 -2.1333333333333329
		0 0 -3.3222222222222229
		0 0 -4.5111111111111111
		0 0 -5.6999999999999993
		;
createNode pointOnCurveInfo -n "C_snake16_pinf";
createNode closestPointOnSurface -n "C_snake33_pntSInfo";
createNode multiplyDivide -n "C_snakeLenGlobal18_md";
	setAttr ".i2" -type "float3" 4.5474968 1 1 ;
createNode multiplyDivide -n "C_snakeStretch18_md";
createNode multiplyDivide -n "C_snakeRevGlobal18_md";
	setAttr ".i2" -type "float3" 6.152503 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch18_md";
createNode plusMinusAverage -n "C_snakeRevLen18_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1[0:1]"  10.69999981 0;
createNode blendColors -n "C_snakeBlendRoot18_bln";
createNode plusMinusAverage -n "C_snakeOffset18_pma";
	setAttr -s 2 ".i1[1]"  0;
createNode basicNode -n "C_snake17_bsn";
	setAttr ".incv" -type "nurbsCurve" 
		3 7 0 no 3
		12 0 0 0 1 2 3 4 5 6 7 7 7
		10
		0 0 5
		0 0 3.8111111111111109
		0 0 2.6222222222222222
		0 0 1.4333333333333336
		0 0 0.24444444444444446
		0 0 -0.94444444444444464
		0 0 -2.1333333333333329
		0 0 -3.3222222222222229
		0 0 -4.5111111111111111
		0 0 -5.6999999999999993
		;
createNode pointOnCurveInfo -n "C_snake17_pinf";
createNode closestPointOnSurface -n "C_snake35_pntSInfo";
createNode multiplyDivide -n "C_snakeLenGlobal19_md";
	setAttr ".i2" -type "float3" 4.8150029 1 1 ;
createNode multiplyDivide -n "C_snakeStretch19_md";
createNode multiplyDivide -n "C_snakeRevGlobal19_md";
	setAttr ".i2" -type "float3" 5.8849969 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch19_md";
createNode plusMinusAverage -n "C_snakeRevLen19_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1[0:1]"  10.69999981 0;
createNode blendColors -n "C_snakeBlendRoot19_bln";
createNode plusMinusAverage -n "C_snakeOffset19_pma";
	setAttr -s 2 ".i1[1]"  0;
createNode basicNode -n "C_snake18_bsn";
	setAttr ".incv" -type "nurbsCurve" 
		3 7 0 no 3
		12 0 0 0 1 2 3 4 5 6 7 7 7
		10
		0 0 5
		0 0 3.8111111111111109
		0 0 2.6222222222222222
		0 0 1.4333333333333336
		0 0 0.24444444444444446
		0 0 -0.94444444444444464
		0 0 -2.1333333333333329
		0 0 -3.3222222222222229
		0 0 -4.5111111111111111
		0 0 -5.6999999999999993
		;
createNode pointOnCurveInfo -n "C_snake18_pinf";
createNode closestPointOnSurface -n "C_snake37_pntSInfo";
createNode multiplyDivide -n "C_snakeLenGlobal20_md";
	setAttr ".i2" -type "float3" 5.082499 1 1 ;
createNode multiplyDivide -n "C_snakeStretch20_md";
createNode multiplyDivide -n "C_snakeRevGlobal20_md";
	setAttr ".i2" -type "float3" 5.6175008 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch20_md";
createNode plusMinusAverage -n "C_snakeRevLen20_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1[0:1]"  10.69999981 0;
createNode blendColors -n "C_snakeBlendRoot20_bln";
createNode plusMinusAverage -n "C_snakeOffset20_pma";
	setAttr -s 2 ".i1[1]"  0;
createNode basicNode -n "C_snake19_bsn";
	setAttr ".incv" -type "nurbsCurve" 
		3 7 0 no 3
		12 0 0 0 1 2 3 4 5 6 7 7 7
		10
		0 0 5
		0 0 3.8111111111111109
		0 0 2.6222222222222222
		0 0 1.4333333333333336
		0 0 0.24444444444444446
		0 0 -0.94444444444444464
		0 0 -2.1333333333333329
		0 0 -3.3222222222222229
		0 0 -4.5111111111111111
		0 0 -5.6999999999999993
		;
createNode pointOnCurveInfo -n "C_snake19_pinf";
createNode closestPointOnSurface -n "C_snake39_pntSInfo";
createNode multiplyDivide -n "C_snakeLenGlobal21_md";
	setAttr ".i2" -type "float3" 5.3500051 1 1 ;
createNode multiplyDivide -n "C_snakeStretch21_md";
createNode multiplyDivide -n "C_snakeRevGlobal21_md";
	setAttr ".i2" -type "float3" 5.3499947 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch21_md";
createNode plusMinusAverage -n "C_snakeRevLen21_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1[0:1]"  10.69999981 0;
createNode blendColors -n "C_snakeBlendRoot21_bln";
createNode plusMinusAverage -n "C_snakeOffset21_pma";
	setAttr -s 2 ".i1[1]"  0;
createNode basicNode -n "C_snake20_bsn";
	setAttr ".incv" -type "nurbsCurve" 
		3 7 0 no 3
		12 0 0 0 1 2 3 4 5 6 7 7 7
		10
		0 0 5
		0 0 3.8111111111111109
		0 0 2.6222222222222222
		0 0 1.4333333333333336
		0 0 0.24444444444444446
		0 0 -0.94444444444444464
		0 0 -2.1333333333333329
		0 0 -3.3222222222222229
		0 0 -4.5111111111111111
		0 0 -5.6999999999999993
		;
createNode pointOnCurveInfo -n "C_snake20_pinf";
createNode closestPointOnSurface -n "C_snake41_pntSInfo";
createNode multiplyDivide -n "C_snakeLenGlobal22_md";
	setAttr ".i2" -type "float3" 5.6175008 1 1 ;
createNode multiplyDivide -n "C_snakeStretch22_md";
createNode multiplyDivide -n "C_snakeRevGlobal22_md";
	setAttr ".i2" -type "float3" 5.082499 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch22_md";
createNode plusMinusAverage -n "C_snakeRevLen22_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1[0:1]"  10.69999981 0;
createNode blendColors -n "C_snakeBlendRoot22_bln";
createNode plusMinusAverage -n "C_snakeOffset22_pma";
	setAttr -s 2 ".i1[1]"  0;
createNode basicNode -n "C_snake21_bsn";
	setAttr ".incv" -type "nurbsCurve" 
		3 7 0 no 3
		12 0 0 0 1 2 3 4 5 6 7 7 7
		10
		0 0 5
		0 0 3.8111111111111109
		0 0 2.6222222222222222
		0 0 1.4333333333333336
		0 0 0.24444444444444446
		0 0 -0.94444444444444464
		0 0 -2.1333333333333329
		0 0 -3.3222222222222229
		0 0 -4.5111111111111111
		0 0 -5.6999999999999993
		;
createNode pointOnCurveInfo -n "C_snake21_pinf";
createNode closestPointOnSurface -n "C_snake43_pntSInfo";
createNode multiplyDivide -n "C_snakeLenGlobal23_md";
	setAttr ".i2" -type "float3" 5.8849969 1 1 ;
createNode multiplyDivide -n "C_snakeStretch23_md";
createNode multiplyDivide -n "C_snakeRevGlobal23_md";
	setAttr ".i2" -type "float3" 4.8150029 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch23_md";
createNode plusMinusAverage -n "C_snakeRevLen23_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1[0:1]"  10.69999981 0;
createNode blendColors -n "C_snakeBlendRoot23_bln";
createNode plusMinusAverage -n "C_snakeOffset23_pma";
	setAttr -s 2 ".i1[1]"  0;
createNode basicNode -n "C_snake22_bsn";
	setAttr ".incv" -type "nurbsCurve" 
		3 7 0 no 3
		12 0 0 0 1 2 3 4 5 6 7 7 7
		10
		0 0 5
		0 0 3.8111111111111109
		0 0 2.6222222222222222
		0 0 1.4333333333333336
		0 0 0.24444444444444446
		0 0 -0.94444444444444464
		0 0 -2.1333333333333329
		0 0 -3.3222222222222229
		0 0 -4.5111111111111111
		0 0 -5.6999999999999993
		;
createNode pointOnCurveInfo -n "C_snake22_pinf";
createNode closestPointOnSurface -n "C_snake45_pntSInfo";
createNode multiplyDivide -n "C_snakeLenGlobal24_md";
	setAttr ".i2" -type "float3" 6.152503 1 1 ;
createNode multiplyDivide -n "C_snakeStretch24_md";
createNode multiplyDivide -n "C_snakeRevGlobal24_md";
	setAttr ".i2" -type "float3" 4.5474968 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch24_md";
createNode plusMinusAverage -n "C_snakeRevLen24_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1[0:1]"  10.69999981 0;
createNode blendColors -n "C_snakeBlendRoot24_bln";
createNode plusMinusAverage -n "C_snakeOffset24_pma";
	setAttr -s 2 ".i1[1]"  0;
createNode basicNode -n "C_snake23_bsn";
	setAttr ".incv" -type "nurbsCurve" 
		3 7 0 no 3
		12 0 0 0 1 2 3 4 5 6 7 7 7
		10
		0 0 5
		0 0 3.8111111111111109
		0 0 2.6222222222222222
		0 0 1.4333333333333336
		0 0 0.24444444444444446
		0 0 -0.94444444444444464
		0 0 -2.1333333333333329
		0 0 -3.3222222222222229
		0 0 -4.5111111111111111
		0 0 -5.6999999999999993
		;
createNode pointOnCurveInfo -n "C_snake23_pinf";
createNode closestPointOnSurface -n "C_snake47_pntSInfo";
createNode multiplyDivide -n "C_snakeLenGlobal25_md";
	setAttr ".i2" -type "float3" 6.4199991 1 1 ;
createNode multiplyDivide -n "C_snakeStretch25_md";
createNode multiplyDivide -n "C_snakeRevGlobal25_md";
	setAttr ".i2" -type "float3" 4.2800012 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch25_md";
createNode plusMinusAverage -n "C_snakeRevLen25_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1[0:1]"  10.69999981 0;
createNode blendColors -n "C_snakeBlendRoot25_bln";
createNode plusMinusAverage -n "C_snakeOffset25_pma";
	setAttr -s 2 ".i1[1]"  0;
createNode basicNode -n "C_snake24_bsn";
	setAttr ".incv" -type "nurbsCurve" 
		3 7 0 no 3
		12 0 0 0 1 2 3 4 5 6 7 7 7
		10
		0 0 5
		0 0 3.8111111111111109
		0 0 2.6222222222222222
		0 0 1.4333333333333336
		0 0 0.24444444444444446
		0 0 -0.94444444444444464
		0 0 -2.1333333333333329
		0 0 -3.3222222222222229
		0 0 -4.5111111111111111
		0 0 -5.6999999999999993
		;
createNode pointOnCurveInfo -n "C_snake24_pinf";
createNode closestPointOnSurface -n "C_snake49_pntSInfo";
createNode multiplyDivide -n "C_snakeLenGlobal26_md";
	setAttr ".i2" -type "float3" 6.6875052 1 1 ;
createNode multiplyDivide -n "C_snakeStretch26_md";
createNode multiplyDivide -n "C_snakeRevGlobal26_md";
	setAttr ".i2" -type "float3" 4.012495 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch26_md";
createNode plusMinusAverage -n "C_snakeRevLen26_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1[0:1]"  10.69999981 0;
createNode blendColors -n "C_snakeBlendRoot26_bln";
createNode plusMinusAverage -n "C_snakeOffset26_pma";
	setAttr -s 2 ".i1[1]"  0;
createNode basicNode -n "C_snake25_bsn";
	setAttr ".incv" -type "nurbsCurve" 
		3 7 0 no 3
		12 0 0 0 1 2 3 4 5 6 7 7 7
		10
		0 0 5
		0 0 3.8111111111111109
		0 0 2.6222222222222222
		0 0 1.4333333333333336
		0 0 0.24444444444444446
		0 0 -0.94444444444444464
		0 0 -2.1333333333333329
		0 0 -3.3222222222222229
		0 0 -4.5111111111111111
		0 0 -5.6999999999999993
		;
createNode pointOnCurveInfo -n "C_snake25_pinf";
createNode closestPointOnSurface -n "C_snake51_pntSInfo";
createNode multiplyDivide -n "C_snakeLenGlobal27_md";
	setAttr ".i2" -type "float3" 6.9550009 1 1 ;
createNode multiplyDivide -n "C_snakeStretch27_md";
createNode multiplyDivide -n "C_snakeRevGlobal27_md";
	setAttr ".i2" -type "float3" 3.7449989 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch27_md";
createNode plusMinusAverage -n "C_snakeRevLen27_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1[0:1]"  10.69999981 0;
createNode blendColors -n "C_snakeBlendRoot27_bln";
createNode plusMinusAverage -n "C_snakeOffset27_pma";
	setAttr -s 2 ".i1[1]"  0;
createNode basicNode -n "C_snake26_bsn";
	setAttr ".incv" -type "nurbsCurve" 
		3 7 0 no 3
		12 0 0 0 1 2 3 4 5 6 7 7 7
		10
		0 0 5
		0 0 3.8111111111111109
		0 0 2.6222222222222222
		0 0 1.4333333333333336
		0 0 0.24444444444444446
		0 0 -0.94444444444444464
		0 0 -2.1333333333333329
		0 0 -3.3222222222222229
		0 0 -4.5111111111111111
		0 0 -5.6999999999999993
		;
createNode pointOnCurveInfo -n "C_snake26_pinf";
createNode closestPointOnSurface -n "C_snake53_pntSInfo";
createNode multiplyDivide -n "C_snakeLenGlobal28_md";
	setAttr ".i2" -type "float3" 7.222497 1 1 ;
createNode multiplyDivide -n "C_snakeStretch28_md";
createNode multiplyDivide -n "C_snakeRevGlobal28_md";
	setAttr ".i2" -type "float3" 3.4775031 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch28_md";
createNode plusMinusAverage -n "C_snakeRevLen28_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1[0:1]"  10.69999981 0;
createNode blendColors -n "C_snakeBlendRoot28_bln";
createNode plusMinusAverage -n "C_snakeOffset28_pma";
	setAttr -s 2 ".i1[1]"  0;
createNode basicNode -n "C_snake27_bsn";
	setAttr ".incv" -type "nurbsCurve" 
		3 7 0 no 3
		12 0 0 0 1 2 3 4 5 6 7 7 7
		10
		0 0 5
		0 0 3.8111111111111109
		0 0 2.6222222222222222
		0 0 1.4333333333333336
		0 0 0.24444444444444446
		0 0 -0.94444444444444464
		0 0 -2.1333333333333329
		0 0 -3.3222222222222229
		0 0 -4.5111111111111111
		0 0 -5.6999999999999993
		;
createNode pointOnCurveInfo -n "C_snake27_pinf";
createNode closestPointOnSurface -n "C_snake55_pntSInfo";
createNode multiplyDivide -n "C_snakeLenGlobal29_md";
	setAttr ".i2" -type "float3" 7.4900031 1 1 ;
createNode multiplyDivide -n "C_snakeStretch29_md";
createNode multiplyDivide -n "C_snakeRevGlobal29_md";
	setAttr ".i2" -type "float3" 3.2099969 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch29_md";
createNode plusMinusAverage -n "C_snakeRevLen29_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1[0:1]"  10.69999981 0;
createNode blendColors -n "C_snakeBlendRoot29_bln";
createNode plusMinusAverage -n "C_snakeOffset29_pma";
	setAttr -s 2 ".i1[1]"  0;
createNode basicNode -n "C_snake28_bsn";
	setAttr ".incv" -type "nurbsCurve" 
		3 7 0 no 3
		12 0 0 0 1 2 3 4 5 6 7 7 7
		10
		0 0 5
		0 0 3.8111111111111109
		0 0 2.6222222222222222
		0 0 1.4333333333333336
		0 0 0.24444444444444446
		0 0 -0.94444444444444464
		0 0 -2.1333333333333329
		0 0 -3.3222222222222229
		0 0 -4.5111111111111111
		0 0 -5.6999999999999993
		;
createNode pointOnCurveInfo -n "C_snake28_pinf";
createNode closestPointOnSurface -n "C_snake57_pntSInfo";
createNode multiplyDivide -n "C_snakeLenGlobal30_md";
	setAttr ".i2" -type "float3" 7.7574992 1 1 ;
createNode multiplyDivide -n "C_snakeStretch30_md";
createNode multiplyDivide -n "C_snakeRevGlobal30_md";
	setAttr ".i2" -type "float3" 2.9425011 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch30_md";
createNode plusMinusAverage -n "C_snakeRevLen30_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1[0:1]"  10.69999981 0;
createNode blendColors -n "C_snakeBlendRoot30_bln";
createNode plusMinusAverage -n "C_snakeOffset30_pma";
	setAttr -s 2 ".i1[1]"  0;
createNode basicNode -n "C_snake29_bsn";
	setAttr ".incv" -type "nurbsCurve" 
		3 7 0 no 3
		12 0 0 0 1 2 3 4 5 6 7 7 7
		10
		0 0 5
		0 0 3.8111111111111109
		0 0 2.6222222222222222
		0 0 1.4333333333333336
		0 0 0.24444444444444446
		0 0 -0.94444444444444464
		0 0 -2.1333333333333329
		0 0 -3.3222222222222229
		0 0 -4.5111111111111111
		0 0 -5.6999999999999993
		;
createNode pointOnCurveInfo -n "C_snake29_pinf";
createNode closestPointOnSurface -n "C_snake59_pntSInfo";
createNode multiplyDivide -n "C_snakeLenGlobal31_md";
	setAttr ".i2" -type "float3" 8.0250053 1 1 ;
createNode multiplyDivide -n "C_snakeStretch31_md";
createNode multiplyDivide -n "C_snakeRevGlobal31_md";
	setAttr ".i2" -type "float3" 2.6749949 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch31_md";
createNode plusMinusAverage -n "C_snakeRevLen31_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1[0:1]"  10.69999981 0;
createNode blendColors -n "C_snakeBlendRoot31_bln";
createNode plusMinusAverage -n "C_snakeOffset31_pma";
	setAttr -s 2 ".i1[1]"  0;
createNode basicNode -n "C_snake30_bsn";
	setAttr ".incv" -type "nurbsCurve" 
		3 7 0 no 3
		12 0 0 0 1 2 3 4 5 6 7 7 7
		10
		0 0 5
		0 0 3.8111111111111109
		0 0 2.6222222222222222
		0 0 1.4333333333333336
		0 0 0.24444444444444446
		0 0 -0.94444444444444464
		0 0 -2.1333333333333329
		0 0 -3.3222222222222229
		0 0 -4.5111111111111111
		0 0 -5.6999999999999993
		;
createNode pointOnCurveInfo -n "C_snake30_pinf";
createNode closestPointOnSurface -n "C_snake61_pntSInfo";
createNode multiplyDivide -n "C_snakeLenGlobal32_md";
	setAttr ".i2" -type "float3" 8.2925014 1 1 ;
createNode multiplyDivide -n "C_snakeStretch32_md";
createNode multiplyDivide -n "C_snakeRevGlobal32_md";
	setAttr ".i2" -type "float3" 2.4074991 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch32_md";
createNode plusMinusAverage -n "C_snakeRevLen32_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1[0:1]"  10.69999981 0;
createNode blendColors -n "C_snakeBlendRoot32_bln";
createNode plusMinusAverage -n "C_snakeOffset32_pma";
	setAttr -s 2 ".i1[1]"  0;
createNode basicNode -n "C_snake31_bsn";
	setAttr ".incv" -type "nurbsCurve" 
		3 7 0 no 3
		12 0 0 0 1 2 3 4 5 6 7 7 7
		10
		0 0 5
		0 0 3.8111111111111109
		0 0 2.6222222222222222
		0 0 1.4333333333333336
		0 0 0.24444444444444446
		0 0 -0.94444444444444464
		0 0 -2.1333333333333329
		0 0 -3.3222222222222229
		0 0 -4.5111111111111111
		0 0 -5.6999999999999993
		;
createNode pointOnCurveInfo -n "C_snake31_pinf";
createNode closestPointOnSurface -n "C_snake63_pntSInfo";
createNode multiplyDivide -n "C_snakeLenGlobal33_md";
	setAttr ".i2" -type "float3" 8.5599966 1 1 ;
createNode multiplyDivide -n "C_snakeStretch33_md";
createNode multiplyDivide -n "C_snakeRevGlobal33_md";
	setAttr ".i2" -type "float3" 2.140003 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch33_md";
createNode plusMinusAverage -n "C_snakeRevLen33_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1[0:1]"  10.69999981 0;
createNode blendColors -n "C_snakeBlendRoot33_bln";
createNode plusMinusAverage -n "C_snakeOffset33_pma";
	setAttr -s 2 ".i1[1]"  0;
createNode basicNode -n "C_snake32_bsn";
	setAttr ".incv" -type "nurbsCurve" 
		3 7 0 no 3
		12 0 0 0 1 2 3 4 5 6 7 7 7
		10
		0 0 5
		0 0 3.8111111111111109
		0 0 2.6222222222222222
		0 0 1.4333333333333336
		0 0 0.24444444444444446
		0 0 -0.94444444444444464
		0 0 -2.1333333333333329
		0 0 -3.3222222222222229
		0 0 -4.5111111111111111
		0 0 -5.6999999999999993
		;
createNode pointOnCurveInfo -n "C_snake32_pinf";
createNode closestPointOnSurface -n "C_snake65_pntSInfo";
createNode multiplyDivide -n "C_snakeLenGlobal34_md";
	setAttr ".i2" -type "float3" 8.8275032 1 1 ;
createNode multiplyDivide -n "C_snakeStretch34_md";
createNode multiplyDivide -n "C_snakeRevGlobal34_md";
	setAttr ".i2" -type "float3" 1.872497 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch34_md";
createNode plusMinusAverage -n "C_snakeRevLen34_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1[0:1]"  10.69999981 0;
createNode blendColors -n "C_snakeBlendRoot34_bln";
createNode plusMinusAverage -n "C_snakeOffset34_pma";
	setAttr -s 2 ".i1[1]"  0;
createNode basicNode -n "C_snake33_bsn";
	setAttr ".incv" -type "nurbsCurve" 
		3 7 0 no 3
		12 0 0 0 1 2 3 4 5 6 7 7 7
		10
		0 0 5
		0 0 3.8111111111111109
		0 0 2.6222222222222222
		0 0 1.4333333333333336
		0 0 0.24444444444444446
		0 0 -0.94444444444444464
		0 0 -2.1333333333333329
		0 0 -3.3222222222222229
		0 0 -4.5111111111111111
		0 0 -5.6999999999999993
		;
createNode pointOnCurveInfo -n "C_snake33_pinf";
createNode closestPointOnSurface -n "C_snake67_pntSInfo";
createNode multiplyDivide -n "C_snakeLenGlobal35_md";
	setAttr ".i2" -type "float3" 9.0949993 1 1 ;
createNode multiplyDivide -n "C_snakeStretch35_md";
createNode multiplyDivide -n "C_snakeRevGlobal35_md";
	setAttr ".i2" -type "float3" 1.605001 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch35_md";
createNode plusMinusAverage -n "C_snakeRevLen35_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1[0:1]"  10.69999981 0;
createNode blendColors -n "C_snakeBlendRoot35_bln";
createNode plusMinusAverage -n "C_snakeOffset35_pma";
	setAttr -s 2 ".i1[1]"  0;
createNode basicNode -n "C_snake34_bsn";
	setAttr ".incv" -type "nurbsCurve" 
		3 7 0 no 3
		12 0 0 0 1 2 3 4 5 6 7 7 7
		10
		0 0 5
		0 0 3.8111111111111109
		0 0 2.6222222222222222
		0 0 1.4333333333333336
		0 0 0.24444444444444446
		0 0 -0.94444444444444464
		0 0 -2.1333333333333329
		0 0 -3.3222222222222229
		0 0 -4.5111111111111111
		0 0 -5.6999999999999993
		;
createNode pointOnCurveInfo -n "C_snake34_pinf";
createNode closestPointOnSurface -n "C_snake69_pntSInfo";
createNode multiplyDivide -n "C_snakeLenGlobal36_md";
	setAttr ".i2" -type "float3" 9.362505 1 1 ;
createNode multiplyDivide -n "C_snakeStretch36_md";
createNode multiplyDivide -n "C_snakeRevGlobal36_md";
	setAttr ".i2" -type "float3" 1.3374949 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch36_md";
createNode plusMinusAverage -n "C_snakeRevLen36_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1[0:1]"  10.69999981 0;
createNode blendColors -n "C_snakeBlendRoot36_bln";
createNode plusMinusAverage -n "C_snakeOffset36_pma";
	setAttr -s 2 ".i1[1]"  0;
createNode basicNode -n "C_snake35_bsn";
	setAttr ".incv" -type "nurbsCurve" 
		3 7 0 no 3
		12 0 0 0 1 2 3 4 5 6 7 7 7
		10
		0 0 5
		0 0 3.8111111111111109
		0 0 2.6222222222222222
		0 0 1.4333333333333336
		0 0 0.24444444444444446
		0 0 -0.94444444444444464
		0 0 -2.1333333333333329
		0 0 -3.3222222222222229
		0 0 -4.5111111111111111
		0 0 -5.6999999999999993
		;
createNode pointOnCurveInfo -n "C_snake35_pinf";
createNode closestPointOnSurface -n "C_snake71_pntSInfo";
createNode multiplyDivide -n "C_snakeLenGlobal37_md";
	setAttr ".i2" -type "float3" 9.6300011 1 1 ;
createNode multiplyDivide -n "C_snakeStretch37_md";
createNode multiplyDivide -n "C_snakeRevGlobal37_md";
	setAttr ".i2" -type "float3" 1.069999 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch37_md";
createNode plusMinusAverage -n "C_snakeRevLen37_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1[0:1]"  10.69999981 0;
createNode blendColors -n "C_snakeBlendRoot37_bln";
createNode plusMinusAverage -n "C_snakeOffset37_pma";
	setAttr -s 2 ".i1[1]"  0;
createNode basicNode -n "C_snake36_bsn";
	setAttr ".incv" -type "nurbsCurve" 
		3 7 0 no 3
		12 0 0 0 1 2 3 4 5 6 7 7 7
		10
		0 0 5
		0 0 3.8111111111111109
		0 0 2.6222222222222222
		0 0 1.4333333333333336
		0 0 0.24444444444444446
		0 0 -0.94444444444444464
		0 0 -2.1333333333333329
		0 0 -3.3222222222222229
		0 0 -4.5111111111111111
		0 0 -5.6999999999999993
		;
createNode pointOnCurveInfo -n "C_snake36_pinf";
createNode closestPointOnSurface -n "C_snake73_pntSInfo";
createNode multiplyDivide -n "C_snakeLenGlobal38_md";
	setAttr ".i2" -type "float3" 9.8974972 1 1 ;
createNode multiplyDivide -n "C_snakeStretch38_md";
createNode multiplyDivide -n "C_snakeRevGlobal38_md";
	setAttr ".i2" -type "float3" 0.80250305 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch38_md";
createNode plusMinusAverage -n "C_snakeRevLen38_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1[0:1]"  10.69999981 0;
createNode blendColors -n "C_snakeBlendRoot38_bln";
createNode plusMinusAverage -n "C_snakeOffset38_pma";
	setAttr -s 2 ".i1[1]"  0;
createNode basicNode -n "C_snake37_bsn";
	setAttr ".incv" -type "nurbsCurve" 
		3 7 0 no 3
		12 0 0 0 1 2 3 4 5 6 7 7 7
		10
		0 0 5
		0 0 3.8111111111111109
		0 0 2.6222222222222222
		0 0 1.4333333333333336
		0 0 0.24444444444444446
		0 0 -0.94444444444444464
		0 0 -2.1333333333333329
		0 0 -3.3222222222222229
		0 0 -4.5111111111111111
		0 0 -5.6999999999999993
		;
createNode pointOnCurveInfo -n "C_snake37_pinf";
createNode closestPointOnSurface -n "C_snake75_pntSInfo";
createNode multiplyDivide -n "C_snakeLenGlobal39_md";
	setAttr ".i2" -type "float3" 10.165003 1 1 ;
createNode multiplyDivide -n "C_snakeStretch39_md";
createNode multiplyDivide -n "C_snakeRevGlobal39_md";
	setAttr ".i2" -type "float3" 0.53499693 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch39_md";
createNode plusMinusAverage -n "C_snakeRevLen39_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1[0:1]"  10.69999981 0;
createNode blendColors -n "C_snakeBlendRoot39_bln";
createNode plusMinusAverage -n "C_snakeOffset39_pma";
	setAttr -s 2 ".i1[1]"  0;
createNode basicNode -n "C_snake38_bsn";
	setAttr ".incv" -type "nurbsCurve" 
		3 7 0 no 3
		12 0 0 0 1 2 3 4 5 6 7 7 7
		10
		0 0 5
		0 0 3.8111111111111109
		0 0 2.6222222222222222
		0 0 1.4333333333333336
		0 0 0.24444444444444446
		0 0 -0.94444444444444464
		0 0 -2.1333333333333329
		0 0 -3.3222222222222229
		0 0 -4.5111111111111111
		0 0 -5.6999999999999993
		;
createNode pointOnCurveInfo -n "C_snake38_pinf";
createNode closestPointOnSurface -n "C_snake77_pntSInfo";
createNode multiplyDivide -n "C_snakeLenGlobal40_md";
	setAttr ".i2" -type "float3" 10.432499 1 1 ;
createNode multiplyDivide -n "C_snakeStretch40_md";
createNode multiplyDivide -n "C_snakeRevGlobal40_md";
	setAttr ".i2" -type "float3" 0.26750103 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch40_md";
createNode plusMinusAverage -n "C_snakeRevLen40_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1[0:1]"  10.69999981 0;
createNode blendColors -n "C_snakeBlendRoot40_bln";
createNode plusMinusAverage -n "C_snakeOffset40_pma";
	setAttr -s 2 ".i1[1]"  0;
createNode basicNode -n "C_snake39_bsn";
	setAttr ".incv" -type "nurbsCurve" 
		3 7 0 no 3
		12 0 0 0 1 2 3 4 5 6 7 7 7
		10
		0 0 5
		0 0 3.8111111111111109
		0 0 2.6222222222222222
		0 0 1.4333333333333336
		0 0 0.24444444444444446
		0 0 -0.94444444444444464
		0 0 -2.1333333333333329
		0 0 -3.3222222222222229
		0 0 -4.5111111111111111
		0 0 -5.6999999999999993
		;
createNode pointOnCurveInfo -n "C_snake39_pinf";
createNode closestPointOnSurface -n "C_snake79_pntSInfo";
createNode multiplyDivide -n "C_snakeLenGlobal41_md";
	setAttr ".i2" -type "float3" 10.699995 1 1 ;
createNode multiplyDivide -n "C_snakeStretch41_md";
createNode multiplyDivide -n "C_snakeRevGlobal41_md";
	setAttr ".i2" -type "float3" 5.1021575e-006 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch41_md";
createNode plusMinusAverage -n "C_snakeRevLen41_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1[0:1]"  10.69999981 0;
createNode blendColors -n "C_snakeBlendRoot41_bln";
createNode plusMinusAverage -n "C_snakeOffset41_pma";
	setAttr -s 2 ".i1[1]"  0;
createNode basicNode -n "C_snake40_bsn";
	setAttr ".incv" -type "nurbsCurve" 
		3 7 0 no 3
		12 0 0 0 1 2 3 4 5 6 7 7 7
		10
		0 0 5
		0 0 3.8111111111111109
		0 0 2.6222222222222222
		0 0 1.4333333333333336
		0 0 0.24444444444444446
		0 0 -0.94444444444444464
		0 0 -2.1333333333333329
		0 0 -3.3222222222222229
		0 0 -4.5111111111111111
		0 0 -5.6999999999999993
		;
createNode pointOnCurveInfo -n "C_snake40_pinf";
createNode closestPointOnSurface -n "C_snake81_pntSInfo";
createNode tweak -n "tweak1";
	setAttr -s 922 ".vl[0].vt";
	setAttr ".vl[0].vt[0:165]" -type "float3"  -0.045517299 4.7536974 5.0025258 
		-0.038719326 4.7337475 5.0561481 -0.028131239 4.7179151 5.0987029 -0.014789468 4.7077541 
		5.1260247 -5.5613643e-009 4.7042503 5.1354394 0.014789457 4.7077541 5.1260247 0.028131222 
		4.7179151 5.0987029 0.038719308 4.7337475 5.0561481 0.04551727 4.7536974 5.0025258 
		0.047859691 4.7758102 4.9430852 0.04551727 4.7979231 4.8836446 0.038719304 4.8178735 
		4.8300223 0.028131213 4.8337049 4.7874684 0.014789452 4.8438659 4.7601457 -4.1350341e-009 
		4.8473692 4.7507319 -0.01478946 4.8438659 4.7601457 -0.028131222 4.8337049 4.7874684 
		-0.038719304 4.8178725 4.8300233 -0.04551727 4.7979231 4.8836446 -0.047859691 4.7758102 
		4.9430852 0.024385517 4.5301876 4.8956752 0.020743566 4.5000939 4.9492974 0.015071083 
		4.4762077 4.9918523 0.0079233386 4.4608746 5.0191741 2.9794553e-009 4.4555912 5.0285888 
		-0.0079233302 4.4608746 5.0191741 -0.015071073 4.4762077 4.9918523 -0.020743553 4.5000939 
		4.9492974 -0.024385504 4.5301876 4.8956752 -0.025640437 4.5635519 4.8362346 -0.024385504 
		4.5969157 4.776794 -0.020743551 4.6270094 4.7231717 -0.015071071 4.6508961 4.6806178 
		-0.0079233292 4.6662297 4.653296 2.215311e-009 4.6715121 4.6438813 0.007923333 4.6662297 
		4.653296 0.015071072 4.6508961 4.6806178 0.020743549 4.6270094 4.7231717 0.024385508 
		4.5969157 4.776794 0.025640437 4.5635519 4.8362346 0.18070903 4.2974334 4.4107332 
		0.15372029 4.2488475 4.464355 0.11168431 4.2102909 4.5069103 0.058715906 4.185534 
		4.5342317 1.8709772e-008 4.1770015 4.5436459 -0.058715891 4.185534 4.5342317 -0.11168426 
		4.2102909 4.5069103 -0.15372011 4.2488475 4.464355 -0.18070894 4.2974334 4.4107332 
		-0.19000861 4.3512936 4.3512926 -0.18070894 4.4051552 4.2918525 -0.15372013 4.4537392 
		4.2382302 -0.11168428 4.4922962 4.1956758 -0.058715887 4.5170527 4.1683536 1.3047075e-008 
		4.5255852 4.1589394 0.058715899 4.5170527 4.1683536 0.11168426 4.4922962 4.1956758 
		0.15372011 4.4537392 4.2382302 0.18070891 4.4051552 4.2918525 0.19000861 4.3512936 
		4.3512926 0 4.0795946 4.1984754 0 4.0259728 4.2520981 0 3.983418 4.294652 0 3.9560962 
		4.3219743 0 3.9466815 4.3313885 0 3.9560962 4.3219743 0 3.983418 4.294652 0 4.0259728 
		4.2520981 0 4.0795951 4.1984754 0 4.1390352 4.1390352 0 4.1984758 4.0795946 0 4.2520981 
		4.0259728 0 4.2946525 3.983418 0 4.3219738 3.9560962 0 4.3313885 3.9466815 0 4.3219738 
		3.9560962 0 4.2946525 3.983418 0 4.2520981 4.0259728 0 4.1984758 4.0795946 0 4.1390352 
		4.1390352 0 3.8673363 3.9862175 0 3.8137143 4.0398393 0 3.7711594 4.0823941 0 3.7438374 
		4.1097159 0 3.7344234 4.1191301 0 3.7438374 4.1097159 0 3.7711594 4.0823941 0 3.8137143 
		4.0398393 0 3.8673368 3.9862173 0 3.9267771 3.9267771 0 3.9862177 3.8673363 0 4.0398397 
		3.8137143 0 4.0823941 3.7711594 0 4.1097159 3.7438378 0 4.1191301 3.7344234 0 4.1097159 
		3.7438378 0 4.0823941 3.7711594 0 4.0398397 3.8137143 0 3.9862177 3.8673363 0 3.9267771 
		3.9267771 0 3.6550782 3.7739592 0 3.6014559 3.8275812 0 3.5589018 3.8701358 0 3.5315795 
		3.8974576 0 3.5221646 3.906872 0 3.5315795 3.8974576 0 3.5589018 3.8701358 0 3.6014559 
		3.8275812 0 3.6550779 3.7739592 0 3.7145185 3.7145185 0 3.7739592 3.6550777 0 3.8275809 
		3.6014559 0 3.8701358 3.5589013 0 3.8974578 3.5315795 0 3.9068718 3.5221651 0 3.8974578 
		3.5315795 0 3.8701358 3.5589013 0 3.8275809 3.6014559 0 3.7739592 3.6550777 0 3.7145185 
		3.7145185 0 3.4428194 3.5617008 0 3.3891978 3.6153228 0 3.346643 3.6578774 0 3.3193212 
		3.6851988 0 3.309907 3.6946135 0 3.3193212 3.6851988 0 3.346643 3.6578774 0 3.3891978 
		3.6153228 0 3.4428198 3.5617008 0 3.5022602 3.5022602 0 3.5617003 3.4428196 0 3.6153228 
		3.3891976 0 3.6578777 3.3466427 0 3.685199 3.3193212 0 3.6946142 3.309907 0 3.685199 
		3.3193212 0 3.6578777 3.3466427 0 3.6153228 3.3891976 0 3.5617003 3.4428196 0 3.5022602 
		3.5022602 0 3.2305613 3.3494425 0 3.176939 3.4030643 0 3.1343846 3.4456191 0 3.1070626 
		3.4729409 0 3.0976484 3.4823554 0 3.1070626 3.4729409 0 3.1343846 3.4456189 0 3.1769395 
		3.4030643 0 3.2305617 3.3494422 0 3.2900019 3.2900021 0 3.349442 3.2305613 0 3.403064 
		3.1769392 0 3.4456193 3.1343849 0 3.4729409 3.1070626 0 3.4823556 3.0976481 0 3.4729409 
		3.1070626 0 3.4456193 3.1343849 0 3.4030645 3.1769395 0 3.349442 3.2305613 0 3.2900019 
		3.2900021 0 3.0183029 3.1371839 0 2.9646807 3.1908059 0 2.9221263 3.233361 0 2.8948045 
		3.2606826 0 2.8853898 3.2700973 0 2.8948045 3.2606826;
	setAttr ".vl[0].vt[166:331]" 0 2.9221263 3.233361 0 2.9646807 3.1908059 0 
		3.0183032 3.1371839 0 3.0777435 3.0777435 0 3.1371839 3.0183032 0 3.1908064 2.9646809 
		0 3.2333608 2.9221263 0 3.2606826 2.8948045 0 3.2700973 2.88539 0 3.2606826 2.8948045 
		0 3.2333608 2.9221263 0 3.1908064 2.9646809 0 3.1371839 3.0183032 0 3.0777435 3.0777435 
		0 2.8060446 2.9249256 0 2.7524226 2.9785478 0 2.709868 3.0211024 0 2.6825461 3.0484242 
		0 2.6731317 3.0578384 0 2.6825461 3.0484242 0 2.709868 3.0211024 0 2.7524228 2.9785476 
		0 2.8060448 2.9249256 0 2.8654854 2.8654854 0 2.9249258 2.8060448 0 2.9785476 2.7524223 
		0 3.0211024 2.709868 0 3.0484242 2.6825461 0 3.0578389 2.6731317 0 3.0484242 2.6825461 
		0 3.0211024 2.709868 0 2.9785476 2.7524223 0 2.9249258 2.8060448 0 2.8654854 2.8654854 
		0 2.5937862 2.7126672 0 2.5401642 2.7662895 0 2.4976096 2.8088441 0 2.4702878 2.8361661 
		0 2.4608731 2.8455803 0 2.4702878 2.8361661 0 2.4976096 2.8088441 0 2.5401645 2.7662892 
		0 2.5937865 2.7126672 0 2.6532269 2.6532269 0 2.7126672 2.5937865 0 2.7662895 2.5401642 
		0 2.8088441 2.4976096 0 2.8361659 2.4702878 0 2.8455801 2.4608734 0 2.8361659 2.4702878 
		0 2.8088441 2.4976096 0 2.7662897 2.5401642 0 2.7126672 2.5937865 0 2.6532269 2.6532269 
		0 2.3815281 2.5004091 0 2.3279061 2.5540311 0 2.2853513 2.5965858 0 2.2580295 2.6239073 
		0 2.248615 2.6333218 0 2.2580295 2.6239073 0 2.2853513 2.5965858 0 2.3279059 2.5540309 
		0 2.3815281 2.5004089 0 2.4409685 2.4409685 0 2.5004089 2.3815281 0 2.5540311 2.3279059 
		0 2.5965858 2.2853513 0 2.6239076 2.2580295 0 2.6333222 2.248615 0 2.6239076 2.2580295 
		0 2.5965858 2.2853513 0 2.5540311 2.3279059 0 2.5004089 2.3815281 0 2.4409685 2.4409685 
		0 2.1692696 2.2881505 0 2.1156476 2.3417726 0 2.0730929 2.3843272 0 2.0457711 2.4116492 
		0 2.0363567 2.4210637 0 2.0457711 2.4116492 0 2.0730929 2.3843272 0 2.1156478 2.3417726 
		0 2.1692696 2.2881505 0 2.2287102 2.2287102 0 2.2881508 2.1692698 0 2.3417726 2.1156478 
		0 2.3843274 2.0730929 0 2.4116492 2.0457711 0 2.4210637 2.0363567 0 2.4116492 2.0457711 
		0 2.3843274 2.0730929 0 2.3417726 2.1156478 0 2.2881508 2.1692698 0 2.2287102 2.2287102 
		0 1.9570112 2.075892 0 1.9033892 2.1295145 0 1.8608346 2.1720693 0 1.8335127 2.1993911 
		0 1.8240983 2.2088053 0 1.8335127 2.1993911 0 1.8608346 2.1720693 0 1.9033892 2.1295145 
		0 1.9570115 2.0758922 0 2.0164518 2.0164518 0 2.0758922 1.9570113 0 2.1295147 1.9033893 
		0 2.1720691 1.8608347 0 2.1993909 1.8335128 0 2.2088056 1.8240983 0 2.1993909 1.8335128 
		0 2.1720691 1.8608347 0 2.1295147 1.9033893 0 2.0758922 1.9570113 0 2.0164518 2.0164518 
		0 1.7447531 1.863634 0 1.6911311 1.9172561 0 1.6485765 1.9598109 0 1.6212544 1.9871325 
		0 1.6118401 1.996547 0 1.6212544 1.9871325 0 1.6485765 1.9598109 0 1.6911312 1.9172561 
		0 1.7447531 1.863634 0 1.8041935 1.8041935 0 1.8636341 1.7447531 0 1.9172561 1.691131 
		0 1.9598111 1.6485765 0 1.9871327 1.6212547 0 1.9965472 1.6118401 0 1.9871327 1.6212547 
		0 1.9598109 1.6485765 0 1.9172561 1.691131 0 1.8636341 1.7447531 0 1.8041935 1.8041935 
		0 1.532495 1.651376 0 1.4788728 1.704998 0 1.4363182 1.7475525 0 1.4089965 1.7748746 
		0 1.3995819 1.7842889 0 1.4089965 1.7748746 0 1.4363182 1.7475525 0 1.4788729 1.7049978 
		0 1.532495 1.651376 0 1.5919355 1.5919353 0 1.6513759 1.5324948 0 1.704998 1.4788729 
		0 1.7475526 1.4363182 0 1.7748743 1.4089963 0 1.7842889 1.399582 0 1.7748742 1.4089963 
		0 1.7475526 1.4363182 0 1.704998 1.4788729 0 1.6513759 1.5324948 0 1.5919355 1.5919353 
		0 1.3202367 1.4391177 0 1.2666147 1.4927398 0 1.2240599 1.5352943 0 1.1967382 1.5626162 
		0 1.1873237 1.5720305 0 1.1967382 1.5626162 0 1.2240599 1.5352943 0 1.2666147 1.4927396 
		0 1.3202367 1.4391177 0 1.3796772 1.3796772 0 1.4391179 1.3202367 0 1.4927398 1.2666147;
	setAttr ".vl[0].vt[332:497]" 0 1.5352943 1.2240599 0 1.5626162 1.1967381 0 
		1.5720307 1.1873236 0 1.5626162 1.1967381 0 1.5352943 1.2240601 0 1.4927398 1.2666147 
		0 1.4391179 1.3202367 0 1.3796772 1.3796772 0 1.1079786 1.2268595 0 1.0543565 1.2804815 
		0 1.0118017 1.3230362 0 0.98447984 1.350358 0 0.97506553 1.3597724 0 0.98447984 1.350358 
		0 1.0118017 1.3230362 0 1.0543565 1.2804813 0 1.1079785 1.2268593 0 1.167419 1.167419 
		0 1.2268595 1.1079785 0 1.2804815 1.0543565 0 1.3230362 1.0118017 0 1.3503578 0.9844799 
		0 1.3597724 0.97506553 0 1.3503579 0.98447996 0 1.3230362 1.0118017 0 1.2804815 1.0543565 
		0 1.2268595 1.1079785 0 1.167419 1.167419 0 0.89572024 1.0146012 0 0.84209812 1.0682232 
		0 0.7995435 1.1107781 0 0.77222168 1.1380998 0 0.76280725 1.1475142 0 0.77222168 
		1.1380998 0 0.79954356 1.110778 0 0.84209824 1.0682232 0 0.8957203 1.0146011 0 0.9551608 
		0.95516074 0 1.0146012 0.89572018 0 1.0682232 0.84209812 0 1.110778 0.79954362 0 
		1.1380997 0.77222162 0 1.1475141 0.76280725 0 1.1380997 0.77222174 0 1.110778 0.79954362 
		0 1.0682232 0.84209812 0 1.0146012 0.89572018 0 0.9551608 0.95516074 0 0.68346214 
		0.80234301 0 0.62984002 0.85596502 0 0.58728528 0.89851975 0 0.55996346 0.92584151 
		0 0.55054903 0.935256 0 0.55996346 0.92584145 0 0.58728528 0.89851975 0 0.62984002 
		0.85596502 0 0.68346202 0.80234295 0 0.74290252 0.74290246 0 0.80234301 0.68346202 
		0 0.85596502 0.62984002 0 0.89851975 0.58728528 0 0.92584145 0.55996352 0 0.935256 
		0.55054909 0 0.92584145 0.55996352 0 0.89851975 0.58728528 0 0.85596502 0.62984002 
		0 0.80234301 0.68346202 0 0.74290252 0.74290246 0 0.47120386 0.59008473 0 0.41758183 
		0.6437068 0 0.37502706 0.68626153 0 0.3477053 0.71358335 0 0.33829087 0.72299778 
		0 0.3477053 0.71358335 0 0.37502712 0.68626153 0 0.4175818 0.6437068 0 0.47120386 
		0.59008473 0 0.5306443 0.53064424 0 0.59008479 0.4712038 0 0.64370686 0.4175818 0 
		0.68626153 0.37502709 0 0.71358335 0.34770527 0 0.72299778 0.33829084 0 0.71358335 
		0.3477053 0 0.68626153 0.37502709 0 0.64370686 0.4175818 0 0.59008479 0.4712038 0 
		0.5306443 0.53064424 0 0.25894558 0.37782654 0 0.20532358 0.43144864 0 0.16276886 
		0.47400331 0 0.13544704 0.50132507 0 0.12603267 0.51073956 0 0.13544704 0.50132507 
		0 0.16276887 0.47400331 0 0.20532358 0.43144858 0 0.25894564 0.37782651 0 0.31838611 
		0.31838605 0 0.3778266 0.25894558 0 0.43144861 0.20532355 0 0.47400334 0.16276886 
		0 0.50132501 0.13544707 0 0.51073951 0.12603262 0 0.50132507 0.13544707 0 0.47400329 
		0.16276886 0 0.43144861 0.20532355 0 0.37782657 0.25894558 0 0.31838611 0.31838605 
		0 0.046687376 0.16556832 0 -0.0069346856 0.21919037 0 -0.049489386 0.2617451 0 -0.07681118 
		0.28906685 0 -0.086225629 0.29848129 0 -0.07681115 0.28906685 0 -0.049489353 0.26174504 
		0 -0.006934654 0.21919034 0 0.046687387 0.16556831 0 0.10612786 0.10612781 0 0.16556835 
		0.046687335 0 0.21919039 -0.0069346949 0 0.26174507 -0.049489379 0 0.28906685 -0.07681115 
		0 0.29848129 -0.086225607 0 0.28906685 -0.076811135 0 0.26174504 -0.049489357 0 0.21919039 
		-0.0069346875 0 0.16556834 0.046687342 0 0.10612786 0.10612781 0 -0.16557087 -0.04668992 
		0 -0.21919292 0.0069321431 0 -0.26174763 0.049486842 0 -0.28906941 0.076808631 0 
		-0.29848385 0.086223058 0 -0.28906941 0.076808602 0 -0.2617476 0.049486805 0 -0.21919289 
		0.0069320984 0 -0.16557086 -0.046689939 0 -0.10613036 -0.10613041 0 -0.046689875 
		-0.16557091 0 0.0069321468 -0.21919294 0 0.049486816 -0.26174763 0 0.076808624 -0.28906941 
		0 0.086223051 -0.29848388 0 0.076808602 -0.28906938 0 0.049486823 -0.2617476 0 0.0069321375 
		-0.21919292 0 -0.04668989 -0.16557088 0 -0.10613036 -0.10613041 0 -0.3778291 -0.25894818 
		0 -0.43145114 -0.2053261 0 -0.47400585 -0.1627714 0 -0.50132763 -0.13544962 0 -0.51074207 
		-0.1260352 0 -0.50132763 -0.13544962 0 -0.47400585 -0.16277145 0 -0.43145114 -0.20532613 
		0 -0.3778291 -0.25894818 0 -0.31838864 -0.31838867 0 -0.25894809 -0.37782913 0 -0.20532608 
		-0.43145114 0 -0.1627714 -0.47400582 0 -0.13544963 -0.50132763 0 -0.1260352 -0.51074213 
		0 -0.13544965 -0.50132763 0 -0.16277143 -0.47400585 0 -0.20532608 -0.43145114;
	setAttr ".vl[0].vt[498:663]" 0 -0.25894815 -0.37782913 0 -0.31838864 -0.31838867 
		0 -0.59008729 -0.47120637 0 -0.64370942 -0.41758433 0 -0.68626416 -0.37502962 0 -0.71358591 
		-0.3477079 0 -0.72300041 -0.3382934 0 -0.71358585 -0.34770787 0 -0.68626404 -0.37502968 
		0 -0.64370936 -0.41758436 0 -0.59008729 -0.47120637 0 -0.5306468 -0.5306468 0 -0.47120628 
		-0.59008735 0 -0.41758436 -0.64370942 0 -0.37502962 -0.6862641 0 -0.34770787 -0.71358585 
		0 -0.33829343 -0.72300035 0 -0.34770787 -0.71358585 0 -0.37502968 -0.6862641 0 -0.41758424 
		-0.64370936 0 -0.4712064 -0.59008741 0 -0.5306468 -0.5306468 0 -0.80234563 -0.68346459 
		0 -0.85596764 -0.62984252 0 -0.89852226 -0.58728784 0 -0.92584407 -0.55996603 0 -0.93525851 
		-0.55055159 0 -0.92584407 -0.55996609 0 -0.89852214 -0.5872879 0 -0.85596746 -0.62984258 
		0 -0.80234551 -0.68346465 0 -0.74290514 -0.74290514 0 -0.68346459 -0.80234563 0 -0.62984258 
		-0.85596764 0 -0.5872879 -0.89852232 0 -0.55996603 -0.92584407 0 -0.55055165 -0.93525857 
		0 -0.55996609 -0.92584407 0 -0.5872879 -0.89852232 0 -0.62984258 -0.85596764 0 -0.68346459 
		-0.80234563 0 -0.74290514 -0.74290514 0 -1.0146037 -0.89572287 0 -1.0682259 -0.84210074 
		0 -1.1107805 -0.79954606 0 -1.1381023 -0.77222431 0 -1.1475167 -0.76280987 0 -1.1381023 
		-0.77222431 0 -1.1107805 -0.79954606 0 -1.0682259 -0.84210086 0 -1.0146037 -0.89572287 
		0 -0.95516324 -0.95516336 0 -0.89572275 -1.0146037 0 -0.8421008 -1.0682259 0 -0.79954612 
		-1.1107805 0 -0.77222425 -1.1381023 0 -0.76280981 -1.1475167 0 -0.77222419 -1.1381023 
		0 -0.79954612 -1.1107805 0 -0.8421008 -1.0682259 0 -0.89572275 -1.0146037 0 -0.95516324 
		-0.95516336 0 -1.226862 -1.1079811 0 -1.2804842 -1.054359 0 -1.3230388 -1.0118043 
		0 -1.3503606 -0.98448253 0 -1.3597751 -0.97506821 0 -1.3503606 -0.98448253 0 -1.3230388 
		-1.0118043 0 -1.280484 -1.0543591 0 -1.226862 -1.1079811 0 -1.1674216 -1.1674216 
		0 -1.107981 -1.2268621 0 -1.054359 -1.2804842 0 -1.0118043 -1.3230387 0 -0.98448253 
		-1.3503605 0 -0.97506809 -1.3597751 0 -0.98448253 -1.3503605 0 -1.0118043 -1.3230387 
		0 -1.054359 -1.2804842 0 -1.1079811 -1.2268621 0 -1.1674216 -1.1674216 0 -1.4391202 
		-1.3202393 0 -1.4927423 -1.2666173 0 -1.5352969 -1.2240626 0 -1.562619 -1.1967407 
		0 -1.5720332 -1.1873263 0 -1.562619 -1.1967407 0 -1.5352969 -1.2240626 0 -1.4927423 
		-1.2666173 0 -1.4391202 -1.3202393 0 -1.3796797 -1.3796799 0 -1.3202393 -1.4391203 
		0 -1.2666173 -1.4927423 0 -1.2240626 -1.5352969 0 -1.1967409 -1.5626187 0 -1.1873263 
		-1.5720332 0 -1.1967409 -1.5626187 0 -1.2240626 -1.5352969 0 -1.2666173 -1.4927423 
		0 -1.3202393 -1.4391203 0 -1.3796797 -1.3796799 0 -1.6513786 -1.5324975 0 -1.7050004 
		-1.4788755 0 -1.7475553 -1.4363208 0 -1.7748771 -1.408999 0 -1.7842915 -1.3995845 
		0 -1.7748771 -1.408999 0 -1.7475553 -1.4363208 0 -1.7050004 -1.4788756 0 -1.6513786 
		-1.5324975 0 -1.5919379 -1.591938 0 -1.5324975 -1.6513786 0 -1.4788755 -1.7050006 
		0 -1.4363208 -1.7475553 0 -1.4089991 -1.7748771 0 -1.3995845 -1.7842915 0 -1.4089991 
		-1.7748771 0 -1.4363208 -1.7475553 0 -1.4788755 -1.7050006 0 -1.5324975 -1.6513786 
		0 -1.5919379 -1.591938 0 -1.8636369 -1.7447559 0 -1.917259 -1.6911337 0 -1.9598134 
		-1.648579 0 -1.9871353 -1.6212572 0 -1.9965498 -1.6118429 0 -1.9871353 -1.6212572 
		0 -1.9598134 -1.648579 0 -1.9172587 -1.6911339 0 -1.8636369 -1.7447559 0 -1.8041961 
		-1.8041964 0 -1.7447555 -1.8636367 0 -1.6911337 -1.9172587 0 -1.6485791 -1.9598135 
		0 -1.6212573 -1.9871353 0 -1.6118428 -1.9965497 0 -1.6212573 -1.9871353 0 -1.6485791 
		-1.9598135 0 -1.6911337 -1.9172587 0 -1.7447555 -1.8636367 0 -1.8041961 -1.8041964 
		0 -2.0758948 -1.9570141 0 -2.1295171 -1.9033918 0 -2.1720715 -1.8608372 0 -2.1993935 
		-1.8335154 0 -2.2088082 -1.8241011 0 -2.1993935 -1.8335154 0 -2.1720715 -1.8608372 
		0 -2.1295168 -1.903392 0 -2.0758948 -1.9570141 0 -2.0164545 -2.0164545 0 -1.9570138 
		-2.0758951 0 -1.903392 -2.1295171 0 -1.8608375 -2.1720717 0 -1.8335154 -2.1993935 
		0 -1.8241009 -2.2088079 0 -1.8335154 -2.1993935 0 -1.8608375 -2.1720717 0 -1.903392 
		-2.1295171 0 -1.9570138 -2.0758951 0 -2.0164545 -2.0164545 0 -2.2881532 -2.1692722 
		0 -2.3417754 -2.1156502 0 -2.38433 -2.0730956 0 -2.4116516 -2.045774;
	setAttr ".vl[0].vt[664:829]" 0 -2.4210663 -2.0363595 0 -2.4116516 -2.045774 
		0 -2.38433 -2.0730956 0 -2.3417754 -2.1156502 0 -2.2881532 -2.1692722 0 -2.2287126 
		-2.2287128 0 -2.1692724 -2.2881529 0 -2.1156502 -2.3417754 0 -2.0730956 -2.38433 
		0 -2.045774 -2.4116516 0 -2.0363595 -2.4210663 0 -2.045774 -2.4116516 0 -2.0730956 
		-2.38433 0 -2.1156502 -2.3417754 0 -2.1692724 -2.2881529 0 -2.2287126 -2.2287128 
		0 -2.5004115 -2.3815308 0 -2.5540338 -2.3279088 0 -2.5965886 -2.2853541 0 -2.6239102 
		-2.2580321 0 -2.6333244 -2.2486176 0 -2.6239102 -2.2580321 0 -2.5965886 -2.2853541 
		0 -2.5540338 -2.3279088 0 -2.5004115 -2.3815308 0 -2.4409711 -2.4409711 0 -2.3815308 
		-2.5004117 0 -2.3279085 -2.5540335 0 -2.2853537 -2.5965884 0 -2.2580318 -2.6239102 
		0 -2.2486176 -2.6333246 0 -2.2580318 -2.6239102 0 -2.2853537 -2.5965884 0 -2.3279085 
		-2.5540333 0 -2.3815308 -2.5004117 0 -2.4409711 -2.4409711 0 -2.7126698 -2.5937891 
		0 -2.7662921 -2.5401669 0 -2.808847 -2.4976125 0 -2.8361685 -2.4702904 0 -2.845583 
		-2.460876 0 -2.8361685 -2.4702904 0 -2.808847 -2.4976125 0 -2.7662921 -2.5401671 
		0 -2.7126698 -2.5937891 0 -2.6532292 -2.6532292 0 -2.5937891 -2.7126698 0 -2.5401669 
		-2.7662921 0 -2.497612 -2.8088467 0 -2.4702907 -2.8361685 0 -2.460876 -2.845583 0 
		-2.4702907 -2.8361685 0 -2.497612 -2.8088467 0 -2.5401669 -2.7662921 0 -2.5937891 
		-2.7126698 0 -2.6532292 -2.6532292 0 -2.9249287 -2.8060474 0 -2.9785504 -2.7524252 
		0 -3.0211051 -2.7098706 0 -3.0484266 -2.6825488 0 -3.0578413 -2.6731343 0 -3.0484266 
		-2.6825488 0 -3.0211051 -2.7098706 0 -2.9785504 -2.7524254 0 -2.9249287 -2.8060477 
		0 -2.8654881 -2.8654883 0 -2.8060474 -2.9249284 0 -2.7524252 -2.9785502 0 -2.7098703 
		-3.0211048 0 -2.682549 -3.0484269 0 -2.6731343 -3.0578413 0 -2.6825488 -3.0484266 
		0 -2.7098703 -3.0211048 0 -2.7524254 -2.9785504 0 -2.8060474 -2.9249284 0 -2.8654881 
		-2.8654883 0 -3.1371868 -3.0183058 0 -3.1908085 -2.9646835 0 -3.2333632 -2.9221289 
		0 -3.2606854 -2.8948071 0 -3.2700999 -2.8853927 0 -3.2606854 -2.8948071 0 -3.2333632 
		-2.9221289 0 -3.1908085 -2.9646835 0 -3.1371865 -3.0183058 0 -3.0777459 -3.0777462 
		0 -3.0183058 -3.1371865 0 -2.9646835 -3.1908088 0 -2.9221292 -3.2333634 0 -2.8948071 
		-3.2606854 0 -2.8853927 -3.2700999 0 -2.8948073 -3.2606852 0 -2.9221292 -3.2333634 
		0 -2.9646838 -3.1908088 0 -3.0183058 -3.1371865 0 -3.0777459 -3.0777462 -0.0094920676 
		-3.3463621 -3.4133425 -0.0080744317 -3.3971992 -3.3597202 -0.0058664191 -3.4375484 
		-3.3171656 -0.003084159 -3.4634523 -3.2898438 0 -3.4723778 -3.2804294 0.003084159 
		-3.4634523 -3.2898438 0.0058664172 -3.4375484 -3.3171656 0.0080744298 -3.3971992 
		-3.3597202 0.0094920611 -3.3463616 -3.4133425 0.0099805454 -3.2900043 -3.4727829 
		0.0094920611 -3.2336466 -3.5322235 0.0080744289 -3.1828091 -3.5858455 0.0058664163 
		-3.1424603 -3.6284001 0.0030841581 -3.1165566 -3.6557217 2.9744335e-010 -3.1076312 
		-3.6651363 -0.0030841574 -3.1165566 -3.6557217 -0.0058664144 -3.1424603 -3.6284001 
		-0.0080744298 -3.1828098 -3.5858452 -0.0094920602 -3.2336473 -3.5322232 -0.0099805426 
		-3.2900043 -3.4727829 -0.026048766 -3.5532389 -3.8988848 -0.02215841 -3.5992255 -3.8452628 
		-0.016099025 -3.6357236 -3.8027079 -0.0084637562 -3.6591542 -3.7753859 0 -3.6672282 
		-3.7659717 0.0084637562 -3.6591542 -3.7753861 0.016099019 -3.6357236 -3.8027081 0.022158405 
		-3.5992255 -3.8452628 0.026048761 -3.5532389 -3.8988848 0.02738928 -3.5022628 -3.9583254 
		0.026048761 -3.4512868 -4.0177655 0.022158403 -3.4053004 -4.0713873 0.016099017 -3.3688023 
		-4.1139417 0.0084637543 -3.3453715 -4.1412635 8.1626406e-010 -3.3372977 -4.1506782 
		-0.0084637534 -3.3453715 -4.1412635 -0.016099013 -3.3688023 -4.1139417 -0.022158394 
		-3.4053004 -4.0713873 -0.026048755 -3.4512868 -4.0177655 -0.027389277 -3.5022628 
		-3.9583254 -0.042604413 -3.7601192 -4.3265328 -0.036241483 -3.8012519 -4.2729106 
		-0.02633098 -3.8338964 -4.2303562 -0.013843009 -3.8548551 -4.2030344 0 -3.8620768 
		-4.1936197 0.013843009 -3.8548551 -4.2030344 0.026330972 -3.8338964 -4.2303562 0.036241472 
		-3.8012519 -4.2729106 0.042604405 -3.7601192 -4.3265328 0.044796914 -3.7145212 -4.3859735 
		0.042604405 -3.6689231 -4.4454136 0.036241461 -3.6277905 -4.4990358 0.026330961 -3.5951459 
		-4.5415897 0.013843007 -3.5741868 -4.5689116 1.3350518e-009 -3.5669656 -4.5783267 
		-0.013843004 -3.5741873 -4.5689116 -0.026330953 -3.5951459 -4.5415897 -0.036241453 
		-3.6277905 -4.4990354 -0.042604387 -3.6689231 -4.4454136 -0.044796906 -3.7145212 
		-4.3859735 -0.059158385 -3.9669971 -4.6962867 -0.050323129 -4.0032783 -4.6426649 
		-0.036561891 -4.0320749 -4.6001101 -0.019221723 -4.050561 -4.5727882 0 -4.0569282 
		-4.563374 0.019221723 -4.050561 -4.5727882 0.036561888 -4.0320749 -4.6001101 0.050323118 
		-4.0032783 -4.6426649 0.059158362 -3.9669971 -4.6962872 0.062202778 -3.92678 -4.7557273;
	setAttr ".vl[0].vt[830:921]" 0.059158362 -3.8865619 -4.8151689 0.050323106 
		-3.8502793 -4.8687911 0.036561873 -3.8214853 -4.911346 0.019221719 -3.8029978 -4.9386673 
		1.853787e-009 -3.7966299 -4.948082 -0.019221712 -3.8029981 -4.9386678 -0.036561869 
		-3.8214853 -4.911346 -0.050323091 -3.8502793 -4.8687911 -0.059158355 -3.8865619 -4.8151689 
		-0.06220277 -3.92678 -4.7557273 -0.075709417 -4.1738787 -5.0081463 -0.064402282 -4.2053103 
		-4.9545245 -0.046790995 -4.2302537 -4.9119697 -0.024599478 -4.2462668 -4.8846474 
		0 -4.2517867 -4.8752332 0.024599478 -4.2462668 -4.8846474 0.046790984 -4.2302537 
		-4.9119697 0.064402252 -4.2053103 -4.9545245 0.075709388 -4.1738787 -5.0081463 0.079605557 
		-4.1390376 -5.0675869 0.075709388 -4.1041965 -5.1270275 0.064402245 -4.0727644 -5.1806493 
		0.046790972 -4.0478215 -5.2232041 0.02459947 -4.0318079 -5.250526 2.37243e-009 -4.026289 
		-5.2599406 -0.024599461 -4.0318079 -5.250526 -0.046790969 -4.0478215 -5.2232041 -0.06440223 
		-4.0727644 -5.1806493 -0.075709373 -4.1041965 -5.1270275 -0.079605542 -4.1390376 
		-5.0675869 -0.092254438 -4.3807616 -5.2621078 -0.07847631 -4.4073424 -5.2084861 -0.057016362 
		-4.4284363 -5.1659312 -0.029975276 -4.4419799 -5.1386094 0 -4.4466481 -5.1291957 
		0.029975276 -4.4419799 -5.1386094 0.057016358 -4.4284363 -5.1659312 0.078476287 -4.4073424 
		-5.2084861 0.0922544 -4.3807611 -5.2621078 0.097002015 -4.3512959 -5.3215485 0.0922544 
		-4.3218307 -5.3809891 0.07847628 -4.2952495 -5.4346113 0.05701635 -4.2741556 -5.4771657 
		0.029975275 -4.260612 -5.5044875 2.8908842e-009 -4.2559438 -5.5139017 -0.02997526 
		-4.260612 -5.5044875 -0.057016335 -4.2741556 -5.4771657 -0.078476258 -4.2952495 -5.4346108 
		-0.092254385 -4.3218307 -5.3809891 -0.097001977 -4.3512959 -5.3215485 -0.10878394 
		-4.5876493 -5.4581714 -0.09253715 -4.6093855 -5.4045496 -0.067232169 -4.6266336 -5.3619947 
		-0.035346039 -4.6377096 -5.3346729 0 -4.6415253 -5.3252587 0.035346039 -4.6377096 
		-5.3346729 0.067232162 -4.6266336 -5.3619947 0.09253712 -4.6093855 -5.4045496 0.1087839 
		-4.5876489 -5.4581714 0.11438216 -4.5635543 -5.517612 0.1087839 -4.5394597 -5.5770526 
		0.092537113 -4.5177231 -5.6306744 0.067232139 -4.5004749 -5.6732292 0.035346031 -4.489399 
		-5.700551 3.4088534e-009 -4.4855838 -5.7099652 -0.03534602 -4.489399 -5.700551 -0.067232132 
		-4.5004749 -5.6732292 -0.09253709 -4.5177231 -5.6306744 -0.10878387 -4.5394597 -5.5770526 
		-0.11438214 -4.5635543 -5.517612 -0.12524644 -4.7945561 -5.5963078 -0.10654099 -4.8114657 
		-5.542686 -0.077406555 -4.8248873 -5.5001311 -0.040695027 -4.8335028 -5.4728093 0 
		-4.8364716 -5.4633951 0.040695027 -4.8335028 -5.4728093 0.077406541 -4.8248873 -5.5001311 
		0.10654096 -4.8114657 -5.542686 0.12524639 -4.7945561 -5.5963078 0.13169184 -4.7758102 
		-5.6557484 0.12524639 -4.7570643 -5.715189 0.10654095 -4.7401543 -5.7688107 0.077406526 
		-4.7267332 -5.8113656 0.040695019 -4.7181172 -5.8386874 3.9247219e-009 -4.7151494 
		-5.8481016 -0.040695008 -4.7181172 -5.8386874 -0.077406511 -4.7267332 -5.8113656 
		-0.10654092 -4.7401543 -5.7688107 -0.12524638 -4.7570643 -5.715189 -0.13169181 -4.7758102 
		-5.6557484 0 4.7758102 5.024406 0 -4.7758102 -5.6864772;
createNode objectSet -n "tweakSet1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode blinn -n "blinn1";
	setAttr ".c" -type "float3" 1 0 0 ;
createNode shadingEngine -n "blinn1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode groupId -n "groupId3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 48 "f[0:12]" "f[15:32]" "f[35:52]" "f[55:72]" "f[75:92]" "f[95:112]" "f[115:132]" "f[135:152]" "f[155:172]" "f[175:192]" "f[195:212]" "f[215:232]" "f[235:252]" "f[255:272]" "f[275:292]" "f[295:312]" "f[315:332]" "f[335:352]" "f[355:372]" "f[375:392]" "f[395:412]" "f[415:432]" "f[435:452]" "f[455:472]" "f[475:492]" "f[495:512]" "f[515:532]" "f[535:552]" "f[555:572]" "f[575:592]" "f[595:612]" "f[615:632]" "f[635:652]" "f[655:672]" "f[675:692]" "f[695:712]" "f[715:732]" "f[735:752]" "f[755:772]" "f[775:792]" "f[795:812]" "f[815:832]" "f[835:852]" "f[855:872]" "f[875:892]" "f[895:912]" "f[915:932]" "f[935:939]";
	setAttr ".irc" -type "componentList" 47 "f[13:14]" "f[33:34]" "f[53:54]" "f[73:74]" "f[93:94]" "f[113:114]" "f[133:134]" "f[153:154]" "f[173:174]" "f[193:194]" "f[213:214]" "f[233:234]" "f[253:254]" "f[273:274]" "f[293:294]" "f[313:314]" "f[333:334]" "f[353:354]" "f[373:374]" "f[393:394]" "f[413:414]" "f[433:434]" "f[453:454]" "f[473:474]" "f[493:494]" "f[513:514]" "f[533:534]" "f[553:554]" "f[573:574]" "f[593:594]" "f[613:614]" "f[633:634]" "f[653:654]" "f[673:674]" "f[693:694]" "f[713:714]" "f[733:734]" "f[753:754]" "f[773:774]" "f[793:794]" "f[813:814]" "f[833:834]" "f[853:854]" "f[873:874]" "f[893:894]" "f[913:914]" "f[933:934]";
createNode groupId -n "groupId4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 47 "f[13:14]" "f[33:34]" "f[53:54]" "f[73:74]" "f[93:94]" "f[113:114]" "f[133:134]" "f[153:154]" "f[173:174]" "f[193:194]" "f[213:214]" "f[233:234]" "f[253:254]" "f[273:274]" "f[293:294]" "f[313:314]" "f[333:334]" "f[353:354]" "f[373:374]" "f[393:394]" "f[413:414]" "f[433:434]" "f[453:454]" "f[473:474]" "f[493:494]" "f[513:514]" "f[533:534]" "f[553:554]" "f[573:574]" "f[593:594]" "f[613:614]" "f[633:634]" "f[653:654]" "f[673:674]" "f[693:694]" "f[713:714]" "f[733:734]" "f[753:754]" "f[773:774]" "f[793:794]" "f[813:814]" "f[833:834]" "f[853:854]" "f[873:874]" "f[893:894]" "f[913:914]" "f[933:934]";
createNode loft -n "loft1";
	setAttr -s 2 ".ic";
	setAttr ".u" yes;
	setAttr ".rsn" yes;
createNode makeNurbCircle -n "makeNurbCircle1";
createNode makeNurbCircle -n "makeNurbCircle2";
createNode makeNurbCircle -n "makeNurbCircle3";
createNode makeNurbCircle -n "makeNurbCircle4";
createNode makeNurbCircle -n "makeNurbCircle5";
createNode makeNurbCircle -n "makeNurbCircle6";
createNode makeNurbCircle -n "makeNurbCircle7";
createNode makeNurbCircle -n "makeNurbCircle8";
createNode makeNurbCircle -n "makeNurbCircle9";
createNode makeNurbCircle -n "makeNurbCircle10";
createNode curveInfo -n "C_snake1_cInfo";
createNode multiplyDivide -n "C_snakeglobal2_cInfo";
	setAttr ".i1" -type "float3" 10.7 0 0 ;
createNode multiplyDivide -n "C_snakeinitRatio2_md";
	setAttr ".op" 2;
createNode blendColors -n "C_snakeblnCrvDtr2_bln";
	setAttr ".c2" -type "float3" 1 0 1 ;
createNode multiplyDivide -n "C_snakeLenGlobal42_md";
	setAttr ".i2" -type "float3" 5.1021575e-006 1 1 ;
createNode multiplyDivide -n "C_snakeStretch42_md";
createNode multiplyDivide -n "C_snakeRevGlobal42_md";
	setAttr ".i2" -type "float3" 10.699995 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch42_md";
createNode plusMinusAverage -n "C_snakeRevLen42_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode blendColors -n "C_snakeBlendRoot42_bln";
createNode plusMinusAverage -n "C_snakeOffset42_pma";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode basicNode -n "C_snake0_bsn1";
createNode pointOnCurveInfo -n "C_snake0_pinf1";
createNode closestPointOnSurface -n "C_snake2_pntSInfo";
createNode closestPointOnSurface -n "C_snake4_pntSInfo";
createNode pointOnSurfaceInfo -n "C_snake1_pSurf";
createNode fourByFourMatrix -n "C_snake1_mtx";
createNode decomposeMatrix -n "C_snake1_dec";
	setAttr ".or" -type "double3" 0 90 0 ;
createNode multiplyDivide -n "C_snakeLenGlobal43_md";
	setAttr ".i2" -type "float3" 0.26750103 1 1 ;
createNode multiplyDivide -n "C_snakeStretch43_md";
createNode multiplyDivide -n "C_snakeRevGlobal43_md";
	setAttr ".i2" -type "float3" 10.432499 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch43_md";
createNode plusMinusAverage -n "C_snakeRevLen43_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode blendColors -n "C_snakeBlendRoot43_bln";
createNode plusMinusAverage -n "C_snakeOffset43_pma";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode basicNode -n "C_snake1_bsn1";
createNode pointOnCurveInfo -n "C_snake1_pinf1";
createNode closestPointOnSurface -n "C_snake6_pntSInfo";
createNode closestPointOnSurface -n "C_snake8_pntSInfo";
createNode pointOnSurfaceInfo -n "C_snake2_pSurf";
createNode fourByFourMatrix -n "C_snake2_mtx";
createNode decomposeMatrix -n "C_snake2_dec";
	setAttr ".or" -type "double3" 0 90 0 ;
createNode multiplyDivide -n "C_snakeLenGlobal44_md";
	setAttr ".i2" -type "float3" 0.53499693 1 1 ;
createNode multiplyDivide -n "C_snakeStretch44_md";
createNode multiplyDivide -n "C_snakeRevGlobal44_md";
	setAttr ".i2" -type "float3" 10.165003 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch44_md";
createNode plusMinusAverage -n "C_snakeRevLen44_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode blendColors -n "C_snakeBlendRoot44_bln";
createNode plusMinusAverage -n "C_snakeOffset44_pma";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode basicNode -n "C_snake2_bsn1";
createNode pointOnCurveInfo -n "C_snake2_pinf1";
createNode closestPointOnSurface -n "C_snake10_pntSInfo";
createNode closestPointOnSurface -n "C_snake12_pntSInfo";
createNode pointOnSurfaceInfo -n "C_snake3_pSurf";
createNode fourByFourMatrix -n "C_snake3_mtx";
createNode decomposeMatrix -n "C_snake3_dec";
	setAttr ".or" -type "double3" 0 90 0 ;
createNode multiplyDivide -n "C_snakeLenGlobal45_md";
	setAttr ".i2" -type "float3" 0.80250305 1 1 ;
createNode multiplyDivide -n "C_snakeStretch45_md";
createNode multiplyDivide -n "C_snakeRevGlobal45_md";
	setAttr ".i2" -type "float3" 9.8974972 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch45_md";
createNode plusMinusAverage -n "C_snakeRevLen45_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode blendColors -n "C_snakeBlendRoot45_bln";
createNode plusMinusAverage -n "C_snakeOffset45_pma";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode basicNode -n "C_snake3_bsn1";
createNode pointOnCurveInfo -n "C_snake3_pinf1";
createNode closestPointOnSurface -n "C_snake14_pntSInfo";
createNode closestPointOnSurface -n "C_snake16_pntSInfo";
createNode pointOnSurfaceInfo -n "C_snake4_pSurf";
createNode fourByFourMatrix -n "C_snake4_mtx";
createNode decomposeMatrix -n "C_snake4_dec";
	setAttr ".or" -type "double3" 0 90 0 ;
createNode multiplyDivide -n "C_snakeLenGlobal46_md";
	setAttr ".i2" -type "float3" 1.069999 1 1 ;
createNode multiplyDivide -n "C_snakeStretch46_md";
createNode multiplyDivide -n "C_snakeRevGlobal46_md";
	setAttr ".i2" -type "float3" 9.6300011 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch46_md";
createNode plusMinusAverage -n "C_snakeRevLen46_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode blendColors -n "C_snakeBlendRoot46_bln";
createNode plusMinusAverage -n "C_snakeOffset46_pma";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode basicNode -n "C_snake4_bsn1";
createNode pointOnCurveInfo -n "C_snake4_pinf1";
createNode closestPointOnSurface -n "C_snake18_pntSInfo";
createNode closestPointOnSurface -n "C_snake20_pntSInfo";
createNode pointOnSurfaceInfo -n "C_snake5_pSurf";
createNode fourByFourMatrix -n "C_snake5_mtx";
createNode decomposeMatrix -n "C_snake5_dec";
	setAttr ".or" -type "double3" 0 90 0 ;
createNode multiplyDivide -n "C_snakeLenGlobal47_md";
	setAttr ".i2" -type "float3" 1.3374949 1 1 ;
createNode multiplyDivide -n "C_snakeStretch47_md";
createNode multiplyDivide -n "C_snakeRevGlobal47_md";
	setAttr ".i2" -type "float3" 9.362505 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch47_md";
createNode plusMinusAverage -n "C_snakeRevLen47_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode blendColors -n "C_snakeBlendRoot47_bln";
createNode plusMinusAverage -n "C_snakeOffset47_pma";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode basicNode -n "C_snake5_bsn1";
createNode pointOnCurveInfo -n "C_snake5_pinf1";
createNode closestPointOnSurface -n "C_snake22_pntSInfo";
createNode closestPointOnSurface -n "C_snake24_pntSInfo";
createNode pointOnSurfaceInfo -n "C_snake6_pSurf";
createNode fourByFourMatrix -n "C_snake6_mtx";
createNode decomposeMatrix -n "C_snake6_dec";
	setAttr ".or" -type "double3" 0 90 0 ;
createNode multiplyDivide -n "C_snakeLenGlobal48_md";
	setAttr ".i2" -type "float3" 1.605001 1 1 ;
createNode multiplyDivide -n "C_snakeStretch48_md";
createNode multiplyDivide -n "C_snakeRevGlobal48_md";
	setAttr ".i2" -type "float3" 9.0949993 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch48_md";
createNode plusMinusAverage -n "C_snakeRevLen48_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode blendColors -n "C_snakeBlendRoot48_bln";
createNode plusMinusAverage -n "C_snakeOffset48_pma";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode basicNode -n "C_snake6_bsn1";
createNode pointOnCurveInfo -n "C_snake6_pinf1";
createNode closestPointOnSurface -n "C_snake26_pntSInfo";
createNode closestPointOnSurface -n "C_snake28_pntSInfo";
createNode pointOnSurfaceInfo -n "C_snake7_pSurf";
createNode fourByFourMatrix -n "C_snake7_mtx";
createNode decomposeMatrix -n "C_snake7_dec";
	setAttr ".or" -type "double3" 0 90 0 ;
createNode multiplyDivide -n "C_snakeLenGlobal49_md";
	setAttr ".i2" -type "float3" 1.872497 1 1 ;
createNode multiplyDivide -n "C_snakeStretch49_md";
createNode multiplyDivide -n "C_snakeRevGlobal49_md";
	setAttr ".i2" -type "float3" 8.8275032 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch49_md";
createNode plusMinusAverage -n "C_snakeRevLen49_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode blendColors -n "C_snakeBlendRoot49_bln";
createNode plusMinusAverage -n "C_snakeOffset49_pma";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode basicNode -n "C_snake7_bsn1";
createNode pointOnCurveInfo -n "C_snake7_pinf1";
createNode closestPointOnSurface -n "C_snake30_pntSInfo";
createNode closestPointOnSurface -n "C_snake32_pntSInfo";
createNode pointOnSurfaceInfo -n "C_snake8_pSurf";
createNode fourByFourMatrix -n "C_snake8_mtx";
createNode decomposeMatrix -n "C_snake8_dec";
	setAttr ".or" -type "double3" 0 90 0 ;
createNode multiplyDivide -n "C_snakeLenGlobal50_md";
	setAttr ".i2" -type "float3" 2.140003 1 1 ;
createNode multiplyDivide -n "C_snakeStretch50_md";
createNode multiplyDivide -n "C_snakeRevGlobal50_md";
	setAttr ".i2" -type "float3" 8.5599966 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch50_md";
createNode plusMinusAverage -n "C_snakeRevLen50_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode blendColors -n "C_snakeBlendRoot50_bln";
createNode plusMinusAverage -n "C_snakeOffset50_pma";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode basicNode -n "C_snake8_bsn1";
createNode pointOnCurveInfo -n "C_snake8_pinf1";
createNode closestPointOnSurface -n "C_snake34_pntSInfo";
createNode closestPointOnSurface -n "C_snake36_pntSInfo";
createNode pointOnSurfaceInfo -n "C_snake9_pSurf";
createNode fourByFourMatrix -n "C_snake9_mtx";
createNode decomposeMatrix -n "C_snake9_dec";
	setAttr ".or" -type "double3" 0 90 0 ;
createNode multiplyDivide -n "C_snakeLenGlobal51_md";
	setAttr ".i2" -type "float3" 2.4074991 1 1 ;
createNode multiplyDivide -n "C_snakeStretch51_md";
createNode multiplyDivide -n "C_snakeRevGlobal51_md";
	setAttr ".i2" -type "float3" 8.2925014 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch51_md";
createNode plusMinusAverage -n "C_snakeRevLen51_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode blendColors -n "C_snakeBlendRoot51_bln";
createNode plusMinusAverage -n "C_snakeOffset51_pma";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode basicNode -n "C_snake9_bsn1";
createNode pointOnCurveInfo -n "C_snake9_pinf1";
createNode closestPointOnSurface -n "C_snake38_pntSInfo";
createNode closestPointOnSurface -n "C_snake40_pntSInfo";
createNode pointOnSurfaceInfo -n "C_snake10_pSurf";
createNode fourByFourMatrix -n "C_snake10_mtx";
createNode decomposeMatrix -n "C_snake10_dec";
	setAttr ".or" -type "double3" 0 90 0 ;
createNode multiplyDivide -n "C_snakeLenGlobal52_md";
	setAttr ".i2" -type "float3" 2.6749949 1 1 ;
createNode multiplyDivide -n "C_snakeStretch52_md";
createNode multiplyDivide -n "C_snakeRevGlobal52_md";
	setAttr ".i2" -type "float3" 8.0250053 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch52_md";
createNode plusMinusAverage -n "C_snakeRevLen52_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode blendColors -n "C_snakeBlendRoot52_bln";
createNode plusMinusAverage -n "C_snakeOffset52_pma";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode basicNode -n "C_snake10_bsn1";
createNode pointOnCurveInfo -n "C_snake10_pinf1";
createNode closestPointOnSurface -n "C_snake42_pntSInfo";
createNode closestPointOnSurface -n "C_snake44_pntSInfo";
createNode pointOnSurfaceInfo -n "C_snake11_pSurf";
createNode fourByFourMatrix -n "C_snake11_mtx";
createNode decomposeMatrix -n "C_snake11_dec";
	setAttr ".or" -type "double3" 0 90 0 ;
createNode multiplyDivide -n "C_snakeLenGlobal53_md";
	setAttr ".i2" -type "float3" 2.9425011 1 1 ;
createNode multiplyDivide -n "C_snakeStretch53_md";
createNode multiplyDivide -n "C_snakeRevGlobal53_md";
	setAttr ".i2" -type "float3" 7.7574987 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch53_md";
createNode plusMinusAverage -n "C_snakeRevLen53_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode blendColors -n "C_snakeBlendRoot53_bln";
createNode plusMinusAverage -n "C_snakeOffset53_pma";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode basicNode -n "C_snake11_bsn1";
createNode pointOnCurveInfo -n "C_snake11_pinf1";
createNode closestPointOnSurface -n "C_snake46_pntSInfo";
createNode closestPointOnSurface -n "C_snake48_pntSInfo";
createNode pointOnSurfaceInfo -n "C_snake12_pSurf";
createNode fourByFourMatrix -n "C_snake12_mtx";
createNode decomposeMatrix -n "C_snake12_dec";
	setAttr ".or" -type "double3" 0 90 0 ;
createNode multiplyDivide -n "C_snakeLenGlobal54_md";
	setAttr ".i2" -type "float3" 3.2099969 1 1 ;
createNode multiplyDivide -n "C_snakeStretch54_md";
createNode multiplyDivide -n "C_snakeRevGlobal54_md";
	setAttr ".i2" -type "float3" 7.4900031 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch54_md";
createNode plusMinusAverage -n "C_snakeRevLen54_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode blendColors -n "C_snakeBlendRoot54_bln";
createNode plusMinusAverage -n "C_snakeOffset54_pma";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode basicNode -n "C_snake12_bsn1";
createNode pointOnCurveInfo -n "C_snake12_pinf1";
createNode closestPointOnSurface -n "C_snake50_pntSInfo";
createNode closestPointOnSurface -n "C_snake52_pntSInfo";
createNode pointOnSurfaceInfo -n "C_snake13_pSurf";
createNode fourByFourMatrix -n "C_snake13_mtx";
createNode decomposeMatrix -n "C_snake13_dec";
	setAttr ".or" -type "double3" 0 90 0 ;
createNode multiplyDivide -n "C_snakeLenGlobal55_md";
	setAttr ".i2" -type "float3" 3.4775031 1 1 ;
createNode multiplyDivide -n "C_snakeStretch55_md";
createNode multiplyDivide -n "C_snakeRevGlobal55_md";
	setAttr ".i2" -type "float3" 7.222497 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch55_md";
createNode plusMinusAverage -n "C_snakeRevLen55_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode blendColors -n "C_snakeBlendRoot55_bln";
createNode plusMinusAverage -n "C_snakeOffset55_pma";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode basicNode -n "C_snake13_bsn1";
createNode pointOnCurveInfo -n "C_snake13_pinf1";
createNode closestPointOnSurface -n "C_snake54_pntSInfo";
createNode closestPointOnSurface -n "C_snake56_pntSInfo";
createNode pointOnSurfaceInfo -n "C_snake14_pSurf";
createNode fourByFourMatrix -n "C_snake14_mtx";
createNode decomposeMatrix -n "C_snake14_dec";
	setAttr ".or" -type "double3" 0 90 0 ;
createNode multiplyDivide -n "C_snakeLenGlobal56_md";
	setAttr ".i2" -type "float3" 3.7449989 1 1 ;
createNode multiplyDivide -n "C_snakeStretch56_md";
createNode multiplyDivide -n "C_snakeRevGlobal56_md";
	setAttr ".i2" -type "float3" 6.9550009 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch56_md";
createNode plusMinusAverage -n "C_snakeRevLen56_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode blendColors -n "C_snakeBlendRoot56_bln";
createNode plusMinusAverage -n "C_snakeOffset56_pma";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode basicNode -n "C_snake14_bsn1";
createNode pointOnCurveInfo -n "C_snake14_pinf1";
createNode closestPointOnSurface -n "C_snake58_pntSInfo";
createNode closestPointOnSurface -n "C_snake60_pntSInfo";
createNode pointOnSurfaceInfo -n "C_snake15_pSurf";
createNode fourByFourMatrix -n "C_snake15_mtx";
createNode decomposeMatrix -n "C_snake15_dec";
	setAttr ".or" -type "double3" 0 90 0 ;
createNode multiplyDivide -n "C_snakeLenGlobal57_md";
	setAttr ".i2" -type "float3" 4.0124998 1 1 ;
createNode multiplyDivide -n "C_snakeStretch57_md";
createNode multiplyDivide -n "C_snakeRevGlobal57_md";
	setAttr ".i2" -type "float3" 6.6875 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch57_md";
createNode plusMinusAverage -n "C_snakeRevLen57_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode blendColors -n "C_snakeBlendRoot57_bln";
createNode plusMinusAverage -n "C_snakeOffset57_pma";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode basicNode -n "C_snake15_bsn1";
createNode pointOnCurveInfo -n "C_snake15_pinf1";
createNode closestPointOnSurface -n "C_snake62_pntSInfo";
createNode closestPointOnSurface -n "C_snake64_pntSInfo";
createNode pointOnSurfaceInfo -n "C_snake16_pSurf";
createNode fourByFourMatrix -n "C_snake16_mtx";
createNode decomposeMatrix -n "C_snake16_dec";
	setAttr ".or" -type "double3" 0 90 0 ;
createNode multiplyDivide -n "C_snakeLenGlobal58_md";
	setAttr ".i2" -type "float3" 4.2800012 1 1 ;
createNode multiplyDivide -n "C_snakeStretch58_md";
createNode multiplyDivide -n "C_snakeRevGlobal58_md";
	setAttr ".i2" -type "float3" 6.4199991 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch58_md";
createNode plusMinusAverage -n "C_snakeRevLen58_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode blendColors -n "C_snakeBlendRoot58_bln";
createNode plusMinusAverage -n "C_snakeOffset58_pma";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode basicNode -n "C_snake16_bsn1";
createNode pointOnCurveInfo -n "C_snake16_pinf1";
createNode closestPointOnSurface -n "C_snake66_pntSInfo";
createNode closestPointOnSurface -n "C_snake68_pntSInfo";
createNode pointOnSurfaceInfo -n "C_snake17_pSurf";
createNode fourByFourMatrix -n "C_snake17_mtx";
createNode decomposeMatrix -n "C_snake17_dec";
	setAttr ".or" -type "double3" 0 90 0 ;
createNode multiplyDivide -n "C_snakeLenGlobal59_md";
	setAttr ".i2" -type "float3" 4.5474968 1 1 ;
createNode multiplyDivide -n "C_snakeStretch59_md";
createNode multiplyDivide -n "C_snakeRevGlobal59_md";
	setAttr ".i2" -type "float3" 6.152503 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch59_md";
createNode plusMinusAverage -n "C_snakeRevLen59_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode blendColors -n "C_snakeBlendRoot59_bln";
createNode plusMinusAverage -n "C_snakeOffset59_pma";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode basicNode -n "C_snake17_bsn1";
createNode pointOnCurveInfo -n "C_snake17_pinf1";
createNode closestPointOnSurface -n "C_snake70_pntSInfo";
createNode closestPointOnSurface -n "C_snake72_pntSInfo";
createNode pointOnSurfaceInfo -n "C_snake18_pSurf";
createNode fourByFourMatrix -n "C_snake18_mtx";
createNode decomposeMatrix -n "C_snake18_dec";
	setAttr ".or" -type "double3" 0 90 0 ;
createNode multiplyDivide -n "C_snakeLenGlobal60_md";
	setAttr ".i2" -type "float3" 4.8150029 1 1 ;
createNode multiplyDivide -n "C_snakeStretch60_md";
createNode multiplyDivide -n "C_snakeRevGlobal60_md";
	setAttr ".i2" -type "float3" 5.8849969 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch60_md";
createNode plusMinusAverage -n "C_snakeRevLen60_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode blendColors -n "C_snakeBlendRoot60_bln";
createNode plusMinusAverage -n "C_snakeOffset60_pma";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode basicNode -n "C_snake18_bsn1";
createNode pointOnCurveInfo -n "C_snake18_pinf1";
createNode closestPointOnSurface -n "C_snake74_pntSInfo";
createNode closestPointOnSurface -n "C_snake76_pntSInfo";
createNode pointOnSurfaceInfo -n "C_snake19_pSurf";
createNode fourByFourMatrix -n "C_snake19_mtx";
createNode decomposeMatrix -n "C_snake19_dec";
	setAttr ".or" -type "double3" 0 90 0 ;
createNode multiplyDivide -n "C_snakeLenGlobal61_md";
	setAttr ".i2" -type "float3" 5.082499 1 1 ;
createNode multiplyDivide -n "C_snakeStretch61_md";
createNode multiplyDivide -n "C_snakeRevGlobal61_md";
	setAttr ".i2" -type "float3" 5.6175008 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch61_md";
createNode plusMinusAverage -n "C_snakeRevLen61_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode blendColors -n "C_snakeBlendRoot61_bln";
createNode plusMinusAverage -n "C_snakeOffset61_pma";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode basicNode -n "C_snake19_bsn1";
createNode pointOnCurveInfo -n "C_snake19_pinf1";
createNode closestPointOnSurface -n "C_snake78_pntSInfo";
createNode closestPointOnSurface -n "C_snake80_pntSInfo";
createNode pointOnSurfaceInfo -n "C_snake20_pSurf";
createNode fourByFourMatrix -n "C_snake20_mtx";
createNode decomposeMatrix -n "C_snake20_dec";
	setAttr ".or" -type "double3" 0 90 0 ;
createNode multiplyDivide -n "C_snakeLenGlobal62_md";
	setAttr ".i2" -type "float3" 5.3500051 1 1 ;
createNode multiplyDivide -n "C_snakeStretch62_md";
createNode multiplyDivide -n "C_snakeRevGlobal62_md";
	setAttr ".i2" -type "float3" 5.3499947 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch62_md";
createNode plusMinusAverage -n "C_snakeRevLen62_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode blendColors -n "C_snakeBlendRoot62_bln";
createNode plusMinusAverage -n "C_snakeOffset62_pma";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode basicNode -n "C_snake20_bsn1";
createNode pointOnCurveInfo -n "C_snake20_pinf1";
createNode closestPointOnSurface -n "C_snake82_pntSInfo";
createNode closestPointOnSurface -n "C_snake83_pntSInfo";
createNode pointOnSurfaceInfo -n "C_snake21_pSurf";
createNode fourByFourMatrix -n "C_snake21_mtx";
createNode decomposeMatrix -n "C_snake21_dec";
	setAttr ".or" -type "double3" 0 90 0 ;
createNode multiplyDivide -n "C_snakeLenGlobal63_md";
	setAttr ".i2" -type "float3" 5.6175008 1 1 ;
createNode multiplyDivide -n "C_snakeStretch63_md";
createNode multiplyDivide -n "C_snakeRevGlobal63_md";
	setAttr ".i2" -type "float3" 5.082499 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch63_md";
createNode plusMinusAverage -n "C_snakeRevLen63_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode blendColors -n "C_snakeBlendRoot63_bln";
createNode plusMinusAverage -n "C_snakeOffset63_pma";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode basicNode -n "C_snake21_bsn1";
createNode pointOnCurveInfo -n "C_snake21_pinf1";
createNode closestPointOnSurface -n "C_snake84_pntSInfo";
createNode closestPointOnSurface -n "C_snake85_pntSInfo";
createNode pointOnSurfaceInfo -n "C_snake22_pSurf";
createNode fourByFourMatrix -n "C_snake22_mtx";
createNode decomposeMatrix -n "C_snake22_dec";
	setAttr ".or" -type "double3" 0 90 0 ;
createNode multiplyDivide -n "C_snakeLenGlobal64_md";
	setAttr ".i2" -type "float3" 5.8849969 1 1 ;
createNode multiplyDivide -n "C_snakeStretch64_md";
createNode multiplyDivide -n "C_snakeRevGlobal64_md";
	setAttr ".i2" -type "float3" 4.8150029 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch64_md";
createNode plusMinusAverage -n "C_snakeRevLen64_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode blendColors -n "C_snakeBlendRoot64_bln";
createNode plusMinusAverage -n "C_snakeOffset64_pma";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode basicNode -n "C_snake22_bsn1";
createNode pointOnCurveInfo -n "C_snake22_pinf1";
createNode closestPointOnSurface -n "C_snake86_pntSInfo";
createNode closestPointOnSurface -n "C_snake87_pntSInfo";
createNode pointOnSurfaceInfo -n "C_snake23_pSurf";
createNode fourByFourMatrix -n "C_snake23_mtx";
createNode decomposeMatrix -n "C_snake23_dec";
	setAttr ".or" -type "double3" 0 90 0 ;
createNode multiplyDivide -n "C_snakeLenGlobal65_md";
	setAttr ".i2" -type "float3" 6.152503 1 1 ;
createNode multiplyDivide -n "C_snakeStretch65_md";
createNode multiplyDivide -n "C_snakeRevGlobal65_md";
	setAttr ".i2" -type "float3" 4.5474968 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch65_md";
createNode plusMinusAverage -n "C_snakeRevLen65_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode blendColors -n "C_snakeBlendRoot65_bln";
createNode plusMinusAverage -n "C_snakeOffset65_pma";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode basicNode -n "C_snake23_bsn1";
createNode pointOnCurveInfo -n "C_snake23_pinf1";
createNode closestPointOnSurface -n "C_snake88_pntSInfo";
createNode closestPointOnSurface -n "C_snake89_pntSInfo";
createNode pointOnSurfaceInfo -n "C_snake24_pSurf";
createNode fourByFourMatrix -n "C_snake24_mtx";
createNode decomposeMatrix -n "C_snake24_dec";
	setAttr ".or" -type "double3" 0 90 0 ;
createNode multiplyDivide -n "C_snakeLenGlobal66_md";
	setAttr ".i2" -type "float3" 6.4199991 1 1 ;
createNode multiplyDivide -n "C_snakeStretch66_md";
createNode multiplyDivide -n "C_snakeRevGlobal66_md";
	setAttr ".i2" -type "float3" 4.2800012 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch66_md";
createNode plusMinusAverage -n "C_snakeRevLen66_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode blendColors -n "C_snakeBlendRoot66_bln";
createNode plusMinusAverage -n "C_snakeOffset66_pma";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode basicNode -n "C_snake24_bsn1";
createNode pointOnCurveInfo -n "C_snake24_pinf1";
createNode closestPointOnSurface -n "C_snake90_pntSInfo";
createNode closestPointOnSurface -n "C_snake91_pntSInfo";
createNode pointOnSurfaceInfo -n "C_snake25_pSurf";
createNode fourByFourMatrix -n "C_snake25_mtx";
createNode decomposeMatrix -n "C_snake25_dec";
	setAttr ".or" -type "double3" 0 90 0 ;
createNode multiplyDivide -n "C_snakeLenGlobal67_md";
	setAttr ".i2" -type "float3" 6.6875052 1 1 ;
createNode multiplyDivide -n "C_snakeStretch67_md";
createNode multiplyDivide -n "C_snakeRevGlobal67_md";
	setAttr ".i2" -type "float3" 4.012495 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch67_md";
createNode plusMinusAverage -n "C_snakeRevLen67_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode blendColors -n "C_snakeBlendRoot67_bln";
createNode plusMinusAverage -n "C_snakeOffset67_pma";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode basicNode -n "C_snake25_bsn1";
createNode pointOnCurveInfo -n "C_snake25_pinf1";
createNode closestPointOnSurface -n "C_snake92_pntSInfo";
createNode closestPointOnSurface -n "C_snake93_pntSInfo";
createNode pointOnSurfaceInfo -n "C_snake26_pSurf";
createNode fourByFourMatrix -n "C_snake26_mtx";
createNode decomposeMatrix -n "C_snake26_dec";
	setAttr ".or" -type "double3" 0 90 0 ;
createNode multiplyDivide -n "C_snakeLenGlobal68_md";
	setAttr ".i2" -type "float3" 6.9550009 1 1 ;
createNode multiplyDivide -n "C_snakeStretch68_md";
createNode multiplyDivide -n "C_snakeRevGlobal68_md";
	setAttr ".i2" -type "float3" 3.7449989 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch68_md";
createNode plusMinusAverage -n "C_snakeRevLen68_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode blendColors -n "C_snakeBlendRoot68_bln";
createNode plusMinusAverage -n "C_snakeOffset68_pma";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode basicNode -n "C_snake26_bsn1";
createNode pointOnCurveInfo -n "C_snake26_pinf1";
createNode closestPointOnSurface -n "C_snake94_pntSInfo";
createNode closestPointOnSurface -n "C_snake95_pntSInfo";
createNode pointOnSurfaceInfo -n "C_snake27_pSurf";
createNode fourByFourMatrix -n "C_snake27_mtx";
createNode decomposeMatrix -n "C_snake27_dec";
	setAttr ".or" -type "double3" 0 90 0 ;
createNode multiplyDivide -n "C_snakeLenGlobal69_md";
	setAttr ".i2" -type "float3" 7.222497 1 1 ;
createNode multiplyDivide -n "C_snakeStretch69_md";
createNode multiplyDivide -n "C_snakeRevGlobal69_md";
	setAttr ".i2" -type "float3" 3.4775031 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch69_md";
createNode plusMinusAverage -n "C_snakeRevLen69_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode blendColors -n "C_snakeBlendRoot69_bln";
createNode plusMinusAverage -n "C_snakeOffset69_pma";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode basicNode -n "C_snake27_bsn1";
createNode pointOnCurveInfo -n "C_snake27_pinf1";
createNode closestPointOnSurface -n "C_snake96_pntSInfo";
createNode closestPointOnSurface -n "C_snake97_pntSInfo";
createNode pointOnSurfaceInfo -n "C_snake28_pSurf";
createNode fourByFourMatrix -n "C_snake28_mtx";
createNode decomposeMatrix -n "C_snake28_dec";
	setAttr ".or" -type "double3" 0 90 0 ;
createNode multiplyDivide -n "C_snakeLenGlobal70_md";
	setAttr ".i2" -type "float3" 7.4900031 1 1 ;
createNode multiplyDivide -n "C_snakeStretch70_md";
createNode multiplyDivide -n "C_snakeRevGlobal70_md";
	setAttr ".i2" -type "float3" 3.2099969 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch70_md";
createNode plusMinusAverage -n "C_snakeRevLen70_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode blendColors -n "C_snakeBlendRoot70_bln";
createNode plusMinusAverage -n "C_snakeOffset70_pma";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode basicNode -n "C_snake28_bsn1";
createNode pointOnCurveInfo -n "C_snake28_pinf1";
createNode closestPointOnSurface -n "C_snake98_pntSInfo";
createNode closestPointOnSurface -n "C_snake99_pntSInfo";
createNode pointOnSurfaceInfo -n "C_snake29_pSurf";
createNode fourByFourMatrix -n "C_snake29_mtx";
createNode decomposeMatrix -n "C_snake29_dec";
	setAttr ".or" -type "double3" 0 90 0 ;
createNode multiplyDivide -n "C_snakeLenGlobal71_md";
	setAttr ".i2" -type "float3" 7.7574992 1 1 ;
createNode multiplyDivide -n "C_snakeStretch71_md";
createNode multiplyDivide -n "C_snakeRevGlobal71_md";
	setAttr ".i2" -type "float3" 2.9425011 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch71_md";
createNode plusMinusAverage -n "C_snakeRevLen71_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode blendColors -n "C_snakeBlendRoot71_bln";
createNode plusMinusAverage -n "C_snakeOffset71_pma";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode basicNode -n "C_snake29_bsn1";
createNode pointOnCurveInfo -n "C_snake29_pinf1";
createNode closestPointOnSurface -n "C_snake100_pntSInfo";
createNode closestPointOnSurface -n "C_snake101_pntSInfo";
createNode pointOnSurfaceInfo -n "C_snake30_pSurf";
createNode fourByFourMatrix -n "C_snake30_mtx";
createNode decomposeMatrix -n "C_snake30_dec";
	setAttr ".or" -type "double3" 0 90 0 ;
createNode multiplyDivide -n "C_snakeLenGlobal72_md";
	setAttr ".i2" -type "float3" 8.0250053 1 1 ;
createNode multiplyDivide -n "C_snakeStretch72_md";
createNode multiplyDivide -n "C_snakeRevGlobal72_md";
	setAttr ".i2" -type "float3" 2.6749949 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch72_md";
createNode plusMinusAverage -n "C_snakeRevLen72_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode blendColors -n "C_snakeBlendRoot72_bln";
createNode plusMinusAverage -n "C_snakeOffset72_pma";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode basicNode -n "C_snake30_bsn1";
createNode pointOnCurveInfo -n "C_snake30_pinf1";
createNode closestPointOnSurface -n "C_snake102_pntSInfo";
createNode closestPointOnSurface -n "C_snake103_pntSInfo";
createNode pointOnSurfaceInfo -n "C_snake31_pSurf";
createNode fourByFourMatrix -n "C_snake31_mtx";
createNode decomposeMatrix -n "C_snake31_dec";
	setAttr ".or" -type "double3" 0 90 0 ;
createNode multiplyDivide -n "C_snakeLenGlobal73_md";
	setAttr ".i2" -type "float3" 8.2925014 1 1 ;
createNode multiplyDivide -n "C_snakeStretch73_md";
createNode multiplyDivide -n "C_snakeRevGlobal73_md";
	setAttr ".i2" -type "float3" 2.4074991 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch73_md";
createNode plusMinusAverage -n "C_snakeRevLen73_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode blendColors -n "C_snakeBlendRoot73_bln";
createNode plusMinusAverage -n "C_snakeOffset73_pma";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode basicNode -n "C_snake31_bsn1";
createNode pointOnCurveInfo -n "C_snake31_pinf1";
createNode closestPointOnSurface -n "C_snake104_pntSInfo";
createNode closestPointOnSurface -n "C_snake105_pntSInfo";
createNode pointOnSurfaceInfo -n "C_snake32_pSurf";
createNode fourByFourMatrix -n "C_snake32_mtx";
createNode decomposeMatrix -n "C_snake32_dec";
	setAttr ".or" -type "double3" 0 90 0 ;
createNode multiplyDivide -n "C_snakeLenGlobal74_md";
	setAttr ".i2" -type "float3" 8.5599966 1 1 ;
createNode multiplyDivide -n "C_snakeStretch74_md";
createNode multiplyDivide -n "C_snakeRevGlobal74_md";
	setAttr ".i2" -type "float3" 2.140003 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch74_md";
createNode plusMinusAverage -n "C_snakeRevLen74_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode blendColors -n "C_snakeBlendRoot74_bln";
createNode plusMinusAverage -n "C_snakeOffset74_pma";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode basicNode -n "C_snake32_bsn1";
createNode pointOnCurveInfo -n "C_snake32_pinf1";
createNode closestPointOnSurface -n "C_snake106_pntSInfo";
createNode closestPointOnSurface -n "C_snake107_pntSInfo";
createNode pointOnSurfaceInfo -n "C_snake33_pSurf";
createNode fourByFourMatrix -n "C_snake33_mtx";
createNode decomposeMatrix -n "C_snake33_dec";
	setAttr ".or" -type "double3" 0 90 0 ;
createNode multiplyDivide -n "C_snakeLenGlobal75_md";
	setAttr ".i2" -type "float3" 8.8275032 1 1 ;
createNode multiplyDivide -n "C_snakeStretch75_md";
createNode multiplyDivide -n "C_snakeRevGlobal75_md";
	setAttr ".i2" -type "float3" 1.872497 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch75_md";
createNode plusMinusAverage -n "C_snakeRevLen75_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode blendColors -n "C_snakeBlendRoot75_bln";
createNode plusMinusAverage -n "C_snakeOffset75_pma";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode basicNode -n "C_snake33_bsn1";
createNode pointOnCurveInfo -n "C_snake33_pinf1";
createNode closestPointOnSurface -n "C_snake108_pntSInfo";
createNode closestPointOnSurface -n "C_snake109_pntSInfo";
createNode pointOnSurfaceInfo -n "C_snake34_pSurf";
createNode fourByFourMatrix -n "C_snake34_mtx";
createNode decomposeMatrix -n "C_snake34_dec";
	setAttr ".or" -type "double3" 0 90 0 ;
createNode multiplyDivide -n "C_snakeLenGlobal76_md";
	setAttr ".i2" -type "float3" 9.0949993 1 1 ;
createNode multiplyDivide -n "C_snakeStretch76_md";
createNode multiplyDivide -n "C_snakeRevGlobal76_md";
	setAttr ".i2" -type "float3" 1.605001 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch76_md";
createNode plusMinusAverage -n "C_snakeRevLen76_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode blendColors -n "C_snakeBlendRoot76_bln";
createNode plusMinusAverage -n "C_snakeOffset76_pma";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode basicNode -n "C_snake34_bsn1";
createNode pointOnCurveInfo -n "C_snake34_pinf1";
createNode closestPointOnSurface -n "C_snake110_pntSInfo";
createNode closestPointOnSurface -n "C_snake111_pntSInfo";
createNode pointOnSurfaceInfo -n "C_snake35_pSurf";
createNode fourByFourMatrix -n "C_snake35_mtx";
createNode decomposeMatrix -n "C_snake35_dec";
	setAttr ".or" -type "double3" 0 90 0 ;
createNode multiplyDivide -n "C_snakeLenGlobal77_md";
	setAttr ".i2" -type "float3" 9.362505 1 1 ;
createNode multiplyDivide -n "C_snakeStretch77_md";
createNode multiplyDivide -n "C_snakeRevGlobal77_md";
	setAttr ".i2" -type "float3" 1.3374949 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch77_md";
createNode plusMinusAverage -n "C_snakeRevLen77_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode blendColors -n "C_snakeBlendRoot77_bln";
createNode plusMinusAverage -n "C_snakeOffset77_pma";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode basicNode -n "C_snake35_bsn1";
createNode pointOnCurveInfo -n "C_snake35_pinf1";
createNode closestPointOnSurface -n "C_snake112_pntSInfo";
createNode closestPointOnSurface -n "C_snake113_pntSInfo";
createNode pointOnSurfaceInfo -n "C_snake36_pSurf";
createNode fourByFourMatrix -n "C_snake36_mtx";
createNode decomposeMatrix -n "C_snake36_dec";
	setAttr ".or" -type "double3" 0 90 0 ;
createNode multiplyDivide -n "C_snakeLenGlobal78_md";
	setAttr ".i2" -type "float3" 9.6300011 1 1 ;
createNode multiplyDivide -n "C_snakeStretch78_md";
createNode multiplyDivide -n "C_snakeRevGlobal78_md";
	setAttr ".i2" -type "float3" 1.069999 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch78_md";
createNode plusMinusAverage -n "C_snakeRevLen78_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode blendColors -n "C_snakeBlendRoot78_bln";
createNode plusMinusAverage -n "C_snakeOffset78_pma";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode basicNode -n "C_snake36_bsn1";
createNode pointOnCurveInfo -n "C_snake36_pinf1";
createNode closestPointOnSurface -n "C_snake114_pntSInfo";
createNode closestPointOnSurface -n "C_snake115_pntSInfo";
createNode pointOnSurfaceInfo -n "C_snake37_pSurf";
createNode fourByFourMatrix -n "C_snake37_mtx";
createNode decomposeMatrix -n "C_snake37_dec";
	setAttr ".or" -type "double3" 0 90 0 ;
createNode multiplyDivide -n "C_snakeLenGlobal79_md";
	setAttr ".i2" -type "float3" 9.8974972 1 1 ;
createNode multiplyDivide -n "C_snakeStretch79_md";
createNode multiplyDivide -n "C_snakeRevGlobal79_md";
	setAttr ".i2" -type "float3" 0.80250305 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch79_md";
createNode plusMinusAverage -n "C_snakeRevLen79_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode blendColors -n "C_snakeBlendRoot79_bln";
createNode plusMinusAverage -n "C_snakeOffset79_pma";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode basicNode -n "C_snake37_bsn1";
createNode pointOnCurveInfo -n "C_snake37_pinf1";
createNode closestPointOnSurface -n "C_snake116_pntSInfo";
createNode closestPointOnSurface -n "C_snake117_pntSInfo";
createNode pointOnSurfaceInfo -n "C_snake38_pSurf";
createNode fourByFourMatrix -n "C_snake38_mtx";
createNode decomposeMatrix -n "C_snake38_dec";
	setAttr ".or" -type "double3" 0 90 0 ;
createNode multiplyDivide -n "C_snakeLenGlobal80_md";
	setAttr ".i2" -type "float3" 10.165003 1 1 ;
createNode multiplyDivide -n "C_snakeStretch80_md";
createNode multiplyDivide -n "C_snakeRevGlobal80_md";
	setAttr ".i2" -type "float3" 0.53499693 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch80_md";
createNode plusMinusAverage -n "C_snakeRevLen80_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode blendColors -n "C_snakeBlendRoot80_bln";
createNode plusMinusAverage -n "C_snakeOffset80_pma";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode basicNode -n "C_snake38_bsn1";
createNode pointOnCurveInfo -n "C_snake38_pinf1";
createNode closestPointOnSurface -n "C_snake118_pntSInfo";
createNode closestPointOnSurface -n "C_snake119_pntSInfo";
createNode pointOnSurfaceInfo -n "C_snake39_pSurf";
createNode fourByFourMatrix -n "C_snake39_mtx";
createNode decomposeMatrix -n "C_snake39_dec";
	setAttr ".or" -type "double3" 0 90 0 ;
createNode multiplyDivide -n "C_snakeLenGlobal81_md";
	setAttr ".i2" -type "float3" 10.432499 1 1 ;
createNode multiplyDivide -n "C_snakeStretch81_md";
createNode multiplyDivide -n "C_snakeRevGlobal81_md";
	setAttr ".i2" -type "float3" 0.26750103 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch81_md";
createNode plusMinusAverage -n "C_snakeRevLen81_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode blendColors -n "C_snakeBlendRoot81_bln";
createNode plusMinusAverage -n "C_snakeOffset81_pma";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode basicNode -n "C_snake39_bsn1";
createNode pointOnCurveInfo -n "C_snake39_pinf1";
createNode closestPointOnSurface -n "C_snake120_pntSInfo";
createNode closestPointOnSurface -n "C_snake121_pntSInfo";
createNode pointOnSurfaceInfo -n "C_snake40_pSurf";
createNode fourByFourMatrix -n "C_snake40_mtx";
createNode decomposeMatrix -n "C_snake40_dec";
	setAttr ".or" -type "double3" 0 90 0 ;
createNode multiplyDivide -n "C_snakeLenGlobal82_md";
	setAttr ".i2" -type "float3" 10.699995 1 1 ;
createNode multiplyDivide -n "C_snakeStretch82_md";
createNode multiplyDivide -n "C_snakeRevGlobal82_md";
	setAttr ".i2" -type "float3" 5.1021575e-006 1 1 ;
createNode multiplyDivide -n "C_snakeRevStretch82_md";
createNode plusMinusAverage -n "C_snakeRevLen82_pma";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode blendColors -n "C_snakeBlendRoot82_bln";
createNode plusMinusAverage -n "C_snakeOffset82_pma";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode basicNode -n "C_snake40_bsn1";
createNode pointOnCurveInfo -n "C_snake40_pinf1";
createNode closestPointOnSurface -n "C_snake122_pntSInfo";
createNode closestPointOnSurface -n "C_snake123_pntSInfo";
createNode pointOnSurfaceInfo -n "C_snake41_pSurf";
createNode fourByFourMatrix -n "C_snake41_mtx";
createNode decomposeMatrix -n "C_snake41_dec";
	setAttr ".or" -type "double3" 0 90 0 ;
createNode skinCluster -n "skinCluster1";
	setAttr -s 922 ".wl";
	setAttr -s 2 ".wl[0].w[0:1]"  0.9153790950674453 0.084620904932554752;
	setAttr -s 2 ".wl[1].w[0:1]"  0.93750693579880129 0.062493064201198781;
	setAttr -s 2 ".wl[2].w[0:1]"  0.96430228496349424 0.035697715036505741;
	setAttr -s 2 ".wl[3].w[0:1]"  0.98338564397712869 0.016614356022871361;
	setAttr -s 2 ".wl[4].w[0:1]"  0.98939730951447236 0.01060269048552764;
	setAttr -s 2 ".wl[5].w[0:1]"  0.98338564112210924 0.016614358877890756;
	setAttr -s 2 ".wl[6].w[0:1]"  0.96430229162371894 0.035697708376281008;
	setAttr -s 2 ".wl[7].w[0:1]"  0.93750697503887048 0.062493024961129552;
	setAttr -s 2 ".wl[8].w[0:1]"  0.91537914065141768 0.084620859348582322;
	setAttr -s 2 ".wl[9].w[0:1]"  0.90705859251391863 0.092941407486081484;
	setAttr -s 2 ".wl[10].w[0:1]"  0.91537914065141768 0.084620859348582322;
	setAttr -s 2 ".wl[11].w[0:1]"  0.93750597163904847 0.062494028360951581;
	setAttr -s 2 ".wl[12].w[0:1]"  0.96430259550779651 0.035697404492203523;
	setAttr -s 2 ".wl[13].w[0:1]"  0.98338566498237256 0.016614335017627484;
	setAttr -s 2 ".wl[14].w[0:1]"  0.98939772565516138 0.010602274344838594;
	setAttr -s 2 ".wl[15].w[0:1]"  0.98338567640254249 0.016614323597457504;
	setAttr -s 2 ".wl[16].w[0:1]"  0.96430262880884599 0.035697371191154098;
	setAttr -s 2 ".wl[17].w[0:1]"  0.93750726962039366 0.062492730379606343;
	setAttr -s 2 ".wl[18].w[0:1]"  0.91537920902736325 0.084620790972636792;
	setAttr -s 2 ".wl[19].w[0:1]"  0.90705868708970949 0.092941312910290522;
	setAttr -s 2 ".wl[20].w[0:1]"  0.60747493689094523 0.39252506310905472;
	setAttr -s 2 ".wl[21].w[0:1]"  0.63051448908781971 0.36948551091218035;
	setAttr -s 2 ".wl[22].w[0:1]"  0.67692274544672737 0.32307725455327263;
	setAttr -s 2 ".wl[23].w[0:1]"  0.74595502743092679 0.25404497256907332;
	setAttr -s 2 ".wl[24].w[0:1]"  0.78718391943281396 0.21281608056718601;
	setAttr -s 2 ".wl[25].w[0:1]"  0.74595503793644069 0.25404496206355931;
	setAttr -s 2 ".wl[26].w[0:1]"  0.67692278839277586 0.32307721160722408;
	setAttr -s 2 ".wl[27].w[0:1]"  0.63051455447300375 0.36948544552699619;
	setAttr -s 2 ".wl[28].w[0:1]"  0.60747500243028041 0.39252499756971959;
	setAttr -s 2 ".wl[29].w[0:1]"  0.60066477909750982 0.39933522090249024;
	setAttr -s 2 ".wl[30].w[0:1]"  0.60747506993135447 0.39252493006864547;
	setAttr -s 2 ".wl[31].w[0:1]"  0.63051275016975494 0.36948724983024517;
	setAttr -s 2 ".wl[32].w[0:1]"  0.67692283133883446 0.32307716866116559;
	setAttr -s 2 ".wl[33].w[0:1]"  0.74595403413460537 0.25404596586539469;
	setAttr -s 2 ".wl[34].w[0:1]"  0.7871838615567186 0.21281613844328148;
	setAttr -s 2 ".wl[35].w[0:1]"  0.74595405514547097 0.25404594485452908;
	setAttr -s 2 ".wl[36].w[0:1]"  0.67692285281186748 0.32307714718813257;
	setAttr -s 2 ".wl[37].w[0:1]"  0.63051279920823744 0.36948720079176256;
	setAttr -s 2 ".wl[38].w[0:1]"  0.60747509614713657 0.39252490385286337;
	setAttr -s 2 ".wl[39].w[0:1]"  0.6006648154252231 0.39933518457477685;
	setAttr -s 2 ".wl[40].w[2:3]"  0.57994995649034087 0.42005004350965919;
	setAttr -s 2 ".wl[41].w[2:3]"  0.59921534054801717 0.40078465945198283;
	setAttr -s 2 ".wl[42].w[2:3]"  0.6409216224419384 0.3590783775580616;
	setAttr -s 2 ".wl[43].w[2:3]"  0.71159945593350094 0.28840054406649906;
	setAttr -s 2 ".wl[44].w[2:3]"  0.75981316741717564 0.24018683258282444;
	setAttr -s 2 ".wl[45].w[2:3]"  0.7115994686082705 0.28840053139172944;
	setAttr -s 2 ".wl[46].w[2:3]"  0.64092167751586815 0.35907832248413185;
	setAttr -s 2 ".wl[47].w[2:3]"  0.59921546209282628 0.40078453790717372;
	setAttr -s 2 ".wl[48].w[2:3]"  0.57995002632761372 0.42004997367238628;
	setAttr -s 2 ".wl[49].w[2:3]"  0.57441914157041762 0.42558085842958238;
	setAttr -s 2 ".wl[50].w[2:3]"  0.57995039359127576 0.4200496064087243;
	setAttr -s 2 ".wl[51].w[2:3]"  0.59921554259899068 0.40078445740100932;
	setAttr -s 2 ".wl[52].w[2:3]"  0.64092167751586815 0.35907832248413185;
	setAttr -s 2 ".wl[53].w[2:3]"  0.71160005028263895 0.28839994971736099;
	setAttr -s 2 ".wl[54].w[2:3]"  0.75981404168787958 0.24018595831212036;
	setAttr -s 2 ".wl[55].w[2:3]"  0.71160006295747258 0.28839993704252742;
	setAttr -s 2 ".wl[56].w[2:3]"  0.6409217105602375 0.3590782894397625;
	setAttr -s 2 ".wl[57].w[2:3]"  0.59921557298527328 0.40078442701472672;
	setAttr -s 2 ".wl[58].w[2:3]"  0.57995041687045401 0.42004958312954599;
	setAttr -s 2 ".wl[59].w[2:3]"  0.57441916279671756 0.42558083720328255;
	setAttr -s 2 ".wl[60].w[3:4]"  0.82628643078021702 0.17371356921978304;
	setAttr -s 2 ".wl[61].w[3:4]"  0.82628807157432227 0.1737119284256777;
	setAttr -s 2 ".wl[62].w[3:4]"  0.82628652228787836 0.17371347771212162;
	setAttr -s 2 ".wl[63].w[3:4]"  0.8262872205556383 0.17371277944436173;
	setAttr -s 2 ".wl[64].w[3:4]"  0.82628685921121525 0.1737131407887848;
	setAttr -s 2 ".wl[65].w[3:4]"  0.8262872205556383 0.17371277944436173;
	setAttr -s 2 ".wl[66].w[3:4]"  0.82628654352239639 0.17371345647760356;
	setAttr -s 2 ".wl[67].w[3:4]"  0.82628813002784407 0.1737118699721559;
	setAttr -s 2 ".wl[68].w[3:4]"  0.82628676055939998 0.17371323944060002;
	setAttr -s 2 ".wl[69].w[3:4]"  0.82628731681061274 0.17371268318938721;
	setAttr -s 2 ".wl[70].w[3:4]"  0.82628723159306683 0.1737127684069332;
	setAttr -s 2 ".wl[71].w[3:4]"  0.82628698732115968 0.17371301267884026;
	setAttr -s 2 ".wl[72].w[3:4]"  0.82628728102611593 0.17371271897388404;
	setAttr -s 2 ".wl[73].w[3:4]"  0.82628796097187818 0.17371203902812188;
	setAttr -s 2 ".wl[74].w[3:4]"  0.82628692071449583 0.17371307928550417;
	setAttr -s 2 ".wl[75].w[3:4]"  0.82628797027493495 0.17371202972506505;
	setAttr -s 2 ".wl[76].w[3:4]"  0.82628730226060532 0.17371269773939471;
	setAttr -s 2 ".wl[77].w[3:4]"  0.8262870457746192 0.17371295422538074;
	setAttr -s 2 ".wl[78].w[3:4]"  0.82628730030931763 0.17371269969068243;
	setAttr -s 2 ".wl[79].w[3:4]"  0.82628738906318011 0.17371261093681986;
	setAttr -s 2 ".wl[80].w[4:5]"  0.89291566334780326 0.10708433665219674;
	setAttr -s 2 ".wl[81].w[4:5]"  0.89291543450571753 0.10708456549428244;
	setAttr -s 2 ".wl[82].w[4:5]"  0.89291548622861139 0.1070845137713887;
	setAttr -s 2 ".wl[83].w[4:5]"  0.89291513870098349 0.10708486129901656;
	setAttr -s 2 ".wl[84].w[4:5]"  0.89291552190018775 0.10708447809981225;
	setAttr -s 2 ".wl[85].w[4:5]"  0.89291513870098349 0.10708486129901656;
	setAttr -s 2 ".wl[86].w[4:5]"  0.89291550330521974 0.10708449669478023;
	setAttr -s 2 ".wl[87].w[4:5]"  0.89291548151366673 0.10708451848633325;
	setAttr -s 2 ".wl[88].w[4:5]"  0.89291592855337865 0.10708407144662138;
	setAttr -s 2 ".wl[89].w[4:5]"  0.89291603111522888 0.10708396888477106;
	setAttr -s 2 ".wl[90].w[4:5]"  0.89291541571111177 0.10708458428888824;
	setAttr -s 2 ".wl[91].w[4:5]"  0.89291554058756784 0.10708445941243222;
	setAttr -s 2 ".wl[92].w[4:5]"  0.89291555122756161 0.10708444877243839;
	setAttr -s 2 ".wl[93].w[4:5]"  0.89291573413818048 0.10708426586181946;
	setAttr -s 2 ".wl[94].w[4:5]"  0.89291605734863799 0.10708394265136206;
	setAttr -s 2 ".wl[95].w[4:5]"  0.89291574161960219 0.10708425838039783;
	setAttr -s 2 ".wl[96].w[4:5]"  0.89291556830419583 0.10708443169580421;
	setAttr -s 2 ".wl[97].w[4:5]"  0.892915587595427 0.107084412404573;
	setAttr -s 2 ".wl[98].w[4:5]"  0.8929154709722511 0.10708452902774894;
	setAttr -s 2 ".wl[99].w[4:5]"  0.89291608922010723 0.10708391077989271;
	setAttr -s 2 ".wl[100].w[4:5]"  0.5352329458738746 0.46476705412612535;
	setAttr -s 2 ".wl[101].w[4:5]"  0.53523291900943526 0.46476708099056474;
	setAttr -s 2 ".wl[102].w[4:5]"  0.53523307585714286 0.46476692414285714;
	setAttr -s 2 ".wl[103].w[4:5]"  0.53523293747758405 0.46476706252241606;
	setAttr -s 2 ".wl[104].w[4:5]"  0.53523277461232699 0.46476722538767301;
	setAttr -s 2 ".wl[105].w[4:5]"  0.53523293747758405 0.46476706252241606;
	setAttr -s 2 ".wl[106].w[4:5]"  0.53523308048877538 0.46476691951122462;
	setAttr -s 2 ".wl[107].w[4:5]"  0.53523293175911435 0.46476706824088565;
	setAttr -s 2 ".wl[108].w[4:5]"  0.5352332506867471 0.46476674931325301;
	setAttr -s 2 ".wl[109].w[4:5]"  0.53523295847240049 0.46476704152759946;
	setAttr -s 2 ".wl[110].w[4:5]"  0.53523231828520701 0.46476768171479305;
	setAttr -s 2 ".wl[111].w[4:5]"  0.53523298541273667 0.46476701458726327;
	setAttr -s 2 ".wl[112].w[4:5]"  0.53523295066720278 0.46476704933279722;
	setAttr -s 2 ".wl[113].w[4:5]"  0.53523285916417929 0.46476714083582071;
	setAttr -s 2 ".wl[114].w[4:5]"  0.53523302676364615 0.46476697323635385;
	setAttr -s 2 ".wl[115].w[4:5]"  0.53523286119331426 0.46476713880668574;
	setAttr -s 2 ".wl[116].w[4:5]"  0.53523295529879999 0.46476704470120006;
	setAttr -s 2 ".wl[117].w[4:5]"  0.53523299816245906 0.46476700183754094;
	setAttr -s 2 ".wl[118].w[4:5]"  0.53523233327311448 0.46476766672688558;
	setAttr -s 2 ".wl[119].w[4:5]"  0.53523297423190141 0.46476702576809859;
	setAttr -s 2 ".wl[120].w[5:6]"  0.63215868057159652 0.36784131942840348;
	setAttr -s 2 ".wl[121].w[5:6]"  0.63215892290382447 0.36784107709617558;
	setAttr -s 2 ".wl[122].w[5:6]"  0.63215883000905004 0.36784116999094996;
	setAttr -s 2 ".wl[123].w[5:6]"  0.6321578414769643 0.3678421585230357;
	setAttr -s 2 ".wl[124].w[5:6]"  0.63215862235118081 0.36784137764881913;
	setAttr -s 2 ".wl[125].w[5:6]"  0.6321578414769643 0.3678421585230357;
	setAttr -s 2 ".wl[126].w[5:6]"  0.6321588450775748 0.36784115492242514;
	setAttr -s 2 ".wl[127].w[5:6]"  0.63215896438397856 0.36784103561602138;
	setAttr -s 2 ".wl[128].w[5:6]"  0.63215940498232592 0.36784059501767408;
	setAttr -s 2 ".wl[129].w[5:6]"  0.63215889056251828 0.36784110943748172;
	setAttr -s 2 ".wl[130].w[5:6]"  0.63215850870139545 0.36784149129860455;
	setAttr -s 2 ".wl[131].w[5:6]"  0.63215881747969405 0.36784118252030601;
	setAttr -s 2 ".wl[132].w[5:6]"  0.63215815355195959 0.36784184644804041;
	setAttr -s 2 ".wl[133].w[5:6]"  0.63215908760732142 0.36784091239267863;
	setAttr -s 2 ".wl[134].w[5:6]"  0.63215878277752879 0.36784121722247126;
	setAttr -s 2 ".wl[135].w[5:6]"  0.63215909420900362 0.36784090579099638;
	setAttr -s 2 ".wl[136].w[5:6]"  0.63215816862039287 0.36784183137960713;
	setAttr -s 2 ".wl[137].w[5:6]"  0.63215885895976742 0.36784114104023252;
	setAttr -s 2 ".wl[138].w[5:6]"  0.63215855746414584 0.36784144253585416;
	setAttr -s 2 ".wl[139].w[5:6]"  0.63215894183476851 0.3678410581652316;
	setAttr -s 2 ".wl[140].w[6:7]"  0.74598472338133393 0.25401527661866613;
	setAttr -s 2 ".wl[141].w[6:7]"  0.74598402611133241 0.25401597388866765;
	setAttr -s 2 ".wl[142].w[6:7]"  0.74598481629424274 0.25401518370575726;
	setAttr -s 2 ".wl[143].w[6:7]"  0.74598443308825368 0.25401556691174637;
	setAttr -s 2 ".wl[144].w[6:7]"  0.74598482957419743 0.25401517042580263;
	setAttr -s 2 ".wl[145].w[6:7]"  0.74598443308825368 0.25401556691174637;
	setAttr -s 2 ".wl[146].w[6:7]"  0.74598437471408596 0.25401562528591398;
	setAttr -s 2 ".wl[147].w[6:7]"  0.74598454542203751 0.25401545457796254;
	setAttr -s 2 ".wl[148].w[6:7]"  0.74598505822491523 0.25401494177508471;
	setAttr -s 2 ".wl[149].w[6:7]"  0.74598536607677102 0.25401463392322904;
	setAttr -s 2 ".wl[150].w[6:7]"  0.7459845950840347 0.25401540491596536;
	setAttr -s 2 ".wl[151].w[6:7]"  0.74598525832648832 0.25401474167351168;
	setAttr -s 2 ".wl[152].w[6:7]"  0.74598501320245747 0.25401498679754253;
	setAttr -s 2 ".wl[153].w[6:7]"  0.74598434961912052 0.25401565038087948;
	setAttr -s 2 ".wl[154].w[6:7]"  0.74598397516887238 0.25401602483112762;
	setAttr -s 2 ".wl[155].w[6:7]"  0.74598435906501459 0.25401564093498546;
	setAttr -s 2 ".wl[156].w[6:7]"  0.74598503476302724 0.2540149652369727;
	setAttr -s 2 ".wl[157].w[6:7]"  0.74598485771801604 0.25401514228198396;
	setAttr -s 2 ".wl[158].w[6:7]"  0.74598466485571813 0.25401533514428187;
	setAttr -s 2 ".wl[159].w[6:7]"  0.7459854394390466 0.2540145605609534;
	setAttr -s 2 ".wl[160].w[7:8]"  0.83883563497781777 0.16116436502218232;
	setAttr -s 2 ".wl[161].w[7:8]"  0.83883540970114334 0.16116459029885666;
	setAttr -s 2 ".wl[162].w[7:8]"  0.838836389521327 0.16116361047867303;
	setAttr -s 2 ".wl[163].w[7:8]"  0.83883604627802022 0.16116395372197978;
	setAttr -s 2 ".wl[164].w[7:8]"  0.83883602582915529 0.16116397417084469;
	setAttr -s 2 ".wl[165].w[7:8]"  0.83883604627802022 0.16116395372197978;
	setAttr -s 2 ".wl[166].w[7:8]"  0.83883641026666 0.16116358973334;
	setAttr -s 2 ".wl[167].w[7:8]"  0.8388354668081498 0.16116453319185017;
	setAttr -s 2 ".wl[168].w[7:8]"  0.83883617339694028 0.16116382660305972;
	setAttr -s 2 ".wl[169].w[7:8]"  0.83883614031571652 0.16116385968428354;
	setAttr -s 2 ".wl[170].w[7:8]"  0.83883617339694028 0.16116382660305972;
	setAttr -s 2 ".wl[171].w[7:8]"  0.83883581841618882 0.16116418158381124;
	setAttr -s 2 ".wl[172].w[7:8]"  0.83883610535553277 0.16116389464446723;
	setAttr -s 2 ".wl[173].w[7:8]"  0.83883605354900159 0.16116394645099852;
	setAttr -s 2 ".wl[174].w[7:8]"  0.83883569325729568 0.16116430674270427;
	setAttr -s 2 ".wl[175].w[7:8]"  0.83883606263772625 0.16116393736227377;
	setAttr -s 2 ".wl[176].w[7:8]"  0.83883612610087555 0.16116387389912454;
	setAttr -s 2 ".wl[177].w[7:8]"  0.83883587552315253 0.1611641244768475;
	setAttr -s 2 ".wl[178].w[7:8]"  0.83883624053031502 0.16116375946968492;
	setAttr -s 2 ".wl[179].w[7:8]"  0.83883621090390936 0.16116378909609066;
	setAttr -s 2 ".wl[180].w[7:8]"  0.50040638605356513 0.49959361394643492;
	setAttr -s 2 ".wl[181].w[7:8]"  0.50040642135865876 0.49959357864134118;
	setAttr -s 2 ".wl[182].w[7:8]"  0.50040642160849202 0.49959357839150792;
	setAttr -s 2 ".wl[183].w[7:8]"  0.5004064215799443 0.4995935784200557;
	setAttr -s 2 ".wl[184].w[7:8]"  0.50040638632687584 0.49959361367312427;
	setAttr -s 2 ".wl[185].w[7:8]"  0.5004064215799443 0.4995935784200557;
	setAttr -s 2 ".wl[186].w[7:8]"  0.50040642166398785 0.49959357833601209;
	setAttr -s 2 ".wl[187].w[7:8]"  0.50040638678754268 0.49959361321245732;
	setAttr -s 2 ".wl[188].w[7:8]"  0.50040642191999973 0.49959357808000021;
	setAttr -s 2 ".wl[189].w[7:8]"  0.50040645714885068 0.49959354285114932;
	setAttr -s 2 ".wl[190].w[7:8]"  0.50040642160879034 0.49959357839120966;
	setAttr -s 2 ".wl[191].w[7:8]"  0.50040638683846095 0.49959361316153905;
	setAttr -s 2 ".wl[192].w[7:8]"  0.50040642173798244 0.49959357826201756;
	setAttr -s 2 ".wl[193].w[7:8]"  0.50040642159939475 0.49959357840060536;
	setAttr -s 2 ".wl[194].w[7:8]"  0.50040642063558149 0.49959357936441851;
	setAttr -s 2 ".wl[195].w[7:8]"  0.50040642162370819 0.49959357837629181;
	setAttr -s 2 ".wl[196].w[7:8]"  0.50040642179347816 0.49959357820652184;
	setAttr -s 2 ".wl[197].w[7:8]"  0.50040635167689151 0.49959364832310854;
	setAttr -s 2 ".wl[198].w[7:8]"  0.50040642178837846 0.49959357821162154;
	setAttr -s 2 ".wl[199].w[7:8]"  0.5004064573376974 0.49959354266230266;
	setAttr -s 2 ".wl[200].w[8:9]"  0.54736194255349491 0.45263805744650509;
	setAttr -s 2 ".wl[201].w[8:9]"  0.54736229402227743 0.45263770597772252;
	setAttr -s 2 ".wl[202].w[8:9]"  0.54736232164109 0.45263767835891011;
	setAttr -s 2 ".wl[203].w[8:9]"  0.54736267113592807 0.45263732886407199;
	setAttr -s 2 ".wl[204].w[8:9]"  0.54736221408678865 0.45263778591321141;
	setAttr -s 2 ".wl[205].w[8:9]"  0.54736267113592807 0.45263732886407199;
	setAttr -s 2 ".wl[206].w[8:9]"  0.54736232777609461 0.45263767222390533;
	setAttr -s 2 ".wl[207].w[8:9]"  0.54736202370046516 0.45263797629953495;
	setAttr -s 2 ".wl[208].w[8:9]"  0.54736235607794359 0.45263764392205647;
	setAttr -s 2 ".wl[209].w[8:9]"  0.54736234629485314 0.4526376537051468;
	setAttr -s 2 ".wl[210].w[8:9]"  0.54736235607794359 0.45263764392205647;
	setAttr -s 2 ".wl[211].w[8:9]"  0.54736231653988343 0.45263768346011662;
	setAttr -s 2 ".wl[212].w[8:9]"  0.54736233595610173 0.45263766404389821;
	setAttr -s 2 ".wl[213].w[8:9]"  0.54736232063539692 0.45263767936460314;
	setAttr -s 2 ".wl[214].w[8:9]"  0.54736243675331475 0.45263756324668536;
	setAttr -s 2 ".wl[215].w[8:9]"  0.54736232332319801 0.45263767667680199;
	setAttr -s 2 ".wl[216].w[8:9]"  0.54736234209110768 0.45263765790889243;
	setAttr -s 2 ".wl[217].w[8:9]"  0.54736226798800047 0.45263773201199947;
	setAttr -s 2 ".wl[218].w[8:9]"  0.54736237593126447 0.45263762406873553;
	setAttr -s 2 ".wl[219].w[8:9]"  0.54736236716986042 0.45263763283013958;
	setAttr -s 2 ".wl[220].w[9:10]"  0.65023674028860579 0.34976325971139421;
	setAttr -s 2 ".wl[221].w[9:10]"  0.65023682089613177 0.34976317910386828;
	setAttr -s 2 ".wl[222].w[9:10]"  0.65023671878157863 0.34976328121842143;
	setAttr -s 2 ".wl[223].w[9:10]"  0.65023621167832191 0.34976378832167809;
	setAttr -s 2 ".wl[224].w[9:10]"  0.65023623040147938 0.34976376959852062;
	setAttr -s 2 ".wl[225].w[9:10]"  0.65023621167832191 0.34976378832167809;
	setAttr -s 2 ".wl[226].w[9:10]"  0.6502367353456503 0.3497632646543497;
	setAttr -s 2 ".wl[227].w[9:10]"  0.65023619122729048 0.34976380877270946;
	setAttr -s 2 ".wl[228].w[9:10]"  0.65023681175859682 0.34976318824140323;
	setAttr -s 2 ".wl[229].w[9:10]"  0.65023678534496132 0.34976321465503873;
	setAttr -s 2 ".wl[230].w[9:10]"  0.65023681175859682 0.34976318824140323;
	setAttr -s 2 ".wl[231].w[9:10]"  0.65023670500868724 0.34976329499131281;
	setAttr -s 2 ".wl[232].w[9:10]"  0.65023675743107978 0.34976324256892022;
	setAttr -s 2 ".wl[233].w[9:10]"  0.65023671606627975 0.3497632839337203;
	setAttr -s 2 ".wl[234].w[9:10]"  0.65023642839258555 0.34976357160741445;
	setAttr -s 2 ".wl[235].w[9:10]"  0.65023672332314919 0.34976327667685081;
	setAttr -s 2 ".wl[236].w[9:10]"  0.65023677399515223 0.34976322600484772;
	setAttr -s 2 ".wl[237].w[9:10]"  0.65023675060564678 0.34976324939435322;
	setAttr -s 2 ".wl[238].w[9:10]"  0.65023686536111847 0.34976313463888148;
	setAttr -s 2 ".wl[239].w[9:10]"  0.65023684170596574 0.34976315829403426;
	setAttr -s 2 ".wl[240].w[10:11]"  0.76259037201968272 0.23740962798031731;
	setAttr -s 2 ".wl[241].w[10:11]"  0.76259036781163636 0.23740963218836358;
	setAttr -s 2 ".wl[242].w[10:11]"  0.762590466242413 0.23740953375758697;
	setAttr -s 2 ".wl[243].w[10:11]"  0.76259090077597558 0.23740909922402451;
	setAttr -s 2 ".wl[244].w[10:11]"  0.76259092549058927 0.23740907450941079;
	setAttr -s 2 ".wl[245].w[10:11]"  0.76259090077597558 0.23740909922402451;
	setAttr -s 2 ".wl[246].w[10:11]"  0.76259048810697028 0.23740951189302967;
	setAttr -s 2 ".wl[247].w[10:11]"  0.76259066122151853 0.2374093387784815;
	setAttr -s 2 ".wl[248].w[10:11]"  0.76259091214090591 0.23740908785909409;
	setAttr -s 2 ".wl[249].w[10:11]"  0.76259099988702972 0.23740900011297025;
	setAttr -s 2 ".wl[250].w[10:11]"  0.76259091214090591 0.23740908785909409;
	setAttr -s 2 ".wl[251].w[10:11]"  0.76259157284581647 0.23740842715418353;
	setAttr -s 2 ".wl[252].w[10:11]"  0.76259096304073226 0.23740903695926777;
	setAttr -s 2 ".wl[253].w[10:11]"  0.76259090843922728 0.23740909156077267;
	setAttr -s 2 ".wl[254].w[10:11]"  0.76259092549058904 0.23740907450941098;
	setAttr -s 2 ".wl[255].w[10:11]"  0.76259091801829015 0.23740908198170993;
	setAttr -s 2 ".wl[256].w[10:11]"  0.76259098490529287 0.2374090150947071;
	setAttr -s 2 ".wl[257].w[10:11]"  0.76259118725330832 0.23740881274669165;
	setAttr -s 2 ".wl[258].w[10:11]"  0.76259098289610627 0.23740901710389375;
	setAttr -s 2 ".wl[259].w[10:11]"  0.76259107428349071 0.23740892571650929;
	setAttr -s 2 ".wl[260].w[11:12]"  0.85058539206313355 0.14941460793686645;
	setAttr -s 2 ".wl[261].w[11:12]"  0.85058600998368761 0.14941399001631242;
	setAttr -s 2 ".wl[262].w[11:12]"  0.85058641168213189 0.14941358831786816;
	setAttr -s 2 ".wl[263].w[11:12]"  0.850586227257212 0.14941377274278811;
	setAttr -s 2 ".wl[264].w[11:12]"  0.85058611320482491 0.14941388679517517;
	setAttr -s 2 ".wl[265].w[11:12]"  0.850586227257212 0.14941377274278811;
	setAttr -s 2 ".wl[266].w[11:12]"  0.85058643185124472 0.14941356814875525;
	setAttr -s 2 ".wl[267].w[11:12]"  0.85058606550452021 0.14941393449547979;
	setAttr -s 2 ".wl[268].w[11:12]"  0.85058621399473489 0.14941378600526509;
	setAttr -s 2 ".wl[269].w[11:12]"  0.850586181832369 0.14941381816763097;
	setAttr -s 2 ".wl[270].w[11:12]"  0.85058621399473489 0.14941378600526509;
	setAttr -s 2 ".wl[271].w[11:12]"  0.85058586887383747 0.14941413112616256;
	setAttr -s 2 ".wl[272].w[11:12]"  0.85058614784323261 0.14941385215676742;
	setAttr -s 2 ".wl[273].w[11:12]"  0.85058609747566827 0.14941390252433182;
	setAttr -s 2 ".wl[274].w[11:12]"  0.85058574719131175 0.14941425280868831;
	setAttr -s 2 ".wl[275].w[11:12]"  0.85058610631194642 0.14941389368805355;
	setAttr -s 2 ".wl[276].w[11:12]"  0.85058616801235687 0.14941383198764321;
	setAttr -s 2 ".wl[277].w[11:12]"  0.85058592439461678 0.14941407560538325;
	setAttr -s 2 ".wl[278].w[11:12]"  0.85058627926342367 0.14941372073657627;
	setAttr -s 2 ".wl[279].w[11:12]"  0.85058625045991676 0.14941374954008332;
	setAttr -s 2 ".wl[280].w[11:12]"  0.50271496755993594 0.497285032440064;
	setAttr -s 2 ".wl[281].w[11:12]"  0.50271496842428898 0.49728503157571102;
	setAttr -s 2 ".wl[282].w[11:12]"  0.5027150163128471 0.49728498368715296;
	setAttr -s 2 ".wl[283].w[11:12]"  0.5027149647347815 0.4972850352652185;
	setAttr -s 2 ".wl[284].w[11:12]"  0.50271496834456408 0.49728503165543592;
	setAttr -s 2 ".wl[285].w[11:12]"  0.5027149647347815 0.4972850352652185;
	setAttr -s 2 ".wl[286].w[11:12]"  0.50271501668271401 0.49728498331728599;
	setAttr -s 2 ".wl[287].w[11:12]"  0.502715016896084 0.49728498310391606;
	setAttr -s 2 ".wl[288].w[11:12]"  0.50271496915579339 0.49728503084420661;
	setAttr -s 2 ".wl[289].w[11:12]"  0.50271496960305118 0.49728503039694888;
	setAttr -s 2 ".wl[290].w[11:12]"  0.50271501463682278 0.49728498536317717;
	setAttr -s 2 ".wl[291].w[11:12]"  0.50271496978180719 0.49728503021819292;
	setAttr -s 2 ".wl[292].w[11:12]"  0.5027150545119462 0.49728494548805391;
	setAttr -s 2 ".wl[293].w[11:12]"  0.50271501353713488 0.49728498646286512;
	setAttr -s 2 ".wl[294].w[11:12]"  0.50271496498860002 0.49728503501139998;
	setAttr -s 2 ".wl[295].w[11:12]"  0.50271501369917682 0.49728498630082318;
	setAttr -s 2 ".wl[296].w[11:12]"  0.50271506031206481 0.49728493968793519;
	setAttr -s 2 ".wl[297].w[11:12]"  0.50271497079994609 0.49728502920005402;
	setAttr -s 2 ".wl[298].w[11:12]"  0.50271501583373668 0.49728498416626338;
	setAttr -s 2 ".wl[299].w[11:12]"  0.50271497086154016 0.49728502913845996;
	setAttr -s 2 ".wl[300].w[12:13]"  0.56093957939628625 0.43906042060371375;
	setAttr -s 2 ".wl[301].w[12:13]"  0.56093933942083118 0.43906066057916893;
	setAttr -s 2 ".wl[302].w[12:13]"  0.56093917935947624 0.43906082064052382;
	setAttr -s 2 ".wl[303].w[12:13]"  0.56093963227382915 0.43906036772617096;
	setAttr -s 2 ".wl[304].w[12:13]"  0.56093937911966041 0.43906062088033954;
	setAttr -s 2 ".wl[305].w[12:13]"  0.56093963227382915 0.43906036772617096;
	setAttr -s 2 ".wl[306].w[12:13]"  0.56093918711649993 0.43906081288350007;
	setAttr -s 2 ".wl[307].w[12:13]"  0.56093920716262935 0.43906079283737059;
	setAttr -s 2 ".wl[308].w[12:13]"  0.56093961286618133 0.43906038713381862;
	setAttr -s 2 ".wl[309].w[12:13]"  0.56093921053136564 0.43906078946863436;
	setAttr -s 2 ".wl[310].w[12:13]"  0.56093920115109519 0.43906079884890487;
	setAttr -s 2 ".wl[311].w[12:13]"  0.56093936789189602 0.43906063210810403;
	setAttr -s 2 ".wl[312].w[12:13]"  0.56093939244159319 0.43906060755840681;
	setAttr -s 2 ".wl[313].w[12:13]"  0.56093924502728254 0.4390607549727174;
	setAttr -s 2 ".wl[314].w[12:13]"  0.56093937911966041 0.43906062088033959;
	setAttr -s 2 ".wl[315].w[12:13]"  0.56093931536521446 0.43906068463478554;
	setAttr -s 2 ".wl[316].w[12:13]"  0.56093940019864075 0.43906059980135931;
	setAttr -s 2 ".wl[317].w[12:13]"  0.56093938924520481 0.43906061075479519;
	setAttr -s 2 ".wl[318].w[12:13]"  0.56093922625336812 0.43906077374663188;
	setAttr -s 2 ".wl[319].w[12:13]"  0.56093923692546399 0.43906076307453601;
	setAttr -s 2 ".wl[320].w[13:14]"  0.66851652755767843 0.33148347244232157;
	setAttr -s 2 ".wl[321].w[13:14]"  0.66851682014417457 0.33148317985582537;
	setAttr -s 2 ".wl[322].w[13:14]"  0.66851630379223825 0.3314836962077618;
	setAttr -s 2 ".wl[323].w[13:14]"  0.66851669986911666 0.33148330013088334;
	setAttr -s 2 ".wl[324].w[13:14]"  0.66851631482407214 0.3314836851759278;
	setAttr -s 2 ".wl[325].w[13:14]"  0.66851669986911666 0.33148330013088334;
	setAttr -s 2 ".wl[326].w[13:14]"  0.66851632170292341 0.33148367829707653;
	setAttr -s 2 ".wl[327].w[13:14]"  0.66851636798870162 0.33148363201129843;
	setAttr -s 2 ".wl[328].w[13:14]"  0.66851660483801134 0.33148339516198877;
	setAttr -s 2 ".wl[329].w[13:14]"  0.66851662649678167 0.33148337350321833;
	setAttr -s 2 ".wl[330].w[13:14]"  0.66851650439821941 0.33148349560178059;
	setAttr -s 2 ".wl[331].w[13:14]"  0.66851653962930657 0.33148346037069343;
	setAttr -s 2 ".wl[332].w[13:14]"  0.66851672779079629 0.33148327220920365;
	setAttr -s 2 ".wl[333].w[13:14]"  0.66851630085619318 0.33148369914380688;
	setAttr -s 2 ".wl[334].w[13:14]"  0.66851631482407203 0.33148368517592791;
	setAttr -s 2 ".wl[335].w[13:14]"  0.66851630870302614 0.33148369129697386;
	setAttr -s 2 ".wl[336].w[13:14]"  0.66851699643138529 0.33148300356861476;
	setAttr -s 2 ".wl[337].w[13:14]"  0.66851658893322097 0.33148341106677898;
	setAttr -s 2 ".wl[338].w[13:14]"  0.66851656235843049 0.33148343764156957;
	setAttr -s 2 ".wl[339].w[13:14]"  0.6685166874398365 0.3314833125601635;
	setAttr -s 2 ".wl[340].w[14:15]"  0.77852659640078603 0.221473403599214;
	setAttr -s 2 ".wl[341].w[14:15]"  0.7785265861369659 0.2214734138630341;
	setAttr -s 2 ".wl[342].w[14:15]"  0.77852656785932917 0.22147343214067078;
	setAttr -s 2 ".wl[343].w[14:15]"  0.77852646170556394 0.22147353829443608;
	setAttr -s 2 ".wl[344].w[14:15]"  0.77852668112574375 0.22147331887425625;
	setAttr -s 2 ".wl[345].w[14:15]"  0.77852646170556394 0.22147353829443608;
	setAttr -s 2 ".wl[346].w[14:15]"  0.77852658984110945 0.22147341015889052;
	setAttr -s 2 ".wl[347].w[14:15]"  0.77852643340885919 0.22147356659114087;
	setAttr -s 2 ".wl[348].w[14:15]"  0.77852641637343667 0.22147358362656336;
	setAttr -s 2 ".wl[349].w[14:15]"  0.77852665619397909 0.22147334380602088;
	setAttr -s 2 ".wl[350].w[14:15]"  0.77852662961220565 0.22147337038779447;
	setAttr -s 2 ".wl[351].w[14:15]"  0.77852666681785043 0.22147333318214957;
	setAttr -s 2 ".wl[352].w[14:15]"  0.77852661915014776 0.22147338084985235;
	setAttr -s 2 ".wl[353].w[14:15]"  0.77852673040151454 0.22147326959848546;
	setAttr -s 2 ".wl[354].w[14:15]"  0.77852658139869679 0.22147341860130323;
	setAttr -s 2 ".wl[355].w[14:15]"  0.77852676357848194 0.22147323642151809;
	setAttr -s 2 ".wl[356].w[14:15]"  0.77852664113192482 0.2214733588680752;
	setAttr -s 2 ".wl[357].w[14:15]"  0.77852672732852002 0.22147327267147998;
	setAttr -s 2 ".wl[358].w[14:15]"  0.77852670074675512 0.22147329925324494;
	setAttr -s 2 ".wl[359].w[14:15]"  0.77852673098927905 0.22147326901072092;
	setAttr -s 2 ".wl[360].w[15:16]"  0.86155537625246381 0.13844462374753624;
	setAttr -s 2 ".wl[361].w[15:16]"  0.86155524529696792 0.13844475470303219;
	setAttr -s 2 ".wl[362].w[15:16]"  0.86155555055317179 0.13844444944682818;
	setAttr -s 2 ".wl[363].w[15:16]"  0.86155539560234362 0.13844460439765643;
	setAttr -s 2 ".wl[364].w[15:16]"  0.86155541767162025 0.13844458232837975;
	setAttr -s 2 ".wl[365].w[15:16]"  0.86155539560234362 0.13844460439765643;
	setAttr -s 2 ".wl[366].w[15:16]"  0.86155549683117028 0.13844450316882972;
	setAttr -s 2 ".wl[367].w[15:16]"  0.86155547562590618 0.13844452437409394;
	setAttr -s 2 ".wl[368].w[15:16]"  0.86155534295968428 0.13844465704031583;
	setAttr -s 2 ".wl[369].w[15:16]"  0.86155548410498717 0.1384445158950128;
	setAttr -s 2 ".wl[370].w[15:16]"  0.86155538804132725 0.13844461195867272;
	setAttr -s 2 ".wl[371].w[15:16]"  0.86155534863379413 0.13844465136620596;
	setAttr -s 2 ".wl[372].w[15:16]"  0.86155552365620303 0.13844447634379695;
	setAttr -s 2 ".wl[373].w[15:16]"  0.86155542602310231 0.13844457397689774;
	setAttr -s 2 ".wl[374].w[15:16]"  0.86155552237366695 0.13844447762633313;
	setAttr -s 2 ".wl[375].w[15:16]"  0.86155557948419359 0.13844442051580647;
	setAttr -s 2 ".wl[376].w[15:16]"  0.86155554318047423 0.13844445681952575;
	setAttr -s 2 ".wl[377].w[15:16]"  0.86155540237955452 0.13844459762044548;
	setAttr -s 2 ".wl[378].w[15:16]"  0.86155545122324095 0.13844454877675899;
	setAttr -s 2 ".wl[379].w[15:16]"  0.86155555053836896 0.13844444946163106;
	setAttr -s 2 ".wl[380].w[15:16]"  0.50703796875156548 0.49296203124843452;
	setAttr -s 2 ".wl[381].w[15:16]"  0.5070379319342071 0.4929620680657929;
	setAttr -s 2 ".wl[382].w[15:16]"  0.50703796751216978 0.49296203248783027;
	setAttr -s 2 ".wl[383].w[15:16]"  0.50703793064948632 0.49296206935051368;
	setAttr -s 2 ".wl[384].w[15:16]"  0.5070379681001087 0.4929620318998913;
	setAttr -s 2 ".wl[385].w[15:16]"  0.50703789427792678 0.49296210572207322;
	setAttr -s 2 ".wl[386].w[15:16]"  0.50703796846671545 0.49296203153328461;
	setAttr -s 2 ".wl[387].w[15:16]"  0.50703797093350544 0.49296202906649461;
	setAttr -s 2 ".wl[388].w[15:16]"  0.50703793382208451 0.49296206617791555;
	setAttr -s 2 ".wl[389].w[15:16]"  0.50703793497637661 0.49296206502362333;
	setAttr -s 2 ".wl[390].w[15:16]"  0.50703797019375207 0.49296202980624798;
	setAttr -s 2 ".wl[391].w[15:16]"  0.50703797180938592 0.49296202819061402;
	setAttr -s 2 ".wl[392].w[15:16]"  0.50703793336777792 0.49296206663222208;
	setAttr -s 2 ".wl[393].w[15:16]"  0.50703797559296626 0.49296202440703385;
	setAttr -s 2 ".wl[394].w[15:16]"  0.5070379681001087 0.4929620318998913;
	setAttr -s 2 ".wl[395].w[15:16]"  0.50703797601116229 0.49296202398883776;
	setAttr -s 2 ".wl[396].w[15:16]"  0.50703793432231892 0.49296206567768114;
	setAttr -s 2 ".wl[397].w[15:16]"  0.50703797443702769 0.49296202556297242;
	setAttr -s 2 ".wl[398].w[15:16]"  0.50703797328272937 0.49296202671727068;
	setAttr -s 2 ".wl[399].w[15:16]"  0.50703793822430376 0.49296206177569629;
	setAttr -s 2 ".wl[400].w[16:17]"  0.57578985502214364 0.42421014497785636;
	setAttr -s 2 ".wl[401].w[16:17]"  0.57578987646579016 0.42421012353420978;
	setAttr -s 2 ".wl[402].w[16:17]"  0.57578996157089535 0.4242100384291046;
	setAttr -s 2 ".wl[403].w[16:17]"  0.5757899974970534 0.4242100025029466;
	setAttr -s 2 ".wl[404].w[16:17]"  0.5757900102818112 0.42420998971818891;
	setAttr -s 2 ".wl[405].w[16:17]"  0.5757899974970534 0.4242100025029466;
	setAttr -s 2 ".wl[406].w[16:17]"  0.57579000572159644 0.42420999427840356;
	setAttr -s 2 ".wl[407].w[16:17]"  0.57578999545428333 0.42421000454571667;
	setAttr -s 2 ".wl[408].w[16:17]"  0.57578989581122064 0.42421010418877941;
	setAttr -s 2 ".wl[409].w[16:17]"  0.57578989398969027 0.42421010601030984;
	setAttr -s 2 ".wl[410].w[16:17]"  0.57578998812809479 0.42421001187190516;
	setAttr -s 2 ".wl[411].w[16:17]"  0.57578997891954065 0.4242100210804593;
	setAttr -s 2 ".wl[412].w[16:17]"  0.57578998362882261 0.42421001637117733;
	setAttr -s 2 ".wl[413].w[16:17]"  0.575789854451217 0.42421014554878311;
	setAttr -s 2 ".wl[414].w[16:17]"  0.57578996739358168 0.42421003260641826;
	setAttr -s 2 ".wl[415].w[16:17]"  0.57578996416284678 0.42421003583715322;
	setAttr -s 2 ".wl[416].w[16:17]"  0.5757899930822209 0.42421000691777916;
	setAttr -s 2 ".wl[417].w[16:17]"  0.57579000494251742 0.42420999505748253;
	setAttr -s 2 ".wl[418].w[16:17]"  0.57579001871995017 0.42420998128004989;
	setAttr -s 2 ".wl[419].w[16:17]"  0.57578992615583846 0.42421007384416159;
	setAttr -s 2 ".wl[420].w[17:18]"  0.68681025729491774 0.31318974270508232;
	setAttr -s 2 ".wl[421].w[17:18]"  0.6868103643144674 0.31318963568553254;
	setAttr -s 2 ".wl[422].w[17:18]"  0.686810303533674 0.313189696466326;
	setAttr -s 2 ".wl[423].w[17:18]"  0.68681023436773248 0.31318976563226747;
	setAttr -s 2 ".wl[424].w[17:18]"  0.68681046841937077 0.31318953158062923;
	setAttr -s 2 ".wl[425].w[17:18]"  0.68681023436773248 0.31318976563226747;
	setAttr -s 2 ".wl[426].w[17:18]"  0.68681040255025161 0.31318959744974839;
	setAttr -s 2 ".wl[427].w[17:18]"  0.68681035442093818 0.31318964557906182;
	setAttr -s 2 ".wl[428].w[17:18]"  0.68681030396145348 0.31318969603854652;
	setAttr -s 2 ".wl[429].w[17:18]"  0.68681036270827012 0.31318963729172999;
	setAttr -s 2 ".wl[430].w[17:18]"  0.68681038867948407 0.31318961132051593;
	setAttr -s 2 ".wl[431].w[17:18]"  0.68681034648738437 0.31318965351261563;
	setAttr -s 2 ".wl[432].w[17:18]"  0.68681029552979411 0.31318970447020589;
	setAttr -s 2 ".wl[433].w[17:18]"  0.68681044757011378 0.31318955242988628;
	setAttr -s 2 ".wl[434].w[17:18]"  0.68681038435192576 0.31318961564807418;
	setAttr -s 2 ".wl[435].w[17:18]"  0.68681031116928426 0.3131896888307158;
	setAttr -s 2 ".wl[436].w[17:18]"  0.68681032222905236 0.31318967777094758;
	setAttr -s 2 ".wl[437].w[17:18]"  0.68681039901762786 0.3131896009823722;
	setAttr -s 2 ".wl[438].w[17:18]"  0.68681040138523186 0.31318959861476814;
	setAttr -s 2 ".wl[439].w[17:18]"  0.68681042763923705 0.31318957236076289;
	setAttr -s 2 ".wl[440].w[18:19]"  0.79373024126399494 0.20626975873600509;
	setAttr -s 2 ".wl[441].w[18:19]"  0.79373024982203932 0.2062697501779607;
	setAttr -s 2 ".wl[442].w[18:19]"  0.79373028618776853 0.20626971381223141;
	setAttr -s 2 ".wl[443].w[18:19]"  0.79373027149097053 0.20626972850902944;
	setAttr -s 2 ".wl[444].w[18:19]"  0.79373027384101136 0.20626972615898861;
	setAttr -s 2 ".wl[445].w[18:19]"  0.79373034415863286 0.20626965584136719;
	setAttr -s 2 ".wl[446].w[18:19]"  0.79373034311533686 0.20626965688466312;
	setAttr -s 2 ".wl[447].w[18:19]"  0.79373035210109755 0.2062696478989024;
	setAttr -s 2 ".wl[448].w[18:19]"  0.79373036700179411 0.20626963299820589;
	setAttr -s 2 ".wl[449].w[18:19]"  0.79373034894315286 0.20626965105684708;
	setAttr -s 2 ".wl[450].w[18:19]"  0.79373031474155353 0.20626968525844644;
	setAttr -s 2 ".wl[451].w[18:19]"  0.79373031568563657 0.20626968431436343;
	setAttr -s 2 ".wl[452].w[18:19]"  0.79373033211113508 0.20626966788886486;
	setAttr -s 2 ".wl[453].w[18:19]"  0.79373035355243959 0.20626964644756052;
	setAttr -s 2 ".wl[454].w[18:19]"  0.79373036162391697 0.20626963837608303;
	setAttr -s 2 ".wl[455].w[18:19]"  0.79373036315912204 0.20626963684087798;
	setAttr -s 2 ".wl[456].w[18:19]"  0.79373040696050556 0.20626959303949446;
	setAttr -s 2 ".wl[457].w[18:19]"  0.7937303760471347 0.20626962395286533;
	setAttr -s 2 ".wl[458].w[18:19]"  0.7937303933861094 0.2062696066138906;
	setAttr -s 2 ".wl[459].w[18:19]"  0.79373042355408563 0.2062695764459144;
	setAttr -s 2 ".wl[460].w[19:20]"  0.87176794659448187 0.12823205340551821;
	setAttr -s 2 ".wl[461].w[19:20]"  0.87176795889191627 0.12823204110808381;
	setAttr -s 2 ".wl[462].w[19:20]"  0.87176796834052483 0.12823203165947519;
	setAttr -s 2 ".wl[463].w[19:20]"  0.87176799927397886 0.12823200072602117;
	setAttr -s 2 ".wl[464].w[19:20]"  0.87176801422459793 0.12823198577540207;
	setAttr -s 2 ".wl[465].w[19:20]"  0.87176798243046161 0.12823201756953834;
	setAttr -s 2 ".wl[466].w[19:20]"  0.87176802172073786 0.12823197827926214;
	setAttr -s 2 ".wl[467].w[19:20]"  0.87176803582426421 0.12823196417573585;
	setAttr -s 2 ".wl[468].w[19:20]"  0.87176803443092232 0.12823196556907768;
	setAttr -s 2 ".wl[469].w[19:20]"  0.87176805242265454 0.12823194757734546;
	setAttr -s 2 ".wl[470].w[19:20]"  0.87176799449119302 0.12823200550880698;
	setAttr -s 2 ".wl[471].w[19:20]"  0.87176801329898035 0.12823198670101973;
	setAttr -s 2 ".wl[472].w[19:20]"  0.87176802998099912 0.12823197001900091;
	setAttr -s 2 ".wl[473].w[19:20]"  0.87176798902937969 0.12823201097062034;
	setAttr -s 2 ".wl[474].w[19:20]"  0.87176801031387097 0.12823198968612906;
	setAttr -s 2 ".wl[475].w[19:20]"  0.87176805474030317 0.12823194525969683;
	setAttr -s 2 ".wl[476].w[19:20]"  0.87176806565234144 0.1282319343476585;
	setAttr -s 2 ".wl[477].w[19:20]"  0.87176807982524973 0.1282319201747503;
	setAttr -s 2 ".wl[478].w[19:20]"  0.87176808728352295 0.12823191271647708;
	setAttr -s 2 ".wl[479].w[19:20]"  0.87176811648629038 0.12823188351370962;
	setAttr -s 2 ".wl[480].w[19:20]"  0.51332149135959637 0.48667850864040363;
	setAttr -s 2 ".wl[481].w[19:20]"  0.51332151907084445 0.48667848092915555;
	setAttr -s 2 ".wl[482].w[19:20]"  0.51332149609748812 0.48667850390251188;
	setAttr -s 2 ".wl[483].w[19:20]"  0.5133214996247123 0.4866785003752877;
	setAttr -s 2 ".wl[484].w[19:20]"  0.51332147727725819 0.48667852272274176;
	setAttr -s 2 ".wl[485].w[19:20]"  0.51332152439956502 0.48667847560043498;
	setAttr -s 2 ".wl[486].w[19:20]"  0.51332149789236059 0.48667850210763941;
	setAttr -s 2 ".wl[487].w[19:20]"  0.51332152401171316 0.48667847598828679;
	setAttr -s 2 ".wl[488].w[19:20]"  0.51332149910403269 0.48667850089596737;
	setAttr -s 2 ".wl[489].w[19:20]"  0.51332150001634669 0.48667849998365337;
	setAttr -s 2 ".wl[490].w[19:20]"  0.5133215201043958 0.48667847989560425;
	setAttr -s 2 ".wl[491].w[19:20]"  0.5133215208723344 0.48667847912766565;
	setAttr -s 2 ".wl[492].w[19:20]"  0.51332152176646506 0.48667847823353499;
	setAttr -s 2 ".wl[493].w[19:20]"  0.51332152309253298 0.48667847690746707;
	setAttr -s 2 ".wl[494].w[19:20]"  0.51332147524151528 0.48667852475848478;
	setAttr -s 2 ".wl[495].w[19:20]"  0.51332150104014262 0.48667849895985743;
	setAttr -s 2 ".wl[496].w[19:20]"  0.51332150208039662 0.48667849791960349;
	setAttr -s 2 ".wl[497].w[19:20]"  0.51332152581320256 0.48667847418679738;
	setAttr -s 2 ".wl[498].w[19:20]"  0.51332150365420293 0.48667849634579702;
	setAttr -s 2 ".wl[499].w[19:20]"  0.5133215061235884 0.48667849387641171;
	setAttr -s 2 ".wl[500].w[20:21]"  0.59172388594561665 0.40827611405438341;
	setAttr -s 2 ".wl[501].w[20:21]"  0.59172375428056645 0.40827624571943355;
	setAttr -s 2 ".wl[502].w[20:21]"  0.59172373376760312 0.40827626623239682;
	setAttr -s 2 ".wl[503].w[20:21]"  0.59172376904358603 0.40827623095641397;
	setAttr -s 2 ".wl[504].w[20:21]"  0.59172373096741626 0.40827626903258374;
	setAttr -s 2 ".wl[505].w[20:21]"  0.59172381727248957 0.40827618272751048;
	setAttr -s 2 ".wl[506].w[20:21]"  0.59172382699715853 0.40827617300284147;
	setAttr -s 2 ".wl[507].w[20:21]"  0.59172392716650957 0.40827607283349038;
	setAttr -s 2 ".wl[508].w[20:21]"  0.59172393417457947 0.40827606582542059;
	setAttr -s 2 ".wl[509].w[20:21]"  0.59172404433022585 0.40827595566977415;
	setAttr -s 2 ".wl[510].w[20:21]"  0.59172389499821798 0.40827610500178202;
	setAttr -s 2 ".wl[511].w[20:21]"  0.59172382511362009 0.40827617488638002;
	setAttr -s 2 ".wl[512].w[20:21]"  0.59172380087474574 0.40827619912525426;
	setAttr -s 2 ".wl[513].w[20:21]"  0.59172393349951202 0.40827606650048803;
	setAttr -s 2 ".wl[514].w[20:21]"  0.59172383238913884 0.40827616761086116;
	setAttr -s 2 ".wl[515].w[20:21]"  0.59172382608716112 0.40827617391283888;
	setAttr -s 2 ".wl[516].w[20:21]"  0.59172385307839348 0.40827614692160652;
	setAttr -s 2 ".wl[517].w[20:21]"  0.59172390857821422 0.40827609142178578;
	setAttr -s 2 ".wl[518].w[20:21]"  0.59172385020163032 0.40827614979836968;
	setAttr -s 2 ".wl[519].w[20:21]"  0.59172408236348584 0.40827591763651427;
	setAttr -s 2 ".wl[520].w[21:22]"  0.70494506855398609 0.29505493144601397;
	setAttr -s 2 ".wl[521].w[21:22]"  0.70494509006580441 0.29505490993419559;
	setAttr -s 2 ".wl[522].w[21:22]"  0.7049450773075836 0.29505492269241645;
	setAttr -s 2 ".wl[523].w[21:22]"  0.70494520312677178 0.29505479687322828;
	setAttr -s 2 ".wl[524].w[21:22]"  0.70494523025886435 0.29505476974113559;
	setAttr -s 2 ".wl[525].w[21:22]"  0.70494507991550204 0.29505492008449796;
	setAttr -s 2 ".wl[526].w[21:22]"  0.70494524464059305 0.29505475535940701;
	setAttr -s 2 ".wl[527].w[21:22]"  0.70494530579003134 0.29505469420996866;
	setAttr -s 2 ".wl[528].w[21:22]"  0.70494508815869772 0.29505491184130228;
	setAttr -s 2 ".wl[529].w[21:22]"  0.70494508429298808 0.29505491570701203;
	setAttr -s 2 ".wl[530].w[21:22]"  0.70494506003249824 0.29505493996750182;
	setAttr -s 2 ".wl[531].w[21:22]"  0.70494509398913774 0.29505490601086232;
	setAttr -s 2 ".wl[532].w[21:22]"  0.704945124119427 0.295054875880573;
	setAttr -s 2 ".wl[533].w[21:22]"  0.70494512359474337 0.29505487640525663;
	setAttr -s 2 ".wl[534].w[21:22]"  0.70494510704758617 0.29505489295241377;
	setAttr -s 2 ".wl[535].w[21:22]"  0.70494509573649577 0.29505490426350428;
	setAttr -s 2 ".wl[536].w[21:22]"  0.704945144181645 0.295054855818355;
	setAttr -s 2 ".wl[537].w[21:22]"  0.70494514921568274 0.29505485078431726;
	setAttr -s 2 ".wl[538].w[21:22]"  0.7049451249551828 0.29505487504481726;
	setAttr -s 2 ".wl[539].w[21:22]"  0.70494515255675017 0.29505484744324983;
	setAttr -s 2 ".wl[540].w[22:23]"  0.80816041322989773 0.19183958677010232;
	setAttr -s 2 ".wl[541].w[22:23]"  0.80816047166988825 0.19183952833011178;
	setAttr -s 2 ".wl[542].w[22:23]"  0.80816049519897115 0.19183950480102888;
	setAttr -s 2 ".wl[543].w[22:23]"  0.80816049802239875 0.19183950197760125;
	setAttr -s 2 ".wl[544].w[22:23]"  0.80816052739658184 0.19183947260341822;
	setAttr -s 2 ".wl[545].w[22:23]"  0.80816049802239875 0.19183950197760125;
	setAttr -s 2 ".wl[546].w[22:23]"  0.80816061297045205 0.19183938702954792;
	setAttr -s 2 ".wl[547].w[22:23]"  0.80816043540872673 0.19183956459127327;
	setAttr -s 2 ".wl[548].w[22:23]"  0.8081605069467831 0.19183949305321693;
	setAttr -s 2 ".wl[549].w[22:23]"  0.80816050276162477 0.19183949723837523;
	setAttr -s 2 ".wl[550].w[22:23]"  0.80816063814861527 0.19183936185138484;
	setAttr -s 2 ".wl[551].w[22:23]"  0.80816051325902982 0.19183948674097018;
	setAttr -s 2 ".wl[552].w[22:23]"  0.80816064193056592 0.19183935806943408;
	setAttr -s 2 ".wl[553].w[22:23]"  0.80816050796953864 0.19183949203046138;
	setAttr -s 2 ".wl[554].w[22:23]"  0.8081605249082221 0.19183947509177796;
	setAttr -s 2 ".wl[555].w[22:23]"  0.80816032771703594 0.19183967228296409;
	setAttr -s 2 ".wl[556].w[22:23]"  0.80816066365064898 0.19183933634935099;
	setAttr -s 2 ".wl[557].w[22:23]"  0.80816057304929345 0.19183942695070655;
	setAttr -s 2 ".wl[558].w[22:23]"  0.80816070843625498 0.19183929156374505;
	setAttr -s 2 ".wl[559].w[22:23]"  0.80816057666645402 0.19183942333354595;
	setAttr -s 2 ".wl[560].w[23:24]"  0.88125445521939016 0.11874554478060979;
	setAttr -s 2 ".wl[561].w[23:24]"  0.88125435026361842 0.11874564973638156;
	setAttr -s 2 ".wl[562].w[23:24]"  0.88125443172455786 0.11874556827544221;
	setAttr -s 2 ".wl[563].w[23:24]"  0.88125442241621954 0.11874557758378046;
	setAttr -s 2 ".wl[564].w[23:24]"  0.88125431783160624 0.11874568216839378;
	setAttr -s 2 ".wl[565].w[23:24]"  0.88125442241621954 0.11874557758378046;
	setAttr -s 2 ".wl[566].w[23:24]"  0.88125444981957834 0.11874555018042163;
	setAttr -s 2 ".wl[567].w[23:24]"  0.88125459308842757 0.1187454069115724;
	setAttr -s 2 ".wl[568].w[23:24]"  0.88125453329502046 0.11874546670497951;
	setAttr -s 2 ".wl[569].w[23:24]"  0.88125450444010167 0.11874549555989834;
	setAttr -s 2 ".wl[570].w[23:24]"  0.88125443182178875 0.11874556817821121;
	setAttr -s 2 ".wl[571].w[23:24]"  0.8812542916403534 0.11874570835964661;
	setAttr -s 2 ".wl[572].w[23:24]"  0.88125459898444591 0.1187454010155541;
	setAttr -s 2 ".wl[573].w[23:24]"  0.88125442875829496 0.11874557124170504;
	setAttr -s 2 ".wl[574].w[23:24]"  0.88125444286993071 0.11874555713006929;
	setAttr -s 2 ".wl[575].w[23:24]"  0.88125443668588732 0.11874556331411262;
	setAttr -s 2 ".wl[576].w[23:24]"  0.88125449204128292 0.11874550795871712;
	setAttr -s 2 ".wl[577].w[23:24]"  0.88125434145167936 0.11874565854832063;
	setAttr -s 2 ".wl[578].w[23:24]"  0.88125454111516088 0.11874545888483914;
	setAttr -s 2 ".wl[579].w[23:24]"  0.88125456601026964 0.11874543398973038;
	setAttr -s 2 ".wl[580].w[23:24]"  0.52148705091437664 0.47851294908562336;
	setAttr -s 2 ".wl[581].w[23:24]"  0.52148692536518648 0.47851307463481357;
	setAttr -s 2 ".wl[582].w[23:24]"  0.52148706825238744 0.4785129317476125;
	setAttr -s 2 ".wl[583].w[23:24]"  0.52148702095069799 0.47851297904930196;
	setAttr -s 2 ".wl[584].w[23:24]"  0.52148707499226654 0.4785129250077334;
	setAttr -s 2 ".wl[585].w[23:24]"  0.52148702095069799 0.47851297904930196;
	setAttr -s 2 ".wl[586].w[23:24]"  0.52148707112183579 0.47851292887816421;
	setAttr -s 2 ".wl[587].w[23:24]"  0.52148705747346646 0.47851294252653354;
	setAttr -s 2 ".wl[588].w[23:24]"  0.52148706329533434 0.47851293670466577;
	setAttr -s 2 ".wl[589].w[23:24]"  0.5214869345101838 0.47851306548981626;
	setAttr -s 2 ".wl[590].w[23:24]"  0.52148705524970718 0.47851294475029293;
	setAttr -s 2 ".wl[591].w[23:24]"  0.52148706010643431 0.47851293989356569;
	setAttr -s 2 ".wl[592].w[23:24]"  0.52148717809375433 0.47851282190624572;
	setAttr -s 2 ".wl[593].w[23:24]"  0.52148707148018625 0.4785129285198137;
	setAttr -s 2 ".wl[594].w[23:24]"  0.52148717316575255 0.47851282683424745;
	setAttr -s 2 ".wl[595].w[23:24]"  0.52148707273731776 0.47851292726268224;
	setAttr -s 2 ".wl[596].w[23:24]"  0.52148718096321367 0.47851281903678639;
	setAttr -s 2 ".wl[597].w[23:24]"  0.52148706800534039 0.47851293199465966;
	setAttr -s 2 ".wl[598].w[23:24]"  0.52148706453542537 0.47851293546457468;
	setAttr -s 2 ".wl[599].w[23:24]"  0.52148694427371323 0.47851305572628672;
	setAttr -s 2 ".wl[600].w[24:25]"  0.60854089605896777 0.39145910394103223;
	setAttr -s 2 ".wl[601].w[24:25]"  0.60854103100358248 0.39145896899641747;
	setAttr -s 2 ".wl[602].w[24:25]"  0.60854095157896737 0.39145904842103268;
	setAttr -s 2 ".wl[603].w[24:25]"  0.60854094495150024 0.39145905504849982;
	setAttr -s 2 ".wl[604].w[24:25]"  0.60854095951439013 0.39145904048560981;
	setAttr -s 2 ".wl[605].w[24:25]"  0.60854094495150024 0.39145905504849982;
	setAttr -s 2 ".wl[606].w[24:25]"  0.60854096446248807 0.39145903553751199;
	setAttr -s 2 ".wl[607].w[24:25]"  0.60854083116469548 0.39145916883530452;
	setAttr -s 2 ".wl[608].w[24:25]"  0.60854095164819511 0.39145904835180489;
	setAttr -s 2 ".wl[609].w[24:25]"  0.60854100335187411 0.39145899664812583;
	setAttr -s 2 ".wl[610].w[24:25]"  0.60854075246823547 0.39145924753176459;
	setAttr -s 2 ".wl[611].w[24:25]"  0.60854077427443043 0.39145922572556963;
	setAttr -s 2 ".wl[612].w[24:25]"  0.60854098164051629 0.39145901835948371;
	setAttr -s 2 ".wl[613].w[24:25]"  0.60854082534137821 0.39145917465862184;
	setAttr -s 2 ".wl[614].w[24:25]"  0.60854095951439002 0.39145904048560998;
	setAttr -s 2 ".wl[615].w[24:25]"  0.60854083098576595 0.39145916901423405;
	setAttr -s 2 ".wl[616].w[24:25]"  0.60854099452403798 0.39145900547596196;
	setAttr -s 2 ".wl[617].w[24:25]"  0.60854080973968705 0.39145919026031289;
	setAttr -s 2 ".wl[618].w[24:25]"  0.60854079416013396 0.39145920583986604;
	setAttr -s 2 ".wl[619].w[24:25]"  0.60854104718941915 0.39145895281058091;
	setAttr -s 2 ".wl[620].w[25:26]"  0.72276693893489397 0.27723306106510598;
	setAttr -s 2 ".wl[621].w[25:26]"  0.72276682378208679 0.27723317621791321;
	setAttr -s 2 ".wl[622].w[25:26]"  0.72276742289666729 0.27723257710333266;
	setAttr -s 2 ".wl[623].w[25:26]"  0.72276725920260254 0.2772327407973974;
	setAttr -s 2 ".wl[624].w[25:26]"  0.72276685248813499 0.27723314751186501;
	setAttr -s 2 ".wl[625].w[25:26]"  0.72276725920260254 0.2772327407973974;
	setAttr -s 2 ".wl[626].w[25:26]"  0.72276744373585289 0.27723255626414706;
	setAttr -s 2 ".wl[627].w[25:26]"  0.72276710343156858 0.27723289656843142;
	setAttr -s 2 ".wl[628].w[25:26]"  0.72276702885072075 0.27723297114927925;
	setAttr -s 2 ".wl[629].w[25:26]"  0.72276711248163494 0.27723288751836511;
	setAttr -s 2 ".wl[630].w[25:26]"  0.72276721160348756 0.27723278839651244;
	setAttr -s 2 ".wl[631].w[25:26]"  0.72276736373718986 0.27723263626281025;
	setAttr -s 2 ".wl[632].w[25:26]"  0.72276747152143306 0.27723252847856694;
	setAttr -s 2 ".wl[633].w[25:26]"  0.72276720515445292 0.27723279484554708;
	setAttr -s 2 ".wl[634].w[25:26]"  0.72276704157432503 0.27723295842567502;
	setAttr -s 2 ".wl[635].w[25:26]"  0.72276721428428625 0.27723278571571375;
	setAttr -s 2 ".wl[636].w[25:26]"  0.72276725117669982 0.27723274882330018;
	setAttr -s 2 ".wl[637].w[25:26]"  0.72276742110250336 0.27723257889749664;
	setAttr -s 2 ".wl[638].w[25:26]"  0.72276727904037974 0.27723272095962026;
	setAttr -s 2 ".wl[639].w[25:26]"  0.72276718338902901 0.27723281661097099;
	setAttr -s 2 ".wl[640].w[26:27]"  0.82179281353299938 0.17820718646700065;
	setAttr -s 2 ".wl[641].w[26:27]"  0.82179305171598438 0.17820694828401562;
	setAttr -s 2 ".wl[642].w[26:27]"  0.82179346183156365 0.17820653816843637;
	setAttr -s 2 ".wl[643].w[26:27]"  0.82179313696256684 0.17820686303743319;
	setAttr -s 2 ".wl[644].w[26:27]"  0.82179241097589861 0.17820758902410139;
	setAttr -s 2 ".wl[645].w[26:27]"  0.82179313696256684 0.17820686303743319;
	setAttr -s 2 ".wl[646].w[26:27]"  0.82179348321043666 0.17820651678956337;
	setAttr -s 2 ".wl[647].w[26:27]"  0.8217933386077918 0.17820666139220823;
	setAttr -s 2 ".wl[648].w[26:27]"  0.82179326796326779 0.17820673203673232;
	setAttr -s 2 ".wl[649].w[26:27]"  0.82179323387185421 0.17820676612814573;
	setAttr -s 2 ".wl[650].w[26:27]"  0.82179278588927107 0.17820721411072896;
	setAttr -s 2 ".wl[651].w[26:27]"  0.82179324420432109 0.17820675579567891;
	setAttr -s 2 ".wl[652].w[26:27]"  0.82179351171559778 0.17820648828440219;
	setAttr -s 2 ".wl[653].w[26:27]"  0.82179314445557894 0.17820685554442103;
	setAttr -s 2 ".wl[654].w[26:27]"  0.82179296714496075 0.17820703285503922;
	setAttr -s 2 ".wl[655].w[26:27]"  0.82179315382184215 0.17820684617815782;
	setAttr -s 2 ".wl[656].w[26:27]"  0.82179353309446634 0.17820646690553366;
	setAttr -s 2 ".wl[657].w[26:27]"  0.82179294086955357 0.1782070591304464;
	setAttr -s 2 ".wl[658].w[26:27]"  0.82179285507267008 0.17820714492732995;
	setAttr -s 2 ".wl[659].w[26:27]"  0.82179330661557448 0.17820669338442546;
	setAttr -s 2 ".wl[660].w[27:28]"  0.89004932872785292 0.10995067127214711;
	setAttr -s 2 ".wl[661].w[27:28]"  0.89004922815579268 0.1099507718442073;
	setAttr -s 2 ".wl[662].w[27:28]"  0.89004930621433509 0.10995069378566499;
	setAttr -s 2 ".wl[663].w[27:28]"  0.89004936490874331 0.10995063509125673;
	setAttr -s 2 ".wl[664].w[27:28]"  0.89004908524943016 0.10995091475056978;
	setAttr -s 2 ".wl[665].w[27:28]"  0.89004936490874331 0.10995063509125673;
	setAttr -s 2 ".wl[666].w[27:28]"  0.89004932355357635 0.10995067644642359;
	setAttr -s 2 ".wl[667].w[27:28]"  0.89004927588662008 0.10995072411337994;
	setAttr -s 2 ".wl[668].w[27:28]"  0.89004963518664881 0.10995036481335121;
	setAttr -s 2 ".wl[669].w[27:28]"  0.89004937589255495 0.10995062410744501;
	setAttr -s 2 ".wl[670].w[27:28]"  0.89004963518664881 0.10995036481335121;
	setAttr -s 2 ".wl[671].w[27:28]"  0.89004929179689418 0.10995070820310582;
	setAttr -s 2 ".wl[672].w[27:28]"  0.89004934667256086 0.10995065332743915;
	setAttr -s 2 ".wl[673].w[27:28]"  0.89004983427429341 0.10995016572570669;
	setAttr -s 2 ".wl[674].w[27:28]"  0.89004963155309791 0.10995036844690217;
	setAttr -s 2 ".wl[675].w[27:28]"  0.89004984187076897 0.10995015812923103;
	setAttr -s 2 ".wl[676].w[27:28]"  0.89004936401179613 0.10995063598820394;
	setAttr -s 2 ".wl[677].w[27:28]"  0.89004910788297231 0.10995089211702765;
	setAttr -s 2 ".wl[678].w[27:28]"  0.89004969129754352 0.10995030870245649;
	setAttr -s 2 ".wl[679].w[27:28]"  0.89004943489110422 0.10995056510889581;
	setAttr -s 2 ".wl[680].w[27:28]"  0.53143086631783765 0.4685691336821623;
	setAttr -s 2 ".wl[681].w[27:28]"  0.53143084224538917 0.46856915775461094;
	setAttr -s 2 ".wl[682].w[27:28]"  0.53143079999782772 0.46856920000217234;
	setAttr -s 2 ".wl[683].w[27:28]"  0.53143115427847831 0.46856884572152169;
	setAttr -s 2 ".wl[684].w[27:28]"  0.53143123428586581 0.46856876571413425;
	setAttr -s 2 ".wl[685].w[27:28]"  0.53143115427847831 0.46856884572152169;
	setAttr -s 2 ".wl[686].w[27:28]"  0.53143080414805177 0.46856919585194828;
	setAttr -s 2 ".wl[687].w[27:28]"  0.53143085367000842 0.46856914632999164;
	setAttr -s 2 ".wl[688].w[27:28]"  0.53143117970967346 0.46856882029032659;
	setAttr -s 2 ".wl[689].w[27:28]"  0.53143117309149757 0.46856882690850243;
	setAttr -s 2 ".wl[690].w[27:28]"  0.53143088422512896 0.46856911577487098;
	setAttr -s 2 ".wl[691].w[27:28]"  0.53143144844806001 0.46856855155193994;
	setAttr -s 2 ".wl[692].w[27:28]"  0.53143110516555347 0.46856889483444664;
	setAttr -s 2 ".wl[693].w[27:28]"  0.53143108410346296 0.46856891589653704;
	setAttr -s 2 ".wl[694].w[27:28]"  0.53143115896974524 0.46856884103025476;
	setAttr -s 2 ".wl[695].w[27:28]"  0.53143108592172872 0.46856891407827139;
	setAttr -s 2 ".wl[696].w[27:28]"  0.5314311093158155 0.4685688906841845;
	setAttr -s 2 ".wl[697].w[27:28]"  0.53143145987289309 0.46856854012710691;
	setAttr -s 2 ".wl[698].w[27:28]"  0.53143089765560703 0.46856910234439292;
	setAttr -s 2 ".wl[699].w[27:28]"  0.5314311872132591 0.46856881278674084;
	setAttr -s 2 ".wl[700].w[28:29]"  0.62603397188648768 0.37396602811351232;
	setAttr -s 2 ".wl[701].w[28:29]"  0.62603437393343853 0.37396562606656147;
	setAttr -s 2 ".wl[702].w[28:29]"  0.62603373975733534 0.37396626024266477;
	setAttr -s 2 ".wl[703].w[28:29]"  0.62603443185659136 0.37396556814340859;
	setAttr -s 2 ".wl[704].w[28:29]"  0.62603444827656707 0.37396555172343288;
	setAttr -s 2 ".wl[705].w[28:29]"  0.62603443185659136 0.37396556814340859;
	setAttr -s 2 ".wl[706].w[28:29]"  0.62603375428369368 0.37396624571630627;
	setAttr -s 2 ".wl[707].w[28:29]"  0.62603392761735732 0.37396607238264268;
	setAttr -s 2 ".wl[708].w[28:29]"  0.62603452086870182 0.37396547913129818;
	setAttr -s 2 ".wl[709].w[28:29]"  0.6260349840087015 0.3739650159912985;
	setAttr -s 2 ".wl[710].w[28:29]"  0.62603452086870182 0.37396547913129818;
	setAttr -s 2 ".wl[711].w[28:29]"  0.62603442725057934 0.37396557274942066;
	setAttr -s 2 ".wl[712].w[28:29]"  0.62603425995564288 0.37396574004435706;
	setAttr -s 2 ".wl[713].w[28:29]"  0.62603468766065418 0.37396531233934582;
	setAttr -s 2 ".wl[714].w[28:29]"  0.62603444827656707 0.37396555172343304;
	setAttr -s 2 ".wl[715].w[28:29]"  0.62603469402484824 0.37396530597515176;
	setAttr -s 2 ".wl[716].w[28:29]"  0.62603427448204596 0.3739657255179541;
	setAttr -s 2 ".wl[717].w[28:29]"  0.62603398093435558 0.37396601906564436;
	setAttr -s 2 ".wl[718].w[28:29]"  0.62603456787733847 0.37396543212266153;
	setAttr -s 2 ".wl[719].w[28:29]"  0.62603503343663569 0.37396496656336436;
	setAttr -s 2 ".wl[720].w[29:30]"  0.74014229706773105 0.25985770293226895;
	setAttr -s 2 ".wl[721].w[29:30]"  0.74014288156312003 0.25985711843687997;
	setAttr -s 2 ".wl[722].w[29:30]"  0.74014297795207662 0.25985702204792338;
	setAttr -s 2 ".wl[723].w[29:30]"  0.74014333647135966 0.25985666352864034;
	setAttr -s 2 ".wl[724].w[29:30]"  0.74014299113988402 0.25985700886011598;
	setAttr -s 2 ".wl[725].w[29:30]"  0.74014333647135966 0.25985666352864034;
	setAttr -s 2 ".wl[726].w[29:30]"  0.74014299936308281 0.25985700063691725;
	setAttr -s 2 ".wl[727].w[29:30]"  0.74014247195520455 0.25985752804479556;
	setAttr -s 2 ".wl[728].w[29:30]"  0.74014238945084032 0.25985761054915973;
	setAttr -s 2 ".wl[729].w[29:30]"  0.74014212689759928 0.25985787310240066;
	setAttr -s 2 ".wl[730].w[29:30]"  0.7401426295883502 0.2598573704116498;
	setAttr -s 2 ".wl[731].w[29:30]"  0.74014342869591332 0.25985657130408679;
	setAttr -s 2 ".wl[732].w[29:30]"  0.74014318211422547 0.25985681788577464;
	setAttr -s 2 ".wl[733].w[29:30]"  0.74014334397566661 0.25985665602433339;
	setAttr -s 2 ".wl[734].w[29:30]"  0.7401429911398838 0.2598570088601162;
	setAttr -s 2 ".wl[735].w[29:30]"  0.74014345236951928 0.25985654763048077;
	setAttr -s 2 ".wl[736].w[29:30]"  0.74014320352519114 0.25985679647480892;
	setAttr -s 2 ".wl[737].w[29:30]"  0.74014277892513158 0.25985722107486842;
	setAttr -s 2 ".wl[738].w[29:30]"  0.74014269887583284 0.25985730112416711;
	setAttr -s 2 ".wl[739].w[29:30]"  0.74014219975070328 0.25985780024929672;
	setAttr -s 2 ".wl[740].w[30:31]"  0.83461809111342844 0.16538190888657159;
	setAttr -s 2 ".wl[741].w[30:31]"  0.83461865038338345 0.16538134961661652;
	setAttr -s 2 ".wl[742].w[30:31]"  0.83461882858494429 0.16538117141505576;
	setAttr -s 2 ".wl[743].w[30:31]"  0.8346181494977013 0.16538185050229881;
	setAttr -s 2 ".wl[744].w[30:31]"  0.83461815456474253 0.16538184543525755;
	setAttr -s 2 ".wl[745].w[30:31]"  0.8346181494977013 0.16538185050229881;
	setAttr -s 2 ".wl[746].w[30:31]"  0.8346188495090382 0.16538115049096183;
	setAttr -s 2 ".wl[747].w[30:31]"  0.83461870798242888 0.1653812920175711;
	setAttr -s 2 ".wl[748].w[30:31]"  0.83461863884067511 0.16538136115932489;
	setAttr -s 2 ".wl[749].w[30:31]"  0.83461860547422784 0.16538139452577219;
	setAttr -s 2 ".wl[750].w[30:31]"  0.83461863884067511 0.16538136115932489;
	setAttr -s 2 ".wl[751].w[30:31]"  0.83461850399209914 0.16538149600790089;
	setAttr -s 2 ".wl[752].w[30:31]"  0.8346188774078267 0.16538112259217325;
	setAttr -s 2 ".wl[753].w[30:31]"  0.83461817785326586 0.16538182214673414;
	setAttr -s 2 ".wl[754].w[30:31]"  0.83461819417117888 0.16538180582882117;
	setAttr -s 2 ".wl[755].w[30:31]"  0.83461888825639918 0.16538111174360087;
	setAttr -s 2 ".wl[756].w[30:31]"  0.83461889833191583 0.1653811016680842;
	setAttr -s 2 ".wl[757].w[30:31]"  0.834618444674325 0.165381555325675;
	setAttr -s 2 ".wl[758].w[30:31]"  0.83461870655239101 0.16538129344760902;
	setAttr -s 2 ".wl[759].w[30:31]"  0.83461867667052403 0.16538132332947594;
	setAttr -s 2 ".wl[760].w[31:32]"  0.60154914286453676 0.39845085713546319;
	setAttr -s 2 ".wl[761].w[31:32]"  0.6015508625431657 0.39844913745683436;
	setAttr -s 2 ".wl[762].w[31:32]"  0.60154916040355644 0.39845083959644362;
	setAttr -s 2 ".wl[763].w[31:32]"  0.60154922888306683 0.39845077111693317;
	setAttr -s 2 ".wl[764].w[31:32]"  0.6015497044808279 0.39845029551917205;
	setAttr -s 2 ".wl[765].w[31:32]"  0.60154922888306683 0.39845077111693317;
	setAttr -s 2 ".wl[766].w[31:32]"  0.60154917325943658 0.39845082674056337;
	setAttr -s 2 ".wl[767].w[31:32]"  0.6015508979335471 0.3984491020664529;
	setAttr -s 2 ".wl[768].w[31:32]"  0.60154981649647832 0.39845018350352168;
	setAttr -s 2 ".wl[769].w[31:32]"  0.60155008359631279 0.39844991640368727;
	setAttr -s 2 ".wl[770].w[31:32]"  0.60154911237191722 0.39845088762808278;
	setAttr -s 2 ".wl[771].w[31:32]"  0.60155049833413221 0.39844950166586779;
	setAttr -s 2 ".wl[772].w[31:32]"  0.6015490016569166 0.39845099834308345;
	setAttr -s 2 ".wl[773].w[31:32]"  0.60154972009985597 0.39845027990014403;
	setAttr -s 2 ".wl[774].w[31:32]"  0.6015497044808279 0.39845029551917205;
	setAttr -s 2 ".wl[775].w[31:32]"  0.6015497257321637 0.3984502742678363;
	setAttr -s 2 ".wl[776].w[31:32]"  0.60154901451275089 0.39845098548724917;
	setAttr -s 2 ".wl[777].w[31:32]"  0.60155143296507485 0.39844856703492515;
	setAttr -s 2 ".wl[778].w[31:32]"  0.60154985809951034 0.39845014190048972;
	setAttr -s 2 ".wl[779].w[31:32]"  0.60155012734055302 0.39844987265944704;
	setAttr -s 2 ".wl[780].w[33:34]"  0.73985782435968594 0.260142175640314;
	setAttr -s 2 ".wl[781].w[33:34]"  0.73985837068684024 0.26014162931315982;
	setAttr -s 2 ".wl[782].w[33:34]"  0.73985503777998507 0.26014496222001499;
	setAttr -s 2 ".wl[783].w[33:34]"  0.73985661990533469 0.26014338009466531;
	setAttr -s 2 ".wl[784].w[33:34]"  0.73985574160185641 0.26014425839814359;
	setAttr -s 2 ".wl[785].w[33:34]"  0.73985607326978708 0.26014392673021297;
	setAttr -s 2 ".wl[786].w[33:34]"  0.73985451610077024 0.26014548389922976;
	setAttr -s 2 ".wl[787].w[33:34]"  0.73985841648716366 0.26014158351283628;
	setAttr -s 2 ".wl[788].w[33:34]"  0.73985847868009302 0.26014152131990692;
	setAttr -s 2 ".wl[789].w[33:34]"  0.73985751604274375 0.26014248395725625;
	setAttr -s 2 ".wl[790].w[33:34]"  0.73985847868009302 0.26014152131990692;
	setAttr -s 2 ".wl[791].w[33:34]"  0.73986034550552682 0.26013965449447318;
	setAttr -s 2 ".wl[792].w[33:34]"  0.73985709399346611 0.26014290600653389;
	setAttr -s 2 ".wl[793].w[33:34]"  0.7398577219216429 0.26014227807835705;
	setAttr -s 2 ".wl[794].w[33:34]"  0.73985728776400661 0.26014271223599333;
	setAttr -s 2 ".wl[795].w[33:34]"  0.73985773285528389 0.26014226714471606;
	setAttr -s 2 ".wl[796].w[33:34]"  0.7398571189497738 0.2601428810502262;
	setAttr -s 2 ".wl[797].w[33:34]"  0.73985986756903954 0.26014013243096046;
	setAttr -s 2 ".wl[798].w[33:34]"  0.73985853252144573 0.26014146747855432;
	setAttr -s 2 ".wl[799].w[33:34]"  0.73985760096064446 0.26014239903935554;
	setAttr -s 2 ".wl[800].w[35:36]"  0.93311109090791933 0.066888909092080645;
	setAttr -s 2 ".wl[801].w[35:36]"  0.93311228831804716 0.066887711681952913;
	setAttr -s 2 ".wl[802].w[35:36]"  0.93311185433245836 0.066888145667541685;
	setAttr -s 2 ".wl[803].w[35:36]"  0.9331121946093518 0.066887805390648217;
	setAttr -s 2 ".wl[804].w[35:36]"  0.93311288618798782 0.06688711381201215;
	setAttr -s 2 ".wl[805].w[35:36]"  0.9331121946093518 0.066887805390648217;
	setAttr -s 2 ".wl[806].w[35:36]"  0.93311186518403899 0.066888134815961064;
	setAttr -s 2 ".wl[807].w[35:36]"  0.93311231818976714 0.066887681810232885;
	setAttr -s 2 ".wl[808].w[35:36]"  0.93311114358259528 0.066888856417404774;
	setAttr -s 2 ".wl[809].w[35:36]"  0.93311136587544896 0.066888634124550983;
	setAttr -s 2 ".wl[810].w[35:36]"  0.93311150081044758 0.066888499189552419;
	setAttr -s 2 ".wl[811].w[35:36]"  0.93311196096511184 0.066888039034888103;
	setAttr -s 2 ".wl[812].w[35:36]"  0.93311259590924323 0.066887404090756733;
	setAttr -s 2 ".wl[813].w[35:36]"  0.9331123514766545 0.066887648523345583;
	setAttr -s 2 ".wl[814].w[35:36]"  0.93311252896555419 0.066887471034445756;
	setAttr -s 2 ".wl[815].w[35:36]"  0.93311291903843141 0.066887080961568576;
	setAttr -s 2 ".wl[816].w[35:36]"  0.93311260676073438 0.066887393239265708;
	setAttr -s 2 ".wl[817].w[35:36]"  0.93311236299733313 0.066887637002666867;
	setAttr -s 2 ".wl[818].w[35:36]"  0.93311153592675145 0.066888464073248569;
	setAttr -s 2 ".wl[819].w[35:36]"  0.93311142126086022 0.066888578739139781;
	setAttr -s 2 ".wl[820].w[36:37]"  0.82702261056078397 0.17297738943921612;
	setAttr -s 2 ".wl[821].w[36:37]"  0.82702446210707625 0.17297553789292383;
	setAttr -s 2 ".wl[822].w[36:37]"  0.82701929278339892 0.17298070721660103;
	setAttr -s 2 ".wl[823].w[36:37]"  0.82702004842385646 0.1729799515761436;
	setAttr -s 2 ".wl[824].w[36:37]"  0.82702564429481185 0.1729743557051881;
	setAttr -s 2 ".wl[825].w[36:37]"  0.82702004842385646 0.1729799515761436;
	setAttr -s 2 ".wl[826].w[36:37]"  0.82701931368044401 0.1729806863195559;
	setAttr -s 2 ".wl[827].w[36:37]"  0.82702451963314061 0.17297548036685942;
	setAttr -s 2 ".wl[828].w[36:37]"  0.82702165067116273 0.17297834932883727;
	setAttr -s 2 ".wl[829].w[36:37]"  0.82702188908670971 0.17297811091329035;
	setAttr -s 2 ".wl[830].w[36:37]"  0.82702060624457274 0.17297939375542723;
	setAttr -s 2 ".wl[831].w[36:37]"  0.82701939460832818 0.17298060539167179;
	setAttr -s 2 ".wl[832].w[36:37]"  0.82701850230582852 0.17298149769417159;
	setAttr -s 2 ".wl[833].w[36:37]"  0.82701742680563994 0.17298257319436011;
	setAttr -s 2 ".wl[834].w[36:37]"  0.82702128005807751 0.17297871994192243;
	setAttr -s 2 ".wl[835].w[36:37]"  0.82701693161007839 0.17298306838992164;
	setAttr -s 2 ".wl[836].w[36:37]"  0.82701853365189659 0.17298146634810346;
	setAttr -s 2 ".wl[837].w[36:37]"  0.82701945213412986 0.17298054786587025;
	setAttr -s 2 ".wl[838].w[36:37]"  0.8270206907765506 0.17297930922344948;
	setAttr -s 2 ".wl[839].w[36:37]"  0.82702196019193119 0.17297803980806889;
	setAttr -s 2 ".wl[840].w[37:38]"  0.75309791159345962 0.24690208840654035;
	setAttr -s 2 ".wl[841].w[37:38]"  0.75309601653698277 0.24690398346301726;
	setAttr -s 2 ".wl[842].w[37:38]"  0.7530954398485572 0.24690456015144283;
	setAttr -s 2 ".wl[843].w[37:38]"  0.75310062225443219 0.24689937774556789;
	setAttr -s 2 ".wl[844].w[37:38]"  0.75309463387331488 0.24690536612668515;
	setAttr -s 2 ".wl[845].w[37:38]"  0.75310062225443219 0.24689937774556789;
	setAttr -s 2 ".wl[846].w[37:38]"  0.75309545219616492 0.24690454780383514;
	setAttr -s 2 ".wl[847].w[37:38]"  0.75309605052717277 0.24690394947282721;
	setAttr -s 2 ".wl[848].w[37:38]"  0.75309799151028789 0.24690200848971214;
	setAttr -s 2 ".wl[849].w[37:38]"  0.75309805805473451 0.24690194194526555;
	setAttr -s 2 ".wl[850].w[37:38]"  0.75309799151028789 0.24690200848971214;
	setAttr -s 2 ".wl[851].w[37:38]"  0.75309527725725722 0.24690472274274272;
	setAttr -s 2 ".wl[852].w[37:38]"  0.75309548923898628 0.24690451076101372;
	setAttr -s 2 ".wl[853].w[37:38]"  0.75309779395548593 0.2469022060445141;
	setAttr -s 2 ".wl[854].w[37:38]"  0.75309442221137468 0.24690557778862529;
	setAttr -s 2 ".wl[855].w[37:38]"  0.75309780369292822 0.24690219630707183;
	setAttr -s 2 ".wl[856].w[37:38]"  0.75309552628180498 0.24690447371819504;
	setAttr -s 2 ".wl[857].w[37:38]"  0.75309534523726329 0.24690465476273665;
	setAttr -s 2 ".wl[858].w[37:38]"  0.75309807142713947 0.24690192857286056;
	setAttr -s 2 ".wl[859].w[37:38]"  0.75309814208431958 0.24690185791568037;
	setAttr -s 2 ".wl[860].w[38:39]"  0.84712281723480498 0.15287718276519505;
	setAttr -s 2 ".wl[861].w[38:39]"  0.84712269092057546 0.15287730907942451;
	setAttr -s 2 ".wl[862].w[38:39]"  0.84712479996956114 0.15287520003043889;
	setAttr -s 2 ".wl[863].w[38:39]"  0.84712531535676894 0.15287468464323103;
	setAttr -s 2 ".wl[864].w[38:39]"  0.84711847448626632 0.15288152551373363;
	setAttr -s 2 ".wl[865].w[38:39]"  0.84712531535676894 0.15287468464323103;
	setAttr -s 2 ".wl[866].w[38:39]"  0.84712483418181772 0.15287516581818225;
	setAttr -s 2 ".wl[867].w[38:39]"  0.84712274742702298 0.15287725257297702;
	setAttr -s 2 ".wl[868].w[38:39]"  0.84712334411522117 0.15287665588477886;
	setAttr -s 2 ".wl[869].w[38:39]"  0.84712336380265318 0.15287663619734684;
	setAttr -s 2 ".wl[870].w[38:39]"  0.84712334411522117 0.15287665588477886;
	setAttr -s 2 ".wl[871].w[38:39]"  0.84712148571322066 0.15287851428677937;
	setAttr -s 2 ".wl[872].w[38:39]"  0.84712487523651725 0.15287512476348278;
	setAttr -s 2 ".wl[873].w[38:39]"  0.84712532794730422 0.15287467205269573;
	setAttr -s 2 ".wl[874].w[38:39]"  0.84712103560557439 0.15287896439442564;
	setAttr -s 2 ".wl[875].w[38:39]"  0.84712533154459912 0.15287466845540085;
	setAttr -s 2 ".wl[876].w[38:39]"  0.84712488892141502 0.15287511107858492;
	setAttr -s 2 ".wl[877].w[38:39]"  0.84712282276894879 0.15287717723105129;
	setAttr -s 2 ".wl[878].w[38:39]"  0.84712343268519386 0.15287656731480623;
	setAttr -s 2 ".wl[879].w[38:39]"  0.84712338708464718 0.15287661291535282;
	setAttr -s 2 ".wl[880].w[39:40]"  0.97668055262137665 0.023319447378623358;
	setAttr -s 2 ".wl[881].w[39:40]"  0.97668026556897714 0.023319734431022927;
	setAttr -s 2 ".wl[882].w[39:40]"  0.97668134448075627 0.023318655519243701;
	setAttr -s 2 ".wl[883].w[39:40]"  0.9766805467156765 0.023319453284323503;
	setAttr -s 2 ".wl[884].w[39:40]"  0.97668086499819018 0.023319135001809852;
	setAttr -s 2 ".wl[885].w[39:40]"  0.9766805467156765 0.023319453284323503;
	setAttr -s 2 ".wl[886].w[39:40]"  0.97668135313306814 0.023318646866931844;
	setAttr -s 2 ".wl[887].w[39:40]"  0.97668027747801467 0.023319722521985303;
	setAttr -s 2 ".wl[888].w[39:40]"  0.97668071918583721 0.023319280814162808;
	setAttr -s 2 ".wl[889].w[39:40]"  0.97668077196687064 0.023319228033129347;
	setAttr -s 2 ".wl[890].w[39:40]"  0.97668071918583721 0.023319280814162808;
	setAttr -s 2 ".wl[891].w[39:40]"  0.97668028343253177 0.023319716567468181;
	setAttr -s 2 ".wl[892].w[39:40]"  0.97668135745922269 0.023318642540777302;
	setAttr -s 2 ".wl[893].w[39:40]"  0.9766805489900926 0.023319451009907448;
	setAttr -s 2 ".wl[894].w[39:40]"  0.97668153741456265 0.023318462585437325;
	setAttr -s 2 ".wl[895].w[39:40]"  0.97668055126450792 0.023319448735492149;
	setAttr -s 2 ".wl[896].w[39:40]"  0.976681366111529 0.023318633888471014;
	setAttr -s 2 ".wl[897].w[39:40]"  0.97668030129607653 0.023319698703923569;
	setAttr -s 2 ".wl[898].w[39:40]"  0.97668073318567183 0.023319266814328204;
	setAttr -s 2 ".wl[899].w[39:40]"  0.97668079404729657 0.023319205952703398;
	setAttr -s 2 ".wl[900].w[39:40]"  0.70126632932543331 0.29873367067456669;
	setAttr -s 2 ".wl[901].w[39:40]"  0.70126843656676097 0.29873156343323898;
	setAttr -s 2 ".wl[902].w[39:40]"  0.70126405802991154 0.29873594197008846;
	setAttr -s 2 ".wl[903].w[39:40]"  0.70126744044860723 0.29873255955139272;
	setAttr -s 2 ".wl[904].w[39:40]"  0.70126843649181492 0.29873156350818508;
	setAttr -s 2 ".wl[905].w[39:40]"  0.70126744044860723 0.29873255955139272;
	setAttr -s 2 ".wl[906].w[39:40]"  0.70126407904058408 0.29873592095941592;
	setAttr -s 2 ".wl[907].w[39:40]"  0.70126849440656902 0.29873150559343098;
	setAttr -s 2 ".wl[908].w[39:40]"  0.7012663973188723 0.29873360268112764;
	setAttr -s 2 ".wl[909].w[39:40]"  0.70126707811936262 0.29873292188063738;
	setAttr -s 2 ".wl[910].w[39:40]"  0.7012663973188723 0.29873360268112764;
	setAttr -s 2 ".wl[911].w[39:40]"  0.70126714968588755 0.29873285031411245;
	setAttr -s 2 ".wl[912].w[39:40]"  0.70126412106192804 0.29873587893807191;
	setAttr -s 2 ".wl[913].w[39:40]"  0.70126527569952524 0.29873472430047482;
	setAttr -s 2 ".wl[914].w[39:40]"  0.70127072430202053 0.29872927569797947;
	setAttr -s 2 ".wl[915].w[39:40]"  0.70126528674560995 0.29873471325439005;
	setAttr -s 2 ".wl[916].w[39:40]"  0.70126414207259991 0.29873585792740015;
	setAttr -s 2 ".wl[917].w[39:40]"  0.70126720752497562 0.29873279247502443;
	setAttr -s 2 ".wl[918].w[39:40]"  0.701266533305829 0.29873346669417106;
	setAttr -s 2 ".wl[919].w[39:40]"  0.70126714961237369 0.29873285038762637;
	setAttr -s 2 ".wl[920].w[0:1]"  0.99995113585928208 4.8864140717882386e-005;
	setAttr ".wl[921].w[39]"  1;
	setAttr -s 41 ".pm";
	setAttr ".pm[0]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 5 0 -1.1102230246251565e-015 1;
	setAttr ".pm[1]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 4.7324999999999999 0 -1.0508260928077106e-015 1;
	setAttr ".pm[2]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 4.4649999999999999 0 -9.9142916099026476e-016 1;
	setAttr ".pm[3]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 4.1974999999999998 0 -9.3203222917281887e-016 1;
	setAttr ".pm[4]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 3.9300000000000002 0 -8.7263529735537308e-016 1;
	setAttr ".pm[5]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 3.6625000000000001 0 -8.1323836553792719e-016 1;
	setAttr ".pm[6]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 3.3950000000000005 0 -7.5384143372048139e-016 1;
	setAttr ".pm[7]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 3.1274999999999999 0 -6.944445019030354e-016 1;
	setAttr ".pm[8]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 2.8599999999999999 0 -6.3504757008558951e-016 1;
	setAttr ".pm[9]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 2.5924999999999998 0 -5.7565063826814362e-016 1;
	setAttr ".pm[10]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 2.3250000000000002 0 -5.1625370645069773e-016 1;
	setAttr ".pm[11]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 2.0575000000000006 0 -4.5685677463325194e-016 1;
	setAttr ".pm[12]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 1.7900000000000007 0 -3.974598428158061e-016 1;
	setAttr ".pm[13]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 1.5225000000000006 0 -3.3806291099836016e-016 1;
	setAttr ".pm[14]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 1.255000000000001 0 -2.7866597918091437e-016 1;
	setAttr ".pm[15]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 0.98750000000000093 0 -2.192690473634685e-016 1;
	setAttr ".pm[16]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 0.72000000000000086 0 -1.5987211554602261e-016 1;
	setAttr ".pm[17]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 0.45250000000000079 0 -1.0047518372857672e-016 1;
	setAttr ".pm[18]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 0.18500000000000072 0 -4.1078251911130828e-017 1;
	setAttr ".pm[19]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 -0.082499999999999352 0 1.8318679906315062e-017 1;
	setAttr ".pm[20]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 -0.34999999999999942 0 7.7715611723760953e-017 1;
	setAttr ".pm[21]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 -0.61749999999999861 0 1.3711254354120665e-016 1;
	setAttr ".pm[22]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 -0.88499999999999868 0 1.9650947535865254e-016 1;
	setAttr ".pm[23]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 -1.1524999999999987 0 2.5590640717609845e-016 1;
	setAttr ".pm[24]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 -1.4199999999999988 0 3.1530333899354429e-016 1;
	setAttr ".pm[25]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 -1.6874999999999989 0 3.7470027081099023e-016 1;
	setAttr ".pm[26]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 -1.9549999999999987 0 4.3409720262843608e-016 1;
	setAttr ".pm[27]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 -2.2224999999999988 0 4.9349413444588202e-016 1;
	setAttr ".pm[28]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 -2.489999999999998 0 5.5289106626332771e-016 1;
	setAttr ".pm[29]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 -2.7574999999999981 0 6.122879980807736e-016 1;
	setAttr ".pm[30]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 -3.0249999999999981 0 6.7168492989821959e-016 1;
	setAttr ".pm[31]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 -3.2924999999999986 0 7.3108186171566558e-016 1;
	setAttr ".pm[32]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 -3.5599999999999987 0 7.9047879353311147e-016 1;
	setAttr ".pm[33]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 -3.8274999999999983 0 8.4987572535055716e-016 1;
	setAttr ".pm[34]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 -4.0949999999999989 0 9.0927265716800315e-016 1;
	setAttr ".pm[35]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 -4.3624999999999989 0 9.6866958898544904e-016 1;
	setAttr ".pm[36]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 -4.629999999999999 0 1.0280665208028949e-015 1;
	setAttr ".pm[37]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 -4.8974999999999982 0 1.0874634526203406e-015 1;
	setAttr ".pm[38]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 -5.1649999999999983 0 1.1468603844377865e-015 1;
	setAttr ".pm[39]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 -5.4324999999999992 0 1.2062573162552324e-015 1;
	setAttr ".pm[40]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 -5.6999999999999993 0 1.2656542480726783e-015 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 41 ".ma";
	setAttr -s 41 ".dpf[0:40]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 41 ".lw";
	setAttr -s 41 ".lw";
	setAttr ".ucm" yes;
	setAttr -s 41 ".ifcl";
	setAttr -s 41 ".ifcl";
createNode objectSet -n "skinCluster1Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	setAttr -s 42 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 42 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 -3.1641356201816961e-015
		 0 -0.78300000000000036 0 0 0 -3.1641356201816961e-015 0 -0.78300000000000036 0 0
		 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 5 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0.70710678118654746 0 0.70710678118654757 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.26750000000000007 0
		 -5.9396931817445891e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.26750000000000007 0
		 -5.9396931817445891e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.26750000000000007 0
		 -5.9396931817445891e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.26749999999999963 0
		 -5.9396931817445792e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.26750000000000007 0
		 -5.9396931817445891e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.26749999999999963 0
		 -5.9396931817445792e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.26750000000000052 0
		 -5.9396931817445989e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.26750000000000007 0
		 -5.9396931817445891e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.26750000000000007 0
		 -5.9396931817445891e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.26749999999999963 0
		 -5.9396931817445891e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.26749999999999963 0
		 -5.9396931817445792e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.26749999999999985 0
		 -5.9396931817445841e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.26750000000000007 0
		 -5.939693181744594e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.26749999999999963 0
		 -5.9396931817445792e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.26750000000000007 0
		 -5.9396931817445866e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.26750000000000007 0
		 -5.9396931817445891e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.26750000000000007 0
		 -5.9396931817445891e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.26750000000000007 0
		 -5.9396931817445891e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.26750000000000007 0
		 -5.9396931817445891e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.26750000000000007 0
		 -5.9396931817445891e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.26749999999999918 0
		 -5.9396931817445693e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[23]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.26750000000000007 0
		 -5.9396931817445891e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[24]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.26750000000000007 0
		 -5.9396931817445915e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[25]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.26750000000000007 0
		 -5.9396931817445841e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[26]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.26750000000000007 0
		 -5.939693181744594e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[27]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.26749999999999985 0
		 -5.9396931817445841e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[28]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.26750000000000007 0
		 -5.939693181744594e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[29]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.26749999999999918 0
		 -5.9396931817445693e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[30]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.26750000000000007 0
		 -5.9396931817445891e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[31]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.26750000000000007 0
		 -5.9396931817445989e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[32]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.26750000000000052 0
		 -5.9396931817445989e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[33]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.26750000000000007 0
		 -5.9396931817445891e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[34]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.26749999999999963 0
		 -5.9396931817445693e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[35]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.26750000000000052 0
		 -5.9396931817445989e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[36]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.26750000000000007 0
		 -5.9396931817445891e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[37]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.26750000000000007 0
		 -5.9396931817445891e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[38]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.26749999999999918 0
		 -5.9396931817445693e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[39]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.26750000000000007 0
		 -5.9396931817445891e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[40]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.26750000000000096 0
		 -5.9396931817445891e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[41]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.26750000000000007 0
		 -5.9396931817445891e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 42 ".m";
	setAttr -s 42 ".p";
	setAttr -s 42 ".g[0:41]" yes no no no no no no no no no no no no no 
		no no no no no no no no no no no no no no no no no no no no no no no no no no no 
		no;
	setAttr ".bp" yes;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :initialShadingGroup;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 3 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 18 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surfaces" "Particles" "Fluids" "Image Planes" "UI:" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 18 0 1 1 1 1 1
		 1 0 0 0 0 0 0 0 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
connectAttr "skinCluster1.og[0]" "snake_geoShape.i";
connectAttr "groupId2.id" "snake_geoShape.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "snake_geoShape.iog.og[1].gco";
connectAttr "groupId3.id" "snake_geoShape.iog.og[2].gid";
connectAttr ":initialShadingGroup.mwc" "snake_geoShape.iog.og[2].gco";
connectAttr "groupId5.id" "snake_geoShape.iog.og[3].gid";
connectAttr "blinn1SG.mwc" "snake_geoShape.iog.og[3].gco";
connectAttr "skinCluster1GroupId.id" "snake_geoShape.iog.og[4].gid";
connectAttr "skinCluster1Set.mwc" "snake_geoShape.iog.og[4].gco";
connectAttr "tweak1.vl[0].vt[0]" "snake_geoShape.twl";
connectAttr "groupId4.id" "snake_geoShape.ciog.cog[0].cgid";
connectAttr "polyCylinder1.out" "snake_geoShapeOrig.i";
connectAttr "makeNurbCircle1.oc" "C_snake0_CNTShape.cr";
connectAttr "makeNurbCircle2.oc" "C_snake1_CNTShape.cr";
connectAttr "makeNurbCircle3.oc" "C_snake2_CNTShape.cr";
connectAttr "makeNurbCircle4.oc" "C_snake3_CNTShape.cr";
connectAttr "makeNurbCircle5.oc" "C_snake4_CNTShape.cr";
connectAttr "makeNurbCircle6.oc" "C_snake5_CNTShape.cr";
connectAttr "makeNurbCircle7.oc" "C_snake6_CNTShape.cr";
connectAttr "makeNurbCircle8.oc" "C_snake7_CNTShape.cr";
connectAttr "makeNurbCircle9.oc" "C_snake8_CNTShape.cr";
connectAttr "makeNurbCircle10.oc" "C_snake9_CNTShape.cr";
connectAttr "C_snake0_pinf1.p" "C_snake0_LOC.t";
connectAttr "C_snake1_dec.or" "C_snake0_LOC.r";
connectAttr "C_snake1_pinf1.p" "C_snake1_LOC.t";
connectAttr "C_snake2_dec.or" "C_snake1_LOC.r";
connectAttr "C_snake2_pinf1.p" "C_snake2_LOC.t";
connectAttr "C_snake3_dec.or" "C_snake2_LOC.r";
connectAttr "C_snake3_pinf1.p" "C_snake3_LOC.t";
connectAttr "C_snake4_dec.or" "C_snake3_LOC.r";
connectAttr "C_snake4_pinf1.p" "C_snake4_LOC.t";
connectAttr "C_snake5_dec.or" "C_snake4_LOC.r";
connectAttr "C_snake5_pinf1.p" "C_snake5_LOC.t";
connectAttr "C_snake6_dec.or" "C_snake5_LOC.r";
connectAttr "C_snake6_pinf1.p" "C_snake6_LOC.t";
connectAttr "C_snake7_dec.or" "C_snake6_LOC.r";
connectAttr "C_snake7_pinf1.p" "C_snake7_LOC.t";
connectAttr "C_snake8_dec.or" "C_snake7_LOC.r";
connectAttr "C_snake8_pinf1.p" "C_snake8_LOC.t";
connectAttr "C_snake9_dec.or" "C_snake8_LOC.r";
connectAttr "C_snake9_pinf1.p" "C_snake9_LOC.t";
connectAttr "C_snake10_dec.or" "C_snake9_LOC.r";
connectAttr "C_snake10_pinf1.p" "C_snake10_LOC.t";
connectAttr "C_snake11_dec.or" "C_snake10_LOC.r";
connectAttr "C_snake11_pinf1.p" "C_snake11_LOC.t";
connectAttr "C_snake12_dec.or" "C_snake11_LOC.r";
connectAttr "C_snake12_pinf1.p" "C_snake12_LOC.t";
connectAttr "C_snake13_dec.or" "C_snake12_LOC.r";
connectAttr "C_snake13_pinf1.p" "C_snake13_LOC.t";
connectAttr "C_snake14_dec.or" "C_snake13_LOC.r";
connectAttr "C_snake14_pinf1.p" "C_snake14_LOC.t";
connectAttr "C_snake15_dec.or" "C_snake14_LOC.r";
connectAttr "C_snake15_pinf1.p" "C_snake15_LOC.t";
connectAttr "C_snake16_dec.or" "C_snake15_LOC.r";
connectAttr "C_snake16_pinf1.p" "C_snake16_LOC.t";
connectAttr "C_snake17_dec.or" "C_snake16_LOC.r";
connectAttr "C_snake17_pinf1.p" "C_snake17_LOC.t";
connectAttr "C_snake18_dec.or" "C_snake17_LOC.r";
connectAttr "C_snake18_pinf1.p" "C_snake18_LOC.t";
connectAttr "C_snake19_dec.or" "C_snake18_LOC.r";
connectAttr "C_snake19_pinf1.p" "C_snake19_LOC.t";
connectAttr "C_snake20_dec.or" "C_snake19_LOC.r";
connectAttr "C_snake20_pinf1.p" "C_snake20_LOC.t";
connectAttr "C_snake21_dec.or" "C_snake20_LOC.r";
connectAttr "C_snake21_pinf1.p" "C_snake21_LOC.t";
connectAttr "C_snake22_dec.or" "C_snake21_LOC.r";
connectAttr "C_snake22_pinf1.p" "C_snake22_LOC.t";
connectAttr "C_snake23_dec.or" "C_snake22_LOC.r";
connectAttr "C_snake23_pinf1.p" "C_snake23_LOC.t";
connectAttr "C_snake24_dec.or" "C_snake23_LOC.r";
connectAttr "C_snake24_pinf1.p" "C_snake24_LOC.t";
connectAttr "C_snake25_dec.or" "C_snake24_LOC.r";
connectAttr "C_snake25_pinf1.p" "C_snake25_LOC.t";
connectAttr "C_snake26_dec.or" "C_snake25_LOC.r";
connectAttr "C_snake26_pinf1.p" "C_snake26_LOC.t";
connectAttr "C_snake27_dec.or" "C_snake26_LOC.r";
connectAttr "C_snake27_pinf1.p" "C_snake27_LOC.t";
connectAttr "C_snake28_dec.or" "C_snake27_LOC.r";
connectAttr "C_snake28_pinf1.p" "C_snake28_LOC.t";
connectAttr "C_snake29_dec.or" "C_snake28_LOC.r";
connectAttr "C_snake29_pinf1.p" "C_snake29_LOC.t";
connectAttr "C_snake30_dec.or" "C_snake29_LOC.r";
connectAttr "C_snake30_pinf1.p" "C_snake30_LOC.t";
connectAttr "C_snake31_dec.or" "C_snake30_LOC.r";
connectAttr "C_snake31_pinf1.p" "C_snake31_LOC.t";
connectAttr "C_snake32_dec.or" "C_snake31_LOC.r";
connectAttr "C_snake32_pinf1.p" "C_snake32_LOC.t";
connectAttr "C_snake33_dec.or" "C_snake32_LOC.r";
connectAttr "C_snake33_pinf1.p" "C_snake33_LOC.t";
connectAttr "C_snake34_dec.or" "C_snake33_LOC.r";
connectAttr "C_snake34_pinf1.p" "C_snake34_LOC.t";
connectAttr "C_snake35_dec.or" "C_snake34_LOC.r";
connectAttr "C_snake35_pinf1.p" "C_snake35_LOC.t";
connectAttr "C_snake36_dec.or" "C_snake35_LOC.r";
connectAttr "C_snake36_pinf1.p" "C_snake36_LOC.t";
connectAttr "C_snake37_dec.or" "C_snake36_LOC.r";
connectAttr "C_snake37_pinf1.p" "C_snake37_LOC.t";
connectAttr "C_snake38_dec.or" "C_snake37_LOC.r";
connectAttr "C_snake38_pinf1.p" "C_snake38_LOC.t";
connectAttr "C_snake39_dec.or" "C_snake38_LOC.r";
connectAttr "C_snake39_pinf1.p" "C_snake39_LOC.t";
connectAttr "C_snake40_dec.or" "C_snake39_LOC.r";
connectAttr "C_snake40_pinf1.p" "C_snake40_LOC.t";
connectAttr "C_snake41_dec.or" "C_snake40_LOC.r";
connectAttr "loft1.os" "C_surface1_srfShape.cr";
connectAttr "C_snakeCenter1_locShape.wp" "C_curve1_crvShape.cp[0]";
connectAttr "C_snakeCenter2_locShape.wp" "C_curve1_crvShape.cp[1]";
connectAttr "C_snakeCenter3_locShape.wp" "C_curve1_crvShape.cp[2]";
connectAttr "C_snakeCenter4_locShape.wp" "C_curve1_crvShape.cp[3]";
connectAttr "C_snakeCenter5_locShape.wp" "C_curve1_crvShape.cp[4]";
connectAttr "C_snakeCenter6_locShape.wp" "C_curve1_crvShape.cp[5]";
connectAttr "C_snakeCenter7_locShape.wp" "C_curve1_crvShape.cp[6]";
connectAttr "C_snakeCenter8_locShape.wp" "C_curve1_crvShape.cp[7]";
connectAttr "C_snakeCenter9_locShape.wp" "C_curve1_crvShape.cp[8]";
connectAttr "C_snakeCenter10_locShape.wp" "C_curve1_crvShape.cp[9]";
connectAttr "C_snakeside1_locShape.wp" "C_surfaceSide1_crvShape.cp[0]";
connectAttr "C_snakeside2_locShape.wp" "C_surfaceSide1_crvShape.cp[1]";
connectAttr "C_snakeside3_locShape.wp" "C_surfaceSide1_crvShape.cp[2]";
connectAttr "C_snakeside4_locShape.wp" "C_surfaceSide1_crvShape.cp[3]";
connectAttr "C_snakeside5_locShape.wp" "C_surfaceSide1_crvShape.cp[4]";
connectAttr "C_snakeside6_locShape.wp" "C_surfaceSide1_crvShape.cp[5]";
connectAttr "C_snakeside7_locShape.wp" "C_surfaceSide1_crvShape.cp[6]";
connectAttr "C_snakeside8_locShape.wp" "C_surfaceSide1_crvShape.cp[7]";
connectAttr "C_snakeside9_locShape.wp" "C_surfaceSide1_crvShape.cp[8]";
connectAttr "C_snakeside10_locShape.wp" "C_surfaceSide1_crvShape.cp[9]";
connectAttr "C_snakeside11_locShape.wp" "C_surfaceSide2_crvShape.cp[0]";
connectAttr "C_snakeside12_locShape.wp" "C_surfaceSide2_crvShape.cp[1]";
connectAttr "C_snakeside13_locShape.wp" "C_surfaceSide2_crvShape.cp[2]";
connectAttr "C_snakeside14_locShape.wp" "C_surfaceSide2_crvShape.cp[3]";
connectAttr "C_snakeside15_locShape.wp" "C_surfaceSide2_crvShape.cp[4]";
connectAttr "C_snakeside16_locShape.wp" "C_surfaceSide2_crvShape.cp[5]";
connectAttr "C_snakeside17_locShape.wp" "C_surfaceSide2_crvShape.cp[6]";
connectAttr "C_snakeside18_locShape.wp" "C_surfaceSide2_crvShape.cp[7]";
connectAttr "C_snakeside19_locShape.wp" "C_surfaceSide2_crvShape.cp[8]";
connectAttr "C_snakeside20_locShape.wp" "C_surfaceSide2_crvShape.cp[9]";
connectAttr "C_snakeChain1_jnt_parentConstraint1.ctx" "C_snakeChain1_jnt.tx";
connectAttr "C_snakeChain1_jnt_parentConstraint1.cty" "C_snakeChain1_jnt.ty";
connectAttr "C_snakeChain1_jnt_parentConstraint1.ctz" "C_snakeChain1_jnt.tz";
connectAttr "C_snakeChain1_jnt_parentConstraint1.crx" "C_snakeChain1_jnt.rx";
connectAttr "C_snakeChain1_jnt_parentConstraint1.cry" "C_snakeChain1_jnt.ry";
connectAttr "C_snakeChain1_jnt_parentConstraint1.crz" "C_snakeChain1_jnt.rz";
connectAttr "C_snakeChain1_jnt.s" "C_snakeChain2_jnt.is";
connectAttr "C_snakeChain2_jnt_parentConstraint1.ctx" "C_snakeChain2_jnt.tx";
connectAttr "C_snakeChain2_jnt_parentConstraint1.cty" "C_snakeChain2_jnt.ty";
connectAttr "C_snakeChain2_jnt_parentConstraint1.ctz" "C_snakeChain2_jnt.tz";
connectAttr "C_snakeChain2_jnt_parentConstraint1.crx" "C_snakeChain2_jnt.rx";
connectAttr "C_snakeChain2_jnt_parentConstraint1.cry" "C_snakeChain2_jnt.ry";
connectAttr "C_snakeChain2_jnt_parentConstraint1.crz" "C_snakeChain2_jnt.rz";
connectAttr "C_snakeChain2_jnt.s" "C_snakeChain3_jnt.is";
connectAttr "C_snakeChain3_jnt_parentConstraint1.ctx" "C_snakeChain3_jnt.tx";
connectAttr "C_snakeChain3_jnt_parentConstraint1.cty" "C_snakeChain3_jnt.ty";
connectAttr "C_snakeChain3_jnt_parentConstraint1.ctz" "C_snakeChain3_jnt.tz";
connectAttr "C_snakeChain3_jnt_parentConstraint1.crx" "C_snakeChain3_jnt.rx";
connectAttr "C_snakeChain3_jnt_parentConstraint1.cry" "C_snakeChain3_jnt.ry";
connectAttr "C_snakeChain3_jnt_parentConstraint1.crz" "C_snakeChain3_jnt.rz";
connectAttr "C_snakeChain3_jnt.s" "C_snakeChain4_jnt.is";
connectAttr "C_snakeChain4_jnt_parentConstraint1.ctx" "C_snakeChain4_jnt.tx";
connectAttr "C_snakeChain4_jnt_parentConstraint1.cty" "C_snakeChain4_jnt.ty";
connectAttr "C_snakeChain4_jnt_parentConstraint1.ctz" "C_snakeChain4_jnt.tz";
connectAttr "C_snakeChain4_jnt_parentConstraint1.crx" "C_snakeChain4_jnt.rx";
connectAttr "C_snakeChain4_jnt_parentConstraint1.cry" "C_snakeChain4_jnt.ry";
connectAttr "C_snakeChain4_jnt_parentConstraint1.crz" "C_snakeChain4_jnt.rz";
connectAttr "C_snakeChain4_jnt.s" "C_snakeChain5_jnt.is";
connectAttr "C_snakeChain5_jnt_parentConstraint1.ctx" "C_snakeChain5_jnt.tx";
connectAttr "C_snakeChain5_jnt_parentConstraint1.cty" "C_snakeChain5_jnt.ty";
connectAttr "C_snakeChain5_jnt_parentConstraint1.ctz" "C_snakeChain5_jnt.tz";
connectAttr "C_snakeChain5_jnt_parentConstraint1.crx" "C_snakeChain5_jnt.rx";
connectAttr "C_snakeChain5_jnt_parentConstraint1.cry" "C_snakeChain5_jnt.ry";
connectAttr "C_snakeChain5_jnt_parentConstraint1.crz" "C_snakeChain5_jnt.rz";
connectAttr "C_snakeChain5_jnt.s" "C_snakeChain6_jnt.is";
connectAttr "C_snakeChain6_jnt_parentConstraint1.ctx" "C_snakeChain6_jnt.tx";
connectAttr "C_snakeChain6_jnt_parentConstraint1.cty" "C_snakeChain6_jnt.ty";
connectAttr "C_snakeChain6_jnt_parentConstraint1.ctz" "C_snakeChain6_jnt.tz";
connectAttr "C_snakeChain6_jnt_parentConstraint1.crx" "C_snakeChain6_jnt.rx";
connectAttr "C_snakeChain6_jnt_parentConstraint1.cry" "C_snakeChain6_jnt.ry";
connectAttr "C_snakeChain6_jnt_parentConstraint1.crz" "C_snakeChain6_jnt.rz";
connectAttr "C_snakeChain6_jnt.s" "C_snakeChain7_jnt.is";
connectAttr "C_snakeChain7_jnt_parentConstraint1.ctx" "C_snakeChain7_jnt.tx";
connectAttr "C_snakeChain7_jnt_parentConstraint1.cty" "C_snakeChain7_jnt.ty";
connectAttr "C_snakeChain7_jnt_parentConstraint1.ctz" "C_snakeChain7_jnt.tz";
connectAttr "C_snakeChain7_jnt_parentConstraint1.crx" "C_snakeChain7_jnt.rx";
connectAttr "C_snakeChain7_jnt_parentConstraint1.cry" "C_snakeChain7_jnt.ry";
connectAttr "C_snakeChain7_jnt_parentConstraint1.crz" "C_snakeChain7_jnt.rz";
connectAttr "C_snakeChain7_jnt.s" "C_snakeChain8_jnt.is";
connectAttr "C_snakeChain8_jnt_parentConstraint1.ctx" "C_snakeChain8_jnt.tx";
connectAttr "C_snakeChain8_jnt_parentConstraint1.cty" "C_snakeChain8_jnt.ty";
connectAttr "C_snakeChain8_jnt_parentConstraint1.ctz" "C_snakeChain8_jnt.tz";
connectAttr "C_snakeChain8_jnt_parentConstraint1.crx" "C_snakeChain8_jnt.rx";
connectAttr "C_snakeChain8_jnt_parentConstraint1.cry" "C_snakeChain8_jnt.ry";
connectAttr "C_snakeChain8_jnt_parentConstraint1.crz" "C_snakeChain8_jnt.rz";
connectAttr "C_snakeChain8_jnt.s" "C_snakeChain9_jnt.is";
connectAttr "C_snakeChain9_jnt_parentConstraint1.ctx" "C_snakeChain9_jnt.tx";
connectAttr "C_snakeChain9_jnt_parentConstraint1.cty" "C_snakeChain9_jnt.ty";
connectAttr "C_snakeChain9_jnt_parentConstraint1.ctz" "C_snakeChain9_jnt.tz";
connectAttr "C_snakeChain9_jnt_parentConstraint1.crx" "C_snakeChain9_jnt.rx";
connectAttr "C_snakeChain9_jnt_parentConstraint1.cry" "C_snakeChain9_jnt.ry";
connectAttr "C_snakeChain9_jnt_parentConstraint1.crz" "C_snakeChain9_jnt.rz";
connectAttr "C_snakeChain9_jnt.s" "C_snakeChain10_jnt.is";
connectAttr "C_snakeChain10_jnt_parentConstraint1.ctx" "C_snakeChain10_jnt.tx";
connectAttr "C_snakeChain10_jnt_parentConstraint1.cty" "C_snakeChain10_jnt.ty";
connectAttr "C_snakeChain10_jnt_parentConstraint1.ctz" "C_snakeChain10_jnt.tz";
connectAttr "C_snakeChain10_jnt_parentConstraint1.crx" "C_snakeChain10_jnt.rx";
connectAttr "C_snakeChain10_jnt_parentConstraint1.cry" "C_snakeChain10_jnt.ry";
connectAttr "C_snakeChain10_jnt_parentConstraint1.crz" "C_snakeChain10_jnt.rz";
connectAttr "C_snakeChain10_jnt.s" "C_snakeChain11_jnt.is";
connectAttr "C_snakeChain11_jnt_parentConstraint1.ctx" "C_snakeChain11_jnt.tx";
connectAttr "C_snakeChain11_jnt_parentConstraint1.cty" "C_snakeChain11_jnt.ty";
connectAttr "C_snakeChain11_jnt_parentConstraint1.ctz" "C_snakeChain11_jnt.tz";
connectAttr "C_snakeChain11_jnt_parentConstraint1.crx" "C_snakeChain11_jnt.rx";
connectAttr "C_snakeChain11_jnt_parentConstraint1.cry" "C_snakeChain11_jnt.ry";
connectAttr "C_snakeChain11_jnt_parentConstraint1.crz" "C_snakeChain11_jnt.rz";
connectAttr "C_snakeChain11_jnt.s" "C_snakeChain12_jnt.is";
connectAttr "C_snakeChain12_jnt_parentConstraint1.ctx" "C_snakeChain12_jnt.tx";
connectAttr "C_snakeChain12_jnt_parentConstraint1.cty" "C_snakeChain12_jnt.ty";
connectAttr "C_snakeChain12_jnt_parentConstraint1.ctz" "C_snakeChain12_jnt.tz";
connectAttr "C_snakeChain12_jnt_parentConstraint1.crx" "C_snakeChain12_jnt.rx";
connectAttr "C_snakeChain12_jnt_parentConstraint1.cry" "C_snakeChain12_jnt.ry";
connectAttr "C_snakeChain12_jnt_parentConstraint1.crz" "C_snakeChain12_jnt.rz";
connectAttr "C_snakeChain12_jnt.s" "C_snakeChain13_jnt.is";
connectAttr "C_snakeChain13_jnt_parentConstraint1.ctx" "C_snakeChain13_jnt.tx";
connectAttr "C_snakeChain13_jnt_parentConstraint1.cty" "C_snakeChain13_jnt.ty";
connectAttr "C_snakeChain13_jnt_parentConstraint1.ctz" "C_snakeChain13_jnt.tz";
connectAttr "C_snakeChain13_jnt_parentConstraint1.crx" "C_snakeChain13_jnt.rx";
connectAttr "C_snakeChain13_jnt_parentConstraint1.cry" "C_snakeChain13_jnt.ry";
connectAttr "C_snakeChain13_jnt_parentConstraint1.crz" "C_snakeChain13_jnt.rz";
connectAttr "C_snakeChain13_jnt.s" "C_snakeChain14_jnt.is";
connectAttr "C_snakeChain14_jnt_parentConstraint1.ctx" "C_snakeChain14_jnt.tx";
connectAttr "C_snakeChain14_jnt_parentConstraint1.cty" "C_snakeChain14_jnt.ty";
connectAttr "C_snakeChain14_jnt_parentConstraint1.ctz" "C_snakeChain14_jnt.tz";
connectAttr "C_snakeChain14_jnt_parentConstraint1.crx" "C_snakeChain14_jnt.rx";
connectAttr "C_snakeChain14_jnt_parentConstraint1.cry" "C_snakeChain14_jnt.ry";
connectAttr "C_snakeChain14_jnt_parentConstraint1.crz" "C_snakeChain14_jnt.rz";
connectAttr "C_snakeChain14_jnt.s" "C_snakeChain15_jnt.is";
connectAttr "C_snakeChain15_jnt_parentConstraint1.ctx" "C_snakeChain15_jnt.tx";
connectAttr "C_snakeChain15_jnt_parentConstraint1.cty" "C_snakeChain15_jnt.ty";
connectAttr "C_snakeChain15_jnt_parentConstraint1.ctz" "C_snakeChain15_jnt.tz";
connectAttr "C_snakeChain15_jnt_parentConstraint1.crx" "C_snakeChain15_jnt.rx";
connectAttr "C_snakeChain15_jnt_parentConstraint1.cry" "C_snakeChain15_jnt.ry";
connectAttr "C_snakeChain15_jnt_parentConstraint1.crz" "C_snakeChain15_jnt.rz";
connectAttr "C_snakeChain15_jnt.s" "C_snakeChain16_jnt.is";
connectAttr "C_snakeChain16_jnt_parentConstraint1.ctx" "C_snakeChain16_jnt.tx";
connectAttr "C_snakeChain16_jnt_parentConstraint1.cty" "C_snakeChain16_jnt.ty";
connectAttr "C_snakeChain16_jnt_parentConstraint1.ctz" "C_snakeChain16_jnt.tz";
connectAttr "C_snakeChain16_jnt_parentConstraint1.crx" "C_snakeChain16_jnt.rx";
connectAttr "C_snakeChain16_jnt_parentConstraint1.cry" "C_snakeChain16_jnt.ry";
connectAttr "C_snakeChain16_jnt_parentConstraint1.crz" "C_snakeChain16_jnt.rz";
connectAttr "C_snakeChain16_jnt.s" "C_snakeChain17_jnt.is";
connectAttr "C_snakeChain17_jnt_parentConstraint1.ctx" "C_snakeChain17_jnt.tx";
connectAttr "C_snakeChain17_jnt_parentConstraint1.cty" "C_snakeChain17_jnt.ty";
connectAttr "C_snakeChain17_jnt_parentConstraint1.ctz" "C_snakeChain17_jnt.tz";
connectAttr "C_snakeChain17_jnt_parentConstraint1.crx" "C_snakeChain17_jnt.rx";
connectAttr "C_snakeChain17_jnt_parentConstraint1.cry" "C_snakeChain17_jnt.ry";
connectAttr "C_snakeChain17_jnt_parentConstraint1.crz" "C_snakeChain17_jnt.rz";
connectAttr "C_snakeChain17_jnt.s" "C_snakeChain18_jnt.is";
connectAttr "C_snakeChain18_jnt_parentConstraint1.ctx" "C_snakeChain18_jnt.tx";
connectAttr "C_snakeChain18_jnt_parentConstraint1.cty" "C_snakeChain18_jnt.ty";
connectAttr "C_snakeChain18_jnt_parentConstraint1.ctz" "C_snakeChain18_jnt.tz";
connectAttr "C_snakeChain18_jnt_parentConstraint1.crx" "C_snakeChain18_jnt.rx";
connectAttr "C_snakeChain18_jnt_parentConstraint1.cry" "C_snakeChain18_jnt.ry";
connectAttr "C_snakeChain18_jnt_parentConstraint1.crz" "C_snakeChain18_jnt.rz";
connectAttr "C_snakeChain18_jnt.s" "C_snakeChain19_jnt.is";
connectAttr "C_snakeChain19_jnt_parentConstraint1.ctx" "C_snakeChain19_jnt.tx";
connectAttr "C_snakeChain19_jnt_parentConstraint1.cty" "C_snakeChain19_jnt.ty";
connectAttr "C_snakeChain19_jnt_parentConstraint1.ctz" "C_snakeChain19_jnt.tz";
connectAttr "C_snakeChain19_jnt_parentConstraint1.crx" "C_snakeChain19_jnt.rx";
connectAttr "C_snakeChain19_jnt_parentConstraint1.cry" "C_snakeChain19_jnt.ry";
connectAttr "C_snakeChain19_jnt_parentConstraint1.crz" "C_snakeChain19_jnt.rz";
connectAttr "C_snakeChain19_jnt.s" "C_snakeChain20_jnt.is";
connectAttr "C_snakeChain20_jnt_parentConstraint1.ctx" "C_snakeChain20_jnt.tx";
connectAttr "C_snakeChain20_jnt_parentConstraint1.cty" "C_snakeChain20_jnt.ty";
connectAttr "C_snakeChain20_jnt_parentConstraint1.ctz" "C_snakeChain20_jnt.tz";
connectAttr "C_snakeChain20_jnt_parentConstraint1.crx" "C_snakeChain20_jnt.rx";
connectAttr "C_snakeChain20_jnt_parentConstraint1.cry" "C_snakeChain20_jnt.ry";
connectAttr "C_snakeChain20_jnt_parentConstraint1.crz" "C_snakeChain20_jnt.rz";
connectAttr "C_snakeChain20_jnt.s" "C_snakeChain21_jnt.is";
connectAttr "C_snakeChain21_jnt_parentConstraint1.ctx" "C_snakeChain21_jnt.tx";
connectAttr "C_snakeChain21_jnt_parentConstraint1.cty" "C_snakeChain21_jnt.ty";
connectAttr "C_snakeChain21_jnt_parentConstraint1.ctz" "C_snakeChain21_jnt.tz";
connectAttr "C_snakeChain21_jnt_parentConstraint1.crx" "C_snakeChain21_jnt.rx";
connectAttr "C_snakeChain21_jnt_parentConstraint1.cry" "C_snakeChain21_jnt.ry";
connectAttr "C_snakeChain21_jnt_parentConstraint1.crz" "C_snakeChain21_jnt.rz";
connectAttr "C_snakeChain21_jnt.s" "C_snakeChain22_jnt.is";
connectAttr "C_snakeChain22_jnt_parentConstraint1.ctx" "C_snakeChain22_jnt.tx";
connectAttr "C_snakeChain22_jnt_parentConstraint1.cty" "C_snakeChain22_jnt.ty";
connectAttr "C_snakeChain22_jnt_parentConstraint1.ctz" "C_snakeChain22_jnt.tz";
connectAttr "C_snakeChain22_jnt_parentConstraint1.crx" "C_snakeChain22_jnt.rx";
connectAttr "C_snakeChain22_jnt_parentConstraint1.cry" "C_snakeChain22_jnt.ry";
connectAttr "C_snakeChain22_jnt_parentConstraint1.crz" "C_snakeChain22_jnt.rz";
connectAttr "C_snakeChain22_jnt.s" "C_snakeChain23_jnt.is";
connectAttr "C_snakeChain23_jnt_parentConstraint1.ctx" "C_snakeChain23_jnt.tx";
connectAttr "C_snakeChain23_jnt_parentConstraint1.cty" "C_snakeChain23_jnt.ty";
connectAttr "C_snakeChain23_jnt_parentConstraint1.ctz" "C_snakeChain23_jnt.tz";
connectAttr "C_snakeChain23_jnt_parentConstraint1.crx" "C_snakeChain23_jnt.rx";
connectAttr "C_snakeChain23_jnt_parentConstraint1.cry" "C_snakeChain23_jnt.ry";
connectAttr "C_snakeChain23_jnt_parentConstraint1.crz" "C_snakeChain23_jnt.rz";
connectAttr "C_snakeChain23_jnt.s" "C_snakeChain24_jnt.is";
connectAttr "C_snakeChain24_jnt_parentConstraint1.ctx" "C_snakeChain24_jnt.tx";
connectAttr "C_snakeChain24_jnt_parentConstraint1.cty" "C_snakeChain24_jnt.ty";
connectAttr "C_snakeChain24_jnt_parentConstraint1.ctz" "C_snakeChain24_jnt.tz";
connectAttr "C_snakeChain24_jnt_parentConstraint1.crx" "C_snakeChain24_jnt.rx";
connectAttr "C_snakeChain24_jnt_parentConstraint1.cry" "C_snakeChain24_jnt.ry";
connectAttr "C_snakeChain24_jnt_parentConstraint1.crz" "C_snakeChain24_jnt.rz";
connectAttr "C_snakeChain24_jnt.s" "C_snakeChain25_jnt.is";
connectAttr "C_snakeChain25_jnt_parentConstraint1.ctx" "C_snakeChain25_jnt.tx";
connectAttr "C_snakeChain25_jnt_parentConstraint1.cty" "C_snakeChain25_jnt.ty";
connectAttr "C_snakeChain25_jnt_parentConstraint1.ctz" "C_snakeChain25_jnt.tz";
connectAttr "C_snakeChain25_jnt_parentConstraint1.crx" "C_snakeChain25_jnt.rx";
connectAttr "C_snakeChain25_jnt_parentConstraint1.cry" "C_snakeChain25_jnt.ry";
connectAttr "C_snakeChain25_jnt_parentConstraint1.crz" "C_snakeChain25_jnt.rz";
connectAttr "C_snakeChain25_jnt.s" "C_snakeChain26_jnt.is";
connectAttr "C_snakeChain26_jnt_parentConstraint1.ctx" "C_snakeChain26_jnt.tx";
connectAttr "C_snakeChain26_jnt_parentConstraint1.cty" "C_snakeChain26_jnt.ty";
connectAttr "C_snakeChain26_jnt_parentConstraint1.ctz" "C_snakeChain26_jnt.tz";
connectAttr "C_snakeChain26_jnt_parentConstraint1.crx" "C_snakeChain26_jnt.rx";
connectAttr "C_snakeChain26_jnt_parentConstraint1.cry" "C_snakeChain26_jnt.ry";
connectAttr "C_snakeChain26_jnt_parentConstraint1.crz" "C_snakeChain26_jnt.rz";
connectAttr "C_snakeChain26_jnt.s" "C_snakeChain27_jnt.is";
connectAttr "C_snakeChain27_jnt_parentConstraint1.ctx" "C_snakeChain27_jnt.tx";
connectAttr "C_snakeChain27_jnt_parentConstraint1.cty" "C_snakeChain27_jnt.ty";
connectAttr "C_snakeChain27_jnt_parentConstraint1.ctz" "C_snakeChain27_jnt.tz";
connectAttr "C_snakeChain27_jnt_parentConstraint1.crx" "C_snakeChain27_jnt.rx";
connectAttr "C_snakeChain27_jnt_parentConstraint1.cry" "C_snakeChain27_jnt.ry";
connectAttr "C_snakeChain27_jnt_parentConstraint1.crz" "C_snakeChain27_jnt.rz";
connectAttr "C_snakeChain27_jnt.s" "C_snakeChain28_jnt.is";
connectAttr "C_snakeChain28_jnt_parentConstraint1.ctx" "C_snakeChain28_jnt.tx";
connectAttr "C_snakeChain28_jnt_parentConstraint1.cty" "C_snakeChain28_jnt.ty";
connectAttr "C_snakeChain28_jnt_parentConstraint1.ctz" "C_snakeChain28_jnt.tz";
connectAttr "C_snakeChain28_jnt_parentConstraint1.crx" "C_snakeChain28_jnt.rx";
connectAttr "C_snakeChain28_jnt_parentConstraint1.cry" "C_snakeChain28_jnt.ry";
connectAttr "C_snakeChain28_jnt_parentConstraint1.crz" "C_snakeChain28_jnt.rz";
connectAttr "C_snakeChain28_jnt.s" "C_snakeChain29_jnt.is";
connectAttr "C_snakeChain29_jnt_parentConstraint1.ctx" "C_snakeChain29_jnt.tx";
connectAttr "C_snakeChain29_jnt_parentConstraint1.cty" "C_snakeChain29_jnt.ty";
connectAttr "C_snakeChain29_jnt_parentConstraint1.ctz" "C_snakeChain29_jnt.tz";
connectAttr "C_snakeChain29_jnt_parentConstraint1.crx" "C_snakeChain29_jnt.rx";
connectAttr "C_snakeChain29_jnt_parentConstraint1.cry" "C_snakeChain29_jnt.ry";
connectAttr "C_snakeChain29_jnt_parentConstraint1.crz" "C_snakeChain29_jnt.rz";
connectAttr "C_snakeChain29_jnt.s" "C_snakeChain30_jnt.is";
connectAttr "C_snakeChain30_jnt_parentConstraint1.ctx" "C_snakeChain30_jnt.tx";
connectAttr "C_snakeChain30_jnt_parentConstraint1.cty" "C_snakeChain30_jnt.ty";
connectAttr "C_snakeChain30_jnt_parentConstraint1.ctz" "C_snakeChain30_jnt.tz";
connectAttr "C_snakeChain30_jnt_parentConstraint1.crx" "C_snakeChain30_jnt.rx";
connectAttr "C_snakeChain30_jnt_parentConstraint1.cry" "C_snakeChain30_jnt.ry";
connectAttr "C_snakeChain30_jnt_parentConstraint1.crz" "C_snakeChain30_jnt.rz";
connectAttr "C_snakeChain30_jnt.s" "C_snakeChain31_jnt.is";
connectAttr "C_snakeChain31_jnt_parentConstraint1.ctx" "C_snakeChain31_jnt.tx";
connectAttr "C_snakeChain31_jnt_parentConstraint1.cty" "C_snakeChain31_jnt.ty";
connectAttr "C_snakeChain31_jnt_parentConstraint1.ctz" "C_snakeChain31_jnt.tz";
connectAttr "C_snakeChain31_jnt_parentConstraint1.crx" "C_snakeChain31_jnt.rx";
connectAttr "C_snakeChain31_jnt_parentConstraint1.cry" "C_snakeChain31_jnt.ry";
connectAttr "C_snakeChain31_jnt_parentConstraint1.crz" "C_snakeChain31_jnt.rz";
connectAttr "C_snakeChain31_jnt.s" "C_snakeChain32_jnt.is";
connectAttr "C_snakeChain32_jnt_parentConstraint1.ctx" "C_snakeChain32_jnt.tx";
connectAttr "C_snakeChain32_jnt_parentConstraint1.cty" "C_snakeChain32_jnt.ty";
connectAttr "C_snakeChain32_jnt_parentConstraint1.ctz" "C_snakeChain32_jnt.tz";
connectAttr "C_snakeChain32_jnt_parentConstraint1.crx" "C_snakeChain32_jnt.rx";
connectAttr "C_snakeChain32_jnt_parentConstraint1.cry" "C_snakeChain32_jnt.ry";
connectAttr "C_snakeChain32_jnt_parentConstraint1.crz" "C_snakeChain32_jnt.rz";
connectAttr "C_snakeChain32_jnt.s" "C_snakeChain33_jnt.is";
connectAttr "C_snakeChain33_jnt_parentConstraint1.ctx" "C_snakeChain33_jnt.tx";
connectAttr "C_snakeChain33_jnt_parentConstraint1.cty" "C_snakeChain33_jnt.ty";
connectAttr "C_snakeChain33_jnt_parentConstraint1.ctz" "C_snakeChain33_jnt.tz";
connectAttr "C_snakeChain33_jnt_parentConstraint1.crx" "C_snakeChain33_jnt.rx";
connectAttr "C_snakeChain33_jnt_parentConstraint1.cry" "C_snakeChain33_jnt.ry";
connectAttr "C_snakeChain33_jnt_parentConstraint1.crz" "C_snakeChain33_jnt.rz";
connectAttr "C_snakeChain33_jnt.s" "C_snakeChain34_jnt.is";
connectAttr "C_snakeChain34_jnt_parentConstraint1.ctx" "C_snakeChain34_jnt.tx";
connectAttr "C_snakeChain34_jnt_parentConstraint1.cty" "C_snakeChain34_jnt.ty";
connectAttr "C_snakeChain34_jnt_parentConstraint1.ctz" "C_snakeChain34_jnt.tz";
connectAttr "C_snakeChain34_jnt_parentConstraint1.crx" "C_snakeChain34_jnt.rx";
connectAttr "C_snakeChain34_jnt_parentConstraint1.cry" "C_snakeChain34_jnt.ry";
connectAttr "C_snakeChain34_jnt_parentConstraint1.crz" "C_snakeChain34_jnt.rz";
connectAttr "C_snakeChain34_jnt.s" "C_snakeChain35_jnt.is";
connectAttr "C_snakeChain35_jnt_parentConstraint1.ctx" "C_snakeChain35_jnt.tx";
connectAttr "C_snakeChain35_jnt_parentConstraint1.cty" "C_snakeChain35_jnt.ty";
connectAttr "C_snakeChain35_jnt_parentConstraint1.ctz" "C_snakeChain35_jnt.tz";
connectAttr "C_snakeChain35_jnt_parentConstraint1.crx" "C_snakeChain35_jnt.rx";
connectAttr "C_snakeChain35_jnt_parentConstraint1.cry" "C_snakeChain35_jnt.ry";
connectAttr "C_snakeChain35_jnt_parentConstraint1.crz" "C_snakeChain35_jnt.rz";
connectAttr "C_snakeChain35_jnt.s" "C_snakeChain36_jnt.is";
connectAttr "C_snakeChain36_jnt_parentConstraint1.ctx" "C_snakeChain36_jnt.tx";
connectAttr "C_snakeChain36_jnt_parentConstraint1.cty" "C_snakeChain36_jnt.ty";
connectAttr "C_snakeChain36_jnt_parentConstraint1.ctz" "C_snakeChain36_jnt.tz";
connectAttr "C_snakeChain36_jnt_parentConstraint1.crx" "C_snakeChain36_jnt.rx";
connectAttr "C_snakeChain36_jnt_parentConstraint1.cry" "C_snakeChain36_jnt.ry";
connectAttr "C_snakeChain36_jnt_parentConstraint1.crz" "C_snakeChain36_jnt.rz";
connectAttr "C_snakeChain36_jnt.s" "C_snakeChain37_jnt.is";
connectAttr "C_snakeChain37_jnt_parentConstraint1.ctx" "C_snakeChain37_jnt.tx";
connectAttr "C_snakeChain37_jnt_parentConstraint1.cty" "C_snakeChain37_jnt.ty";
connectAttr "C_snakeChain37_jnt_parentConstraint1.ctz" "C_snakeChain37_jnt.tz";
connectAttr "C_snakeChain37_jnt_parentConstraint1.crx" "C_snakeChain37_jnt.rx";
connectAttr "C_snakeChain37_jnt_parentConstraint1.cry" "C_snakeChain37_jnt.ry";
connectAttr "C_snakeChain37_jnt_parentConstraint1.crz" "C_snakeChain37_jnt.rz";
connectAttr "C_snakeChain37_jnt.s" "C_snakeChain38_jnt.is";
connectAttr "C_snakeChain38_jnt_parentConstraint1.ctx" "C_snakeChain38_jnt.tx";
connectAttr "C_snakeChain38_jnt_parentConstraint1.cty" "C_snakeChain38_jnt.ty";
connectAttr "C_snakeChain38_jnt_parentConstraint1.ctz" "C_snakeChain38_jnt.tz";
connectAttr "C_snakeChain38_jnt_parentConstraint1.crx" "C_snakeChain38_jnt.rx";
connectAttr "C_snakeChain38_jnt_parentConstraint1.cry" "C_snakeChain38_jnt.ry";
connectAttr "C_snakeChain38_jnt_parentConstraint1.crz" "C_snakeChain38_jnt.rz";
connectAttr "C_snakeChain38_jnt.s" "C_snakeChain39_jnt.is";
connectAttr "C_snakeChain39_jnt_parentConstraint1.ctx" "C_snakeChain39_jnt.tx";
connectAttr "C_snakeChain39_jnt_parentConstraint1.cty" "C_snakeChain39_jnt.ty";
connectAttr "C_snakeChain39_jnt_parentConstraint1.ctz" "C_snakeChain39_jnt.tz";
connectAttr "C_snakeChain39_jnt_parentConstraint1.crx" "C_snakeChain39_jnt.rx";
connectAttr "C_snakeChain39_jnt_parentConstraint1.cry" "C_snakeChain39_jnt.ry";
connectAttr "C_snakeChain39_jnt_parentConstraint1.crz" "C_snakeChain39_jnt.rz";
connectAttr "C_snakeChain39_jnt.s" "C_snakeChain40_jnt.is";
connectAttr "C_snakeChain40_jnt_parentConstraint1.ctx" "C_snakeChain40_jnt.tx";
connectAttr "C_snakeChain40_jnt_parentConstraint1.cty" "C_snakeChain40_jnt.ty";
connectAttr "C_snakeChain40_jnt_parentConstraint1.ctz" "C_snakeChain40_jnt.tz";
connectAttr "C_snakeChain40_jnt_parentConstraint1.crx" "C_snakeChain40_jnt.rx";
connectAttr "C_snakeChain40_jnt_parentConstraint1.cry" "C_snakeChain40_jnt.ry";
connectAttr "C_snakeChain40_jnt_parentConstraint1.crz" "C_snakeChain40_jnt.rz";
connectAttr "C_snakeChain40_jnt.s" "C_snakeChain41_jnt.is";
connectAttr "C_snakeChain41_jnt_parentConstraint1.ctx" "C_snakeChain41_jnt.tx";
connectAttr "C_snakeChain41_jnt_parentConstraint1.cty" "C_snakeChain41_jnt.ty";
connectAttr "C_snakeChain41_jnt_parentConstraint1.ctz" "C_snakeChain41_jnt.tz";
connectAttr "C_snakeChain41_jnt_parentConstraint1.crx" "C_snakeChain41_jnt.rx";
connectAttr "C_snakeChain41_jnt_parentConstraint1.cry" "C_snakeChain41_jnt.ry";
connectAttr "C_snakeChain41_jnt_parentConstraint1.crz" "C_snakeChain41_jnt.rz";
connectAttr "C_snakeChain41_jnt.ro" "C_snakeChain41_jnt_parentConstraint1.cro";
connectAttr "C_snakeChain41_jnt.pim" "C_snakeChain41_jnt_parentConstraint1.cpim"
		;
connectAttr "C_snakeChain41_jnt.rp" "C_snakeChain41_jnt_parentConstraint1.crp";
connectAttr "C_snakeChain41_jnt.rpt" "C_snakeChain41_jnt_parentConstraint1.crt";
connectAttr "C_snakeChain41_jnt.jo" "C_snakeChain41_jnt_parentConstraint1.cjo";
connectAttr "C_snake40_LOC.t" "C_snakeChain41_jnt_parentConstraint1.tg[0].tt";
connectAttr "C_snake40_LOC.rp" "C_snakeChain41_jnt_parentConstraint1.tg[0].trp";
connectAttr "C_snake40_LOC.rpt" "C_snakeChain41_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "C_snake40_LOC.r" "C_snakeChain41_jnt_parentConstraint1.tg[0].tr";
connectAttr "C_snake40_LOC.ro" "C_snakeChain41_jnt_parentConstraint1.tg[0].tro";
connectAttr "C_snake40_LOC.s" "C_snakeChain41_jnt_parentConstraint1.tg[0].ts";
connectAttr "C_snake40_LOC.pm" "C_snakeChain41_jnt_parentConstraint1.tg[0].tpm";
connectAttr "C_snakeChain41_jnt_parentConstraint1.w0" "C_snakeChain41_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "C_snakeChain40_jnt.ro" "C_snakeChain40_jnt_parentConstraint1.cro";
connectAttr "C_snakeChain40_jnt.pim" "C_snakeChain40_jnt_parentConstraint1.cpim"
		;
connectAttr "C_snakeChain40_jnt.rp" "C_snakeChain40_jnt_parentConstraint1.crp";
connectAttr "C_snakeChain40_jnt.rpt" "C_snakeChain40_jnt_parentConstraint1.crt";
connectAttr "C_snakeChain40_jnt.jo" "C_snakeChain40_jnt_parentConstraint1.cjo";
connectAttr "C_snake39_LOC.t" "C_snakeChain40_jnt_parentConstraint1.tg[0].tt";
connectAttr "C_snake39_LOC.rp" "C_snakeChain40_jnt_parentConstraint1.tg[0].trp";
connectAttr "C_snake39_LOC.rpt" "C_snakeChain40_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "C_snake39_LOC.r" "C_snakeChain40_jnt_parentConstraint1.tg[0].tr";
connectAttr "C_snake39_LOC.ro" "C_snakeChain40_jnt_parentConstraint1.tg[0].tro";
connectAttr "C_snake39_LOC.s" "C_snakeChain40_jnt_parentConstraint1.tg[0].ts";
connectAttr "C_snake39_LOC.pm" "C_snakeChain40_jnt_parentConstraint1.tg[0].tpm";
connectAttr "C_snakeChain40_jnt_parentConstraint1.w0" "C_snakeChain40_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "C_snakeChain39_jnt.ro" "C_snakeChain39_jnt_parentConstraint1.cro";
connectAttr "C_snakeChain39_jnt.pim" "C_snakeChain39_jnt_parentConstraint1.cpim"
		;
connectAttr "C_snakeChain39_jnt.rp" "C_snakeChain39_jnt_parentConstraint1.crp";
connectAttr "C_snakeChain39_jnt.rpt" "C_snakeChain39_jnt_parentConstraint1.crt";
connectAttr "C_snakeChain39_jnt.jo" "C_snakeChain39_jnt_parentConstraint1.cjo";
connectAttr "C_snake38_LOC.t" "C_snakeChain39_jnt_parentConstraint1.tg[0].tt";
connectAttr "C_snake38_LOC.rp" "C_snakeChain39_jnt_parentConstraint1.tg[0].trp";
connectAttr "C_snake38_LOC.rpt" "C_snakeChain39_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "C_snake38_LOC.r" "C_snakeChain39_jnt_parentConstraint1.tg[0].tr";
connectAttr "C_snake38_LOC.ro" "C_snakeChain39_jnt_parentConstraint1.tg[0].tro";
connectAttr "C_snake38_LOC.s" "C_snakeChain39_jnt_parentConstraint1.tg[0].ts";
connectAttr "C_snake38_LOC.pm" "C_snakeChain39_jnt_parentConstraint1.tg[0].tpm";
connectAttr "C_snakeChain39_jnt_parentConstraint1.w0" "C_snakeChain39_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "C_snakeChain38_jnt.ro" "C_snakeChain38_jnt_parentConstraint1.cro";
connectAttr "C_snakeChain38_jnt.pim" "C_snakeChain38_jnt_parentConstraint1.cpim"
		;
connectAttr "C_snakeChain38_jnt.rp" "C_snakeChain38_jnt_parentConstraint1.crp";
connectAttr "C_snakeChain38_jnt.rpt" "C_snakeChain38_jnt_parentConstraint1.crt";
connectAttr "C_snakeChain38_jnt.jo" "C_snakeChain38_jnt_parentConstraint1.cjo";
connectAttr "C_snake37_LOC.t" "C_snakeChain38_jnt_parentConstraint1.tg[0].tt";
connectAttr "C_snake37_LOC.rp" "C_snakeChain38_jnt_parentConstraint1.tg[0].trp";
connectAttr "C_snake37_LOC.rpt" "C_snakeChain38_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "C_snake37_LOC.r" "C_snakeChain38_jnt_parentConstraint1.tg[0].tr";
connectAttr "C_snake37_LOC.ro" "C_snakeChain38_jnt_parentConstraint1.tg[0].tro";
connectAttr "C_snake37_LOC.s" "C_snakeChain38_jnt_parentConstraint1.tg[0].ts";
connectAttr "C_snake37_LOC.pm" "C_snakeChain38_jnt_parentConstraint1.tg[0].tpm";
connectAttr "C_snakeChain38_jnt_parentConstraint1.w0" "C_snakeChain38_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "C_snakeChain37_jnt.ro" "C_snakeChain37_jnt_parentConstraint1.cro";
connectAttr "C_snakeChain37_jnt.pim" "C_snakeChain37_jnt_parentConstraint1.cpim"
		;
connectAttr "C_snakeChain37_jnt.rp" "C_snakeChain37_jnt_parentConstraint1.crp";
connectAttr "C_snakeChain37_jnt.rpt" "C_snakeChain37_jnt_parentConstraint1.crt";
connectAttr "C_snakeChain37_jnt.jo" "C_snakeChain37_jnt_parentConstraint1.cjo";
connectAttr "C_snake36_LOC.t" "C_snakeChain37_jnt_parentConstraint1.tg[0].tt";
connectAttr "C_snake36_LOC.rp" "C_snakeChain37_jnt_parentConstraint1.tg[0].trp";
connectAttr "C_snake36_LOC.rpt" "C_snakeChain37_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "C_snake36_LOC.r" "C_snakeChain37_jnt_parentConstraint1.tg[0].tr";
connectAttr "C_snake36_LOC.ro" "C_snakeChain37_jnt_parentConstraint1.tg[0].tro";
connectAttr "C_snake36_LOC.s" "C_snakeChain37_jnt_parentConstraint1.tg[0].ts";
connectAttr "C_snake36_LOC.pm" "C_snakeChain37_jnt_parentConstraint1.tg[0].tpm";
connectAttr "C_snakeChain37_jnt_parentConstraint1.w0" "C_snakeChain37_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "C_snakeChain36_jnt.ro" "C_snakeChain36_jnt_parentConstraint1.cro";
connectAttr "C_snakeChain36_jnt.pim" "C_snakeChain36_jnt_parentConstraint1.cpim"
		;
connectAttr "C_snakeChain36_jnt.rp" "C_snakeChain36_jnt_parentConstraint1.crp";
connectAttr "C_snakeChain36_jnt.rpt" "C_snakeChain36_jnt_parentConstraint1.crt";
connectAttr "C_snakeChain36_jnt.jo" "C_snakeChain36_jnt_parentConstraint1.cjo";
connectAttr "C_snake35_LOC.t" "C_snakeChain36_jnt_parentConstraint1.tg[0].tt";
connectAttr "C_snake35_LOC.rp" "C_snakeChain36_jnt_parentConstraint1.tg[0].trp";
connectAttr "C_snake35_LOC.rpt" "C_snakeChain36_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "C_snake35_LOC.r" "C_snakeChain36_jnt_parentConstraint1.tg[0].tr";
connectAttr "C_snake35_LOC.ro" "C_snakeChain36_jnt_parentConstraint1.tg[0].tro";
connectAttr "C_snake35_LOC.s" "C_snakeChain36_jnt_parentConstraint1.tg[0].ts";
connectAttr "C_snake35_LOC.pm" "C_snakeChain36_jnt_parentConstraint1.tg[0].tpm";
connectAttr "C_snakeChain36_jnt_parentConstraint1.w0" "C_snakeChain36_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "C_snakeChain35_jnt.ro" "C_snakeChain35_jnt_parentConstraint1.cro";
connectAttr "C_snakeChain35_jnt.pim" "C_snakeChain35_jnt_parentConstraint1.cpim"
		;
connectAttr "C_snakeChain35_jnt.rp" "C_snakeChain35_jnt_parentConstraint1.crp";
connectAttr "C_snakeChain35_jnt.rpt" "C_snakeChain35_jnt_parentConstraint1.crt";
connectAttr "C_snakeChain35_jnt.jo" "C_snakeChain35_jnt_parentConstraint1.cjo";
connectAttr "C_snake34_LOC.t" "C_snakeChain35_jnt_parentConstraint1.tg[0].tt";
connectAttr "C_snake34_LOC.rp" "C_snakeChain35_jnt_parentConstraint1.tg[0].trp";
connectAttr "C_snake34_LOC.rpt" "C_snakeChain35_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "C_snake34_LOC.r" "C_snakeChain35_jnt_parentConstraint1.tg[0].tr";
connectAttr "C_snake34_LOC.ro" "C_snakeChain35_jnt_parentConstraint1.tg[0].tro";
connectAttr "C_snake34_LOC.s" "C_snakeChain35_jnt_parentConstraint1.tg[0].ts";
connectAttr "C_snake34_LOC.pm" "C_snakeChain35_jnt_parentConstraint1.tg[0].tpm";
connectAttr "C_snakeChain35_jnt_parentConstraint1.w0" "C_snakeChain35_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "C_snakeChain34_jnt.ro" "C_snakeChain34_jnt_parentConstraint1.cro";
connectAttr "C_snakeChain34_jnt.pim" "C_snakeChain34_jnt_parentConstraint1.cpim"
		;
connectAttr "C_snakeChain34_jnt.rp" "C_snakeChain34_jnt_parentConstraint1.crp";
connectAttr "C_snakeChain34_jnt.rpt" "C_snakeChain34_jnt_parentConstraint1.crt";
connectAttr "C_snakeChain34_jnt.jo" "C_snakeChain34_jnt_parentConstraint1.cjo";
connectAttr "C_snake33_LOC.t" "C_snakeChain34_jnt_parentConstraint1.tg[0].tt";
connectAttr "C_snake33_LOC.rp" "C_snakeChain34_jnt_parentConstraint1.tg[0].trp";
connectAttr "C_snake33_LOC.rpt" "C_snakeChain34_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "C_snake33_LOC.r" "C_snakeChain34_jnt_parentConstraint1.tg[0].tr";
connectAttr "C_snake33_LOC.ro" "C_snakeChain34_jnt_parentConstraint1.tg[0].tro";
connectAttr "C_snake33_LOC.s" "C_snakeChain34_jnt_parentConstraint1.tg[0].ts";
connectAttr "C_snake33_LOC.pm" "C_snakeChain34_jnt_parentConstraint1.tg[0].tpm";
connectAttr "C_snakeChain34_jnt_parentConstraint1.w0" "C_snakeChain34_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "C_snakeChain33_jnt.ro" "C_snakeChain33_jnt_parentConstraint1.cro";
connectAttr "C_snakeChain33_jnt.pim" "C_snakeChain33_jnt_parentConstraint1.cpim"
		;
connectAttr "C_snakeChain33_jnt.rp" "C_snakeChain33_jnt_parentConstraint1.crp";
connectAttr "C_snakeChain33_jnt.rpt" "C_snakeChain33_jnt_parentConstraint1.crt";
connectAttr "C_snakeChain33_jnt.jo" "C_snakeChain33_jnt_parentConstraint1.cjo";
connectAttr "C_snake32_LOC.t" "C_snakeChain33_jnt_parentConstraint1.tg[0].tt";
connectAttr "C_snake32_LOC.rp" "C_snakeChain33_jnt_parentConstraint1.tg[0].trp";
connectAttr "C_snake32_LOC.rpt" "C_snakeChain33_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "C_snake32_LOC.r" "C_snakeChain33_jnt_parentConstraint1.tg[0].tr";
connectAttr "C_snake32_LOC.ro" "C_snakeChain33_jnt_parentConstraint1.tg[0].tro";
connectAttr "C_snake32_LOC.s" "C_snakeChain33_jnt_parentConstraint1.tg[0].ts";
connectAttr "C_snake32_LOC.pm" "C_snakeChain33_jnt_parentConstraint1.tg[0].tpm";
connectAttr "C_snakeChain33_jnt_parentConstraint1.w0" "C_snakeChain33_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "C_snakeChain32_jnt.ro" "C_snakeChain32_jnt_parentConstraint1.cro";
connectAttr "C_snakeChain32_jnt.pim" "C_snakeChain32_jnt_parentConstraint1.cpim"
		;
connectAttr "C_snakeChain32_jnt.rp" "C_snakeChain32_jnt_parentConstraint1.crp";
connectAttr "C_snakeChain32_jnt.rpt" "C_snakeChain32_jnt_parentConstraint1.crt";
connectAttr "C_snakeChain32_jnt.jo" "C_snakeChain32_jnt_parentConstraint1.cjo";
connectAttr "C_snake31_LOC.t" "C_snakeChain32_jnt_parentConstraint1.tg[0].tt";
connectAttr "C_snake31_LOC.rp" "C_snakeChain32_jnt_parentConstraint1.tg[0].trp";
connectAttr "C_snake31_LOC.rpt" "C_snakeChain32_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "C_snake31_LOC.r" "C_snakeChain32_jnt_parentConstraint1.tg[0].tr";
connectAttr "C_snake31_LOC.ro" "C_snakeChain32_jnt_parentConstraint1.tg[0].tro";
connectAttr "C_snake31_LOC.s" "C_snakeChain32_jnt_parentConstraint1.tg[0].ts";
connectAttr "C_snake31_LOC.pm" "C_snakeChain32_jnt_parentConstraint1.tg[0].tpm";
connectAttr "C_snakeChain32_jnt_parentConstraint1.w0" "C_snakeChain32_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "C_snakeChain31_jnt.ro" "C_snakeChain31_jnt_parentConstraint1.cro";
connectAttr "C_snakeChain31_jnt.pim" "C_snakeChain31_jnt_parentConstraint1.cpim"
		;
connectAttr "C_snakeChain31_jnt.rp" "C_snakeChain31_jnt_parentConstraint1.crp";
connectAttr "C_snakeChain31_jnt.rpt" "C_snakeChain31_jnt_parentConstraint1.crt";
connectAttr "C_snakeChain31_jnt.jo" "C_snakeChain31_jnt_parentConstraint1.cjo";
connectAttr "C_snake30_LOC.t" "C_snakeChain31_jnt_parentConstraint1.tg[0].tt";
connectAttr "C_snake30_LOC.rp" "C_snakeChain31_jnt_parentConstraint1.tg[0].trp";
connectAttr "C_snake30_LOC.rpt" "C_snakeChain31_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "C_snake30_LOC.r" "C_snakeChain31_jnt_parentConstraint1.tg[0].tr";
connectAttr "C_snake30_LOC.ro" "C_snakeChain31_jnt_parentConstraint1.tg[0].tro";
connectAttr "C_snake30_LOC.s" "C_snakeChain31_jnt_parentConstraint1.tg[0].ts";
connectAttr "C_snake30_LOC.pm" "C_snakeChain31_jnt_parentConstraint1.tg[0].tpm";
connectAttr "C_snakeChain31_jnt_parentConstraint1.w0" "C_snakeChain31_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "C_snakeChain30_jnt.ro" "C_snakeChain30_jnt_parentConstraint1.cro";
connectAttr "C_snakeChain30_jnt.pim" "C_snakeChain30_jnt_parentConstraint1.cpim"
		;
connectAttr "C_snakeChain30_jnt.rp" "C_snakeChain30_jnt_parentConstraint1.crp";
connectAttr "C_snakeChain30_jnt.rpt" "C_snakeChain30_jnt_parentConstraint1.crt";
connectAttr "C_snakeChain30_jnt.jo" "C_snakeChain30_jnt_parentConstraint1.cjo";
connectAttr "C_snake29_LOC.t" "C_snakeChain30_jnt_parentConstraint1.tg[0].tt";
connectAttr "C_snake29_LOC.rp" "C_snakeChain30_jnt_parentConstraint1.tg[0].trp";
connectAttr "C_snake29_LOC.rpt" "C_snakeChain30_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "C_snake29_LOC.r" "C_snakeChain30_jnt_parentConstraint1.tg[0].tr";
connectAttr "C_snake29_LOC.ro" "C_snakeChain30_jnt_parentConstraint1.tg[0].tro";
connectAttr "C_snake29_LOC.s" "C_snakeChain30_jnt_parentConstraint1.tg[0].ts";
connectAttr "C_snake29_LOC.pm" "C_snakeChain30_jnt_parentConstraint1.tg[0].tpm";
connectAttr "C_snakeChain30_jnt_parentConstraint1.w0" "C_snakeChain30_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "C_snakeChain29_jnt.ro" "C_snakeChain29_jnt_parentConstraint1.cro";
connectAttr "C_snakeChain29_jnt.pim" "C_snakeChain29_jnt_parentConstraint1.cpim"
		;
connectAttr "C_snakeChain29_jnt.rp" "C_snakeChain29_jnt_parentConstraint1.crp";
connectAttr "C_snakeChain29_jnt.rpt" "C_snakeChain29_jnt_parentConstraint1.crt";
connectAttr "C_snakeChain29_jnt.jo" "C_snakeChain29_jnt_parentConstraint1.cjo";
connectAttr "C_snake28_LOC.t" "C_snakeChain29_jnt_parentConstraint1.tg[0].tt";
connectAttr "C_snake28_LOC.rp" "C_snakeChain29_jnt_parentConstraint1.tg[0].trp";
connectAttr "C_snake28_LOC.rpt" "C_snakeChain29_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "C_snake28_LOC.r" "C_snakeChain29_jnt_parentConstraint1.tg[0].tr";
connectAttr "C_snake28_LOC.ro" "C_snakeChain29_jnt_parentConstraint1.tg[0].tro";
connectAttr "C_snake28_LOC.s" "C_snakeChain29_jnt_parentConstraint1.tg[0].ts";
connectAttr "C_snake28_LOC.pm" "C_snakeChain29_jnt_parentConstraint1.tg[0].tpm";
connectAttr "C_snakeChain29_jnt_parentConstraint1.w0" "C_snakeChain29_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "C_snakeChain28_jnt.ro" "C_snakeChain28_jnt_parentConstraint1.cro";
connectAttr "C_snakeChain28_jnt.pim" "C_snakeChain28_jnt_parentConstraint1.cpim"
		;
connectAttr "C_snakeChain28_jnt.rp" "C_snakeChain28_jnt_parentConstraint1.crp";
connectAttr "C_snakeChain28_jnt.rpt" "C_snakeChain28_jnt_parentConstraint1.crt";
connectAttr "C_snakeChain28_jnt.jo" "C_snakeChain28_jnt_parentConstraint1.cjo";
connectAttr "C_snake27_LOC.t" "C_snakeChain28_jnt_parentConstraint1.tg[0].tt";
connectAttr "C_snake27_LOC.rp" "C_snakeChain28_jnt_parentConstraint1.tg[0].trp";
connectAttr "C_snake27_LOC.rpt" "C_snakeChain28_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "C_snake27_LOC.r" "C_snakeChain28_jnt_parentConstraint1.tg[0].tr";
connectAttr "C_snake27_LOC.ro" "C_snakeChain28_jnt_parentConstraint1.tg[0].tro";
connectAttr "C_snake27_LOC.s" "C_snakeChain28_jnt_parentConstraint1.tg[0].ts";
connectAttr "C_snake27_LOC.pm" "C_snakeChain28_jnt_parentConstraint1.tg[0].tpm";
connectAttr "C_snakeChain28_jnt_parentConstraint1.w0" "C_snakeChain28_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "C_snakeChain27_jnt.ro" "C_snakeChain27_jnt_parentConstraint1.cro";
connectAttr "C_snakeChain27_jnt.pim" "C_snakeChain27_jnt_parentConstraint1.cpim"
		;
connectAttr "C_snakeChain27_jnt.rp" "C_snakeChain27_jnt_parentConstraint1.crp";
connectAttr "C_snakeChain27_jnt.rpt" "C_snakeChain27_jnt_parentConstraint1.crt";
connectAttr "C_snakeChain27_jnt.jo" "C_snakeChain27_jnt_parentConstraint1.cjo";
connectAttr "C_snake26_LOC.t" "C_snakeChain27_jnt_parentConstraint1.tg[0].tt";
connectAttr "C_snake26_LOC.rp" "C_snakeChain27_jnt_parentConstraint1.tg[0].trp";
connectAttr "C_snake26_LOC.rpt" "C_snakeChain27_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "C_snake26_LOC.r" "C_snakeChain27_jnt_parentConstraint1.tg[0].tr";
connectAttr "C_snake26_LOC.ro" "C_snakeChain27_jnt_parentConstraint1.tg[0].tro";
connectAttr "C_snake26_LOC.s" "C_snakeChain27_jnt_parentConstraint1.tg[0].ts";
connectAttr "C_snake26_LOC.pm" "C_snakeChain27_jnt_parentConstraint1.tg[0].tpm";
connectAttr "C_snakeChain27_jnt_parentConstraint1.w0" "C_snakeChain27_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "C_snakeChain26_jnt.ro" "C_snakeChain26_jnt_parentConstraint1.cro";
connectAttr "C_snakeChain26_jnt.pim" "C_snakeChain26_jnt_parentConstraint1.cpim"
		;
connectAttr "C_snakeChain26_jnt.rp" "C_snakeChain26_jnt_parentConstraint1.crp";
connectAttr "C_snakeChain26_jnt.rpt" "C_snakeChain26_jnt_parentConstraint1.crt";
connectAttr "C_snakeChain26_jnt.jo" "C_snakeChain26_jnt_parentConstraint1.cjo";
connectAttr "C_snake25_LOC.t" "C_snakeChain26_jnt_parentConstraint1.tg[0].tt";
connectAttr "C_snake25_LOC.rp" "C_snakeChain26_jnt_parentConstraint1.tg[0].trp";
connectAttr "C_snake25_LOC.rpt" "C_snakeChain26_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "C_snake25_LOC.r" "C_snakeChain26_jnt_parentConstraint1.tg[0].tr";
connectAttr "C_snake25_LOC.ro" "C_snakeChain26_jnt_parentConstraint1.tg[0].tro";
connectAttr "C_snake25_LOC.s" "C_snakeChain26_jnt_parentConstraint1.tg[0].ts";
connectAttr "C_snake25_LOC.pm" "C_snakeChain26_jnt_parentConstraint1.tg[0].tpm";
connectAttr "C_snakeChain26_jnt_parentConstraint1.w0" "C_snakeChain26_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "C_snakeChain25_jnt.ro" "C_snakeChain25_jnt_parentConstraint1.cro";
connectAttr "C_snakeChain25_jnt.pim" "C_snakeChain25_jnt_parentConstraint1.cpim"
		;
connectAttr "C_snakeChain25_jnt.rp" "C_snakeChain25_jnt_parentConstraint1.crp";
connectAttr "C_snakeChain25_jnt.rpt" "C_snakeChain25_jnt_parentConstraint1.crt";
connectAttr "C_snakeChain25_jnt.jo" "C_snakeChain25_jnt_parentConstraint1.cjo";
connectAttr "C_snake24_LOC.t" "C_snakeChain25_jnt_parentConstraint1.tg[0].tt";
connectAttr "C_snake24_LOC.rp" "C_snakeChain25_jnt_parentConstraint1.tg[0].trp";
connectAttr "C_snake24_LOC.rpt" "C_snakeChain25_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "C_snake24_LOC.r" "C_snakeChain25_jnt_parentConstraint1.tg[0].tr";
connectAttr "C_snake24_LOC.ro" "C_snakeChain25_jnt_parentConstraint1.tg[0].tro";
connectAttr "C_snake24_LOC.s" "C_snakeChain25_jnt_parentConstraint1.tg[0].ts";
connectAttr "C_snake24_LOC.pm" "C_snakeChain25_jnt_parentConstraint1.tg[0].tpm";
connectAttr "C_snakeChain25_jnt_parentConstraint1.w0" "C_snakeChain25_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "C_snakeChain24_jnt.ro" "C_snakeChain24_jnt_parentConstraint1.cro";
connectAttr "C_snakeChain24_jnt.pim" "C_snakeChain24_jnt_parentConstraint1.cpim"
		;
connectAttr "C_snakeChain24_jnt.rp" "C_snakeChain24_jnt_parentConstraint1.crp";
connectAttr "C_snakeChain24_jnt.rpt" "C_snakeChain24_jnt_parentConstraint1.crt";
connectAttr "C_snakeChain24_jnt.jo" "C_snakeChain24_jnt_parentConstraint1.cjo";
connectAttr "C_snake23_LOC.t" "C_snakeChain24_jnt_parentConstraint1.tg[0].tt";
connectAttr "C_snake23_LOC.rp" "C_snakeChain24_jnt_parentConstraint1.tg[0].trp";
connectAttr "C_snake23_LOC.rpt" "C_snakeChain24_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "C_snake23_LOC.r" "C_snakeChain24_jnt_parentConstraint1.tg[0].tr";
connectAttr "C_snake23_LOC.ro" "C_snakeChain24_jnt_parentConstraint1.tg[0].tro";
connectAttr "C_snake23_LOC.s" "C_snakeChain24_jnt_parentConstraint1.tg[0].ts";
connectAttr "C_snake23_LOC.pm" "C_snakeChain24_jnt_parentConstraint1.tg[0].tpm";
connectAttr "C_snakeChain24_jnt_parentConstraint1.w0" "C_snakeChain24_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "C_snakeChain23_jnt.ro" "C_snakeChain23_jnt_parentConstraint1.cro";
connectAttr "C_snakeChain23_jnt.pim" "C_snakeChain23_jnt_parentConstraint1.cpim"
		;
connectAttr "C_snakeChain23_jnt.rp" "C_snakeChain23_jnt_parentConstraint1.crp";
connectAttr "C_snakeChain23_jnt.rpt" "C_snakeChain23_jnt_parentConstraint1.crt";
connectAttr "C_snakeChain23_jnt.jo" "C_snakeChain23_jnt_parentConstraint1.cjo";
connectAttr "C_snake22_LOC.t" "C_snakeChain23_jnt_parentConstraint1.tg[0].tt";
connectAttr "C_snake22_LOC.rp" "C_snakeChain23_jnt_parentConstraint1.tg[0].trp";
connectAttr "C_snake22_LOC.rpt" "C_snakeChain23_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "C_snake22_LOC.r" "C_snakeChain23_jnt_parentConstraint1.tg[0].tr";
connectAttr "C_snake22_LOC.ro" "C_snakeChain23_jnt_parentConstraint1.tg[0].tro";
connectAttr "C_snake22_LOC.s" "C_snakeChain23_jnt_parentConstraint1.tg[0].ts";
connectAttr "C_snake22_LOC.pm" "C_snakeChain23_jnt_parentConstraint1.tg[0].tpm";
connectAttr "C_snakeChain23_jnt_parentConstraint1.w0" "C_snakeChain23_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "C_snakeChain22_jnt.ro" "C_snakeChain22_jnt_parentConstraint1.cro";
connectAttr "C_snakeChain22_jnt.pim" "C_snakeChain22_jnt_parentConstraint1.cpim"
		;
connectAttr "C_snakeChain22_jnt.rp" "C_snakeChain22_jnt_parentConstraint1.crp";
connectAttr "C_snakeChain22_jnt.rpt" "C_snakeChain22_jnt_parentConstraint1.crt";
connectAttr "C_snakeChain22_jnt.jo" "C_snakeChain22_jnt_parentConstraint1.cjo";
connectAttr "C_snake21_LOC.t" "C_snakeChain22_jnt_parentConstraint1.tg[0].tt";
connectAttr "C_snake21_LOC.rp" "C_snakeChain22_jnt_parentConstraint1.tg[0].trp";
connectAttr "C_snake21_LOC.rpt" "C_snakeChain22_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "C_snake21_LOC.r" "C_snakeChain22_jnt_parentConstraint1.tg[0].tr";
connectAttr "C_snake21_LOC.ro" "C_snakeChain22_jnt_parentConstraint1.tg[0].tro";
connectAttr "C_snake21_LOC.s" "C_snakeChain22_jnt_parentConstraint1.tg[0].ts";
connectAttr "C_snake21_LOC.pm" "C_snakeChain22_jnt_parentConstraint1.tg[0].tpm";
connectAttr "C_snakeChain22_jnt_parentConstraint1.w0" "C_snakeChain22_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "C_snakeChain21_jnt.ro" "C_snakeChain21_jnt_parentConstraint1.cro";
connectAttr "C_snakeChain21_jnt.pim" "C_snakeChain21_jnt_parentConstraint1.cpim"
		;
connectAttr "C_snakeChain21_jnt.rp" "C_snakeChain21_jnt_parentConstraint1.crp";
connectAttr "C_snakeChain21_jnt.rpt" "C_snakeChain21_jnt_parentConstraint1.crt";
connectAttr "C_snakeChain21_jnt.jo" "C_snakeChain21_jnt_parentConstraint1.cjo";
connectAttr "C_snake20_LOC.t" "C_snakeChain21_jnt_parentConstraint1.tg[0].tt";
connectAttr "C_snake20_LOC.rp" "C_snakeChain21_jnt_parentConstraint1.tg[0].trp";
connectAttr "C_snake20_LOC.rpt" "C_snakeChain21_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "C_snake20_LOC.r" "C_snakeChain21_jnt_parentConstraint1.tg[0].tr";
connectAttr "C_snake20_LOC.ro" "C_snakeChain21_jnt_parentConstraint1.tg[0].tro";
connectAttr "C_snake20_LOC.s" "C_snakeChain21_jnt_parentConstraint1.tg[0].ts";
connectAttr "C_snake20_LOC.pm" "C_snakeChain21_jnt_parentConstraint1.tg[0].tpm";
connectAttr "C_snakeChain21_jnt_parentConstraint1.w0" "C_snakeChain21_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "C_snakeChain20_jnt.ro" "C_snakeChain20_jnt_parentConstraint1.cro";
connectAttr "C_snakeChain20_jnt.pim" "C_snakeChain20_jnt_parentConstraint1.cpim"
		;
connectAttr "C_snakeChain20_jnt.rp" "C_snakeChain20_jnt_parentConstraint1.crp";
connectAttr "C_snakeChain20_jnt.rpt" "C_snakeChain20_jnt_parentConstraint1.crt";
connectAttr "C_snakeChain20_jnt.jo" "C_snakeChain20_jnt_parentConstraint1.cjo";
connectAttr "C_snake19_LOC.t" "C_snakeChain20_jnt_parentConstraint1.tg[0].tt";
connectAttr "C_snake19_LOC.rp" "C_snakeChain20_jnt_parentConstraint1.tg[0].trp";
connectAttr "C_snake19_LOC.rpt" "C_snakeChain20_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "C_snake19_LOC.r" "C_snakeChain20_jnt_parentConstraint1.tg[0].tr";
connectAttr "C_snake19_LOC.ro" "C_snakeChain20_jnt_parentConstraint1.tg[0].tro";
connectAttr "C_snake19_LOC.s" "C_snakeChain20_jnt_parentConstraint1.tg[0].ts";
connectAttr "C_snake19_LOC.pm" "C_snakeChain20_jnt_parentConstraint1.tg[0].tpm";
connectAttr "C_snakeChain20_jnt_parentConstraint1.w0" "C_snakeChain20_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "C_snakeChain19_jnt.ro" "C_snakeChain19_jnt_parentConstraint1.cro";
connectAttr "C_snakeChain19_jnt.pim" "C_snakeChain19_jnt_parentConstraint1.cpim"
		;
connectAttr "C_snakeChain19_jnt.rp" "C_snakeChain19_jnt_parentConstraint1.crp";
connectAttr "C_snakeChain19_jnt.rpt" "C_snakeChain19_jnt_parentConstraint1.crt";
connectAttr "C_snakeChain19_jnt.jo" "C_snakeChain19_jnt_parentConstraint1.cjo";
connectAttr "C_snake18_LOC.t" "C_snakeChain19_jnt_parentConstraint1.tg[0].tt";
connectAttr "C_snake18_LOC.rp" "C_snakeChain19_jnt_parentConstraint1.tg[0].trp";
connectAttr "C_snake18_LOC.rpt" "C_snakeChain19_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "C_snake18_LOC.r" "C_snakeChain19_jnt_parentConstraint1.tg[0].tr";
connectAttr "C_snake18_LOC.ro" "C_snakeChain19_jnt_parentConstraint1.tg[0].tro";
connectAttr "C_snake18_LOC.s" "C_snakeChain19_jnt_parentConstraint1.tg[0].ts";
connectAttr "C_snake18_LOC.pm" "C_snakeChain19_jnt_parentConstraint1.tg[0].tpm";
connectAttr "C_snakeChain19_jnt_parentConstraint1.w0" "C_snakeChain19_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "C_snakeChain18_jnt.ro" "C_snakeChain18_jnt_parentConstraint1.cro";
connectAttr "C_snakeChain18_jnt.pim" "C_snakeChain18_jnt_parentConstraint1.cpim"
		;
connectAttr "C_snakeChain18_jnt.rp" "C_snakeChain18_jnt_parentConstraint1.crp";
connectAttr "C_snakeChain18_jnt.rpt" "C_snakeChain18_jnt_parentConstraint1.crt";
connectAttr "C_snakeChain18_jnt.jo" "C_snakeChain18_jnt_parentConstraint1.cjo";
connectAttr "C_snake17_LOC.t" "C_snakeChain18_jnt_parentConstraint1.tg[0].tt";
connectAttr "C_snake17_LOC.rp" "C_snakeChain18_jnt_parentConstraint1.tg[0].trp";
connectAttr "C_snake17_LOC.rpt" "C_snakeChain18_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "C_snake17_LOC.r" "C_snakeChain18_jnt_parentConstraint1.tg[0].tr";
connectAttr "C_snake17_LOC.ro" "C_snakeChain18_jnt_parentConstraint1.tg[0].tro";
connectAttr "C_snake17_LOC.s" "C_snakeChain18_jnt_parentConstraint1.tg[0].ts";
connectAttr "C_snake17_LOC.pm" "C_snakeChain18_jnt_parentConstraint1.tg[0].tpm";
connectAttr "C_snakeChain18_jnt_parentConstraint1.w0" "C_snakeChain18_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "C_snakeChain17_jnt.ro" "C_snakeChain17_jnt_parentConstraint1.cro";
connectAttr "C_snakeChain17_jnt.pim" "C_snakeChain17_jnt_parentConstraint1.cpim"
		;
connectAttr "C_snakeChain17_jnt.rp" "C_snakeChain17_jnt_parentConstraint1.crp";
connectAttr "C_snakeChain17_jnt.rpt" "C_snakeChain17_jnt_parentConstraint1.crt";
connectAttr "C_snakeChain17_jnt.jo" "C_snakeChain17_jnt_parentConstraint1.cjo";
connectAttr "C_snake16_LOC.t" "C_snakeChain17_jnt_parentConstraint1.tg[0].tt";
connectAttr "C_snake16_LOC.rp" "C_snakeChain17_jnt_parentConstraint1.tg[0].trp";
connectAttr "C_snake16_LOC.rpt" "C_snakeChain17_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "C_snake16_LOC.r" "C_snakeChain17_jnt_parentConstraint1.tg[0].tr";
connectAttr "C_snake16_LOC.ro" "C_snakeChain17_jnt_parentConstraint1.tg[0].tro";
connectAttr "C_snake16_LOC.s" "C_snakeChain17_jnt_parentConstraint1.tg[0].ts";
connectAttr "C_snake16_LOC.pm" "C_snakeChain17_jnt_parentConstraint1.tg[0].tpm";
connectAttr "C_snakeChain17_jnt_parentConstraint1.w0" "C_snakeChain17_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "C_snakeChain16_jnt.ro" "C_snakeChain16_jnt_parentConstraint1.cro";
connectAttr "C_snakeChain16_jnt.pim" "C_snakeChain16_jnt_parentConstraint1.cpim"
		;
connectAttr "C_snakeChain16_jnt.rp" "C_snakeChain16_jnt_parentConstraint1.crp";
connectAttr "C_snakeChain16_jnt.rpt" "C_snakeChain16_jnt_parentConstraint1.crt";
connectAttr "C_snakeChain16_jnt.jo" "C_snakeChain16_jnt_parentConstraint1.cjo";
connectAttr "C_snake15_LOC.t" "C_snakeChain16_jnt_parentConstraint1.tg[0].tt";
connectAttr "C_snake15_LOC.rp" "C_snakeChain16_jnt_parentConstraint1.tg[0].trp";
connectAttr "C_snake15_LOC.rpt" "C_snakeChain16_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "C_snake15_LOC.r" "C_snakeChain16_jnt_parentConstraint1.tg[0].tr";
connectAttr "C_snake15_LOC.ro" "C_snakeChain16_jnt_parentConstraint1.tg[0].tro";
connectAttr "C_snake15_LOC.s" "C_snakeChain16_jnt_parentConstraint1.tg[0].ts";
connectAttr "C_snake15_LOC.pm" "C_snakeChain16_jnt_parentConstraint1.tg[0].tpm";
connectAttr "C_snakeChain16_jnt_parentConstraint1.w0" "C_snakeChain16_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "C_snakeChain15_jnt.ro" "C_snakeChain15_jnt_parentConstraint1.cro";
connectAttr "C_snakeChain15_jnt.pim" "C_snakeChain15_jnt_parentConstraint1.cpim"
		;
connectAttr "C_snakeChain15_jnt.rp" "C_snakeChain15_jnt_parentConstraint1.crp";
connectAttr "C_snakeChain15_jnt.rpt" "C_snakeChain15_jnt_parentConstraint1.crt";
connectAttr "C_snakeChain15_jnt.jo" "C_snakeChain15_jnt_parentConstraint1.cjo";
connectAttr "C_snake14_LOC.t" "C_snakeChain15_jnt_parentConstraint1.tg[0].tt";
connectAttr "C_snake14_LOC.rp" "C_snakeChain15_jnt_parentConstraint1.tg[0].trp";
connectAttr "C_snake14_LOC.rpt" "C_snakeChain15_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "C_snake14_LOC.r" "C_snakeChain15_jnt_parentConstraint1.tg[0].tr";
connectAttr "C_snake14_LOC.ro" "C_snakeChain15_jnt_parentConstraint1.tg[0].tro";
connectAttr "C_snake14_LOC.s" "C_snakeChain15_jnt_parentConstraint1.tg[0].ts";
connectAttr "C_snake14_LOC.pm" "C_snakeChain15_jnt_parentConstraint1.tg[0].tpm";
connectAttr "C_snakeChain15_jnt_parentConstraint1.w0" "C_snakeChain15_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "C_snakeChain14_jnt.ro" "C_snakeChain14_jnt_parentConstraint1.cro";
connectAttr "C_snakeChain14_jnt.pim" "C_snakeChain14_jnt_parentConstraint1.cpim"
		;
connectAttr "C_snakeChain14_jnt.rp" "C_snakeChain14_jnt_parentConstraint1.crp";
connectAttr "C_snakeChain14_jnt.rpt" "C_snakeChain14_jnt_parentConstraint1.crt";
connectAttr "C_snakeChain14_jnt.jo" "C_snakeChain14_jnt_parentConstraint1.cjo";
connectAttr "C_snake13_LOC.t" "C_snakeChain14_jnt_parentConstraint1.tg[0].tt";
connectAttr "C_snake13_LOC.rp" "C_snakeChain14_jnt_parentConstraint1.tg[0].trp";
connectAttr "C_snake13_LOC.rpt" "C_snakeChain14_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "C_snake13_LOC.r" "C_snakeChain14_jnt_parentConstraint1.tg[0].tr";
connectAttr "C_snake13_LOC.ro" "C_snakeChain14_jnt_parentConstraint1.tg[0].tro";
connectAttr "C_snake13_LOC.s" "C_snakeChain14_jnt_parentConstraint1.tg[0].ts";
connectAttr "C_snake13_LOC.pm" "C_snakeChain14_jnt_parentConstraint1.tg[0].tpm";
connectAttr "C_snakeChain14_jnt_parentConstraint1.w0" "C_snakeChain14_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "C_snakeChain13_jnt.ro" "C_snakeChain13_jnt_parentConstraint1.cro";
connectAttr "C_snakeChain13_jnt.pim" "C_snakeChain13_jnt_parentConstraint1.cpim"
		;
connectAttr "C_snakeChain13_jnt.rp" "C_snakeChain13_jnt_parentConstraint1.crp";
connectAttr "C_snakeChain13_jnt.rpt" "C_snakeChain13_jnt_parentConstraint1.crt";
connectAttr "C_snakeChain13_jnt.jo" "C_snakeChain13_jnt_parentConstraint1.cjo";
connectAttr "C_snake12_LOC.t" "C_snakeChain13_jnt_parentConstraint1.tg[0].tt";
connectAttr "C_snake12_LOC.rp" "C_snakeChain13_jnt_parentConstraint1.tg[0].trp";
connectAttr "C_snake12_LOC.rpt" "C_snakeChain13_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "C_snake12_LOC.r" "C_snakeChain13_jnt_parentConstraint1.tg[0].tr";
connectAttr "C_snake12_LOC.ro" "C_snakeChain13_jnt_parentConstraint1.tg[0].tro";
connectAttr "C_snake12_LOC.s" "C_snakeChain13_jnt_parentConstraint1.tg[0].ts";
connectAttr "C_snake12_LOC.pm" "C_snakeChain13_jnt_parentConstraint1.tg[0].tpm";
connectAttr "C_snakeChain13_jnt_parentConstraint1.w0" "C_snakeChain13_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "C_snakeChain12_jnt.ro" "C_snakeChain12_jnt_parentConstraint1.cro";
connectAttr "C_snakeChain12_jnt.pim" "C_snakeChain12_jnt_parentConstraint1.cpim"
		;
connectAttr "C_snakeChain12_jnt.rp" "C_snakeChain12_jnt_parentConstraint1.crp";
connectAttr "C_snakeChain12_jnt.rpt" "C_snakeChain12_jnt_parentConstraint1.crt";
connectAttr "C_snakeChain12_jnt.jo" "C_snakeChain12_jnt_parentConstraint1.cjo";
connectAttr "C_snake11_LOC.t" "C_snakeChain12_jnt_parentConstraint1.tg[0].tt";
connectAttr "C_snake11_LOC.rp" "C_snakeChain12_jnt_parentConstraint1.tg[0].trp";
connectAttr "C_snake11_LOC.rpt" "C_snakeChain12_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "C_snake11_LOC.r" "C_snakeChain12_jnt_parentConstraint1.tg[0].tr";
connectAttr "C_snake11_LOC.ro" "C_snakeChain12_jnt_parentConstraint1.tg[0].tro";
connectAttr "C_snake11_LOC.s" "C_snakeChain12_jnt_parentConstraint1.tg[0].ts";
connectAttr "C_snake11_LOC.pm" "C_snakeChain12_jnt_parentConstraint1.tg[0].tpm";
connectAttr "C_snakeChain12_jnt_parentConstraint1.w0" "C_snakeChain12_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "C_snakeChain11_jnt.ro" "C_snakeChain11_jnt_parentConstraint1.cro";
connectAttr "C_snakeChain11_jnt.pim" "C_snakeChain11_jnt_parentConstraint1.cpim"
		;
connectAttr "C_snakeChain11_jnt.rp" "C_snakeChain11_jnt_parentConstraint1.crp";
connectAttr "C_snakeChain11_jnt.rpt" "C_snakeChain11_jnt_parentConstraint1.crt";
connectAttr "C_snakeChain11_jnt.jo" "C_snakeChain11_jnt_parentConstraint1.cjo";
connectAttr "C_snake10_LOC.t" "C_snakeChain11_jnt_parentConstraint1.tg[0].tt";
connectAttr "C_snake10_LOC.rp" "C_snakeChain11_jnt_parentConstraint1.tg[0].trp";
connectAttr "C_snake10_LOC.rpt" "C_snakeChain11_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "C_snake10_LOC.r" "C_snakeChain11_jnt_parentConstraint1.tg[0].tr";
connectAttr "C_snake10_LOC.ro" "C_snakeChain11_jnt_parentConstraint1.tg[0].tro";
connectAttr "C_snake10_LOC.s" "C_snakeChain11_jnt_parentConstraint1.tg[0].ts";
connectAttr "C_snake10_LOC.pm" "C_snakeChain11_jnt_parentConstraint1.tg[0].tpm";
connectAttr "C_snakeChain11_jnt_parentConstraint1.w0" "C_snakeChain11_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "C_snakeChain10_jnt.ro" "C_snakeChain10_jnt_parentConstraint1.cro";
connectAttr "C_snakeChain10_jnt.pim" "C_snakeChain10_jnt_parentConstraint1.cpim"
		;
connectAttr "C_snakeChain10_jnt.rp" "C_snakeChain10_jnt_parentConstraint1.crp";
connectAttr "C_snakeChain10_jnt.rpt" "C_snakeChain10_jnt_parentConstraint1.crt";
connectAttr "C_snakeChain10_jnt.jo" "C_snakeChain10_jnt_parentConstraint1.cjo";
connectAttr "C_snake9_LOC.t" "C_snakeChain10_jnt_parentConstraint1.tg[0].tt";
connectAttr "C_snake9_LOC.rp" "C_snakeChain10_jnt_parentConstraint1.tg[0].trp";
connectAttr "C_snake9_LOC.rpt" "C_snakeChain10_jnt_parentConstraint1.tg[0].trt";
connectAttr "C_snake9_LOC.r" "C_snakeChain10_jnt_parentConstraint1.tg[0].tr";
connectAttr "C_snake9_LOC.ro" "C_snakeChain10_jnt_parentConstraint1.tg[0].tro";
connectAttr "C_snake9_LOC.s" "C_snakeChain10_jnt_parentConstraint1.tg[0].ts";
connectAttr "C_snake9_LOC.pm" "C_snakeChain10_jnt_parentConstraint1.tg[0].tpm";
connectAttr "C_snakeChain10_jnt_parentConstraint1.w0" "C_snakeChain10_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "C_snakeChain9_jnt.ro" "C_snakeChain9_jnt_parentConstraint1.cro";
connectAttr "C_snakeChain9_jnt.pim" "C_snakeChain9_jnt_parentConstraint1.cpim";
connectAttr "C_snakeChain9_jnt.rp" "C_snakeChain9_jnt_parentConstraint1.crp";
connectAttr "C_snakeChain9_jnt.rpt" "C_snakeChain9_jnt_parentConstraint1.crt";
connectAttr "C_snakeChain9_jnt.jo" "C_snakeChain9_jnt_parentConstraint1.cjo";
connectAttr "C_snake8_LOC.t" "C_snakeChain9_jnt_parentConstraint1.tg[0].tt";
connectAttr "C_snake8_LOC.rp" "C_snakeChain9_jnt_parentConstraint1.tg[0].trp";
connectAttr "C_snake8_LOC.rpt" "C_snakeChain9_jnt_parentConstraint1.tg[0].trt";
connectAttr "C_snake8_LOC.r" "C_snakeChain9_jnt_parentConstraint1.tg[0].tr";
connectAttr "C_snake8_LOC.ro" "C_snakeChain9_jnt_parentConstraint1.tg[0].tro";
connectAttr "C_snake8_LOC.s" "C_snakeChain9_jnt_parentConstraint1.tg[0].ts";
connectAttr "C_snake8_LOC.pm" "C_snakeChain9_jnt_parentConstraint1.tg[0].tpm";
connectAttr "C_snakeChain9_jnt_parentConstraint1.w0" "C_snakeChain9_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "C_snakeChain8_jnt.ro" "C_snakeChain8_jnt_parentConstraint1.cro";
connectAttr "C_snakeChain8_jnt.pim" "C_snakeChain8_jnt_parentConstraint1.cpim";
connectAttr "C_snakeChain8_jnt.rp" "C_snakeChain8_jnt_parentConstraint1.crp";
connectAttr "C_snakeChain8_jnt.rpt" "C_snakeChain8_jnt_parentConstraint1.crt";
connectAttr "C_snakeChain8_jnt.jo" "C_snakeChain8_jnt_parentConstraint1.cjo";
connectAttr "C_snake7_LOC.t" "C_snakeChain8_jnt_parentConstraint1.tg[0].tt";
connectAttr "C_snake7_LOC.rp" "C_snakeChain8_jnt_parentConstraint1.tg[0].trp";
connectAttr "C_snake7_LOC.rpt" "C_snakeChain8_jnt_parentConstraint1.tg[0].trt";
connectAttr "C_snake7_LOC.r" "C_snakeChain8_jnt_parentConstraint1.tg[0].tr";
connectAttr "C_snake7_LOC.ro" "C_snakeChain8_jnt_parentConstraint1.tg[0].tro";
connectAttr "C_snake7_LOC.s" "C_snakeChain8_jnt_parentConstraint1.tg[0].ts";
connectAttr "C_snake7_LOC.pm" "C_snakeChain8_jnt_parentConstraint1.tg[0].tpm";
connectAttr "C_snakeChain8_jnt_parentConstraint1.w0" "C_snakeChain8_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "C_snakeChain7_jnt.ro" "C_snakeChain7_jnt_parentConstraint1.cro";
connectAttr "C_snakeChain7_jnt.pim" "C_snakeChain7_jnt_parentConstraint1.cpim";
connectAttr "C_snakeChain7_jnt.rp" "C_snakeChain7_jnt_parentConstraint1.crp";
connectAttr "C_snakeChain7_jnt.rpt" "C_snakeChain7_jnt_parentConstraint1.crt";
connectAttr "C_snakeChain7_jnt.jo" "C_snakeChain7_jnt_parentConstraint1.cjo";
connectAttr "C_snake6_LOC.t" "C_snakeChain7_jnt_parentConstraint1.tg[0].tt";
connectAttr "C_snake6_LOC.rp" "C_snakeChain7_jnt_parentConstraint1.tg[0].trp";
connectAttr "C_snake6_LOC.rpt" "C_snakeChain7_jnt_parentConstraint1.tg[0].trt";
connectAttr "C_snake6_LOC.r" "C_snakeChain7_jnt_parentConstraint1.tg[0].tr";
connectAttr "C_snake6_LOC.ro" "C_snakeChain7_jnt_parentConstraint1.tg[0].tro";
connectAttr "C_snake6_LOC.s" "C_snakeChain7_jnt_parentConstraint1.tg[0].ts";
connectAttr "C_snake6_LOC.pm" "C_snakeChain7_jnt_parentConstraint1.tg[0].tpm";
connectAttr "C_snakeChain7_jnt_parentConstraint1.w0" "C_snakeChain7_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "C_snakeChain6_jnt.ro" "C_snakeChain6_jnt_parentConstraint1.cro";
connectAttr "C_snakeChain6_jnt.pim" "C_snakeChain6_jnt_parentConstraint1.cpim";
connectAttr "C_snakeChain6_jnt.rp" "C_snakeChain6_jnt_parentConstraint1.crp";
connectAttr "C_snakeChain6_jnt.rpt" "C_snakeChain6_jnt_parentConstraint1.crt";
connectAttr "C_snakeChain6_jnt.jo" "C_snakeChain6_jnt_parentConstraint1.cjo";
connectAttr "C_snake5_LOC.t" "C_snakeChain6_jnt_parentConstraint1.tg[0].tt";
connectAttr "C_snake5_LOC.rp" "C_snakeChain6_jnt_parentConstraint1.tg[0].trp";
connectAttr "C_snake5_LOC.rpt" "C_snakeChain6_jnt_parentConstraint1.tg[0].trt";
connectAttr "C_snake5_LOC.r" "C_snakeChain6_jnt_parentConstraint1.tg[0].tr";
connectAttr "C_snake5_LOC.ro" "C_snakeChain6_jnt_parentConstraint1.tg[0].tro";
connectAttr "C_snake5_LOC.s" "C_snakeChain6_jnt_parentConstraint1.tg[0].ts";
connectAttr "C_snake5_LOC.pm" "C_snakeChain6_jnt_parentConstraint1.tg[0].tpm";
connectAttr "C_snakeChain6_jnt_parentConstraint1.w0" "C_snakeChain6_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "C_snakeChain5_jnt.ro" "C_snakeChain5_jnt_parentConstraint1.cro";
connectAttr "C_snakeChain5_jnt.pim" "C_snakeChain5_jnt_parentConstraint1.cpim";
connectAttr "C_snakeChain5_jnt.rp" "C_snakeChain5_jnt_parentConstraint1.crp";
connectAttr "C_snakeChain5_jnt.rpt" "C_snakeChain5_jnt_parentConstraint1.crt";
connectAttr "C_snakeChain5_jnt.jo" "C_snakeChain5_jnt_parentConstraint1.cjo";
connectAttr "C_snake4_LOC.t" "C_snakeChain5_jnt_parentConstraint1.tg[0].tt";
connectAttr "C_snake4_LOC.rp" "C_snakeChain5_jnt_parentConstraint1.tg[0].trp";
connectAttr "C_snake4_LOC.rpt" "C_snakeChain5_jnt_parentConstraint1.tg[0].trt";
connectAttr "C_snake4_LOC.r" "C_snakeChain5_jnt_parentConstraint1.tg[0].tr";
connectAttr "C_snake4_LOC.ro" "C_snakeChain5_jnt_parentConstraint1.tg[0].tro";
connectAttr "C_snake4_LOC.s" "C_snakeChain5_jnt_parentConstraint1.tg[0].ts";
connectAttr "C_snake4_LOC.pm" "C_snakeChain5_jnt_parentConstraint1.tg[0].tpm";
connectAttr "C_snakeChain5_jnt_parentConstraint1.w0" "C_snakeChain5_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "C_snakeChain4_jnt.ro" "C_snakeChain4_jnt_parentConstraint1.cro";
connectAttr "C_snakeChain4_jnt.pim" "C_snakeChain4_jnt_parentConstraint1.cpim";
connectAttr "C_snakeChain4_jnt.rp" "C_snakeChain4_jnt_parentConstraint1.crp";
connectAttr "C_snakeChain4_jnt.rpt" "C_snakeChain4_jnt_parentConstraint1.crt";
connectAttr "C_snakeChain4_jnt.jo" "C_snakeChain4_jnt_parentConstraint1.cjo";
connectAttr "C_snake3_LOC.t" "C_snakeChain4_jnt_parentConstraint1.tg[0].tt";
connectAttr "C_snake3_LOC.rp" "C_snakeChain4_jnt_parentConstraint1.tg[0].trp";
connectAttr "C_snake3_LOC.rpt" "C_snakeChain4_jnt_parentConstraint1.tg[0].trt";
connectAttr "C_snake3_LOC.r" "C_snakeChain4_jnt_parentConstraint1.tg[0].tr";
connectAttr "C_snake3_LOC.ro" "C_snakeChain4_jnt_parentConstraint1.tg[0].tro";
connectAttr "C_snake3_LOC.s" "C_snakeChain4_jnt_parentConstraint1.tg[0].ts";
connectAttr "C_snake3_LOC.pm" "C_snakeChain4_jnt_parentConstraint1.tg[0].tpm";
connectAttr "C_snakeChain4_jnt_parentConstraint1.w0" "C_snakeChain4_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "C_snakeChain3_jnt.ro" "C_snakeChain3_jnt_parentConstraint1.cro";
connectAttr "C_snakeChain3_jnt.pim" "C_snakeChain3_jnt_parentConstraint1.cpim";
connectAttr "C_snakeChain3_jnt.rp" "C_snakeChain3_jnt_parentConstraint1.crp";
connectAttr "C_snakeChain3_jnt.rpt" "C_snakeChain3_jnt_parentConstraint1.crt";
connectAttr "C_snakeChain3_jnt.jo" "C_snakeChain3_jnt_parentConstraint1.cjo";
connectAttr "C_snake2_LOC.t" "C_snakeChain3_jnt_parentConstraint1.tg[0].tt";
connectAttr "C_snake2_LOC.rp" "C_snakeChain3_jnt_parentConstraint1.tg[0].trp";
connectAttr "C_snake2_LOC.rpt" "C_snakeChain3_jnt_parentConstraint1.tg[0].trt";
connectAttr "C_snake2_LOC.r" "C_snakeChain3_jnt_parentConstraint1.tg[0].tr";
connectAttr "C_snake2_LOC.ro" "C_snakeChain3_jnt_parentConstraint1.tg[0].tro";
connectAttr "C_snake2_LOC.s" "C_snakeChain3_jnt_parentConstraint1.tg[0].ts";
connectAttr "C_snake2_LOC.pm" "C_snakeChain3_jnt_parentConstraint1.tg[0].tpm";
connectAttr "C_snakeChain3_jnt_parentConstraint1.w0" "C_snakeChain3_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "C_snakeChain2_jnt.ro" "C_snakeChain2_jnt_parentConstraint1.cro";
connectAttr "C_snakeChain2_jnt.pim" "C_snakeChain2_jnt_parentConstraint1.cpim";
connectAttr "C_snakeChain2_jnt.rp" "C_snakeChain2_jnt_parentConstraint1.crp";
connectAttr "C_snakeChain2_jnt.rpt" "C_snakeChain2_jnt_parentConstraint1.crt";
connectAttr "C_snakeChain2_jnt.jo" "C_snakeChain2_jnt_parentConstraint1.cjo";
connectAttr "C_snake1_LOC.t" "C_snakeChain2_jnt_parentConstraint1.tg[0].tt";
connectAttr "C_snake1_LOC.rp" "C_snakeChain2_jnt_parentConstraint1.tg[0].trp";
connectAttr "C_snake1_LOC.rpt" "C_snakeChain2_jnt_parentConstraint1.tg[0].trt";
connectAttr "C_snake1_LOC.r" "C_snakeChain2_jnt_parentConstraint1.tg[0].tr";
connectAttr "C_snake1_LOC.ro" "C_snakeChain2_jnt_parentConstraint1.tg[0].tro";
connectAttr "C_snake1_LOC.s" "C_snakeChain2_jnt_parentConstraint1.tg[0].ts";
connectAttr "C_snake1_LOC.pm" "C_snakeChain2_jnt_parentConstraint1.tg[0].tpm";
connectAttr "C_snakeChain2_jnt_parentConstraint1.w0" "C_snakeChain2_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "C_snakeChain1_jnt.ro" "C_snakeChain1_jnt_parentConstraint1.cro";
connectAttr "C_snakeChain1_jnt.pim" "C_snakeChain1_jnt_parentConstraint1.cpim";
connectAttr "C_snakeChain1_jnt.rp" "C_snakeChain1_jnt_parentConstraint1.crp";
connectAttr "C_snakeChain1_jnt.rpt" "C_snakeChain1_jnt_parentConstraint1.crt";
connectAttr "C_snakeChain1_jnt.jo" "C_snakeChain1_jnt_parentConstraint1.cjo";
connectAttr "C_snake0_LOC.t" "C_snakeChain1_jnt_parentConstraint1.tg[0].tt";
connectAttr "C_snake0_LOC.rp" "C_snakeChain1_jnt_parentConstraint1.tg[0].trp";
connectAttr "C_snake0_LOC.rpt" "C_snakeChain1_jnt_parentConstraint1.tg[0].trt";
connectAttr "C_snake0_LOC.r" "C_snakeChain1_jnt_parentConstraint1.tg[0].tr";
connectAttr "C_snake0_LOC.ro" "C_snakeChain1_jnt_parentConstraint1.tg[0].tro";
connectAttr "C_snake0_LOC.s" "C_snakeChain1_jnt_parentConstraint1.tg[0].ts";
connectAttr "C_snake0_LOC.pm" "C_snakeChain1_jnt_parentConstraint1.tg[0].tpm";
connectAttr "C_snakeChain1_jnt_parentConstraint1.w0" "C_snakeChain1_jnt_parentConstraint1.tg[0].tw"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "C_snakeglobal1_cInfo.ox" "C_snakeinitRatio1_md.i2x";
connectAttr "C_snakeinitRatio1_md.ox" "C_snakeblnCrvDtr1_bln.c1r";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeStretch1_md.i1x";
connectAttr "C_snakeLenGlobal1_md.ox" "C_snakeStretch1_md.i2x";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeRevStretch1_md.i1x";
connectAttr "C_snakeRevGlobal1_md.ox" "C_snakeRevStretch1_md.i2x";
connectAttr "C_snakeRevStretch1_md.ox" "C_snakeRevLen1_pma.i1[1]";
connectAttr "C_snakeRevLen1_pma.o1" "C_snakeBlendRoot1_bln.c1r";
connectAttr "C_snakeStretch1_md.ox" "C_snakeBlendRoot1_bln.c2r";
connectAttr "C_snakeBlendRoot1_bln.opr" "C_snakeOffset1_pma.i1[0]";
connectAttr "C_snakeOffset1_pma.o1" "C_snake0_bsn.iv";
connectAttr "C_snake0_bsn.ov" "C_snake0_pinf.pr";
connectAttr "C_snake0_pinf.p" "C_snake1_pntSInfo.ip";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeStretch2_md.i1x";
connectAttr "C_snakeLenGlobal2_md.ox" "C_snakeStretch2_md.i2x";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeRevStretch2_md.i1x";
connectAttr "C_snakeRevGlobal2_md.ox" "C_snakeRevStretch2_md.i2x";
connectAttr "C_snakeRevStretch2_md.ox" "C_snakeRevLen2_pma.i1[1]";
connectAttr "C_snakeRevLen2_pma.o1" "C_snakeBlendRoot2_bln.c1r";
connectAttr "C_snakeStretch2_md.ox" "C_snakeBlendRoot2_bln.c2r";
connectAttr "C_snakeBlendRoot2_bln.opr" "C_snakeOffset2_pma.i1[0]";
connectAttr "C_snakeOffset2_pma.o1" "C_snake1_bsn.iv";
connectAttr "C_snake1_bsn.ov" "C_snake1_pinf.pr";
connectAttr "C_snake1_pinf.p" "C_snake3_pntSInfo.ip";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeStretch3_md.i1x";
connectAttr "C_snakeLenGlobal3_md.ox" "C_snakeStretch3_md.i2x";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeRevStretch3_md.i1x";
connectAttr "C_snakeRevGlobal3_md.ox" "C_snakeRevStretch3_md.i2x";
connectAttr "C_snakeRevStretch3_md.ox" "C_snakeRevLen3_pma.i1[1]";
connectAttr "C_snakeRevLen3_pma.o1" "C_snakeBlendRoot3_bln.c1r";
connectAttr "C_snakeStretch3_md.ox" "C_snakeBlendRoot3_bln.c2r";
connectAttr "C_snakeBlendRoot3_bln.opr" "C_snakeOffset3_pma.i1[0]";
connectAttr "C_snakeOffset3_pma.o1" "C_snake2_bsn.iv";
connectAttr "C_snake2_bsn.ov" "C_snake2_pinf.pr";
connectAttr "C_snake2_pinf.p" "C_snake5_pntSInfo.ip";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeStretch4_md.i1x";
connectAttr "C_snakeLenGlobal4_md.ox" "C_snakeStretch4_md.i2x";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeRevStretch4_md.i1x";
connectAttr "C_snakeRevGlobal4_md.ox" "C_snakeRevStretch4_md.i2x";
connectAttr "C_snakeRevStretch4_md.ox" "C_snakeRevLen4_pma.i1[1]";
connectAttr "C_snakeRevLen4_pma.o1" "C_snakeBlendRoot4_bln.c1r";
connectAttr "C_snakeStretch4_md.ox" "C_snakeBlendRoot4_bln.c2r";
connectAttr "C_snakeBlendRoot4_bln.opr" "C_snakeOffset4_pma.i1[0]";
connectAttr "C_snakeOffset4_pma.o1" "C_snake3_bsn.iv";
connectAttr "C_snake3_bsn.ov" "C_snake3_pinf.pr";
connectAttr "C_snake3_pinf.p" "C_snake7_pntSInfo.ip";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeStretch5_md.i1x";
connectAttr "C_snakeLenGlobal5_md.ox" "C_snakeStretch5_md.i2x";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeRevStretch5_md.i1x";
connectAttr "C_snakeRevGlobal5_md.ox" "C_snakeRevStretch5_md.i2x";
connectAttr "C_snakeRevStretch5_md.ox" "C_snakeRevLen5_pma.i1[1]";
connectAttr "C_snakeRevLen5_pma.o1" "C_snakeBlendRoot5_bln.c1r";
connectAttr "C_snakeStretch5_md.ox" "C_snakeBlendRoot5_bln.c2r";
connectAttr "C_snakeBlendRoot5_bln.opr" "C_snakeOffset5_pma.i1[0]";
connectAttr "C_snakeOffset5_pma.o1" "C_snake4_bsn.iv";
connectAttr "C_snake4_bsn.ov" "C_snake4_pinf.pr";
connectAttr "C_snake4_pinf.p" "C_snake9_pntSInfo.ip";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeStretch6_md.i1x";
connectAttr "C_snakeLenGlobal6_md.ox" "C_snakeStretch6_md.i2x";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeRevStretch6_md.i1x";
connectAttr "C_snakeRevGlobal6_md.ox" "C_snakeRevStretch6_md.i2x";
connectAttr "C_snakeRevStretch6_md.ox" "C_snakeRevLen6_pma.i1[1]";
connectAttr "C_snakeRevLen6_pma.o1" "C_snakeBlendRoot6_bln.c1r";
connectAttr "C_snakeStretch6_md.ox" "C_snakeBlendRoot6_bln.c2r";
connectAttr "C_snakeBlendRoot6_bln.opr" "C_snakeOffset6_pma.i1[0]";
connectAttr "C_snakeOffset6_pma.o1" "C_snake5_bsn.iv";
connectAttr "C_snake5_bsn.ov" "C_snake5_pinf.pr";
connectAttr "C_snake5_pinf.p" "C_snake11_pntSInfo.ip";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeStretch7_md.i1x";
connectAttr "C_snakeLenGlobal7_md.ox" "C_snakeStretch7_md.i2x";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeRevStretch7_md.i1x";
connectAttr "C_snakeRevGlobal7_md.ox" "C_snakeRevStretch7_md.i2x";
connectAttr "C_snakeRevStretch7_md.ox" "C_snakeRevLen7_pma.i1[1]";
connectAttr "C_snakeRevLen7_pma.o1" "C_snakeBlendRoot7_bln.c1r";
connectAttr "C_snakeStretch7_md.ox" "C_snakeBlendRoot7_bln.c2r";
connectAttr "C_snakeBlendRoot7_bln.opr" "C_snakeOffset7_pma.i1[0]";
connectAttr "C_snakeOffset7_pma.o1" "C_snake6_bsn.iv";
connectAttr "C_snake6_bsn.ov" "C_snake6_pinf.pr";
connectAttr "C_snake6_pinf.p" "C_snake13_pntSInfo.ip";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeStretch8_md.i1x";
connectAttr "C_snakeLenGlobal8_md.ox" "C_snakeStretch8_md.i2x";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeRevStretch8_md.i1x";
connectAttr "C_snakeRevGlobal8_md.ox" "C_snakeRevStretch8_md.i2x";
connectAttr "C_snakeRevStretch8_md.ox" "C_snakeRevLen8_pma.i1[1]";
connectAttr "C_snakeRevLen8_pma.o1" "C_snakeBlendRoot8_bln.c1r";
connectAttr "C_snakeStretch8_md.ox" "C_snakeBlendRoot8_bln.c2r";
connectAttr "C_snakeBlendRoot8_bln.opr" "C_snakeOffset8_pma.i1[0]";
connectAttr "C_snakeOffset8_pma.o1" "C_snake7_bsn.iv";
connectAttr "C_snake7_bsn.ov" "C_snake7_pinf.pr";
connectAttr "C_snake7_pinf.p" "C_snake15_pntSInfo.ip";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeStretch9_md.i1x";
connectAttr "C_snakeLenGlobal9_md.ox" "C_snakeStretch9_md.i2x";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeRevStretch9_md.i1x";
connectAttr "C_snakeRevGlobal9_md.ox" "C_snakeRevStretch9_md.i2x";
connectAttr "C_snakeRevStretch9_md.ox" "C_snakeRevLen9_pma.i1[1]";
connectAttr "C_snakeRevLen9_pma.o1" "C_snakeBlendRoot9_bln.c1r";
connectAttr "C_snakeStretch9_md.ox" "C_snakeBlendRoot9_bln.c2r";
connectAttr "C_snakeBlendRoot9_bln.opr" "C_snakeOffset9_pma.i1[0]";
connectAttr "C_snakeOffset9_pma.o1" "C_snake8_bsn.iv";
connectAttr "C_snake8_bsn.ov" "C_snake8_pinf.pr";
connectAttr "C_snake8_pinf.p" "C_snake17_pntSInfo.ip";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeStretch10_md.i1x";
connectAttr "C_snakeLenGlobal10_md.ox" "C_snakeStretch10_md.i2x";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeRevStretch10_md.i1x";
connectAttr "C_snakeRevGlobal10_md.ox" "C_snakeRevStretch10_md.i2x";
connectAttr "C_snakeRevStretch10_md.ox" "C_snakeRevLen10_pma.i1[1]";
connectAttr "C_snakeRevLen10_pma.o1" "C_snakeBlendRoot10_bln.c1r";
connectAttr "C_snakeStretch10_md.ox" "C_snakeBlendRoot10_bln.c2r";
connectAttr "C_snakeBlendRoot10_bln.opr" "C_snakeOffset10_pma.i1[0]";
connectAttr "C_snakeOffset10_pma.o1" "C_snake9_bsn.iv";
connectAttr "C_snake9_bsn.ov" "C_snake9_pinf.pr";
connectAttr "C_snake9_pinf.p" "C_snake19_pntSInfo.ip";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeStretch11_md.i1x";
connectAttr "C_snakeLenGlobal11_md.ox" "C_snakeStretch11_md.i2x";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeRevStretch11_md.i1x";
connectAttr "C_snakeRevGlobal11_md.ox" "C_snakeRevStretch11_md.i2x";
connectAttr "C_snakeRevStretch11_md.ox" "C_snakeRevLen11_pma.i1[1]";
connectAttr "C_snakeRevLen11_pma.o1" "C_snakeBlendRoot11_bln.c1r";
connectAttr "C_snakeStretch11_md.ox" "C_snakeBlendRoot11_bln.c2r";
connectAttr "C_snakeBlendRoot11_bln.opr" "C_snakeOffset11_pma.i1[0]";
connectAttr "C_snakeOffset11_pma.o1" "C_snake10_bsn.iv";
connectAttr "C_snake10_bsn.ov" "C_snake10_pinf.pr";
connectAttr "C_snake10_pinf.p" "C_snake21_pntSInfo.ip";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeStretch12_md.i1x";
connectAttr "C_snakeLenGlobal12_md.ox" "C_snakeStretch12_md.i2x";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeRevStretch12_md.i1x";
connectAttr "C_snakeRevGlobal12_md.ox" "C_snakeRevStretch12_md.i2x";
connectAttr "C_snakeRevStretch12_md.ox" "C_snakeRevLen12_pma.i1[1]";
connectAttr "C_snakeRevLen12_pma.o1" "C_snakeBlendRoot12_bln.c1r";
connectAttr "C_snakeStretch12_md.ox" "C_snakeBlendRoot12_bln.c2r";
connectAttr "C_snakeBlendRoot12_bln.opr" "C_snakeOffset12_pma.i1[0]";
connectAttr "C_snakeOffset12_pma.o1" "C_snake11_bsn.iv";
connectAttr "C_snake11_bsn.ov" "C_snake11_pinf.pr";
connectAttr "C_snake11_pinf.p" "C_snake23_pntSInfo.ip";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeStretch13_md.i1x";
connectAttr "C_snakeLenGlobal13_md.ox" "C_snakeStretch13_md.i2x";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeRevStretch13_md.i1x";
connectAttr "C_snakeRevGlobal13_md.ox" "C_snakeRevStretch13_md.i2x";
connectAttr "C_snakeRevStretch13_md.ox" "C_snakeRevLen13_pma.i1[1]";
connectAttr "C_snakeRevLen13_pma.o1" "C_snakeBlendRoot13_bln.c1r";
connectAttr "C_snakeStretch13_md.ox" "C_snakeBlendRoot13_bln.c2r";
connectAttr "C_snakeBlendRoot13_bln.opr" "C_snakeOffset13_pma.i1[0]";
connectAttr "C_snakeOffset13_pma.o1" "C_snake12_bsn.iv";
connectAttr "C_snake12_bsn.ov" "C_snake12_pinf.pr";
connectAttr "C_snake12_pinf.p" "C_snake25_pntSInfo.ip";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeStretch14_md.i1x";
connectAttr "C_snakeLenGlobal14_md.ox" "C_snakeStretch14_md.i2x";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeRevStretch14_md.i1x";
connectAttr "C_snakeRevGlobal14_md.ox" "C_snakeRevStretch14_md.i2x";
connectAttr "C_snakeRevStretch14_md.ox" "C_snakeRevLen14_pma.i1[1]";
connectAttr "C_snakeRevLen14_pma.o1" "C_snakeBlendRoot14_bln.c1r";
connectAttr "C_snakeStretch14_md.ox" "C_snakeBlendRoot14_bln.c2r";
connectAttr "C_snakeBlendRoot14_bln.opr" "C_snakeOffset14_pma.i1[0]";
connectAttr "C_snakeOffset14_pma.o1" "C_snake13_bsn.iv";
connectAttr "C_snake13_bsn.ov" "C_snake13_pinf.pr";
connectAttr "C_snake13_pinf.p" "C_snake27_pntSInfo.ip";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeStretch15_md.i1x";
connectAttr "C_snakeLenGlobal15_md.ox" "C_snakeStretch15_md.i2x";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeRevStretch15_md.i1x";
connectAttr "C_snakeRevGlobal15_md.ox" "C_snakeRevStretch15_md.i2x";
connectAttr "C_snakeRevStretch15_md.ox" "C_snakeRevLen15_pma.i1[1]";
connectAttr "C_snakeRevLen15_pma.o1" "C_snakeBlendRoot15_bln.c1r";
connectAttr "C_snakeStretch15_md.ox" "C_snakeBlendRoot15_bln.c2r";
connectAttr "C_snakeBlendRoot15_bln.opr" "C_snakeOffset15_pma.i1[0]";
connectAttr "C_snakeOffset15_pma.o1" "C_snake14_bsn.iv";
connectAttr "C_snake14_bsn.ov" "C_snake14_pinf.pr";
connectAttr "C_snake14_pinf.p" "C_snake29_pntSInfo.ip";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeStretch16_md.i1x";
connectAttr "C_snakeLenGlobal16_md.ox" "C_snakeStretch16_md.i2x";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeRevStretch16_md.i1x";
connectAttr "C_snakeRevGlobal16_md.ox" "C_snakeRevStretch16_md.i2x";
connectAttr "C_snakeRevStretch16_md.ox" "C_snakeRevLen16_pma.i1[1]";
connectAttr "C_snakeRevLen16_pma.o1" "C_snakeBlendRoot16_bln.c1r";
connectAttr "C_snakeStretch16_md.ox" "C_snakeBlendRoot16_bln.c2r";
connectAttr "C_snakeBlendRoot16_bln.opr" "C_snakeOffset16_pma.i1[0]";
connectAttr "C_snakeOffset16_pma.o1" "C_snake15_bsn.iv";
connectAttr "C_snake15_bsn.ov" "C_snake15_pinf.pr";
connectAttr "C_snake15_pinf.p" "C_snake31_pntSInfo.ip";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeStretch17_md.i1x";
connectAttr "C_snakeLenGlobal17_md.ox" "C_snakeStretch17_md.i2x";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeRevStretch17_md.i1x";
connectAttr "C_snakeRevGlobal17_md.ox" "C_snakeRevStretch17_md.i2x";
connectAttr "C_snakeRevStretch17_md.ox" "C_snakeRevLen17_pma.i1[1]";
connectAttr "C_snakeRevLen17_pma.o1" "C_snakeBlendRoot17_bln.c1r";
connectAttr "C_snakeStretch17_md.ox" "C_snakeBlendRoot17_bln.c2r";
connectAttr "C_snakeBlendRoot17_bln.opr" "C_snakeOffset17_pma.i1[0]";
connectAttr "C_snakeOffset17_pma.o1" "C_snake16_bsn.iv";
connectAttr "C_snake16_bsn.ov" "C_snake16_pinf.pr";
connectAttr "C_snake16_pinf.p" "C_snake33_pntSInfo.ip";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeStretch18_md.i1x";
connectAttr "C_snakeLenGlobal18_md.ox" "C_snakeStretch18_md.i2x";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeRevStretch18_md.i1x";
connectAttr "C_snakeRevGlobal18_md.ox" "C_snakeRevStretch18_md.i2x";
connectAttr "C_snakeRevStretch18_md.ox" "C_snakeRevLen18_pma.i1[1]";
connectAttr "C_snakeRevLen18_pma.o1" "C_snakeBlendRoot18_bln.c1r";
connectAttr "C_snakeStretch18_md.ox" "C_snakeBlendRoot18_bln.c2r";
connectAttr "C_snakeBlendRoot18_bln.opr" "C_snakeOffset18_pma.i1[0]";
connectAttr "C_snakeOffset18_pma.o1" "C_snake17_bsn.iv";
connectAttr "C_snake17_bsn.ov" "C_snake17_pinf.pr";
connectAttr "C_snake17_pinf.p" "C_snake35_pntSInfo.ip";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeStretch19_md.i1x";
connectAttr "C_snakeLenGlobal19_md.ox" "C_snakeStretch19_md.i2x";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeRevStretch19_md.i1x";
connectAttr "C_snakeRevGlobal19_md.ox" "C_snakeRevStretch19_md.i2x";
connectAttr "C_snakeRevStretch19_md.ox" "C_snakeRevLen19_pma.i1[1]";
connectAttr "C_snakeRevLen19_pma.o1" "C_snakeBlendRoot19_bln.c1r";
connectAttr "C_snakeStretch19_md.ox" "C_snakeBlendRoot19_bln.c2r";
connectAttr "C_snakeBlendRoot19_bln.opr" "C_snakeOffset19_pma.i1[0]";
connectAttr "C_snakeOffset19_pma.o1" "C_snake18_bsn.iv";
connectAttr "C_snake18_bsn.ov" "C_snake18_pinf.pr";
connectAttr "C_snake18_pinf.p" "C_snake37_pntSInfo.ip";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeStretch20_md.i1x";
connectAttr "C_snakeLenGlobal20_md.ox" "C_snakeStretch20_md.i2x";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeRevStretch20_md.i1x";
connectAttr "C_snakeRevGlobal20_md.ox" "C_snakeRevStretch20_md.i2x";
connectAttr "C_snakeRevStretch20_md.ox" "C_snakeRevLen20_pma.i1[1]";
connectAttr "C_snakeRevLen20_pma.o1" "C_snakeBlendRoot20_bln.c1r";
connectAttr "C_snakeStretch20_md.ox" "C_snakeBlendRoot20_bln.c2r";
connectAttr "C_snakeBlendRoot20_bln.opr" "C_snakeOffset20_pma.i1[0]";
connectAttr "C_snakeOffset20_pma.o1" "C_snake19_bsn.iv";
connectAttr "C_snake19_bsn.ov" "C_snake19_pinf.pr";
connectAttr "C_snake19_pinf.p" "C_snake39_pntSInfo.ip";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeStretch21_md.i1x";
connectAttr "C_snakeLenGlobal21_md.ox" "C_snakeStretch21_md.i2x";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeRevStretch21_md.i1x";
connectAttr "C_snakeRevGlobal21_md.ox" "C_snakeRevStretch21_md.i2x";
connectAttr "C_snakeRevStretch21_md.ox" "C_snakeRevLen21_pma.i1[1]";
connectAttr "C_snakeRevLen21_pma.o1" "C_snakeBlendRoot21_bln.c1r";
connectAttr "C_snakeStretch21_md.ox" "C_snakeBlendRoot21_bln.c2r";
connectAttr "C_snakeBlendRoot21_bln.opr" "C_snakeOffset21_pma.i1[0]";
connectAttr "C_snakeOffset21_pma.o1" "C_snake20_bsn.iv";
connectAttr "C_snake20_bsn.ov" "C_snake20_pinf.pr";
connectAttr "C_snake20_pinf.p" "C_snake41_pntSInfo.ip";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeStretch22_md.i1x";
connectAttr "C_snakeLenGlobal22_md.ox" "C_snakeStretch22_md.i2x";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeRevStretch22_md.i1x";
connectAttr "C_snakeRevGlobal22_md.ox" "C_snakeRevStretch22_md.i2x";
connectAttr "C_snakeRevStretch22_md.ox" "C_snakeRevLen22_pma.i1[1]";
connectAttr "C_snakeRevLen22_pma.o1" "C_snakeBlendRoot22_bln.c1r";
connectAttr "C_snakeStretch22_md.ox" "C_snakeBlendRoot22_bln.c2r";
connectAttr "C_snakeBlendRoot22_bln.opr" "C_snakeOffset22_pma.i1[0]";
connectAttr "C_snakeOffset22_pma.o1" "C_snake21_bsn.iv";
connectAttr "C_snake21_bsn.ov" "C_snake21_pinf.pr";
connectAttr "C_snake21_pinf.p" "C_snake43_pntSInfo.ip";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeStretch23_md.i1x";
connectAttr "C_snakeLenGlobal23_md.ox" "C_snakeStretch23_md.i2x";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeRevStretch23_md.i1x";
connectAttr "C_snakeRevGlobal23_md.ox" "C_snakeRevStretch23_md.i2x";
connectAttr "C_snakeRevStretch23_md.ox" "C_snakeRevLen23_pma.i1[1]";
connectAttr "C_snakeRevLen23_pma.o1" "C_snakeBlendRoot23_bln.c1r";
connectAttr "C_snakeStretch23_md.ox" "C_snakeBlendRoot23_bln.c2r";
connectAttr "C_snakeBlendRoot23_bln.opr" "C_snakeOffset23_pma.i1[0]";
connectAttr "C_snakeOffset23_pma.o1" "C_snake22_bsn.iv";
connectAttr "C_snake22_bsn.ov" "C_snake22_pinf.pr";
connectAttr "C_snake22_pinf.p" "C_snake45_pntSInfo.ip";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeStretch24_md.i1x";
connectAttr "C_snakeLenGlobal24_md.ox" "C_snakeStretch24_md.i2x";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeRevStretch24_md.i1x";
connectAttr "C_snakeRevGlobal24_md.ox" "C_snakeRevStretch24_md.i2x";
connectAttr "C_snakeRevStretch24_md.ox" "C_snakeRevLen24_pma.i1[1]";
connectAttr "C_snakeRevLen24_pma.o1" "C_snakeBlendRoot24_bln.c1r";
connectAttr "C_snakeStretch24_md.ox" "C_snakeBlendRoot24_bln.c2r";
connectAttr "C_snakeBlendRoot24_bln.opr" "C_snakeOffset24_pma.i1[0]";
connectAttr "C_snakeOffset24_pma.o1" "C_snake23_bsn.iv";
connectAttr "C_snake23_bsn.ov" "C_snake23_pinf.pr";
connectAttr "C_snake23_pinf.p" "C_snake47_pntSInfo.ip";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeStretch25_md.i1x";
connectAttr "C_snakeLenGlobal25_md.ox" "C_snakeStretch25_md.i2x";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeRevStretch25_md.i1x";
connectAttr "C_snakeRevGlobal25_md.ox" "C_snakeRevStretch25_md.i2x";
connectAttr "C_snakeRevStretch25_md.ox" "C_snakeRevLen25_pma.i1[1]";
connectAttr "C_snakeRevLen25_pma.o1" "C_snakeBlendRoot25_bln.c1r";
connectAttr "C_snakeStretch25_md.ox" "C_snakeBlendRoot25_bln.c2r";
connectAttr "C_snakeBlendRoot25_bln.opr" "C_snakeOffset25_pma.i1[0]";
connectAttr "C_snakeOffset25_pma.o1" "C_snake24_bsn.iv";
connectAttr "C_snake24_bsn.ov" "C_snake24_pinf.pr";
connectAttr "C_snake24_pinf.p" "C_snake49_pntSInfo.ip";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeStretch26_md.i1x";
connectAttr "C_snakeLenGlobal26_md.ox" "C_snakeStretch26_md.i2x";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeRevStretch26_md.i1x";
connectAttr "C_snakeRevGlobal26_md.ox" "C_snakeRevStretch26_md.i2x";
connectAttr "C_snakeRevStretch26_md.ox" "C_snakeRevLen26_pma.i1[1]";
connectAttr "C_snakeRevLen26_pma.o1" "C_snakeBlendRoot26_bln.c1r";
connectAttr "C_snakeStretch26_md.ox" "C_snakeBlendRoot26_bln.c2r";
connectAttr "C_snakeBlendRoot26_bln.opr" "C_snakeOffset26_pma.i1[0]";
connectAttr "C_snakeOffset26_pma.o1" "C_snake25_bsn.iv";
connectAttr "C_snake25_bsn.ov" "C_snake25_pinf.pr";
connectAttr "C_snake25_pinf.p" "C_snake51_pntSInfo.ip";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeStretch27_md.i1x";
connectAttr "C_snakeLenGlobal27_md.ox" "C_snakeStretch27_md.i2x";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeRevStretch27_md.i1x";
connectAttr "C_snakeRevGlobal27_md.ox" "C_snakeRevStretch27_md.i2x";
connectAttr "C_snakeRevStretch27_md.ox" "C_snakeRevLen27_pma.i1[1]";
connectAttr "C_snakeRevLen27_pma.o1" "C_snakeBlendRoot27_bln.c1r";
connectAttr "C_snakeStretch27_md.ox" "C_snakeBlendRoot27_bln.c2r";
connectAttr "C_snakeBlendRoot27_bln.opr" "C_snakeOffset27_pma.i1[0]";
connectAttr "C_snakeOffset27_pma.o1" "C_snake26_bsn.iv";
connectAttr "C_snake26_bsn.ov" "C_snake26_pinf.pr";
connectAttr "C_snake26_pinf.p" "C_snake53_pntSInfo.ip";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeStretch28_md.i1x";
connectAttr "C_snakeLenGlobal28_md.ox" "C_snakeStretch28_md.i2x";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeRevStretch28_md.i1x";
connectAttr "C_snakeRevGlobal28_md.ox" "C_snakeRevStretch28_md.i2x";
connectAttr "C_snakeRevStretch28_md.ox" "C_snakeRevLen28_pma.i1[1]";
connectAttr "C_snakeRevLen28_pma.o1" "C_snakeBlendRoot28_bln.c1r";
connectAttr "C_snakeStretch28_md.ox" "C_snakeBlendRoot28_bln.c2r";
connectAttr "C_snakeBlendRoot28_bln.opr" "C_snakeOffset28_pma.i1[0]";
connectAttr "C_snakeOffset28_pma.o1" "C_snake27_bsn.iv";
connectAttr "C_snake27_bsn.ov" "C_snake27_pinf.pr";
connectAttr "C_snake27_pinf.p" "C_snake55_pntSInfo.ip";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeStretch29_md.i1x";
connectAttr "C_snakeLenGlobal29_md.ox" "C_snakeStretch29_md.i2x";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeRevStretch29_md.i1x";
connectAttr "C_snakeRevGlobal29_md.ox" "C_snakeRevStretch29_md.i2x";
connectAttr "C_snakeRevStretch29_md.ox" "C_snakeRevLen29_pma.i1[1]";
connectAttr "C_snakeRevLen29_pma.o1" "C_snakeBlendRoot29_bln.c1r";
connectAttr "C_snakeStretch29_md.ox" "C_snakeBlendRoot29_bln.c2r";
connectAttr "C_snakeBlendRoot29_bln.opr" "C_snakeOffset29_pma.i1[0]";
connectAttr "C_snakeOffset29_pma.o1" "C_snake28_bsn.iv";
connectAttr "C_snake28_bsn.ov" "C_snake28_pinf.pr";
connectAttr "C_snake28_pinf.p" "C_snake57_pntSInfo.ip";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeStretch30_md.i1x";
connectAttr "C_snakeLenGlobal30_md.ox" "C_snakeStretch30_md.i2x";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeRevStretch30_md.i1x";
connectAttr "C_snakeRevGlobal30_md.ox" "C_snakeRevStretch30_md.i2x";
connectAttr "C_snakeRevStretch30_md.ox" "C_snakeRevLen30_pma.i1[1]";
connectAttr "C_snakeRevLen30_pma.o1" "C_snakeBlendRoot30_bln.c1r";
connectAttr "C_snakeStretch30_md.ox" "C_snakeBlendRoot30_bln.c2r";
connectAttr "C_snakeBlendRoot30_bln.opr" "C_snakeOffset30_pma.i1[0]";
connectAttr "C_snakeOffset30_pma.o1" "C_snake29_bsn.iv";
connectAttr "C_snake29_bsn.ov" "C_snake29_pinf.pr";
connectAttr "C_snake29_pinf.p" "C_snake59_pntSInfo.ip";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeStretch31_md.i1x";
connectAttr "C_snakeLenGlobal31_md.ox" "C_snakeStretch31_md.i2x";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeRevStretch31_md.i1x";
connectAttr "C_snakeRevGlobal31_md.ox" "C_snakeRevStretch31_md.i2x";
connectAttr "C_snakeRevStretch31_md.ox" "C_snakeRevLen31_pma.i1[1]";
connectAttr "C_snakeRevLen31_pma.o1" "C_snakeBlendRoot31_bln.c1r";
connectAttr "C_snakeStretch31_md.ox" "C_snakeBlendRoot31_bln.c2r";
connectAttr "C_snakeBlendRoot31_bln.opr" "C_snakeOffset31_pma.i1[0]";
connectAttr "C_snakeOffset31_pma.o1" "C_snake30_bsn.iv";
connectAttr "C_snake30_bsn.ov" "C_snake30_pinf.pr";
connectAttr "C_snake30_pinf.p" "C_snake61_pntSInfo.ip";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeStretch32_md.i1x";
connectAttr "C_snakeLenGlobal32_md.ox" "C_snakeStretch32_md.i2x";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeRevStretch32_md.i1x";
connectAttr "C_snakeRevGlobal32_md.ox" "C_snakeRevStretch32_md.i2x";
connectAttr "C_snakeRevStretch32_md.ox" "C_snakeRevLen32_pma.i1[1]";
connectAttr "C_snakeRevLen32_pma.o1" "C_snakeBlendRoot32_bln.c1r";
connectAttr "C_snakeStretch32_md.ox" "C_snakeBlendRoot32_bln.c2r";
connectAttr "C_snakeBlendRoot32_bln.opr" "C_snakeOffset32_pma.i1[0]";
connectAttr "C_snakeOffset32_pma.o1" "C_snake31_bsn.iv";
connectAttr "C_snake31_bsn.ov" "C_snake31_pinf.pr";
connectAttr "C_snake31_pinf.p" "C_snake63_pntSInfo.ip";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeStretch33_md.i1x";
connectAttr "C_snakeLenGlobal33_md.ox" "C_snakeStretch33_md.i2x";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeRevStretch33_md.i1x";
connectAttr "C_snakeRevGlobal33_md.ox" "C_snakeRevStretch33_md.i2x";
connectAttr "C_snakeRevStretch33_md.ox" "C_snakeRevLen33_pma.i1[1]";
connectAttr "C_snakeRevLen33_pma.o1" "C_snakeBlendRoot33_bln.c1r";
connectAttr "C_snakeStretch33_md.ox" "C_snakeBlendRoot33_bln.c2r";
connectAttr "C_snakeBlendRoot33_bln.opr" "C_snakeOffset33_pma.i1[0]";
connectAttr "C_snakeOffset33_pma.o1" "C_snake32_bsn.iv";
connectAttr "C_snake32_bsn.ov" "C_snake32_pinf.pr";
connectAttr "C_snake32_pinf.p" "C_snake65_pntSInfo.ip";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeStretch34_md.i1x";
connectAttr "C_snakeLenGlobal34_md.ox" "C_snakeStretch34_md.i2x";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeRevStretch34_md.i1x";
connectAttr "C_snakeRevGlobal34_md.ox" "C_snakeRevStretch34_md.i2x";
connectAttr "C_snakeRevStretch34_md.ox" "C_snakeRevLen34_pma.i1[1]";
connectAttr "C_snakeRevLen34_pma.o1" "C_snakeBlendRoot34_bln.c1r";
connectAttr "C_snakeStretch34_md.ox" "C_snakeBlendRoot34_bln.c2r";
connectAttr "C_snakeBlendRoot34_bln.opr" "C_snakeOffset34_pma.i1[0]";
connectAttr "C_snakeOffset34_pma.o1" "C_snake33_bsn.iv";
connectAttr "C_snake33_bsn.ov" "C_snake33_pinf.pr";
connectAttr "C_snake33_pinf.p" "C_snake67_pntSInfo.ip";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeStretch35_md.i1x";
connectAttr "C_snakeLenGlobal35_md.ox" "C_snakeStretch35_md.i2x";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeRevStretch35_md.i1x";
connectAttr "C_snakeRevGlobal35_md.ox" "C_snakeRevStretch35_md.i2x";
connectAttr "C_snakeRevStretch35_md.ox" "C_snakeRevLen35_pma.i1[1]";
connectAttr "C_snakeRevLen35_pma.o1" "C_snakeBlendRoot35_bln.c1r";
connectAttr "C_snakeStretch35_md.ox" "C_snakeBlendRoot35_bln.c2r";
connectAttr "C_snakeBlendRoot35_bln.opr" "C_snakeOffset35_pma.i1[0]";
connectAttr "C_snakeOffset35_pma.o1" "C_snake34_bsn.iv";
connectAttr "C_snake34_bsn.ov" "C_snake34_pinf.pr";
connectAttr "C_snake34_pinf.p" "C_snake69_pntSInfo.ip";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeStretch36_md.i1x";
connectAttr "C_snakeLenGlobal36_md.ox" "C_snakeStretch36_md.i2x";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeRevStretch36_md.i1x";
connectAttr "C_snakeRevGlobal36_md.ox" "C_snakeRevStretch36_md.i2x";
connectAttr "C_snakeRevStretch36_md.ox" "C_snakeRevLen36_pma.i1[1]";
connectAttr "C_snakeRevLen36_pma.o1" "C_snakeBlendRoot36_bln.c1r";
connectAttr "C_snakeStretch36_md.ox" "C_snakeBlendRoot36_bln.c2r";
connectAttr "C_snakeBlendRoot36_bln.opr" "C_snakeOffset36_pma.i1[0]";
connectAttr "C_snakeOffset36_pma.o1" "C_snake35_bsn.iv";
connectAttr "C_snake35_bsn.ov" "C_snake35_pinf.pr";
connectAttr "C_snake35_pinf.p" "C_snake71_pntSInfo.ip";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeStretch37_md.i1x";
connectAttr "C_snakeLenGlobal37_md.ox" "C_snakeStretch37_md.i2x";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeRevStretch37_md.i1x";
connectAttr "C_snakeRevGlobal37_md.ox" "C_snakeRevStretch37_md.i2x";
connectAttr "C_snakeRevStretch37_md.ox" "C_snakeRevLen37_pma.i1[1]";
connectAttr "C_snakeRevLen37_pma.o1" "C_snakeBlendRoot37_bln.c1r";
connectAttr "C_snakeStretch37_md.ox" "C_snakeBlendRoot37_bln.c2r";
connectAttr "C_snakeBlendRoot37_bln.opr" "C_snakeOffset37_pma.i1[0]";
connectAttr "C_snakeOffset37_pma.o1" "C_snake36_bsn.iv";
connectAttr "C_snake36_bsn.ov" "C_snake36_pinf.pr";
connectAttr "C_snake36_pinf.p" "C_snake73_pntSInfo.ip";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeStretch38_md.i1x";
connectAttr "C_snakeLenGlobal38_md.ox" "C_snakeStretch38_md.i2x";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeRevStretch38_md.i1x";
connectAttr "C_snakeRevGlobal38_md.ox" "C_snakeRevStretch38_md.i2x";
connectAttr "C_snakeRevStretch38_md.ox" "C_snakeRevLen38_pma.i1[1]";
connectAttr "C_snakeRevLen38_pma.o1" "C_snakeBlendRoot38_bln.c1r";
connectAttr "C_snakeStretch38_md.ox" "C_snakeBlendRoot38_bln.c2r";
connectAttr "C_snakeBlendRoot38_bln.opr" "C_snakeOffset38_pma.i1[0]";
connectAttr "C_snakeOffset38_pma.o1" "C_snake37_bsn.iv";
connectAttr "C_snake37_bsn.ov" "C_snake37_pinf.pr";
connectAttr "C_snake37_pinf.p" "C_snake75_pntSInfo.ip";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeStretch39_md.i1x";
connectAttr "C_snakeLenGlobal39_md.ox" "C_snakeStretch39_md.i2x";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeRevStretch39_md.i1x";
connectAttr "C_snakeRevGlobal39_md.ox" "C_snakeRevStretch39_md.i2x";
connectAttr "C_snakeRevStretch39_md.ox" "C_snakeRevLen39_pma.i1[1]";
connectAttr "C_snakeRevLen39_pma.o1" "C_snakeBlendRoot39_bln.c1r";
connectAttr "C_snakeStretch39_md.ox" "C_snakeBlendRoot39_bln.c2r";
connectAttr "C_snakeBlendRoot39_bln.opr" "C_snakeOffset39_pma.i1[0]";
connectAttr "C_snakeOffset39_pma.o1" "C_snake38_bsn.iv";
connectAttr "C_snake38_bsn.ov" "C_snake38_pinf.pr";
connectAttr "C_snake38_pinf.p" "C_snake77_pntSInfo.ip";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeStretch40_md.i1x";
connectAttr "C_snakeLenGlobal40_md.ox" "C_snakeStretch40_md.i2x";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeRevStretch40_md.i1x";
connectAttr "C_snakeRevGlobal40_md.ox" "C_snakeRevStretch40_md.i2x";
connectAttr "C_snakeRevStretch40_md.ox" "C_snakeRevLen40_pma.i1[1]";
connectAttr "C_snakeRevLen40_pma.o1" "C_snakeBlendRoot40_bln.c1r";
connectAttr "C_snakeStretch40_md.ox" "C_snakeBlendRoot40_bln.c2r";
connectAttr "C_snakeBlendRoot40_bln.opr" "C_snakeOffset40_pma.i1[0]";
connectAttr "C_snakeOffset40_pma.o1" "C_snake39_bsn.iv";
connectAttr "C_snake39_bsn.ov" "C_snake39_pinf.pr";
connectAttr "C_snake39_pinf.p" "C_snake79_pntSInfo.ip";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeStretch41_md.i1x";
connectAttr "C_snakeLenGlobal41_md.ox" "C_snakeStretch41_md.i2x";
connectAttr "C_snakeblnCrvDtr1_bln.opr" "C_snakeRevStretch41_md.i1x";
connectAttr "C_snakeRevGlobal41_md.ox" "C_snakeRevStretch41_md.i2x";
connectAttr "C_snakeRevStretch41_md.ox" "C_snakeRevLen41_pma.i1[1]";
connectAttr "C_snakeRevLen41_pma.o1" "C_snakeBlendRoot41_bln.c1r";
connectAttr "C_snakeStretch41_md.ox" "C_snakeBlendRoot41_bln.c2r";
connectAttr "C_snakeBlendRoot41_bln.opr" "C_snakeOffset41_pma.i1[0]";
connectAttr "C_snakeOffset41_pma.o1" "C_snake40_bsn.iv";
connectAttr "C_snake40_bsn.ov" "C_snake40_pinf.pr";
connectAttr "C_snake40_pinf.p" "C_snake81_pntSInfo.ip";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "snake_geoShape.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "snake_geoShapeOrig.w" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "blinn1.oc" "blinn1SG.ss";
connectAttr "groupId5.msg" "blinn1SG.gn" -na;
connectAttr "snake_geoShape.iog.og[3]" "blinn1SG.dsm" -na;
connectAttr "blinn1SG.msg" "materialInfo1.sg";
connectAttr "blinn1.msg" "materialInfo1.m";
connectAttr "tweak1.og[0]" "groupParts3.ig";
connectAttr "groupId3.id" "groupParts3.gi";
connectAttr "groupParts3.og" "groupParts4.ig";
connectAttr "groupId5.id" "groupParts4.gi";
connectAttr "C_surfaceSide1_crvShape.ws" "loft1.ic[0]";
connectAttr "C_surfaceSide2_crvShape.ws" "loft1.ic[1]";
connectAttr "C_curve1_crvShape.ws" "C_snake1_cInfo.ic";
connectAttr "C_curve1_crv.globalScale" "C_snakeglobal2_cInfo.i2x";
connectAttr "C_snake1_cInfo.al" "C_snakeinitRatio2_md.i1x";
connectAttr "C_snakeglobal2_cInfo.ox" "C_snakeinitRatio2_md.i2x";
connectAttr "C_snakeinitRatio2_md.ox" "C_snakeblnCrvDtr2_bln.c1r";
connectAttr "C_curve1_crv.stretch" "C_snakeblnCrvDtr2_bln.b";
connectAttr "C_curve1_crv.globalScale" "C_snakeLenGlobal42_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeStretch42_md.i1x";
connectAttr "C_snakeLenGlobal42_md.ox" "C_snakeStretch42_md.i2x";
connectAttr "C_curve1_crv.globalScale" "C_snakeRevGlobal42_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeRevStretch42_md.i1x";
connectAttr "C_snakeRevGlobal42_md.ox" "C_snakeRevStretch42_md.i2x";
connectAttr "C_snake1_cInfo.al" "C_snakeRevLen42_pma.i1[0]";
connectAttr "C_snakeRevStretch42_md.ox" "C_snakeRevLen42_pma.i1[1]";
connectAttr "C_curve1_crv.reverseRoot" "C_snakeBlendRoot42_bln.b";
connectAttr "C_snakeRevLen42_pma.o1" "C_snakeBlendRoot42_bln.c1r";
connectAttr "C_snakeStretch42_md.ox" "C_snakeBlendRoot42_bln.c2r";
connectAttr "C_snakeBlendRoot42_bln.opr" "C_snakeOffset42_pma.i1[0]";
connectAttr "C_curve1_crv.offset" "C_snakeOffset42_pma.i1[1]";
connectAttr "C_curve1_crvShape.ws" "C_snake0_bsn1.incv";
connectAttr "C_snakeOffset42_pma.o1" "C_snake0_bsn1.iv";
connectAttr "C_snake0_bsn1.ov" "C_snake0_pinf1.pr";
connectAttr "C_curve1_crvShape.ws" "C_snake0_pinf1.ic";
connectAttr "C_snake0_pinf1.p" "C_snake2_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake2_pntSInfo.is";
connectAttr "C_snake0_pinf1.p" "C_snake4_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake4_pntSInfo.is";
connectAttr "C_surface1_srfShape.ws" "C_snake1_pSurf.is";
connectAttr "C_snake4_pntSInfo.u" "C_snake1_pSurf.u";
connectAttr "C_snake4_pntSInfo.v" "C_snake1_pSurf.v";
connectAttr "C_snake1_pSurf.tux" "C_snake1_mtx.i00";
connectAttr "C_snake1_pSurf.tuy" "C_snake1_mtx.i01";
connectAttr "C_snake1_pSurf.tuz" "C_snake1_mtx.i02";
connectAttr "C_snake1_pSurf.nx" "C_snake1_mtx.i10";
connectAttr "C_snake1_pSurf.ny" "C_snake1_mtx.i11";
connectAttr "C_snake1_pSurf.nz" "C_snake1_mtx.i12";
connectAttr "C_snake1_pSurf.tvx" "C_snake1_mtx.i20";
connectAttr "C_snake1_pSurf.tvy" "C_snake1_mtx.i21";
connectAttr "C_snake1_pSurf.tvz" "C_snake1_mtx.i22";
connectAttr "C_snake1_mtx.o" "C_snake1_dec.imat";
connectAttr "C_curve1_crv.globalScale" "C_snakeLenGlobal43_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeStretch43_md.i1x";
connectAttr "C_snakeLenGlobal43_md.ox" "C_snakeStretch43_md.i2x";
connectAttr "C_curve1_crv.globalScale" "C_snakeRevGlobal43_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeRevStretch43_md.i1x";
connectAttr "C_snakeRevGlobal43_md.ox" "C_snakeRevStretch43_md.i2x";
connectAttr "C_snake1_cInfo.al" "C_snakeRevLen43_pma.i1[0]";
connectAttr "C_snakeRevStretch43_md.ox" "C_snakeRevLen43_pma.i1[1]";
connectAttr "C_curve1_crv.reverseRoot" "C_snakeBlendRoot43_bln.b";
connectAttr "C_snakeRevLen43_pma.o1" "C_snakeBlendRoot43_bln.c1r";
connectAttr "C_snakeStretch43_md.ox" "C_snakeBlendRoot43_bln.c2r";
connectAttr "C_snakeBlendRoot43_bln.opr" "C_snakeOffset43_pma.i1[0]";
connectAttr "C_curve1_crv.offset" "C_snakeOffset43_pma.i1[1]";
connectAttr "C_curve1_crvShape.ws" "C_snake1_bsn1.incv";
connectAttr "C_snakeOffset43_pma.o1" "C_snake1_bsn1.iv";
connectAttr "C_snake1_bsn1.ov" "C_snake1_pinf1.pr";
connectAttr "C_curve1_crvShape.ws" "C_snake1_pinf1.ic";
connectAttr "C_snake1_pinf1.p" "C_snake6_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake6_pntSInfo.is";
connectAttr "C_snake1_pinf1.p" "C_snake8_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake8_pntSInfo.is";
connectAttr "C_surface1_srfShape.ws" "C_snake2_pSurf.is";
connectAttr "C_snake8_pntSInfo.u" "C_snake2_pSurf.u";
connectAttr "C_snake8_pntSInfo.v" "C_snake2_pSurf.v";
connectAttr "C_snake2_pSurf.tux" "C_snake2_mtx.i00";
connectAttr "C_snake2_pSurf.tuy" "C_snake2_mtx.i01";
connectAttr "C_snake2_pSurf.tuz" "C_snake2_mtx.i02";
connectAttr "C_snake2_pSurf.nx" "C_snake2_mtx.i10";
connectAttr "C_snake2_pSurf.ny" "C_snake2_mtx.i11";
connectAttr "C_snake2_pSurf.nz" "C_snake2_mtx.i12";
connectAttr "C_snake2_pSurf.tvx" "C_snake2_mtx.i20";
connectAttr "C_snake2_pSurf.tvy" "C_snake2_mtx.i21";
connectAttr "C_snake2_pSurf.tvz" "C_snake2_mtx.i22";
connectAttr "C_snake2_mtx.o" "C_snake2_dec.imat";
connectAttr "C_curve1_crv.globalScale" "C_snakeLenGlobal44_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeStretch44_md.i1x";
connectAttr "C_snakeLenGlobal44_md.ox" "C_snakeStretch44_md.i2x";
connectAttr "C_curve1_crv.globalScale" "C_snakeRevGlobal44_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeRevStretch44_md.i1x";
connectAttr "C_snakeRevGlobal44_md.ox" "C_snakeRevStretch44_md.i2x";
connectAttr "C_snake1_cInfo.al" "C_snakeRevLen44_pma.i1[0]";
connectAttr "C_snakeRevStretch44_md.ox" "C_snakeRevLen44_pma.i1[1]";
connectAttr "C_curve1_crv.reverseRoot" "C_snakeBlendRoot44_bln.b";
connectAttr "C_snakeRevLen44_pma.o1" "C_snakeBlendRoot44_bln.c1r";
connectAttr "C_snakeStretch44_md.ox" "C_snakeBlendRoot44_bln.c2r";
connectAttr "C_snakeBlendRoot44_bln.opr" "C_snakeOffset44_pma.i1[0]";
connectAttr "C_curve1_crv.offset" "C_snakeOffset44_pma.i1[1]";
connectAttr "C_curve1_crvShape.ws" "C_snake2_bsn1.incv";
connectAttr "C_snakeOffset44_pma.o1" "C_snake2_bsn1.iv";
connectAttr "C_snake2_bsn1.ov" "C_snake2_pinf1.pr";
connectAttr "C_curve1_crvShape.ws" "C_snake2_pinf1.ic";
connectAttr "C_snake2_pinf1.p" "C_snake10_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake10_pntSInfo.is";
connectAttr "C_snake2_pinf1.p" "C_snake12_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake12_pntSInfo.is";
connectAttr "C_surface1_srfShape.ws" "C_snake3_pSurf.is";
connectAttr "C_snake12_pntSInfo.u" "C_snake3_pSurf.u";
connectAttr "C_snake12_pntSInfo.v" "C_snake3_pSurf.v";
connectAttr "C_snake3_pSurf.tux" "C_snake3_mtx.i00";
connectAttr "C_snake3_pSurf.tuy" "C_snake3_mtx.i01";
connectAttr "C_snake3_pSurf.tuz" "C_snake3_mtx.i02";
connectAttr "C_snake3_pSurf.nx" "C_snake3_mtx.i10";
connectAttr "C_snake3_pSurf.ny" "C_snake3_mtx.i11";
connectAttr "C_snake3_pSurf.nz" "C_snake3_mtx.i12";
connectAttr "C_snake3_pSurf.tvx" "C_snake3_mtx.i20";
connectAttr "C_snake3_pSurf.tvy" "C_snake3_mtx.i21";
connectAttr "C_snake3_pSurf.tvz" "C_snake3_mtx.i22";
connectAttr "C_snake3_mtx.o" "C_snake3_dec.imat";
connectAttr "C_curve1_crv.globalScale" "C_snakeLenGlobal45_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeStretch45_md.i1x";
connectAttr "C_snakeLenGlobal45_md.ox" "C_snakeStretch45_md.i2x";
connectAttr "C_curve1_crv.globalScale" "C_snakeRevGlobal45_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeRevStretch45_md.i1x";
connectAttr "C_snakeRevGlobal45_md.ox" "C_snakeRevStretch45_md.i2x";
connectAttr "C_snake1_cInfo.al" "C_snakeRevLen45_pma.i1[0]";
connectAttr "C_snakeRevStretch45_md.ox" "C_snakeRevLen45_pma.i1[1]";
connectAttr "C_curve1_crv.reverseRoot" "C_snakeBlendRoot45_bln.b";
connectAttr "C_snakeRevLen45_pma.o1" "C_snakeBlendRoot45_bln.c1r";
connectAttr "C_snakeStretch45_md.ox" "C_snakeBlendRoot45_bln.c2r";
connectAttr "C_snakeBlendRoot45_bln.opr" "C_snakeOffset45_pma.i1[0]";
connectAttr "C_curve1_crv.offset" "C_snakeOffset45_pma.i1[1]";
connectAttr "C_curve1_crvShape.ws" "C_snake3_bsn1.incv";
connectAttr "C_snakeOffset45_pma.o1" "C_snake3_bsn1.iv";
connectAttr "C_snake3_bsn1.ov" "C_snake3_pinf1.pr";
connectAttr "C_curve1_crvShape.ws" "C_snake3_pinf1.ic";
connectAttr "C_snake3_pinf1.p" "C_snake14_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake14_pntSInfo.is";
connectAttr "C_snake3_pinf1.p" "C_snake16_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake16_pntSInfo.is";
connectAttr "C_surface1_srfShape.ws" "C_snake4_pSurf.is";
connectAttr "C_snake16_pntSInfo.u" "C_snake4_pSurf.u";
connectAttr "C_snake16_pntSInfo.v" "C_snake4_pSurf.v";
connectAttr "C_snake4_pSurf.tux" "C_snake4_mtx.i00";
connectAttr "C_snake4_pSurf.tuy" "C_snake4_mtx.i01";
connectAttr "C_snake4_pSurf.tuz" "C_snake4_mtx.i02";
connectAttr "C_snake4_pSurf.nx" "C_snake4_mtx.i10";
connectAttr "C_snake4_pSurf.ny" "C_snake4_mtx.i11";
connectAttr "C_snake4_pSurf.nz" "C_snake4_mtx.i12";
connectAttr "C_snake4_pSurf.tvx" "C_snake4_mtx.i20";
connectAttr "C_snake4_pSurf.tvy" "C_snake4_mtx.i21";
connectAttr "C_snake4_pSurf.tvz" "C_snake4_mtx.i22";
connectAttr "C_snake4_mtx.o" "C_snake4_dec.imat";
connectAttr "C_curve1_crv.globalScale" "C_snakeLenGlobal46_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeStretch46_md.i1x";
connectAttr "C_snakeLenGlobal46_md.ox" "C_snakeStretch46_md.i2x";
connectAttr "C_curve1_crv.globalScale" "C_snakeRevGlobal46_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeRevStretch46_md.i1x";
connectAttr "C_snakeRevGlobal46_md.ox" "C_snakeRevStretch46_md.i2x";
connectAttr "C_snake1_cInfo.al" "C_snakeRevLen46_pma.i1[0]";
connectAttr "C_snakeRevStretch46_md.ox" "C_snakeRevLen46_pma.i1[1]";
connectAttr "C_curve1_crv.reverseRoot" "C_snakeBlendRoot46_bln.b";
connectAttr "C_snakeRevLen46_pma.o1" "C_snakeBlendRoot46_bln.c1r";
connectAttr "C_snakeStretch46_md.ox" "C_snakeBlendRoot46_bln.c2r";
connectAttr "C_snakeBlendRoot46_bln.opr" "C_snakeOffset46_pma.i1[0]";
connectAttr "C_curve1_crv.offset" "C_snakeOffset46_pma.i1[1]";
connectAttr "C_curve1_crvShape.ws" "C_snake4_bsn1.incv";
connectAttr "C_snakeOffset46_pma.o1" "C_snake4_bsn1.iv";
connectAttr "C_snake4_bsn1.ov" "C_snake4_pinf1.pr";
connectAttr "C_curve1_crvShape.ws" "C_snake4_pinf1.ic";
connectAttr "C_snake4_pinf1.p" "C_snake18_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake18_pntSInfo.is";
connectAttr "C_snake4_pinf1.p" "C_snake20_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake20_pntSInfo.is";
connectAttr "C_surface1_srfShape.ws" "C_snake5_pSurf.is";
connectAttr "C_snake20_pntSInfo.u" "C_snake5_pSurf.u";
connectAttr "C_snake20_pntSInfo.v" "C_snake5_pSurf.v";
connectAttr "C_snake5_pSurf.tux" "C_snake5_mtx.i00";
connectAttr "C_snake5_pSurf.tuy" "C_snake5_mtx.i01";
connectAttr "C_snake5_pSurf.tuz" "C_snake5_mtx.i02";
connectAttr "C_snake5_pSurf.nx" "C_snake5_mtx.i10";
connectAttr "C_snake5_pSurf.ny" "C_snake5_mtx.i11";
connectAttr "C_snake5_pSurf.nz" "C_snake5_mtx.i12";
connectAttr "C_snake5_pSurf.tvx" "C_snake5_mtx.i20";
connectAttr "C_snake5_pSurf.tvy" "C_snake5_mtx.i21";
connectAttr "C_snake5_pSurf.tvz" "C_snake5_mtx.i22";
connectAttr "C_snake5_mtx.o" "C_snake5_dec.imat";
connectAttr "C_curve1_crv.globalScale" "C_snakeLenGlobal47_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeStretch47_md.i1x";
connectAttr "C_snakeLenGlobal47_md.ox" "C_snakeStretch47_md.i2x";
connectAttr "C_curve1_crv.globalScale" "C_snakeRevGlobal47_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeRevStretch47_md.i1x";
connectAttr "C_snakeRevGlobal47_md.ox" "C_snakeRevStretch47_md.i2x";
connectAttr "C_snake1_cInfo.al" "C_snakeRevLen47_pma.i1[0]";
connectAttr "C_snakeRevStretch47_md.ox" "C_snakeRevLen47_pma.i1[1]";
connectAttr "C_curve1_crv.reverseRoot" "C_snakeBlendRoot47_bln.b";
connectAttr "C_snakeRevLen47_pma.o1" "C_snakeBlendRoot47_bln.c1r";
connectAttr "C_snakeStretch47_md.ox" "C_snakeBlendRoot47_bln.c2r";
connectAttr "C_snakeBlendRoot47_bln.opr" "C_snakeOffset47_pma.i1[0]";
connectAttr "C_curve1_crv.offset" "C_snakeOffset47_pma.i1[1]";
connectAttr "C_curve1_crvShape.ws" "C_snake5_bsn1.incv";
connectAttr "C_snakeOffset47_pma.o1" "C_snake5_bsn1.iv";
connectAttr "C_snake5_bsn1.ov" "C_snake5_pinf1.pr";
connectAttr "C_curve1_crvShape.ws" "C_snake5_pinf1.ic";
connectAttr "C_snake5_pinf1.p" "C_snake22_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake22_pntSInfo.is";
connectAttr "C_snake5_pinf1.p" "C_snake24_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake24_pntSInfo.is";
connectAttr "C_surface1_srfShape.ws" "C_snake6_pSurf.is";
connectAttr "C_snake24_pntSInfo.u" "C_snake6_pSurf.u";
connectAttr "C_snake24_pntSInfo.v" "C_snake6_pSurf.v";
connectAttr "C_snake6_pSurf.tux" "C_snake6_mtx.i00";
connectAttr "C_snake6_pSurf.tuy" "C_snake6_mtx.i01";
connectAttr "C_snake6_pSurf.tuz" "C_snake6_mtx.i02";
connectAttr "C_snake6_pSurf.nx" "C_snake6_mtx.i10";
connectAttr "C_snake6_pSurf.ny" "C_snake6_mtx.i11";
connectAttr "C_snake6_pSurf.nz" "C_snake6_mtx.i12";
connectAttr "C_snake6_pSurf.tvx" "C_snake6_mtx.i20";
connectAttr "C_snake6_pSurf.tvy" "C_snake6_mtx.i21";
connectAttr "C_snake6_pSurf.tvz" "C_snake6_mtx.i22";
connectAttr "C_snake6_mtx.o" "C_snake6_dec.imat";
connectAttr "C_curve1_crv.globalScale" "C_snakeLenGlobal48_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeStretch48_md.i1x";
connectAttr "C_snakeLenGlobal48_md.ox" "C_snakeStretch48_md.i2x";
connectAttr "C_curve1_crv.globalScale" "C_snakeRevGlobal48_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeRevStretch48_md.i1x";
connectAttr "C_snakeRevGlobal48_md.ox" "C_snakeRevStretch48_md.i2x";
connectAttr "C_snake1_cInfo.al" "C_snakeRevLen48_pma.i1[0]";
connectAttr "C_snakeRevStretch48_md.ox" "C_snakeRevLen48_pma.i1[1]";
connectAttr "C_curve1_crv.reverseRoot" "C_snakeBlendRoot48_bln.b";
connectAttr "C_snakeRevLen48_pma.o1" "C_snakeBlendRoot48_bln.c1r";
connectAttr "C_snakeStretch48_md.ox" "C_snakeBlendRoot48_bln.c2r";
connectAttr "C_snakeBlendRoot48_bln.opr" "C_snakeOffset48_pma.i1[0]";
connectAttr "C_curve1_crv.offset" "C_snakeOffset48_pma.i1[1]";
connectAttr "C_curve1_crvShape.ws" "C_snake6_bsn1.incv";
connectAttr "C_snakeOffset48_pma.o1" "C_snake6_bsn1.iv";
connectAttr "C_snake6_bsn1.ov" "C_snake6_pinf1.pr";
connectAttr "C_curve1_crvShape.ws" "C_snake6_pinf1.ic";
connectAttr "C_snake6_pinf1.p" "C_snake26_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake26_pntSInfo.is";
connectAttr "C_snake6_pinf1.p" "C_snake28_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake28_pntSInfo.is";
connectAttr "C_surface1_srfShape.ws" "C_snake7_pSurf.is";
connectAttr "C_snake28_pntSInfo.u" "C_snake7_pSurf.u";
connectAttr "C_snake28_pntSInfo.v" "C_snake7_pSurf.v";
connectAttr "C_snake7_pSurf.tux" "C_snake7_mtx.i00";
connectAttr "C_snake7_pSurf.tuy" "C_snake7_mtx.i01";
connectAttr "C_snake7_pSurf.tuz" "C_snake7_mtx.i02";
connectAttr "C_snake7_pSurf.nx" "C_snake7_mtx.i10";
connectAttr "C_snake7_pSurf.ny" "C_snake7_mtx.i11";
connectAttr "C_snake7_pSurf.nz" "C_snake7_mtx.i12";
connectAttr "C_snake7_pSurf.tvx" "C_snake7_mtx.i20";
connectAttr "C_snake7_pSurf.tvy" "C_snake7_mtx.i21";
connectAttr "C_snake7_pSurf.tvz" "C_snake7_mtx.i22";
connectAttr "C_snake7_mtx.o" "C_snake7_dec.imat";
connectAttr "C_curve1_crv.globalScale" "C_snakeLenGlobal49_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeStretch49_md.i1x";
connectAttr "C_snakeLenGlobal49_md.ox" "C_snakeStretch49_md.i2x";
connectAttr "C_curve1_crv.globalScale" "C_snakeRevGlobal49_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeRevStretch49_md.i1x";
connectAttr "C_snakeRevGlobal49_md.ox" "C_snakeRevStretch49_md.i2x";
connectAttr "C_snake1_cInfo.al" "C_snakeRevLen49_pma.i1[0]";
connectAttr "C_snakeRevStretch49_md.ox" "C_snakeRevLen49_pma.i1[1]";
connectAttr "C_curve1_crv.reverseRoot" "C_snakeBlendRoot49_bln.b";
connectAttr "C_snakeRevLen49_pma.o1" "C_snakeBlendRoot49_bln.c1r";
connectAttr "C_snakeStretch49_md.ox" "C_snakeBlendRoot49_bln.c2r";
connectAttr "C_snakeBlendRoot49_bln.opr" "C_snakeOffset49_pma.i1[0]";
connectAttr "C_curve1_crv.offset" "C_snakeOffset49_pma.i1[1]";
connectAttr "C_curve1_crvShape.ws" "C_snake7_bsn1.incv";
connectAttr "C_snakeOffset49_pma.o1" "C_snake7_bsn1.iv";
connectAttr "C_snake7_bsn1.ov" "C_snake7_pinf1.pr";
connectAttr "C_curve1_crvShape.ws" "C_snake7_pinf1.ic";
connectAttr "C_snake7_pinf1.p" "C_snake30_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake30_pntSInfo.is";
connectAttr "C_snake7_pinf1.p" "C_snake32_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake32_pntSInfo.is";
connectAttr "C_surface1_srfShape.ws" "C_snake8_pSurf.is";
connectAttr "C_snake32_pntSInfo.u" "C_snake8_pSurf.u";
connectAttr "C_snake32_pntSInfo.v" "C_snake8_pSurf.v";
connectAttr "C_snake8_pSurf.tux" "C_snake8_mtx.i00";
connectAttr "C_snake8_pSurf.tuy" "C_snake8_mtx.i01";
connectAttr "C_snake8_pSurf.tuz" "C_snake8_mtx.i02";
connectAttr "C_snake8_pSurf.nx" "C_snake8_mtx.i10";
connectAttr "C_snake8_pSurf.ny" "C_snake8_mtx.i11";
connectAttr "C_snake8_pSurf.nz" "C_snake8_mtx.i12";
connectAttr "C_snake8_pSurf.tvx" "C_snake8_mtx.i20";
connectAttr "C_snake8_pSurf.tvy" "C_snake8_mtx.i21";
connectAttr "C_snake8_pSurf.tvz" "C_snake8_mtx.i22";
connectAttr "C_snake8_mtx.o" "C_snake8_dec.imat";
connectAttr "C_curve1_crv.globalScale" "C_snakeLenGlobal50_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeStretch50_md.i1x";
connectAttr "C_snakeLenGlobal50_md.ox" "C_snakeStretch50_md.i2x";
connectAttr "C_curve1_crv.globalScale" "C_snakeRevGlobal50_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeRevStretch50_md.i1x";
connectAttr "C_snakeRevGlobal50_md.ox" "C_snakeRevStretch50_md.i2x";
connectAttr "C_snake1_cInfo.al" "C_snakeRevLen50_pma.i1[0]";
connectAttr "C_snakeRevStretch50_md.ox" "C_snakeRevLen50_pma.i1[1]";
connectAttr "C_curve1_crv.reverseRoot" "C_snakeBlendRoot50_bln.b";
connectAttr "C_snakeRevLen50_pma.o1" "C_snakeBlendRoot50_bln.c1r";
connectAttr "C_snakeStretch50_md.ox" "C_snakeBlendRoot50_bln.c2r";
connectAttr "C_snakeBlendRoot50_bln.opr" "C_snakeOffset50_pma.i1[0]";
connectAttr "C_curve1_crv.offset" "C_snakeOffset50_pma.i1[1]";
connectAttr "C_curve1_crvShape.ws" "C_snake8_bsn1.incv";
connectAttr "C_snakeOffset50_pma.o1" "C_snake8_bsn1.iv";
connectAttr "C_snake8_bsn1.ov" "C_snake8_pinf1.pr";
connectAttr "C_curve1_crvShape.ws" "C_snake8_pinf1.ic";
connectAttr "C_snake8_pinf1.p" "C_snake34_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake34_pntSInfo.is";
connectAttr "C_snake8_pinf1.p" "C_snake36_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake36_pntSInfo.is";
connectAttr "C_surface1_srfShape.ws" "C_snake9_pSurf.is";
connectAttr "C_snake36_pntSInfo.u" "C_snake9_pSurf.u";
connectAttr "C_snake36_pntSInfo.v" "C_snake9_pSurf.v";
connectAttr "C_snake9_pSurf.tux" "C_snake9_mtx.i00";
connectAttr "C_snake9_pSurf.tuy" "C_snake9_mtx.i01";
connectAttr "C_snake9_pSurf.tuz" "C_snake9_mtx.i02";
connectAttr "C_snake9_pSurf.nx" "C_snake9_mtx.i10";
connectAttr "C_snake9_pSurf.ny" "C_snake9_mtx.i11";
connectAttr "C_snake9_pSurf.nz" "C_snake9_mtx.i12";
connectAttr "C_snake9_pSurf.tvx" "C_snake9_mtx.i20";
connectAttr "C_snake9_pSurf.tvy" "C_snake9_mtx.i21";
connectAttr "C_snake9_pSurf.tvz" "C_snake9_mtx.i22";
connectAttr "C_snake9_mtx.o" "C_snake9_dec.imat";
connectAttr "C_curve1_crv.globalScale" "C_snakeLenGlobal51_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeStretch51_md.i1x";
connectAttr "C_snakeLenGlobal51_md.ox" "C_snakeStretch51_md.i2x";
connectAttr "C_curve1_crv.globalScale" "C_snakeRevGlobal51_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeRevStretch51_md.i1x";
connectAttr "C_snakeRevGlobal51_md.ox" "C_snakeRevStretch51_md.i2x";
connectAttr "C_snake1_cInfo.al" "C_snakeRevLen51_pma.i1[0]";
connectAttr "C_snakeRevStretch51_md.ox" "C_snakeRevLen51_pma.i1[1]";
connectAttr "C_curve1_crv.reverseRoot" "C_snakeBlendRoot51_bln.b";
connectAttr "C_snakeRevLen51_pma.o1" "C_snakeBlendRoot51_bln.c1r";
connectAttr "C_snakeStretch51_md.ox" "C_snakeBlendRoot51_bln.c2r";
connectAttr "C_snakeBlendRoot51_bln.opr" "C_snakeOffset51_pma.i1[0]";
connectAttr "C_curve1_crv.offset" "C_snakeOffset51_pma.i1[1]";
connectAttr "C_curve1_crvShape.ws" "C_snake9_bsn1.incv";
connectAttr "C_snakeOffset51_pma.o1" "C_snake9_bsn1.iv";
connectAttr "C_snake9_bsn1.ov" "C_snake9_pinf1.pr";
connectAttr "C_curve1_crvShape.ws" "C_snake9_pinf1.ic";
connectAttr "C_snake9_pinf1.p" "C_snake38_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake38_pntSInfo.is";
connectAttr "C_snake9_pinf1.p" "C_snake40_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake40_pntSInfo.is";
connectAttr "C_surface1_srfShape.ws" "C_snake10_pSurf.is";
connectAttr "C_snake40_pntSInfo.u" "C_snake10_pSurf.u";
connectAttr "C_snake40_pntSInfo.v" "C_snake10_pSurf.v";
connectAttr "C_snake10_pSurf.tux" "C_snake10_mtx.i00";
connectAttr "C_snake10_pSurf.tuy" "C_snake10_mtx.i01";
connectAttr "C_snake10_pSurf.tuz" "C_snake10_mtx.i02";
connectAttr "C_snake10_pSurf.nx" "C_snake10_mtx.i10";
connectAttr "C_snake10_pSurf.ny" "C_snake10_mtx.i11";
connectAttr "C_snake10_pSurf.nz" "C_snake10_mtx.i12";
connectAttr "C_snake10_pSurf.tvx" "C_snake10_mtx.i20";
connectAttr "C_snake10_pSurf.tvy" "C_snake10_mtx.i21";
connectAttr "C_snake10_pSurf.tvz" "C_snake10_mtx.i22";
connectAttr "C_snake10_mtx.o" "C_snake10_dec.imat";
connectAttr "C_curve1_crv.globalScale" "C_snakeLenGlobal52_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeStretch52_md.i1x";
connectAttr "C_snakeLenGlobal52_md.ox" "C_snakeStretch52_md.i2x";
connectAttr "C_curve1_crv.globalScale" "C_snakeRevGlobal52_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeRevStretch52_md.i1x";
connectAttr "C_snakeRevGlobal52_md.ox" "C_snakeRevStretch52_md.i2x";
connectAttr "C_snake1_cInfo.al" "C_snakeRevLen52_pma.i1[0]";
connectAttr "C_snakeRevStretch52_md.ox" "C_snakeRevLen52_pma.i1[1]";
connectAttr "C_curve1_crv.reverseRoot" "C_snakeBlendRoot52_bln.b";
connectAttr "C_snakeRevLen52_pma.o1" "C_snakeBlendRoot52_bln.c1r";
connectAttr "C_snakeStretch52_md.ox" "C_snakeBlendRoot52_bln.c2r";
connectAttr "C_snakeBlendRoot52_bln.opr" "C_snakeOffset52_pma.i1[0]";
connectAttr "C_curve1_crv.offset" "C_snakeOffset52_pma.i1[1]";
connectAttr "C_curve1_crvShape.ws" "C_snake10_bsn1.incv";
connectAttr "C_snakeOffset52_pma.o1" "C_snake10_bsn1.iv";
connectAttr "C_snake10_bsn1.ov" "C_snake10_pinf1.pr";
connectAttr "C_curve1_crvShape.ws" "C_snake10_pinf1.ic";
connectAttr "C_snake10_pinf1.p" "C_snake42_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake42_pntSInfo.is";
connectAttr "C_snake10_pinf1.p" "C_snake44_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake44_pntSInfo.is";
connectAttr "C_surface1_srfShape.ws" "C_snake11_pSurf.is";
connectAttr "C_snake44_pntSInfo.u" "C_snake11_pSurf.u";
connectAttr "C_snake44_pntSInfo.v" "C_snake11_pSurf.v";
connectAttr "C_snake11_pSurf.tux" "C_snake11_mtx.i00";
connectAttr "C_snake11_pSurf.tuy" "C_snake11_mtx.i01";
connectAttr "C_snake11_pSurf.tuz" "C_snake11_mtx.i02";
connectAttr "C_snake11_pSurf.nx" "C_snake11_mtx.i10";
connectAttr "C_snake11_pSurf.ny" "C_snake11_mtx.i11";
connectAttr "C_snake11_pSurf.nz" "C_snake11_mtx.i12";
connectAttr "C_snake11_pSurf.tvx" "C_snake11_mtx.i20";
connectAttr "C_snake11_pSurf.tvy" "C_snake11_mtx.i21";
connectAttr "C_snake11_pSurf.tvz" "C_snake11_mtx.i22";
connectAttr "C_snake11_mtx.o" "C_snake11_dec.imat";
connectAttr "C_curve1_crv.globalScale" "C_snakeLenGlobal53_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeStretch53_md.i1x";
connectAttr "C_snakeLenGlobal53_md.ox" "C_snakeStretch53_md.i2x";
connectAttr "C_curve1_crv.globalScale" "C_snakeRevGlobal53_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeRevStretch53_md.i1x";
connectAttr "C_snakeRevGlobal53_md.ox" "C_snakeRevStretch53_md.i2x";
connectAttr "C_snake1_cInfo.al" "C_snakeRevLen53_pma.i1[0]";
connectAttr "C_snakeRevStretch53_md.ox" "C_snakeRevLen53_pma.i1[1]";
connectAttr "C_curve1_crv.reverseRoot" "C_snakeBlendRoot53_bln.b";
connectAttr "C_snakeRevLen53_pma.o1" "C_snakeBlendRoot53_bln.c1r";
connectAttr "C_snakeStretch53_md.ox" "C_snakeBlendRoot53_bln.c2r";
connectAttr "C_snakeBlendRoot53_bln.opr" "C_snakeOffset53_pma.i1[0]";
connectAttr "C_curve1_crv.offset" "C_snakeOffset53_pma.i1[1]";
connectAttr "C_curve1_crvShape.ws" "C_snake11_bsn1.incv";
connectAttr "C_snakeOffset53_pma.o1" "C_snake11_bsn1.iv";
connectAttr "C_snake11_bsn1.ov" "C_snake11_pinf1.pr";
connectAttr "C_curve1_crvShape.ws" "C_snake11_pinf1.ic";
connectAttr "C_snake11_pinf1.p" "C_snake46_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake46_pntSInfo.is";
connectAttr "C_snake11_pinf1.p" "C_snake48_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake48_pntSInfo.is";
connectAttr "C_surface1_srfShape.ws" "C_snake12_pSurf.is";
connectAttr "C_snake48_pntSInfo.u" "C_snake12_pSurf.u";
connectAttr "C_snake48_pntSInfo.v" "C_snake12_pSurf.v";
connectAttr "C_snake12_pSurf.tux" "C_snake12_mtx.i00";
connectAttr "C_snake12_pSurf.tuy" "C_snake12_mtx.i01";
connectAttr "C_snake12_pSurf.tuz" "C_snake12_mtx.i02";
connectAttr "C_snake12_pSurf.nx" "C_snake12_mtx.i10";
connectAttr "C_snake12_pSurf.ny" "C_snake12_mtx.i11";
connectAttr "C_snake12_pSurf.nz" "C_snake12_mtx.i12";
connectAttr "C_snake12_pSurf.tvx" "C_snake12_mtx.i20";
connectAttr "C_snake12_pSurf.tvy" "C_snake12_mtx.i21";
connectAttr "C_snake12_pSurf.tvz" "C_snake12_mtx.i22";
connectAttr "C_snake12_mtx.o" "C_snake12_dec.imat";
connectAttr "C_curve1_crv.globalScale" "C_snakeLenGlobal54_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeStretch54_md.i1x";
connectAttr "C_snakeLenGlobal54_md.ox" "C_snakeStretch54_md.i2x";
connectAttr "C_curve1_crv.globalScale" "C_snakeRevGlobal54_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeRevStretch54_md.i1x";
connectAttr "C_snakeRevGlobal54_md.ox" "C_snakeRevStretch54_md.i2x";
connectAttr "C_snake1_cInfo.al" "C_snakeRevLen54_pma.i1[0]";
connectAttr "C_snakeRevStretch54_md.ox" "C_snakeRevLen54_pma.i1[1]";
connectAttr "C_curve1_crv.reverseRoot" "C_snakeBlendRoot54_bln.b";
connectAttr "C_snakeRevLen54_pma.o1" "C_snakeBlendRoot54_bln.c1r";
connectAttr "C_snakeStretch54_md.ox" "C_snakeBlendRoot54_bln.c2r";
connectAttr "C_snakeBlendRoot54_bln.opr" "C_snakeOffset54_pma.i1[0]";
connectAttr "C_curve1_crv.offset" "C_snakeOffset54_pma.i1[1]";
connectAttr "C_curve1_crvShape.ws" "C_snake12_bsn1.incv";
connectAttr "C_snakeOffset54_pma.o1" "C_snake12_bsn1.iv";
connectAttr "C_snake12_bsn1.ov" "C_snake12_pinf1.pr";
connectAttr "C_curve1_crvShape.ws" "C_snake12_pinf1.ic";
connectAttr "C_snake12_pinf1.p" "C_snake50_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake50_pntSInfo.is";
connectAttr "C_snake12_pinf1.p" "C_snake52_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake52_pntSInfo.is";
connectAttr "C_surface1_srfShape.ws" "C_snake13_pSurf.is";
connectAttr "C_snake52_pntSInfo.u" "C_snake13_pSurf.u";
connectAttr "C_snake52_pntSInfo.v" "C_snake13_pSurf.v";
connectAttr "C_snake13_pSurf.tux" "C_snake13_mtx.i00";
connectAttr "C_snake13_pSurf.tuy" "C_snake13_mtx.i01";
connectAttr "C_snake13_pSurf.tuz" "C_snake13_mtx.i02";
connectAttr "C_snake13_pSurf.nx" "C_snake13_mtx.i10";
connectAttr "C_snake13_pSurf.ny" "C_snake13_mtx.i11";
connectAttr "C_snake13_pSurf.nz" "C_snake13_mtx.i12";
connectAttr "C_snake13_pSurf.tvx" "C_snake13_mtx.i20";
connectAttr "C_snake13_pSurf.tvy" "C_snake13_mtx.i21";
connectAttr "C_snake13_pSurf.tvz" "C_snake13_mtx.i22";
connectAttr "C_snake13_mtx.o" "C_snake13_dec.imat";
connectAttr "C_curve1_crv.globalScale" "C_snakeLenGlobal55_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeStretch55_md.i1x";
connectAttr "C_snakeLenGlobal55_md.ox" "C_snakeStretch55_md.i2x";
connectAttr "C_curve1_crv.globalScale" "C_snakeRevGlobal55_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeRevStretch55_md.i1x";
connectAttr "C_snakeRevGlobal55_md.ox" "C_snakeRevStretch55_md.i2x";
connectAttr "C_snake1_cInfo.al" "C_snakeRevLen55_pma.i1[0]";
connectAttr "C_snakeRevStretch55_md.ox" "C_snakeRevLen55_pma.i1[1]";
connectAttr "C_curve1_crv.reverseRoot" "C_snakeBlendRoot55_bln.b";
connectAttr "C_snakeRevLen55_pma.o1" "C_snakeBlendRoot55_bln.c1r";
connectAttr "C_snakeStretch55_md.ox" "C_snakeBlendRoot55_bln.c2r";
connectAttr "C_snakeBlendRoot55_bln.opr" "C_snakeOffset55_pma.i1[0]";
connectAttr "C_curve1_crv.offset" "C_snakeOffset55_pma.i1[1]";
connectAttr "C_curve1_crvShape.ws" "C_snake13_bsn1.incv";
connectAttr "C_snakeOffset55_pma.o1" "C_snake13_bsn1.iv";
connectAttr "C_snake13_bsn1.ov" "C_snake13_pinf1.pr";
connectAttr "C_curve1_crvShape.ws" "C_snake13_pinf1.ic";
connectAttr "C_snake13_pinf1.p" "C_snake54_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake54_pntSInfo.is";
connectAttr "C_snake13_pinf1.p" "C_snake56_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake56_pntSInfo.is";
connectAttr "C_surface1_srfShape.ws" "C_snake14_pSurf.is";
connectAttr "C_snake56_pntSInfo.u" "C_snake14_pSurf.u";
connectAttr "C_snake56_pntSInfo.v" "C_snake14_pSurf.v";
connectAttr "C_snake14_pSurf.tux" "C_snake14_mtx.i00";
connectAttr "C_snake14_pSurf.tuy" "C_snake14_mtx.i01";
connectAttr "C_snake14_pSurf.tuz" "C_snake14_mtx.i02";
connectAttr "C_snake14_pSurf.nx" "C_snake14_mtx.i10";
connectAttr "C_snake14_pSurf.ny" "C_snake14_mtx.i11";
connectAttr "C_snake14_pSurf.nz" "C_snake14_mtx.i12";
connectAttr "C_snake14_pSurf.tvx" "C_snake14_mtx.i20";
connectAttr "C_snake14_pSurf.tvy" "C_snake14_mtx.i21";
connectAttr "C_snake14_pSurf.tvz" "C_snake14_mtx.i22";
connectAttr "C_snake14_mtx.o" "C_snake14_dec.imat";
connectAttr "C_curve1_crv.globalScale" "C_snakeLenGlobal56_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeStretch56_md.i1x";
connectAttr "C_snakeLenGlobal56_md.ox" "C_snakeStretch56_md.i2x";
connectAttr "C_curve1_crv.globalScale" "C_snakeRevGlobal56_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeRevStretch56_md.i1x";
connectAttr "C_snakeRevGlobal56_md.ox" "C_snakeRevStretch56_md.i2x";
connectAttr "C_snake1_cInfo.al" "C_snakeRevLen56_pma.i1[0]";
connectAttr "C_snakeRevStretch56_md.ox" "C_snakeRevLen56_pma.i1[1]";
connectAttr "C_curve1_crv.reverseRoot" "C_snakeBlendRoot56_bln.b";
connectAttr "C_snakeRevLen56_pma.o1" "C_snakeBlendRoot56_bln.c1r";
connectAttr "C_snakeStretch56_md.ox" "C_snakeBlendRoot56_bln.c2r";
connectAttr "C_snakeBlendRoot56_bln.opr" "C_snakeOffset56_pma.i1[0]";
connectAttr "C_curve1_crv.offset" "C_snakeOffset56_pma.i1[1]";
connectAttr "C_curve1_crvShape.ws" "C_snake14_bsn1.incv";
connectAttr "C_snakeOffset56_pma.o1" "C_snake14_bsn1.iv";
connectAttr "C_snake14_bsn1.ov" "C_snake14_pinf1.pr";
connectAttr "C_curve1_crvShape.ws" "C_snake14_pinf1.ic";
connectAttr "C_snake14_pinf1.p" "C_snake58_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake58_pntSInfo.is";
connectAttr "C_snake14_pinf1.p" "C_snake60_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake60_pntSInfo.is";
connectAttr "C_surface1_srfShape.ws" "C_snake15_pSurf.is";
connectAttr "C_snake60_pntSInfo.u" "C_snake15_pSurf.u";
connectAttr "C_snake60_pntSInfo.v" "C_snake15_pSurf.v";
connectAttr "C_snake15_pSurf.tux" "C_snake15_mtx.i00";
connectAttr "C_snake15_pSurf.tuy" "C_snake15_mtx.i01";
connectAttr "C_snake15_pSurf.tuz" "C_snake15_mtx.i02";
connectAttr "C_snake15_pSurf.nx" "C_snake15_mtx.i10";
connectAttr "C_snake15_pSurf.ny" "C_snake15_mtx.i11";
connectAttr "C_snake15_pSurf.nz" "C_snake15_mtx.i12";
connectAttr "C_snake15_pSurf.tvx" "C_snake15_mtx.i20";
connectAttr "C_snake15_pSurf.tvy" "C_snake15_mtx.i21";
connectAttr "C_snake15_pSurf.tvz" "C_snake15_mtx.i22";
connectAttr "C_snake15_mtx.o" "C_snake15_dec.imat";
connectAttr "C_curve1_crv.globalScale" "C_snakeLenGlobal57_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeStretch57_md.i1x";
connectAttr "C_snakeLenGlobal57_md.ox" "C_snakeStretch57_md.i2x";
connectAttr "C_curve1_crv.globalScale" "C_snakeRevGlobal57_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeRevStretch57_md.i1x";
connectAttr "C_snakeRevGlobal57_md.ox" "C_snakeRevStretch57_md.i2x";
connectAttr "C_snake1_cInfo.al" "C_snakeRevLen57_pma.i1[0]";
connectAttr "C_snakeRevStretch57_md.ox" "C_snakeRevLen57_pma.i1[1]";
connectAttr "C_curve1_crv.reverseRoot" "C_snakeBlendRoot57_bln.b";
connectAttr "C_snakeRevLen57_pma.o1" "C_snakeBlendRoot57_bln.c1r";
connectAttr "C_snakeStretch57_md.ox" "C_snakeBlendRoot57_bln.c2r";
connectAttr "C_snakeBlendRoot57_bln.opr" "C_snakeOffset57_pma.i1[0]";
connectAttr "C_curve1_crv.offset" "C_snakeOffset57_pma.i1[1]";
connectAttr "C_curve1_crvShape.ws" "C_snake15_bsn1.incv";
connectAttr "C_snakeOffset57_pma.o1" "C_snake15_bsn1.iv";
connectAttr "C_snake15_bsn1.ov" "C_snake15_pinf1.pr";
connectAttr "C_curve1_crvShape.ws" "C_snake15_pinf1.ic";
connectAttr "C_snake15_pinf1.p" "C_snake62_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake62_pntSInfo.is";
connectAttr "C_snake15_pinf1.p" "C_snake64_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake64_pntSInfo.is";
connectAttr "C_surface1_srfShape.ws" "C_snake16_pSurf.is";
connectAttr "C_snake64_pntSInfo.u" "C_snake16_pSurf.u";
connectAttr "C_snake64_pntSInfo.v" "C_snake16_pSurf.v";
connectAttr "C_snake16_pSurf.tux" "C_snake16_mtx.i00";
connectAttr "C_snake16_pSurf.tuy" "C_snake16_mtx.i01";
connectAttr "C_snake16_pSurf.tuz" "C_snake16_mtx.i02";
connectAttr "C_snake16_pSurf.nx" "C_snake16_mtx.i10";
connectAttr "C_snake16_pSurf.ny" "C_snake16_mtx.i11";
connectAttr "C_snake16_pSurf.nz" "C_snake16_mtx.i12";
connectAttr "C_snake16_pSurf.tvx" "C_snake16_mtx.i20";
connectAttr "C_snake16_pSurf.tvy" "C_snake16_mtx.i21";
connectAttr "C_snake16_pSurf.tvz" "C_snake16_mtx.i22";
connectAttr "C_snake16_mtx.o" "C_snake16_dec.imat";
connectAttr "C_curve1_crv.globalScale" "C_snakeLenGlobal58_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeStretch58_md.i1x";
connectAttr "C_snakeLenGlobal58_md.ox" "C_snakeStretch58_md.i2x";
connectAttr "C_curve1_crv.globalScale" "C_snakeRevGlobal58_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeRevStretch58_md.i1x";
connectAttr "C_snakeRevGlobal58_md.ox" "C_snakeRevStretch58_md.i2x";
connectAttr "C_snake1_cInfo.al" "C_snakeRevLen58_pma.i1[0]";
connectAttr "C_snakeRevStretch58_md.ox" "C_snakeRevLen58_pma.i1[1]";
connectAttr "C_curve1_crv.reverseRoot" "C_snakeBlendRoot58_bln.b";
connectAttr "C_snakeRevLen58_pma.o1" "C_snakeBlendRoot58_bln.c1r";
connectAttr "C_snakeStretch58_md.ox" "C_snakeBlendRoot58_bln.c2r";
connectAttr "C_snakeBlendRoot58_bln.opr" "C_snakeOffset58_pma.i1[0]";
connectAttr "C_curve1_crv.offset" "C_snakeOffset58_pma.i1[1]";
connectAttr "C_curve1_crvShape.ws" "C_snake16_bsn1.incv";
connectAttr "C_snakeOffset58_pma.o1" "C_snake16_bsn1.iv";
connectAttr "C_snake16_bsn1.ov" "C_snake16_pinf1.pr";
connectAttr "C_curve1_crvShape.ws" "C_snake16_pinf1.ic";
connectAttr "C_snake16_pinf1.p" "C_snake66_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake66_pntSInfo.is";
connectAttr "C_snake16_pinf1.p" "C_snake68_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake68_pntSInfo.is";
connectAttr "C_surface1_srfShape.ws" "C_snake17_pSurf.is";
connectAttr "C_snake68_pntSInfo.u" "C_snake17_pSurf.u";
connectAttr "C_snake68_pntSInfo.v" "C_snake17_pSurf.v";
connectAttr "C_snake17_pSurf.tux" "C_snake17_mtx.i00";
connectAttr "C_snake17_pSurf.tuy" "C_snake17_mtx.i01";
connectAttr "C_snake17_pSurf.tuz" "C_snake17_mtx.i02";
connectAttr "C_snake17_pSurf.nx" "C_snake17_mtx.i10";
connectAttr "C_snake17_pSurf.ny" "C_snake17_mtx.i11";
connectAttr "C_snake17_pSurf.nz" "C_snake17_mtx.i12";
connectAttr "C_snake17_pSurf.tvx" "C_snake17_mtx.i20";
connectAttr "C_snake17_pSurf.tvy" "C_snake17_mtx.i21";
connectAttr "C_snake17_pSurf.tvz" "C_snake17_mtx.i22";
connectAttr "C_snake17_mtx.o" "C_snake17_dec.imat";
connectAttr "C_curve1_crv.globalScale" "C_snakeLenGlobal59_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeStretch59_md.i1x";
connectAttr "C_snakeLenGlobal59_md.ox" "C_snakeStretch59_md.i2x";
connectAttr "C_curve1_crv.globalScale" "C_snakeRevGlobal59_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeRevStretch59_md.i1x";
connectAttr "C_snakeRevGlobal59_md.ox" "C_snakeRevStretch59_md.i2x";
connectAttr "C_snake1_cInfo.al" "C_snakeRevLen59_pma.i1[0]";
connectAttr "C_snakeRevStretch59_md.ox" "C_snakeRevLen59_pma.i1[1]";
connectAttr "C_curve1_crv.reverseRoot" "C_snakeBlendRoot59_bln.b";
connectAttr "C_snakeRevLen59_pma.o1" "C_snakeBlendRoot59_bln.c1r";
connectAttr "C_snakeStretch59_md.ox" "C_snakeBlendRoot59_bln.c2r";
connectAttr "C_snakeBlendRoot59_bln.opr" "C_snakeOffset59_pma.i1[0]";
connectAttr "C_curve1_crv.offset" "C_snakeOffset59_pma.i1[1]";
connectAttr "C_curve1_crvShape.ws" "C_snake17_bsn1.incv";
connectAttr "C_snakeOffset59_pma.o1" "C_snake17_bsn1.iv";
connectAttr "C_snake17_bsn1.ov" "C_snake17_pinf1.pr";
connectAttr "C_curve1_crvShape.ws" "C_snake17_pinf1.ic";
connectAttr "C_snake17_pinf1.p" "C_snake70_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake70_pntSInfo.is";
connectAttr "C_snake17_pinf1.p" "C_snake72_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake72_pntSInfo.is";
connectAttr "C_surface1_srfShape.ws" "C_snake18_pSurf.is";
connectAttr "C_snake72_pntSInfo.u" "C_snake18_pSurf.u";
connectAttr "C_snake72_pntSInfo.v" "C_snake18_pSurf.v";
connectAttr "C_snake18_pSurf.tux" "C_snake18_mtx.i00";
connectAttr "C_snake18_pSurf.tuy" "C_snake18_mtx.i01";
connectAttr "C_snake18_pSurf.tuz" "C_snake18_mtx.i02";
connectAttr "C_snake18_pSurf.nx" "C_snake18_mtx.i10";
connectAttr "C_snake18_pSurf.ny" "C_snake18_mtx.i11";
connectAttr "C_snake18_pSurf.nz" "C_snake18_mtx.i12";
connectAttr "C_snake18_pSurf.tvx" "C_snake18_mtx.i20";
connectAttr "C_snake18_pSurf.tvy" "C_snake18_mtx.i21";
connectAttr "C_snake18_pSurf.tvz" "C_snake18_mtx.i22";
connectAttr "C_snake18_mtx.o" "C_snake18_dec.imat";
connectAttr "C_curve1_crv.globalScale" "C_snakeLenGlobal60_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeStretch60_md.i1x";
connectAttr "C_snakeLenGlobal60_md.ox" "C_snakeStretch60_md.i2x";
connectAttr "C_curve1_crv.globalScale" "C_snakeRevGlobal60_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeRevStretch60_md.i1x";
connectAttr "C_snakeRevGlobal60_md.ox" "C_snakeRevStretch60_md.i2x";
connectAttr "C_snake1_cInfo.al" "C_snakeRevLen60_pma.i1[0]";
connectAttr "C_snakeRevStretch60_md.ox" "C_snakeRevLen60_pma.i1[1]";
connectAttr "C_curve1_crv.reverseRoot" "C_snakeBlendRoot60_bln.b";
connectAttr "C_snakeRevLen60_pma.o1" "C_snakeBlendRoot60_bln.c1r";
connectAttr "C_snakeStretch60_md.ox" "C_snakeBlendRoot60_bln.c2r";
connectAttr "C_snakeBlendRoot60_bln.opr" "C_snakeOffset60_pma.i1[0]";
connectAttr "C_curve1_crv.offset" "C_snakeOffset60_pma.i1[1]";
connectAttr "C_curve1_crvShape.ws" "C_snake18_bsn1.incv";
connectAttr "C_snakeOffset60_pma.o1" "C_snake18_bsn1.iv";
connectAttr "C_snake18_bsn1.ov" "C_snake18_pinf1.pr";
connectAttr "C_curve1_crvShape.ws" "C_snake18_pinf1.ic";
connectAttr "C_snake18_pinf1.p" "C_snake74_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake74_pntSInfo.is";
connectAttr "C_snake18_pinf1.p" "C_snake76_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake76_pntSInfo.is";
connectAttr "C_surface1_srfShape.ws" "C_snake19_pSurf.is";
connectAttr "C_snake76_pntSInfo.u" "C_snake19_pSurf.u";
connectAttr "C_snake76_pntSInfo.v" "C_snake19_pSurf.v";
connectAttr "C_snake19_pSurf.tux" "C_snake19_mtx.i00";
connectAttr "C_snake19_pSurf.tuy" "C_snake19_mtx.i01";
connectAttr "C_snake19_pSurf.tuz" "C_snake19_mtx.i02";
connectAttr "C_snake19_pSurf.nx" "C_snake19_mtx.i10";
connectAttr "C_snake19_pSurf.ny" "C_snake19_mtx.i11";
connectAttr "C_snake19_pSurf.nz" "C_snake19_mtx.i12";
connectAttr "C_snake19_pSurf.tvx" "C_snake19_mtx.i20";
connectAttr "C_snake19_pSurf.tvy" "C_snake19_mtx.i21";
connectAttr "C_snake19_pSurf.tvz" "C_snake19_mtx.i22";
connectAttr "C_snake19_mtx.o" "C_snake19_dec.imat";
connectAttr "C_curve1_crv.globalScale" "C_snakeLenGlobal61_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeStretch61_md.i1x";
connectAttr "C_snakeLenGlobal61_md.ox" "C_snakeStretch61_md.i2x";
connectAttr "C_curve1_crv.globalScale" "C_snakeRevGlobal61_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeRevStretch61_md.i1x";
connectAttr "C_snakeRevGlobal61_md.ox" "C_snakeRevStretch61_md.i2x";
connectAttr "C_snake1_cInfo.al" "C_snakeRevLen61_pma.i1[0]";
connectAttr "C_snakeRevStretch61_md.ox" "C_snakeRevLen61_pma.i1[1]";
connectAttr "C_curve1_crv.reverseRoot" "C_snakeBlendRoot61_bln.b";
connectAttr "C_snakeRevLen61_pma.o1" "C_snakeBlendRoot61_bln.c1r";
connectAttr "C_snakeStretch61_md.ox" "C_snakeBlendRoot61_bln.c2r";
connectAttr "C_snakeBlendRoot61_bln.opr" "C_snakeOffset61_pma.i1[0]";
connectAttr "C_curve1_crv.offset" "C_snakeOffset61_pma.i1[1]";
connectAttr "C_curve1_crvShape.ws" "C_snake19_bsn1.incv";
connectAttr "C_snakeOffset61_pma.o1" "C_snake19_bsn1.iv";
connectAttr "C_snake19_bsn1.ov" "C_snake19_pinf1.pr";
connectAttr "C_curve1_crvShape.ws" "C_snake19_pinf1.ic";
connectAttr "C_snake19_pinf1.p" "C_snake78_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake78_pntSInfo.is";
connectAttr "C_snake19_pinf1.p" "C_snake80_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake80_pntSInfo.is";
connectAttr "C_surface1_srfShape.ws" "C_snake20_pSurf.is";
connectAttr "C_snake80_pntSInfo.u" "C_snake20_pSurf.u";
connectAttr "C_snake80_pntSInfo.v" "C_snake20_pSurf.v";
connectAttr "C_snake20_pSurf.tux" "C_snake20_mtx.i00";
connectAttr "C_snake20_pSurf.tuy" "C_snake20_mtx.i01";
connectAttr "C_snake20_pSurf.tuz" "C_snake20_mtx.i02";
connectAttr "C_snake20_pSurf.nx" "C_snake20_mtx.i10";
connectAttr "C_snake20_pSurf.ny" "C_snake20_mtx.i11";
connectAttr "C_snake20_pSurf.nz" "C_snake20_mtx.i12";
connectAttr "C_snake20_pSurf.tvx" "C_snake20_mtx.i20";
connectAttr "C_snake20_pSurf.tvy" "C_snake20_mtx.i21";
connectAttr "C_snake20_pSurf.tvz" "C_snake20_mtx.i22";
connectAttr "C_snake20_mtx.o" "C_snake20_dec.imat";
connectAttr "C_curve1_crv.globalScale" "C_snakeLenGlobal62_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeStretch62_md.i1x";
connectAttr "C_snakeLenGlobal62_md.ox" "C_snakeStretch62_md.i2x";
connectAttr "C_curve1_crv.globalScale" "C_snakeRevGlobal62_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeRevStretch62_md.i1x";
connectAttr "C_snakeRevGlobal62_md.ox" "C_snakeRevStretch62_md.i2x";
connectAttr "C_snake1_cInfo.al" "C_snakeRevLen62_pma.i1[0]";
connectAttr "C_snakeRevStretch62_md.ox" "C_snakeRevLen62_pma.i1[1]";
connectAttr "C_curve1_crv.reverseRoot" "C_snakeBlendRoot62_bln.b";
connectAttr "C_snakeRevLen62_pma.o1" "C_snakeBlendRoot62_bln.c1r";
connectAttr "C_snakeStretch62_md.ox" "C_snakeBlendRoot62_bln.c2r";
connectAttr "C_snakeBlendRoot62_bln.opr" "C_snakeOffset62_pma.i1[0]";
connectAttr "C_curve1_crv.offset" "C_snakeOffset62_pma.i1[1]";
connectAttr "C_curve1_crvShape.ws" "C_snake20_bsn1.incv";
connectAttr "C_snakeOffset62_pma.o1" "C_snake20_bsn1.iv";
connectAttr "C_snake20_bsn1.ov" "C_snake20_pinf1.pr";
connectAttr "C_curve1_crvShape.ws" "C_snake20_pinf1.ic";
connectAttr "C_snake20_pinf1.p" "C_snake82_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake82_pntSInfo.is";
connectAttr "C_snake20_pinf1.p" "C_snake83_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake83_pntSInfo.is";
connectAttr "C_surface1_srfShape.ws" "C_snake21_pSurf.is";
connectAttr "C_snake83_pntSInfo.u" "C_snake21_pSurf.u";
connectAttr "C_snake83_pntSInfo.v" "C_snake21_pSurf.v";
connectAttr "C_snake21_pSurf.tux" "C_snake21_mtx.i00";
connectAttr "C_snake21_pSurf.tuy" "C_snake21_mtx.i01";
connectAttr "C_snake21_pSurf.tuz" "C_snake21_mtx.i02";
connectAttr "C_snake21_pSurf.nx" "C_snake21_mtx.i10";
connectAttr "C_snake21_pSurf.ny" "C_snake21_mtx.i11";
connectAttr "C_snake21_pSurf.nz" "C_snake21_mtx.i12";
connectAttr "C_snake21_pSurf.tvx" "C_snake21_mtx.i20";
connectAttr "C_snake21_pSurf.tvy" "C_snake21_mtx.i21";
connectAttr "C_snake21_pSurf.tvz" "C_snake21_mtx.i22";
connectAttr "C_snake21_mtx.o" "C_snake21_dec.imat";
connectAttr "C_curve1_crv.globalScale" "C_snakeLenGlobal63_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeStretch63_md.i1x";
connectAttr "C_snakeLenGlobal63_md.ox" "C_snakeStretch63_md.i2x";
connectAttr "C_curve1_crv.globalScale" "C_snakeRevGlobal63_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeRevStretch63_md.i1x";
connectAttr "C_snakeRevGlobal63_md.ox" "C_snakeRevStretch63_md.i2x";
connectAttr "C_snake1_cInfo.al" "C_snakeRevLen63_pma.i1[0]";
connectAttr "C_snakeRevStretch63_md.ox" "C_snakeRevLen63_pma.i1[1]";
connectAttr "C_curve1_crv.reverseRoot" "C_snakeBlendRoot63_bln.b";
connectAttr "C_snakeRevLen63_pma.o1" "C_snakeBlendRoot63_bln.c1r";
connectAttr "C_snakeStretch63_md.ox" "C_snakeBlendRoot63_bln.c2r";
connectAttr "C_snakeBlendRoot63_bln.opr" "C_snakeOffset63_pma.i1[0]";
connectAttr "C_curve1_crv.offset" "C_snakeOffset63_pma.i1[1]";
connectAttr "C_curve1_crvShape.ws" "C_snake21_bsn1.incv";
connectAttr "C_snakeOffset63_pma.o1" "C_snake21_bsn1.iv";
connectAttr "C_snake21_bsn1.ov" "C_snake21_pinf1.pr";
connectAttr "C_curve1_crvShape.ws" "C_snake21_pinf1.ic";
connectAttr "C_snake21_pinf1.p" "C_snake84_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake84_pntSInfo.is";
connectAttr "C_snake21_pinf1.p" "C_snake85_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake85_pntSInfo.is";
connectAttr "C_surface1_srfShape.ws" "C_snake22_pSurf.is";
connectAttr "C_snake85_pntSInfo.u" "C_snake22_pSurf.u";
connectAttr "C_snake85_pntSInfo.v" "C_snake22_pSurf.v";
connectAttr "C_snake22_pSurf.tux" "C_snake22_mtx.i00";
connectAttr "C_snake22_pSurf.tuy" "C_snake22_mtx.i01";
connectAttr "C_snake22_pSurf.tuz" "C_snake22_mtx.i02";
connectAttr "C_snake22_pSurf.nx" "C_snake22_mtx.i10";
connectAttr "C_snake22_pSurf.ny" "C_snake22_mtx.i11";
connectAttr "C_snake22_pSurf.nz" "C_snake22_mtx.i12";
connectAttr "C_snake22_pSurf.tvx" "C_snake22_mtx.i20";
connectAttr "C_snake22_pSurf.tvy" "C_snake22_mtx.i21";
connectAttr "C_snake22_pSurf.tvz" "C_snake22_mtx.i22";
connectAttr "C_snake22_mtx.o" "C_snake22_dec.imat";
connectAttr "C_curve1_crv.globalScale" "C_snakeLenGlobal64_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeStretch64_md.i1x";
connectAttr "C_snakeLenGlobal64_md.ox" "C_snakeStretch64_md.i2x";
connectAttr "C_curve1_crv.globalScale" "C_snakeRevGlobal64_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeRevStretch64_md.i1x";
connectAttr "C_snakeRevGlobal64_md.ox" "C_snakeRevStretch64_md.i2x";
connectAttr "C_snake1_cInfo.al" "C_snakeRevLen64_pma.i1[0]";
connectAttr "C_snakeRevStretch64_md.ox" "C_snakeRevLen64_pma.i1[1]";
connectAttr "C_curve1_crv.reverseRoot" "C_snakeBlendRoot64_bln.b";
connectAttr "C_snakeRevLen64_pma.o1" "C_snakeBlendRoot64_bln.c1r";
connectAttr "C_snakeStretch64_md.ox" "C_snakeBlendRoot64_bln.c2r";
connectAttr "C_snakeBlendRoot64_bln.opr" "C_snakeOffset64_pma.i1[0]";
connectAttr "C_curve1_crv.offset" "C_snakeOffset64_pma.i1[1]";
connectAttr "C_curve1_crvShape.ws" "C_snake22_bsn1.incv";
connectAttr "C_snakeOffset64_pma.o1" "C_snake22_bsn1.iv";
connectAttr "C_snake22_bsn1.ov" "C_snake22_pinf1.pr";
connectAttr "C_curve1_crvShape.ws" "C_snake22_pinf1.ic";
connectAttr "C_snake22_pinf1.p" "C_snake86_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake86_pntSInfo.is";
connectAttr "C_snake22_pinf1.p" "C_snake87_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake87_pntSInfo.is";
connectAttr "C_surface1_srfShape.ws" "C_snake23_pSurf.is";
connectAttr "C_snake87_pntSInfo.u" "C_snake23_pSurf.u";
connectAttr "C_snake87_pntSInfo.v" "C_snake23_pSurf.v";
connectAttr "C_snake23_pSurf.tux" "C_snake23_mtx.i00";
connectAttr "C_snake23_pSurf.tuy" "C_snake23_mtx.i01";
connectAttr "C_snake23_pSurf.tuz" "C_snake23_mtx.i02";
connectAttr "C_snake23_pSurf.nx" "C_snake23_mtx.i10";
connectAttr "C_snake23_pSurf.ny" "C_snake23_mtx.i11";
connectAttr "C_snake23_pSurf.nz" "C_snake23_mtx.i12";
connectAttr "C_snake23_pSurf.tvx" "C_snake23_mtx.i20";
connectAttr "C_snake23_pSurf.tvy" "C_snake23_mtx.i21";
connectAttr "C_snake23_pSurf.tvz" "C_snake23_mtx.i22";
connectAttr "C_snake23_mtx.o" "C_snake23_dec.imat";
connectAttr "C_curve1_crv.globalScale" "C_snakeLenGlobal65_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeStretch65_md.i1x";
connectAttr "C_snakeLenGlobal65_md.ox" "C_snakeStretch65_md.i2x";
connectAttr "C_curve1_crv.globalScale" "C_snakeRevGlobal65_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeRevStretch65_md.i1x";
connectAttr "C_snakeRevGlobal65_md.ox" "C_snakeRevStretch65_md.i2x";
connectAttr "C_snake1_cInfo.al" "C_snakeRevLen65_pma.i1[0]";
connectAttr "C_snakeRevStretch65_md.ox" "C_snakeRevLen65_pma.i1[1]";
connectAttr "C_curve1_crv.reverseRoot" "C_snakeBlendRoot65_bln.b";
connectAttr "C_snakeRevLen65_pma.o1" "C_snakeBlendRoot65_bln.c1r";
connectAttr "C_snakeStretch65_md.ox" "C_snakeBlendRoot65_bln.c2r";
connectAttr "C_snakeBlendRoot65_bln.opr" "C_snakeOffset65_pma.i1[0]";
connectAttr "C_curve1_crv.offset" "C_snakeOffset65_pma.i1[1]";
connectAttr "C_curve1_crvShape.ws" "C_snake23_bsn1.incv";
connectAttr "C_snakeOffset65_pma.o1" "C_snake23_bsn1.iv";
connectAttr "C_snake23_bsn1.ov" "C_snake23_pinf1.pr";
connectAttr "C_curve1_crvShape.ws" "C_snake23_pinf1.ic";
connectAttr "C_snake23_pinf1.p" "C_snake88_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake88_pntSInfo.is";
connectAttr "C_snake23_pinf1.p" "C_snake89_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake89_pntSInfo.is";
connectAttr "C_surface1_srfShape.ws" "C_snake24_pSurf.is";
connectAttr "C_snake89_pntSInfo.u" "C_snake24_pSurf.u";
connectAttr "C_snake89_pntSInfo.v" "C_snake24_pSurf.v";
connectAttr "C_snake24_pSurf.tux" "C_snake24_mtx.i00";
connectAttr "C_snake24_pSurf.tuy" "C_snake24_mtx.i01";
connectAttr "C_snake24_pSurf.tuz" "C_snake24_mtx.i02";
connectAttr "C_snake24_pSurf.nx" "C_snake24_mtx.i10";
connectAttr "C_snake24_pSurf.ny" "C_snake24_mtx.i11";
connectAttr "C_snake24_pSurf.nz" "C_snake24_mtx.i12";
connectAttr "C_snake24_pSurf.tvx" "C_snake24_mtx.i20";
connectAttr "C_snake24_pSurf.tvy" "C_snake24_mtx.i21";
connectAttr "C_snake24_pSurf.tvz" "C_snake24_mtx.i22";
connectAttr "C_snake24_mtx.o" "C_snake24_dec.imat";
connectAttr "C_curve1_crv.globalScale" "C_snakeLenGlobal66_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeStretch66_md.i1x";
connectAttr "C_snakeLenGlobal66_md.ox" "C_snakeStretch66_md.i2x";
connectAttr "C_curve1_crv.globalScale" "C_snakeRevGlobal66_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeRevStretch66_md.i1x";
connectAttr "C_snakeRevGlobal66_md.ox" "C_snakeRevStretch66_md.i2x";
connectAttr "C_snake1_cInfo.al" "C_snakeRevLen66_pma.i1[0]";
connectAttr "C_snakeRevStretch66_md.ox" "C_snakeRevLen66_pma.i1[1]";
connectAttr "C_curve1_crv.reverseRoot" "C_snakeBlendRoot66_bln.b";
connectAttr "C_snakeRevLen66_pma.o1" "C_snakeBlendRoot66_bln.c1r";
connectAttr "C_snakeStretch66_md.ox" "C_snakeBlendRoot66_bln.c2r";
connectAttr "C_snakeBlendRoot66_bln.opr" "C_snakeOffset66_pma.i1[0]";
connectAttr "C_curve1_crv.offset" "C_snakeOffset66_pma.i1[1]";
connectAttr "C_curve1_crvShape.ws" "C_snake24_bsn1.incv";
connectAttr "C_snakeOffset66_pma.o1" "C_snake24_bsn1.iv";
connectAttr "C_snake24_bsn1.ov" "C_snake24_pinf1.pr";
connectAttr "C_curve1_crvShape.ws" "C_snake24_pinf1.ic";
connectAttr "C_snake24_pinf1.p" "C_snake90_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake90_pntSInfo.is";
connectAttr "C_snake24_pinf1.p" "C_snake91_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake91_pntSInfo.is";
connectAttr "C_surface1_srfShape.ws" "C_snake25_pSurf.is";
connectAttr "C_snake91_pntSInfo.u" "C_snake25_pSurf.u";
connectAttr "C_snake91_pntSInfo.v" "C_snake25_pSurf.v";
connectAttr "C_snake25_pSurf.tux" "C_snake25_mtx.i00";
connectAttr "C_snake25_pSurf.tuy" "C_snake25_mtx.i01";
connectAttr "C_snake25_pSurf.tuz" "C_snake25_mtx.i02";
connectAttr "C_snake25_pSurf.nx" "C_snake25_mtx.i10";
connectAttr "C_snake25_pSurf.ny" "C_snake25_mtx.i11";
connectAttr "C_snake25_pSurf.nz" "C_snake25_mtx.i12";
connectAttr "C_snake25_pSurf.tvx" "C_snake25_mtx.i20";
connectAttr "C_snake25_pSurf.tvy" "C_snake25_mtx.i21";
connectAttr "C_snake25_pSurf.tvz" "C_snake25_mtx.i22";
connectAttr "C_snake25_mtx.o" "C_snake25_dec.imat";
connectAttr "C_curve1_crv.globalScale" "C_snakeLenGlobal67_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeStretch67_md.i1x";
connectAttr "C_snakeLenGlobal67_md.ox" "C_snakeStretch67_md.i2x";
connectAttr "C_curve1_crv.globalScale" "C_snakeRevGlobal67_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeRevStretch67_md.i1x";
connectAttr "C_snakeRevGlobal67_md.ox" "C_snakeRevStretch67_md.i2x";
connectAttr "C_snake1_cInfo.al" "C_snakeRevLen67_pma.i1[0]";
connectAttr "C_snakeRevStretch67_md.ox" "C_snakeRevLen67_pma.i1[1]";
connectAttr "C_curve1_crv.reverseRoot" "C_snakeBlendRoot67_bln.b";
connectAttr "C_snakeRevLen67_pma.o1" "C_snakeBlendRoot67_bln.c1r";
connectAttr "C_snakeStretch67_md.ox" "C_snakeBlendRoot67_bln.c2r";
connectAttr "C_snakeBlendRoot67_bln.opr" "C_snakeOffset67_pma.i1[0]";
connectAttr "C_curve1_crv.offset" "C_snakeOffset67_pma.i1[1]";
connectAttr "C_curve1_crvShape.ws" "C_snake25_bsn1.incv";
connectAttr "C_snakeOffset67_pma.o1" "C_snake25_bsn1.iv";
connectAttr "C_snake25_bsn1.ov" "C_snake25_pinf1.pr";
connectAttr "C_curve1_crvShape.ws" "C_snake25_pinf1.ic";
connectAttr "C_snake25_pinf1.p" "C_snake92_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake92_pntSInfo.is";
connectAttr "C_snake25_pinf1.p" "C_snake93_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake93_pntSInfo.is";
connectAttr "C_surface1_srfShape.ws" "C_snake26_pSurf.is";
connectAttr "C_snake93_pntSInfo.u" "C_snake26_pSurf.u";
connectAttr "C_snake93_pntSInfo.v" "C_snake26_pSurf.v";
connectAttr "C_snake26_pSurf.tux" "C_snake26_mtx.i00";
connectAttr "C_snake26_pSurf.tuy" "C_snake26_mtx.i01";
connectAttr "C_snake26_pSurf.tuz" "C_snake26_mtx.i02";
connectAttr "C_snake26_pSurf.nx" "C_snake26_mtx.i10";
connectAttr "C_snake26_pSurf.ny" "C_snake26_mtx.i11";
connectAttr "C_snake26_pSurf.nz" "C_snake26_mtx.i12";
connectAttr "C_snake26_pSurf.tvx" "C_snake26_mtx.i20";
connectAttr "C_snake26_pSurf.tvy" "C_snake26_mtx.i21";
connectAttr "C_snake26_pSurf.tvz" "C_snake26_mtx.i22";
connectAttr "C_snake26_mtx.o" "C_snake26_dec.imat";
connectAttr "C_curve1_crv.globalScale" "C_snakeLenGlobal68_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeStretch68_md.i1x";
connectAttr "C_snakeLenGlobal68_md.ox" "C_snakeStretch68_md.i2x";
connectAttr "C_curve1_crv.globalScale" "C_snakeRevGlobal68_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeRevStretch68_md.i1x";
connectAttr "C_snakeRevGlobal68_md.ox" "C_snakeRevStretch68_md.i2x";
connectAttr "C_snake1_cInfo.al" "C_snakeRevLen68_pma.i1[0]";
connectAttr "C_snakeRevStretch68_md.ox" "C_snakeRevLen68_pma.i1[1]";
connectAttr "C_curve1_crv.reverseRoot" "C_snakeBlendRoot68_bln.b";
connectAttr "C_snakeRevLen68_pma.o1" "C_snakeBlendRoot68_bln.c1r";
connectAttr "C_snakeStretch68_md.ox" "C_snakeBlendRoot68_bln.c2r";
connectAttr "C_snakeBlendRoot68_bln.opr" "C_snakeOffset68_pma.i1[0]";
connectAttr "C_curve1_crv.offset" "C_snakeOffset68_pma.i1[1]";
connectAttr "C_curve1_crvShape.ws" "C_snake26_bsn1.incv";
connectAttr "C_snakeOffset68_pma.o1" "C_snake26_bsn1.iv";
connectAttr "C_snake26_bsn1.ov" "C_snake26_pinf1.pr";
connectAttr "C_curve1_crvShape.ws" "C_snake26_pinf1.ic";
connectAttr "C_snake26_pinf1.p" "C_snake94_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake94_pntSInfo.is";
connectAttr "C_snake26_pinf1.p" "C_snake95_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake95_pntSInfo.is";
connectAttr "C_surface1_srfShape.ws" "C_snake27_pSurf.is";
connectAttr "C_snake95_pntSInfo.u" "C_snake27_pSurf.u";
connectAttr "C_snake95_pntSInfo.v" "C_snake27_pSurf.v";
connectAttr "C_snake27_pSurf.tux" "C_snake27_mtx.i00";
connectAttr "C_snake27_pSurf.tuy" "C_snake27_mtx.i01";
connectAttr "C_snake27_pSurf.tuz" "C_snake27_mtx.i02";
connectAttr "C_snake27_pSurf.nx" "C_snake27_mtx.i10";
connectAttr "C_snake27_pSurf.ny" "C_snake27_mtx.i11";
connectAttr "C_snake27_pSurf.nz" "C_snake27_mtx.i12";
connectAttr "C_snake27_pSurf.tvx" "C_snake27_mtx.i20";
connectAttr "C_snake27_pSurf.tvy" "C_snake27_mtx.i21";
connectAttr "C_snake27_pSurf.tvz" "C_snake27_mtx.i22";
connectAttr "C_snake27_mtx.o" "C_snake27_dec.imat";
connectAttr "C_curve1_crv.globalScale" "C_snakeLenGlobal69_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeStretch69_md.i1x";
connectAttr "C_snakeLenGlobal69_md.ox" "C_snakeStretch69_md.i2x";
connectAttr "C_curve1_crv.globalScale" "C_snakeRevGlobal69_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeRevStretch69_md.i1x";
connectAttr "C_snakeRevGlobal69_md.ox" "C_snakeRevStretch69_md.i2x";
connectAttr "C_snake1_cInfo.al" "C_snakeRevLen69_pma.i1[0]";
connectAttr "C_snakeRevStretch69_md.ox" "C_snakeRevLen69_pma.i1[1]";
connectAttr "C_curve1_crv.reverseRoot" "C_snakeBlendRoot69_bln.b";
connectAttr "C_snakeRevLen69_pma.o1" "C_snakeBlendRoot69_bln.c1r";
connectAttr "C_snakeStretch69_md.ox" "C_snakeBlendRoot69_bln.c2r";
connectAttr "C_snakeBlendRoot69_bln.opr" "C_snakeOffset69_pma.i1[0]";
connectAttr "C_curve1_crv.offset" "C_snakeOffset69_pma.i1[1]";
connectAttr "C_curve1_crvShape.ws" "C_snake27_bsn1.incv";
connectAttr "C_snakeOffset69_pma.o1" "C_snake27_bsn1.iv";
connectAttr "C_snake27_bsn1.ov" "C_snake27_pinf1.pr";
connectAttr "C_curve1_crvShape.ws" "C_snake27_pinf1.ic";
connectAttr "C_snake27_pinf1.p" "C_snake96_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake96_pntSInfo.is";
connectAttr "C_snake27_pinf1.p" "C_snake97_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake97_pntSInfo.is";
connectAttr "C_surface1_srfShape.ws" "C_snake28_pSurf.is";
connectAttr "C_snake97_pntSInfo.u" "C_snake28_pSurf.u";
connectAttr "C_snake97_pntSInfo.v" "C_snake28_pSurf.v";
connectAttr "C_snake28_pSurf.tux" "C_snake28_mtx.i00";
connectAttr "C_snake28_pSurf.tuy" "C_snake28_mtx.i01";
connectAttr "C_snake28_pSurf.tuz" "C_snake28_mtx.i02";
connectAttr "C_snake28_pSurf.nx" "C_snake28_mtx.i10";
connectAttr "C_snake28_pSurf.ny" "C_snake28_mtx.i11";
connectAttr "C_snake28_pSurf.nz" "C_snake28_mtx.i12";
connectAttr "C_snake28_pSurf.tvx" "C_snake28_mtx.i20";
connectAttr "C_snake28_pSurf.tvy" "C_snake28_mtx.i21";
connectAttr "C_snake28_pSurf.tvz" "C_snake28_mtx.i22";
connectAttr "C_snake28_mtx.o" "C_snake28_dec.imat";
connectAttr "C_curve1_crv.globalScale" "C_snakeLenGlobal70_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeStretch70_md.i1x";
connectAttr "C_snakeLenGlobal70_md.ox" "C_snakeStretch70_md.i2x";
connectAttr "C_curve1_crv.globalScale" "C_snakeRevGlobal70_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeRevStretch70_md.i1x";
connectAttr "C_snakeRevGlobal70_md.ox" "C_snakeRevStretch70_md.i2x";
connectAttr "C_snake1_cInfo.al" "C_snakeRevLen70_pma.i1[0]";
connectAttr "C_snakeRevStretch70_md.ox" "C_snakeRevLen70_pma.i1[1]";
connectAttr "C_curve1_crv.reverseRoot" "C_snakeBlendRoot70_bln.b";
connectAttr "C_snakeRevLen70_pma.o1" "C_snakeBlendRoot70_bln.c1r";
connectAttr "C_snakeStretch70_md.ox" "C_snakeBlendRoot70_bln.c2r";
connectAttr "C_snakeBlendRoot70_bln.opr" "C_snakeOffset70_pma.i1[0]";
connectAttr "C_curve1_crv.offset" "C_snakeOffset70_pma.i1[1]";
connectAttr "C_curve1_crvShape.ws" "C_snake28_bsn1.incv";
connectAttr "C_snakeOffset70_pma.o1" "C_snake28_bsn1.iv";
connectAttr "C_snake28_bsn1.ov" "C_snake28_pinf1.pr";
connectAttr "C_curve1_crvShape.ws" "C_snake28_pinf1.ic";
connectAttr "C_snake28_pinf1.p" "C_snake98_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake98_pntSInfo.is";
connectAttr "C_snake28_pinf1.p" "C_snake99_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake99_pntSInfo.is";
connectAttr "C_surface1_srfShape.ws" "C_snake29_pSurf.is";
connectAttr "C_snake99_pntSInfo.u" "C_snake29_pSurf.u";
connectAttr "C_snake99_pntSInfo.v" "C_snake29_pSurf.v";
connectAttr "C_snake29_pSurf.tux" "C_snake29_mtx.i00";
connectAttr "C_snake29_pSurf.tuy" "C_snake29_mtx.i01";
connectAttr "C_snake29_pSurf.tuz" "C_snake29_mtx.i02";
connectAttr "C_snake29_pSurf.nx" "C_snake29_mtx.i10";
connectAttr "C_snake29_pSurf.ny" "C_snake29_mtx.i11";
connectAttr "C_snake29_pSurf.nz" "C_snake29_mtx.i12";
connectAttr "C_snake29_pSurf.tvx" "C_snake29_mtx.i20";
connectAttr "C_snake29_pSurf.tvy" "C_snake29_mtx.i21";
connectAttr "C_snake29_pSurf.tvz" "C_snake29_mtx.i22";
connectAttr "C_snake29_mtx.o" "C_snake29_dec.imat";
connectAttr "C_curve1_crv.globalScale" "C_snakeLenGlobal71_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeStretch71_md.i1x";
connectAttr "C_snakeLenGlobal71_md.ox" "C_snakeStretch71_md.i2x";
connectAttr "C_curve1_crv.globalScale" "C_snakeRevGlobal71_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeRevStretch71_md.i1x";
connectAttr "C_snakeRevGlobal71_md.ox" "C_snakeRevStretch71_md.i2x";
connectAttr "C_snake1_cInfo.al" "C_snakeRevLen71_pma.i1[0]";
connectAttr "C_snakeRevStretch71_md.ox" "C_snakeRevLen71_pma.i1[1]";
connectAttr "C_curve1_crv.reverseRoot" "C_snakeBlendRoot71_bln.b";
connectAttr "C_snakeRevLen71_pma.o1" "C_snakeBlendRoot71_bln.c1r";
connectAttr "C_snakeStretch71_md.ox" "C_snakeBlendRoot71_bln.c2r";
connectAttr "C_snakeBlendRoot71_bln.opr" "C_snakeOffset71_pma.i1[0]";
connectAttr "C_curve1_crv.offset" "C_snakeOffset71_pma.i1[1]";
connectAttr "C_curve1_crvShape.ws" "C_snake29_bsn1.incv";
connectAttr "C_snakeOffset71_pma.o1" "C_snake29_bsn1.iv";
connectAttr "C_snake29_bsn1.ov" "C_snake29_pinf1.pr";
connectAttr "C_curve1_crvShape.ws" "C_snake29_pinf1.ic";
connectAttr "C_snake29_pinf1.p" "C_snake100_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake100_pntSInfo.is";
connectAttr "C_snake29_pinf1.p" "C_snake101_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake101_pntSInfo.is";
connectAttr "C_surface1_srfShape.ws" "C_snake30_pSurf.is";
connectAttr "C_snake101_pntSInfo.u" "C_snake30_pSurf.u";
connectAttr "C_snake101_pntSInfo.v" "C_snake30_pSurf.v";
connectAttr "C_snake30_pSurf.tux" "C_snake30_mtx.i00";
connectAttr "C_snake30_pSurf.tuy" "C_snake30_mtx.i01";
connectAttr "C_snake30_pSurf.tuz" "C_snake30_mtx.i02";
connectAttr "C_snake30_pSurf.nx" "C_snake30_mtx.i10";
connectAttr "C_snake30_pSurf.ny" "C_snake30_mtx.i11";
connectAttr "C_snake30_pSurf.nz" "C_snake30_mtx.i12";
connectAttr "C_snake30_pSurf.tvx" "C_snake30_mtx.i20";
connectAttr "C_snake30_pSurf.tvy" "C_snake30_mtx.i21";
connectAttr "C_snake30_pSurf.tvz" "C_snake30_mtx.i22";
connectAttr "C_snake30_mtx.o" "C_snake30_dec.imat";
connectAttr "C_curve1_crv.globalScale" "C_snakeLenGlobal72_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeStretch72_md.i1x";
connectAttr "C_snakeLenGlobal72_md.ox" "C_snakeStretch72_md.i2x";
connectAttr "C_curve1_crv.globalScale" "C_snakeRevGlobal72_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeRevStretch72_md.i1x";
connectAttr "C_snakeRevGlobal72_md.ox" "C_snakeRevStretch72_md.i2x";
connectAttr "C_snake1_cInfo.al" "C_snakeRevLen72_pma.i1[0]";
connectAttr "C_snakeRevStretch72_md.ox" "C_snakeRevLen72_pma.i1[1]";
connectAttr "C_curve1_crv.reverseRoot" "C_snakeBlendRoot72_bln.b";
connectAttr "C_snakeRevLen72_pma.o1" "C_snakeBlendRoot72_bln.c1r";
connectAttr "C_snakeStretch72_md.ox" "C_snakeBlendRoot72_bln.c2r";
connectAttr "C_snakeBlendRoot72_bln.opr" "C_snakeOffset72_pma.i1[0]";
connectAttr "C_curve1_crv.offset" "C_snakeOffset72_pma.i1[1]";
connectAttr "C_curve1_crvShape.ws" "C_snake30_bsn1.incv";
connectAttr "C_snakeOffset72_pma.o1" "C_snake30_bsn1.iv";
connectAttr "C_snake30_bsn1.ov" "C_snake30_pinf1.pr";
connectAttr "C_curve1_crvShape.ws" "C_snake30_pinf1.ic";
connectAttr "C_snake30_pinf1.p" "C_snake102_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake102_pntSInfo.is";
connectAttr "C_snake30_pinf1.p" "C_snake103_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake103_pntSInfo.is";
connectAttr "C_surface1_srfShape.ws" "C_snake31_pSurf.is";
connectAttr "C_snake103_pntSInfo.u" "C_snake31_pSurf.u";
connectAttr "C_snake103_pntSInfo.v" "C_snake31_pSurf.v";
connectAttr "C_snake31_pSurf.tux" "C_snake31_mtx.i00";
connectAttr "C_snake31_pSurf.tuy" "C_snake31_mtx.i01";
connectAttr "C_snake31_pSurf.tuz" "C_snake31_mtx.i02";
connectAttr "C_snake31_pSurf.nx" "C_snake31_mtx.i10";
connectAttr "C_snake31_pSurf.ny" "C_snake31_mtx.i11";
connectAttr "C_snake31_pSurf.nz" "C_snake31_mtx.i12";
connectAttr "C_snake31_pSurf.tvx" "C_snake31_mtx.i20";
connectAttr "C_snake31_pSurf.tvy" "C_snake31_mtx.i21";
connectAttr "C_snake31_pSurf.tvz" "C_snake31_mtx.i22";
connectAttr "C_snake31_mtx.o" "C_snake31_dec.imat";
connectAttr "C_curve1_crv.globalScale" "C_snakeLenGlobal73_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeStretch73_md.i1x";
connectAttr "C_snakeLenGlobal73_md.ox" "C_snakeStretch73_md.i2x";
connectAttr "C_curve1_crv.globalScale" "C_snakeRevGlobal73_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeRevStretch73_md.i1x";
connectAttr "C_snakeRevGlobal73_md.ox" "C_snakeRevStretch73_md.i2x";
connectAttr "C_snake1_cInfo.al" "C_snakeRevLen73_pma.i1[0]";
connectAttr "C_snakeRevStretch73_md.ox" "C_snakeRevLen73_pma.i1[1]";
connectAttr "C_curve1_crv.reverseRoot" "C_snakeBlendRoot73_bln.b";
connectAttr "C_snakeRevLen73_pma.o1" "C_snakeBlendRoot73_bln.c1r";
connectAttr "C_snakeStretch73_md.ox" "C_snakeBlendRoot73_bln.c2r";
connectAttr "C_snakeBlendRoot73_bln.opr" "C_snakeOffset73_pma.i1[0]";
connectAttr "C_curve1_crv.offset" "C_snakeOffset73_pma.i1[1]";
connectAttr "C_curve1_crvShape.ws" "C_snake31_bsn1.incv";
connectAttr "C_snakeOffset73_pma.o1" "C_snake31_bsn1.iv";
connectAttr "C_snake31_bsn1.ov" "C_snake31_pinf1.pr";
connectAttr "C_curve1_crvShape.ws" "C_snake31_pinf1.ic";
connectAttr "C_snake31_pinf1.p" "C_snake104_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake104_pntSInfo.is";
connectAttr "C_snake31_pinf1.p" "C_snake105_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake105_pntSInfo.is";
connectAttr "C_surface1_srfShape.ws" "C_snake32_pSurf.is";
connectAttr "C_snake105_pntSInfo.u" "C_snake32_pSurf.u";
connectAttr "C_snake105_pntSInfo.v" "C_snake32_pSurf.v";
connectAttr "C_snake32_pSurf.tux" "C_snake32_mtx.i00";
connectAttr "C_snake32_pSurf.tuy" "C_snake32_mtx.i01";
connectAttr "C_snake32_pSurf.tuz" "C_snake32_mtx.i02";
connectAttr "C_snake32_pSurf.nx" "C_snake32_mtx.i10";
connectAttr "C_snake32_pSurf.ny" "C_snake32_mtx.i11";
connectAttr "C_snake32_pSurf.nz" "C_snake32_mtx.i12";
connectAttr "C_snake32_pSurf.tvx" "C_snake32_mtx.i20";
connectAttr "C_snake32_pSurf.tvy" "C_snake32_mtx.i21";
connectAttr "C_snake32_pSurf.tvz" "C_snake32_mtx.i22";
connectAttr "C_snake32_mtx.o" "C_snake32_dec.imat";
connectAttr "C_curve1_crv.globalScale" "C_snakeLenGlobal74_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeStretch74_md.i1x";
connectAttr "C_snakeLenGlobal74_md.ox" "C_snakeStretch74_md.i2x";
connectAttr "C_curve1_crv.globalScale" "C_snakeRevGlobal74_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeRevStretch74_md.i1x";
connectAttr "C_snakeRevGlobal74_md.ox" "C_snakeRevStretch74_md.i2x";
connectAttr "C_snake1_cInfo.al" "C_snakeRevLen74_pma.i1[0]";
connectAttr "C_snakeRevStretch74_md.ox" "C_snakeRevLen74_pma.i1[1]";
connectAttr "C_curve1_crv.reverseRoot" "C_snakeBlendRoot74_bln.b";
connectAttr "C_snakeRevLen74_pma.o1" "C_snakeBlendRoot74_bln.c1r";
connectAttr "C_snakeStretch74_md.ox" "C_snakeBlendRoot74_bln.c2r";
connectAttr "C_snakeBlendRoot74_bln.opr" "C_snakeOffset74_pma.i1[0]";
connectAttr "C_curve1_crv.offset" "C_snakeOffset74_pma.i1[1]";
connectAttr "C_curve1_crvShape.ws" "C_snake32_bsn1.incv";
connectAttr "C_snakeOffset74_pma.o1" "C_snake32_bsn1.iv";
connectAttr "C_snake32_bsn1.ov" "C_snake32_pinf1.pr";
connectAttr "C_curve1_crvShape.ws" "C_snake32_pinf1.ic";
connectAttr "C_snake32_pinf1.p" "C_snake106_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake106_pntSInfo.is";
connectAttr "C_snake32_pinf1.p" "C_snake107_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake107_pntSInfo.is";
connectAttr "C_surface1_srfShape.ws" "C_snake33_pSurf.is";
connectAttr "C_snake107_pntSInfo.u" "C_snake33_pSurf.u";
connectAttr "C_snake107_pntSInfo.v" "C_snake33_pSurf.v";
connectAttr "C_snake33_pSurf.tux" "C_snake33_mtx.i00";
connectAttr "C_snake33_pSurf.tuy" "C_snake33_mtx.i01";
connectAttr "C_snake33_pSurf.tuz" "C_snake33_mtx.i02";
connectAttr "C_snake33_pSurf.nx" "C_snake33_mtx.i10";
connectAttr "C_snake33_pSurf.ny" "C_snake33_mtx.i11";
connectAttr "C_snake33_pSurf.nz" "C_snake33_mtx.i12";
connectAttr "C_snake33_pSurf.tvx" "C_snake33_mtx.i20";
connectAttr "C_snake33_pSurf.tvy" "C_snake33_mtx.i21";
connectAttr "C_snake33_pSurf.tvz" "C_snake33_mtx.i22";
connectAttr "C_snake33_mtx.o" "C_snake33_dec.imat";
connectAttr "C_curve1_crv.globalScale" "C_snakeLenGlobal75_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeStretch75_md.i1x";
connectAttr "C_snakeLenGlobal75_md.ox" "C_snakeStretch75_md.i2x";
connectAttr "C_curve1_crv.globalScale" "C_snakeRevGlobal75_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeRevStretch75_md.i1x";
connectAttr "C_snakeRevGlobal75_md.ox" "C_snakeRevStretch75_md.i2x";
connectAttr "C_snake1_cInfo.al" "C_snakeRevLen75_pma.i1[0]";
connectAttr "C_snakeRevStretch75_md.ox" "C_snakeRevLen75_pma.i1[1]";
connectAttr "C_curve1_crv.reverseRoot" "C_snakeBlendRoot75_bln.b";
connectAttr "C_snakeRevLen75_pma.o1" "C_snakeBlendRoot75_bln.c1r";
connectAttr "C_snakeStretch75_md.ox" "C_snakeBlendRoot75_bln.c2r";
connectAttr "C_snakeBlendRoot75_bln.opr" "C_snakeOffset75_pma.i1[0]";
connectAttr "C_curve1_crv.offset" "C_snakeOffset75_pma.i1[1]";
connectAttr "C_curve1_crvShape.ws" "C_snake33_bsn1.incv";
connectAttr "C_snakeOffset75_pma.o1" "C_snake33_bsn1.iv";
connectAttr "C_snake33_bsn1.ov" "C_snake33_pinf1.pr";
connectAttr "C_curve1_crvShape.ws" "C_snake33_pinf1.ic";
connectAttr "C_snake33_pinf1.p" "C_snake108_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake108_pntSInfo.is";
connectAttr "C_snake33_pinf1.p" "C_snake109_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake109_pntSInfo.is";
connectAttr "C_surface1_srfShape.ws" "C_snake34_pSurf.is";
connectAttr "C_snake109_pntSInfo.u" "C_snake34_pSurf.u";
connectAttr "C_snake109_pntSInfo.v" "C_snake34_pSurf.v";
connectAttr "C_snake34_pSurf.tux" "C_snake34_mtx.i00";
connectAttr "C_snake34_pSurf.tuy" "C_snake34_mtx.i01";
connectAttr "C_snake34_pSurf.tuz" "C_snake34_mtx.i02";
connectAttr "C_snake34_pSurf.nx" "C_snake34_mtx.i10";
connectAttr "C_snake34_pSurf.ny" "C_snake34_mtx.i11";
connectAttr "C_snake34_pSurf.nz" "C_snake34_mtx.i12";
connectAttr "C_snake34_pSurf.tvx" "C_snake34_mtx.i20";
connectAttr "C_snake34_pSurf.tvy" "C_snake34_mtx.i21";
connectAttr "C_snake34_pSurf.tvz" "C_snake34_mtx.i22";
connectAttr "C_snake34_mtx.o" "C_snake34_dec.imat";
connectAttr "C_curve1_crv.globalScale" "C_snakeLenGlobal76_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeStretch76_md.i1x";
connectAttr "C_snakeLenGlobal76_md.ox" "C_snakeStretch76_md.i2x";
connectAttr "C_curve1_crv.globalScale" "C_snakeRevGlobal76_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeRevStretch76_md.i1x";
connectAttr "C_snakeRevGlobal76_md.ox" "C_snakeRevStretch76_md.i2x";
connectAttr "C_snake1_cInfo.al" "C_snakeRevLen76_pma.i1[0]";
connectAttr "C_snakeRevStretch76_md.ox" "C_snakeRevLen76_pma.i1[1]";
connectAttr "C_curve1_crv.reverseRoot" "C_snakeBlendRoot76_bln.b";
connectAttr "C_snakeRevLen76_pma.o1" "C_snakeBlendRoot76_bln.c1r";
connectAttr "C_snakeStretch76_md.ox" "C_snakeBlendRoot76_bln.c2r";
connectAttr "C_snakeBlendRoot76_bln.opr" "C_snakeOffset76_pma.i1[0]";
connectAttr "C_curve1_crv.offset" "C_snakeOffset76_pma.i1[1]";
connectAttr "C_curve1_crvShape.ws" "C_snake34_bsn1.incv";
connectAttr "C_snakeOffset76_pma.o1" "C_snake34_bsn1.iv";
connectAttr "C_snake34_bsn1.ov" "C_snake34_pinf1.pr";
connectAttr "C_curve1_crvShape.ws" "C_snake34_pinf1.ic";
connectAttr "C_snake34_pinf1.p" "C_snake110_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake110_pntSInfo.is";
connectAttr "C_snake34_pinf1.p" "C_snake111_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake111_pntSInfo.is";
connectAttr "C_surface1_srfShape.ws" "C_snake35_pSurf.is";
connectAttr "C_snake111_pntSInfo.u" "C_snake35_pSurf.u";
connectAttr "C_snake111_pntSInfo.v" "C_snake35_pSurf.v";
connectAttr "C_snake35_pSurf.tux" "C_snake35_mtx.i00";
connectAttr "C_snake35_pSurf.tuy" "C_snake35_mtx.i01";
connectAttr "C_snake35_pSurf.tuz" "C_snake35_mtx.i02";
connectAttr "C_snake35_pSurf.nx" "C_snake35_mtx.i10";
connectAttr "C_snake35_pSurf.ny" "C_snake35_mtx.i11";
connectAttr "C_snake35_pSurf.nz" "C_snake35_mtx.i12";
connectAttr "C_snake35_pSurf.tvx" "C_snake35_mtx.i20";
connectAttr "C_snake35_pSurf.tvy" "C_snake35_mtx.i21";
connectAttr "C_snake35_pSurf.tvz" "C_snake35_mtx.i22";
connectAttr "C_snake35_mtx.o" "C_snake35_dec.imat";
connectAttr "C_curve1_crv.globalScale" "C_snakeLenGlobal77_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeStretch77_md.i1x";
connectAttr "C_snakeLenGlobal77_md.ox" "C_snakeStretch77_md.i2x";
connectAttr "C_curve1_crv.globalScale" "C_snakeRevGlobal77_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeRevStretch77_md.i1x";
connectAttr "C_snakeRevGlobal77_md.ox" "C_snakeRevStretch77_md.i2x";
connectAttr "C_snake1_cInfo.al" "C_snakeRevLen77_pma.i1[0]";
connectAttr "C_snakeRevStretch77_md.ox" "C_snakeRevLen77_pma.i1[1]";
connectAttr "C_curve1_crv.reverseRoot" "C_snakeBlendRoot77_bln.b";
connectAttr "C_snakeRevLen77_pma.o1" "C_snakeBlendRoot77_bln.c1r";
connectAttr "C_snakeStretch77_md.ox" "C_snakeBlendRoot77_bln.c2r";
connectAttr "C_snakeBlendRoot77_bln.opr" "C_snakeOffset77_pma.i1[0]";
connectAttr "C_curve1_crv.offset" "C_snakeOffset77_pma.i1[1]";
connectAttr "C_curve1_crvShape.ws" "C_snake35_bsn1.incv";
connectAttr "C_snakeOffset77_pma.o1" "C_snake35_bsn1.iv";
connectAttr "C_snake35_bsn1.ov" "C_snake35_pinf1.pr";
connectAttr "C_curve1_crvShape.ws" "C_snake35_pinf1.ic";
connectAttr "C_snake35_pinf1.p" "C_snake112_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake112_pntSInfo.is";
connectAttr "C_snake35_pinf1.p" "C_snake113_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake113_pntSInfo.is";
connectAttr "C_surface1_srfShape.ws" "C_snake36_pSurf.is";
connectAttr "C_snake113_pntSInfo.u" "C_snake36_pSurf.u";
connectAttr "C_snake113_pntSInfo.v" "C_snake36_pSurf.v";
connectAttr "C_snake36_pSurf.tux" "C_snake36_mtx.i00";
connectAttr "C_snake36_pSurf.tuy" "C_snake36_mtx.i01";
connectAttr "C_snake36_pSurf.tuz" "C_snake36_mtx.i02";
connectAttr "C_snake36_pSurf.nx" "C_snake36_mtx.i10";
connectAttr "C_snake36_pSurf.ny" "C_snake36_mtx.i11";
connectAttr "C_snake36_pSurf.nz" "C_snake36_mtx.i12";
connectAttr "C_snake36_pSurf.tvx" "C_snake36_mtx.i20";
connectAttr "C_snake36_pSurf.tvy" "C_snake36_mtx.i21";
connectAttr "C_snake36_pSurf.tvz" "C_snake36_mtx.i22";
connectAttr "C_snake36_mtx.o" "C_snake36_dec.imat";
connectAttr "C_curve1_crv.globalScale" "C_snakeLenGlobal78_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeStretch78_md.i1x";
connectAttr "C_snakeLenGlobal78_md.ox" "C_snakeStretch78_md.i2x";
connectAttr "C_curve1_crv.globalScale" "C_snakeRevGlobal78_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeRevStretch78_md.i1x";
connectAttr "C_snakeRevGlobal78_md.ox" "C_snakeRevStretch78_md.i2x";
connectAttr "C_snake1_cInfo.al" "C_snakeRevLen78_pma.i1[0]";
connectAttr "C_snakeRevStretch78_md.ox" "C_snakeRevLen78_pma.i1[1]";
connectAttr "C_curve1_crv.reverseRoot" "C_snakeBlendRoot78_bln.b";
connectAttr "C_snakeRevLen78_pma.o1" "C_snakeBlendRoot78_bln.c1r";
connectAttr "C_snakeStretch78_md.ox" "C_snakeBlendRoot78_bln.c2r";
connectAttr "C_snakeBlendRoot78_bln.opr" "C_snakeOffset78_pma.i1[0]";
connectAttr "C_curve1_crv.offset" "C_snakeOffset78_pma.i1[1]";
connectAttr "C_curve1_crvShape.ws" "C_snake36_bsn1.incv";
connectAttr "C_snakeOffset78_pma.o1" "C_snake36_bsn1.iv";
connectAttr "C_snake36_bsn1.ov" "C_snake36_pinf1.pr";
connectAttr "C_curve1_crvShape.ws" "C_snake36_pinf1.ic";
connectAttr "C_snake36_pinf1.p" "C_snake114_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake114_pntSInfo.is";
connectAttr "C_snake36_pinf1.p" "C_snake115_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake115_pntSInfo.is";
connectAttr "C_surface1_srfShape.ws" "C_snake37_pSurf.is";
connectAttr "C_snake115_pntSInfo.u" "C_snake37_pSurf.u";
connectAttr "C_snake115_pntSInfo.v" "C_snake37_pSurf.v";
connectAttr "C_snake37_pSurf.tux" "C_snake37_mtx.i00";
connectAttr "C_snake37_pSurf.tuy" "C_snake37_mtx.i01";
connectAttr "C_snake37_pSurf.tuz" "C_snake37_mtx.i02";
connectAttr "C_snake37_pSurf.nx" "C_snake37_mtx.i10";
connectAttr "C_snake37_pSurf.ny" "C_snake37_mtx.i11";
connectAttr "C_snake37_pSurf.nz" "C_snake37_mtx.i12";
connectAttr "C_snake37_pSurf.tvx" "C_snake37_mtx.i20";
connectAttr "C_snake37_pSurf.tvy" "C_snake37_mtx.i21";
connectAttr "C_snake37_pSurf.tvz" "C_snake37_mtx.i22";
connectAttr "C_snake37_mtx.o" "C_snake37_dec.imat";
connectAttr "C_curve1_crv.globalScale" "C_snakeLenGlobal79_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeStretch79_md.i1x";
connectAttr "C_snakeLenGlobal79_md.ox" "C_snakeStretch79_md.i2x";
connectAttr "C_curve1_crv.globalScale" "C_snakeRevGlobal79_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeRevStretch79_md.i1x";
connectAttr "C_snakeRevGlobal79_md.ox" "C_snakeRevStretch79_md.i2x";
connectAttr "C_snake1_cInfo.al" "C_snakeRevLen79_pma.i1[0]";
connectAttr "C_snakeRevStretch79_md.ox" "C_snakeRevLen79_pma.i1[1]";
connectAttr "C_curve1_crv.reverseRoot" "C_snakeBlendRoot79_bln.b";
connectAttr "C_snakeRevLen79_pma.o1" "C_snakeBlendRoot79_bln.c1r";
connectAttr "C_snakeStretch79_md.ox" "C_snakeBlendRoot79_bln.c2r";
connectAttr "C_snakeBlendRoot79_bln.opr" "C_snakeOffset79_pma.i1[0]";
connectAttr "C_curve1_crv.offset" "C_snakeOffset79_pma.i1[1]";
connectAttr "C_curve1_crvShape.ws" "C_snake37_bsn1.incv";
connectAttr "C_snakeOffset79_pma.o1" "C_snake37_bsn1.iv";
connectAttr "C_snake37_bsn1.ov" "C_snake37_pinf1.pr";
connectAttr "C_curve1_crvShape.ws" "C_snake37_pinf1.ic";
connectAttr "C_snake37_pinf1.p" "C_snake116_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake116_pntSInfo.is";
connectAttr "C_snake37_pinf1.p" "C_snake117_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake117_pntSInfo.is";
connectAttr "C_surface1_srfShape.ws" "C_snake38_pSurf.is";
connectAttr "C_snake117_pntSInfo.u" "C_snake38_pSurf.u";
connectAttr "C_snake117_pntSInfo.v" "C_snake38_pSurf.v";
connectAttr "C_snake38_pSurf.tux" "C_snake38_mtx.i00";
connectAttr "C_snake38_pSurf.tuy" "C_snake38_mtx.i01";
connectAttr "C_snake38_pSurf.tuz" "C_snake38_mtx.i02";
connectAttr "C_snake38_pSurf.nx" "C_snake38_mtx.i10";
connectAttr "C_snake38_pSurf.ny" "C_snake38_mtx.i11";
connectAttr "C_snake38_pSurf.nz" "C_snake38_mtx.i12";
connectAttr "C_snake38_pSurf.tvx" "C_snake38_mtx.i20";
connectAttr "C_snake38_pSurf.tvy" "C_snake38_mtx.i21";
connectAttr "C_snake38_pSurf.tvz" "C_snake38_mtx.i22";
connectAttr "C_snake38_mtx.o" "C_snake38_dec.imat";
connectAttr "C_curve1_crv.globalScale" "C_snakeLenGlobal80_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeStretch80_md.i1x";
connectAttr "C_snakeLenGlobal80_md.ox" "C_snakeStretch80_md.i2x";
connectAttr "C_curve1_crv.globalScale" "C_snakeRevGlobal80_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeRevStretch80_md.i1x";
connectAttr "C_snakeRevGlobal80_md.ox" "C_snakeRevStretch80_md.i2x";
connectAttr "C_snake1_cInfo.al" "C_snakeRevLen80_pma.i1[0]";
connectAttr "C_snakeRevStretch80_md.ox" "C_snakeRevLen80_pma.i1[1]";
connectAttr "C_curve1_crv.reverseRoot" "C_snakeBlendRoot80_bln.b";
connectAttr "C_snakeRevLen80_pma.o1" "C_snakeBlendRoot80_bln.c1r";
connectAttr "C_snakeStretch80_md.ox" "C_snakeBlendRoot80_bln.c2r";
connectAttr "C_snakeBlendRoot80_bln.opr" "C_snakeOffset80_pma.i1[0]";
connectAttr "C_curve1_crv.offset" "C_snakeOffset80_pma.i1[1]";
connectAttr "C_curve1_crvShape.ws" "C_snake38_bsn1.incv";
connectAttr "C_snakeOffset80_pma.o1" "C_snake38_bsn1.iv";
connectAttr "C_snake38_bsn1.ov" "C_snake38_pinf1.pr";
connectAttr "C_curve1_crvShape.ws" "C_snake38_pinf1.ic";
connectAttr "C_snake38_pinf1.p" "C_snake118_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake118_pntSInfo.is";
connectAttr "C_snake38_pinf1.p" "C_snake119_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake119_pntSInfo.is";
connectAttr "C_surface1_srfShape.ws" "C_snake39_pSurf.is";
connectAttr "C_snake119_pntSInfo.u" "C_snake39_pSurf.u";
connectAttr "C_snake119_pntSInfo.v" "C_snake39_pSurf.v";
connectAttr "C_snake39_pSurf.tux" "C_snake39_mtx.i00";
connectAttr "C_snake39_pSurf.tuy" "C_snake39_mtx.i01";
connectAttr "C_snake39_pSurf.tuz" "C_snake39_mtx.i02";
connectAttr "C_snake39_pSurf.nx" "C_snake39_mtx.i10";
connectAttr "C_snake39_pSurf.ny" "C_snake39_mtx.i11";
connectAttr "C_snake39_pSurf.nz" "C_snake39_mtx.i12";
connectAttr "C_snake39_pSurf.tvx" "C_snake39_mtx.i20";
connectAttr "C_snake39_pSurf.tvy" "C_snake39_mtx.i21";
connectAttr "C_snake39_pSurf.tvz" "C_snake39_mtx.i22";
connectAttr "C_snake39_mtx.o" "C_snake39_dec.imat";
connectAttr "C_curve1_crv.globalScale" "C_snakeLenGlobal81_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeStretch81_md.i1x";
connectAttr "C_snakeLenGlobal81_md.ox" "C_snakeStretch81_md.i2x";
connectAttr "C_curve1_crv.globalScale" "C_snakeRevGlobal81_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeRevStretch81_md.i1x";
connectAttr "C_snakeRevGlobal81_md.ox" "C_snakeRevStretch81_md.i2x";
connectAttr "C_snake1_cInfo.al" "C_snakeRevLen81_pma.i1[0]";
connectAttr "C_snakeRevStretch81_md.ox" "C_snakeRevLen81_pma.i1[1]";
connectAttr "C_curve1_crv.reverseRoot" "C_snakeBlendRoot81_bln.b";
connectAttr "C_snakeRevLen81_pma.o1" "C_snakeBlendRoot81_bln.c1r";
connectAttr "C_snakeStretch81_md.ox" "C_snakeBlendRoot81_bln.c2r";
connectAttr "C_snakeBlendRoot81_bln.opr" "C_snakeOffset81_pma.i1[0]";
connectAttr "C_curve1_crv.offset" "C_snakeOffset81_pma.i1[1]";
connectAttr "C_curve1_crvShape.ws" "C_snake39_bsn1.incv";
connectAttr "C_snakeOffset81_pma.o1" "C_snake39_bsn1.iv";
connectAttr "C_snake39_bsn1.ov" "C_snake39_pinf1.pr";
connectAttr "C_curve1_crvShape.ws" "C_snake39_pinf1.ic";
connectAttr "C_snake39_pinf1.p" "C_snake120_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake120_pntSInfo.is";
connectAttr "C_snake39_pinf1.p" "C_snake121_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake121_pntSInfo.is";
connectAttr "C_surface1_srfShape.ws" "C_snake40_pSurf.is";
connectAttr "C_snake121_pntSInfo.u" "C_snake40_pSurf.u";
connectAttr "C_snake121_pntSInfo.v" "C_snake40_pSurf.v";
connectAttr "C_snake40_pSurf.tux" "C_snake40_mtx.i00";
connectAttr "C_snake40_pSurf.tuy" "C_snake40_mtx.i01";
connectAttr "C_snake40_pSurf.tuz" "C_snake40_mtx.i02";
connectAttr "C_snake40_pSurf.nx" "C_snake40_mtx.i10";
connectAttr "C_snake40_pSurf.ny" "C_snake40_mtx.i11";
connectAttr "C_snake40_pSurf.nz" "C_snake40_mtx.i12";
connectAttr "C_snake40_pSurf.tvx" "C_snake40_mtx.i20";
connectAttr "C_snake40_pSurf.tvy" "C_snake40_mtx.i21";
connectAttr "C_snake40_pSurf.tvz" "C_snake40_mtx.i22";
connectAttr "C_snake40_mtx.o" "C_snake40_dec.imat";
connectAttr "C_curve1_crv.globalScale" "C_snakeLenGlobal82_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeStretch82_md.i1x";
connectAttr "C_snakeLenGlobal82_md.ox" "C_snakeStretch82_md.i2x";
connectAttr "C_curve1_crv.globalScale" "C_snakeRevGlobal82_md.i1x";
connectAttr "C_snakeblnCrvDtr2_bln.opr" "C_snakeRevStretch82_md.i1x";
connectAttr "C_snakeRevGlobal82_md.ox" "C_snakeRevStretch82_md.i2x";
connectAttr "C_snake1_cInfo.al" "C_snakeRevLen82_pma.i1[0]";
connectAttr "C_snakeRevStretch82_md.ox" "C_snakeRevLen82_pma.i1[1]";
connectAttr "C_curve1_crv.reverseRoot" "C_snakeBlendRoot82_bln.b";
connectAttr "C_snakeRevLen82_pma.o1" "C_snakeBlendRoot82_bln.c1r";
connectAttr "C_snakeStretch82_md.ox" "C_snakeBlendRoot82_bln.c2r";
connectAttr "C_snakeBlendRoot82_bln.opr" "C_snakeOffset82_pma.i1[0]";
connectAttr "C_curve1_crv.offset" "C_snakeOffset82_pma.i1[1]";
connectAttr "C_curve1_crvShape.ws" "C_snake40_bsn1.incv";
connectAttr "C_snakeOffset82_pma.o1" "C_snake40_bsn1.iv";
connectAttr "C_snake40_bsn1.ov" "C_snake40_pinf1.pr";
connectAttr "C_curve1_crvShape.ws" "C_snake40_pinf1.ic";
connectAttr "C_snake40_pinf1.p" "C_snake122_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake122_pntSInfo.is";
connectAttr "C_snake40_pinf1.p" "C_snake123_pntSInfo.ip";
connectAttr "C_surface1_srfShape.ws" "C_snake123_pntSInfo.is";
connectAttr "C_surface1_srfShape.ws" "C_snake41_pSurf.is";
connectAttr "C_snake123_pntSInfo.u" "C_snake41_pSurf.u";
connectAttr "C_snake123_pntSInfo.v" "C_snake41_pSurf.v";
connectAttr "C_snake41_pSurf.tux" "C_snake41_mtx.i00";
connectAttr "C_snake41_pSurf.tuy" "C_snake41_mtx.i01";
connectAttr "C_snake41_pSurf.tuz" "C_snake41_mtx.i02";
connectAttr "C_snake41_pSurf.nx" "C_snake41_mtx.i10";
connectAttr "C_snake41_pSurf.ny" "C_snake41_mtx.i11";
connectAttr "C_snake41_pSurf.nz" "C_snake41_mtx.i12";
connectAttr "C_snake41_pSurf.tvx" "C_snake41_mtx.i20";
connectAttr "C_snake41_pSurf.tvy" "C_snake41_mtx.i21";
connectAttr "C_snake41_pSurf.tvz" "C_snake41_mtx.i22";
connectAttr "C_snake41_mtx.o" "C_snake41_dec.imat";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "C_snakeChain1_jnt.wm" "skinCluster1.ma[0]";
connectAttr "C_snakeChain2_jnt.wm" "skinCluster1.ma[1]";
connectAttr "C_snakeChain3_jnt.wm" "skinCluster1.ma[2]";
connectAttr "C_snakeChain4_jnt.wm" "skinCluster1.ma[3]";
connectAttr "C_snakeChain5_jnt.wm" "skinCluster1.ma[4]";
connectAttr "C_snakeChain6_jnt.wm" "skinCluster1.ma[5]";
connectAttr "C_snakeChain7_jnt.wm" "skinCluster1.ma[6]";
connectAttr "C_snakeChain8_jnt.wm" "skinCluster1.ma[7]";
connectAttr "C_snakeChain9_jnt.wm" "skinCluster1.ma[8]";
connectAttr "C_snakeChain10_jnt.wm" "skinCluster1.ma[9]";
connectAttr "C_snakeChain11_jnt.wm" "skinCluster1.ma[10]";
connectAttr "C_snakeChain12_jnt.wm" "skinCluster1.ma[11]";
connectAttr "C_snakeChain13_jnt.wm" "skinCluster1.ma[12]";
connectAttr "C_snakeChain14_jnt.wm" "skinCluster1.ma[13]";
connectAttr "C_snakeChain15_jnt.wm" "skinCluster1.ma[14]";
connectAttr "C_snakeChain16_jnt.wm" "skinCluster1.ma[15]";
connectAttr "C_snakeChain17_jnt.wm" "skinCluster1.ma[16]";
connectAttr "C_snakeChain18_jnt.wm" "skinCluster1.ma[17]";
connectAttr "C_snakeChain19_jnt.wm" "skinCluster1.ma[18]";
connectAttr "C_snakeChain20_jnt.wm" "skinCluster1.ma[19]";
connectAttr "C_snakeChain21_jnt.wm" "skinCluster1.ma[20]";
connectAttr "C_snakeChain22_jnt.wm" "skinCluster1.ma[21]";
connectAttr "C_snakeChain23_jnt.wm" "skinCluster1.ma[22]";
connectAttr "C_snakeChain24_jnt.wm" "skinCluster1.ma[23]";
connectAttr "C_snakeChain25_jnt.wm" "skinCluster1.ma[24]";
connectAttr "C_snakeChain26_jnt.wm" "skinCluster1.ma[25]";
connectAttr "C_snakeChain27_jnt.wm" "skinCluster1.ma[26]";
connectAttr "C_snakeChain28_jnt.wm" "skinCluster1.ma[27]";
connectAttr "C_snakeChain29_jnt.wm" "skinCluster1.ma[28]";
connectAttr "C_snakeChain30_jnt.wm" "skinCluster1.ma[29]";
connectAttr "C_snakeChain31_jnt.wm" "skinCluster1.ma[30]";
connectAttr "C_snakeChain32_jnt.wm" "skinCluster1.ma[31]";
connectAttr "C_snakeChain33_jnt.wm" "skinCluster1.ma[32]";
connectAttr "C_snakeChain34_jnt.wm" "skinCluster1.ma[33]";
connectAttr "C_snakeChain35_jnt.wm" "skinCluster1.ma[34]";
connectAttr "C_snakeChain36_jnt.wm" "skinCluster1.ma[35]";
connectAttr "C_snakeChain37_jnt.wm" "skinCluster1.ma[36]";
connectAttr "C_snakeChain38_jnt.wm" "skinCluster1.ma[37]";
connectAttr "C_snakeChain39_jnt.wm" "skinCluster1.ma[38]";
connectAttr "C_snakeChain40_jnt.wm" "skinCluster1.ma[39]";
connectAttr "C_snakeChain41_jnt.wm" "skinCluster1.ma[40]";
connectAttr "C_snakeChain1_jnt.liw" "skinCluster1.lw[0]";
connectAttr "C_snakeChain2_jnt.liw" "skinCluster1.lw[1]";
connectAttr "C_snakeChain3_jnt.liw" "skinCluster1.lw[2]";
connectAttr "C_snakeChain4_jnt.liw" "skinCluster1.lw[3]";
connectAttr "C_snakeChain5_jnt.liw" "skinCluster1.lw[4]";
connectAttr "C_snakeChain6_jnt.liw" "skinCluster1.lw[5]";
connectAttr "C_snakeChain7_jnt.liw" "skinCluster1.lw[6]";
connectAttr "C_snakeChain8_jnt.liw" "skinCluster1.lw[7]";
connectAttr "C_snakeChain9_jnt.liw" "skinCluster1.lw[8]";
connectAttr "C_snakeChain10_jnt.liw" "skinCluster1.lw[9]";
connectAttr "C_snakeChain11_jnt.liw" "skinCluster1.lw[10]";
connectAttr "C_snakeChain12_jnt.liw" "skinCluster1.lw[11]";
connectAttr "C_snakeChain13_jnt.liw" "skinCluster1.lw[12]";
connectAttr "C_snakeChain14_jnt.liw" "skinCluster1.lw[13]";
connectAttr "C_snakeChain15_jnt.liw" "skinCluster1.lw[14]";
connectAttr "C_snakeChain16_jnt.liw" "skinCluster1.lw[15]";
connectAttr "C_snakeChain17_jnt.liw" "skinCluster1.lw[16]";
connectAttr "C_snakeChain18_jnt.liw" "skinCluster1.lw[17]";
connectAttr "C_snakeChain19_jnt.liw" "skinCluster1.lw[18]";
connectAttr "C_snakeChain20_jnt.liw" "skinCluster1.lw[19]";
connectAttr "C_snakeChain21_jnt.liw" "skinCluster1.lw[20]";
connectAttr "C_snakeChain22_jnt.liw" "skinCluster1.lw[21]";
connectAttr "C_snakeChain23_jnt.liw" "skinCluster1.lw[22]";
connectAttr "C_snakeChain24_jnt.liw" "skinCluster1.lw[23]";
connectAttr "C_snakeChain25_jnt.liw" "skinCluster1.lw[24]";
connectAttr "C_snakeChain26_jnt.liw" "skinCluster1.lw[25]";
connectAttr "C_snakeChain27_jnt.liw" "skinCluster1.lw[26]";
connectAttr "C_snakeChain28_jnt.liw" "skinCluster1.lw[27]";
connectAttr "C_snakeChain29_jnt.liw" "skinCluster1.lw[28]";
connectAttr "C_snakeChain30_jnt.liw" "skinCluster1.lw[29]";
connectAttr "C_snakeChain31_jnt.liw" "skinCluster1.lw[30]";
connectAttr "C_snakeChain32_jnt.liw" "skinCluster1.lw[31]";
connectAttr "C_snakeChain33_jnt.liw" "skinCluster1.lw[32]";
connectAttr "C_snakeChain34_jnt.liw" "skinCluster1.lw[33]";
connectAttr "C_snakeChain35_jnt.liw" "skinCluster1.lw[34]";
connectAttr "C_snakeChain36_jnt.liw" "skinCluster1.lw[35]";
connectAttr "C_snakeChain37_jnt.liw" "skinCluster1.lw[36]";
connectAttr "C_snakeChain38_jnt.liw" "skinCluster1.lw[37]";
connectAttr "C_snakeChain39_jnt.liw" "skinCluster1.lw[38]";
connectAttr "C_snakeChain40_jnt.liw" "skinCluster1.lw[39]";
connectAttr "C_snakeChain41_jnt.liw" "skinCluster1.lw[40]";
connectAttr "C_snakeChain1_jnt.obcc" "skinCluster1.ifcl[0]";
connectAttr "C_snakeChain2_jnt.obcc" "skinCluster1.ifcl[1]";
connectAttr "C_snakeChain3_jnt.obcc" "skinCluster1.ifcl[2]";
connectAttr "C_snakeChain4_jnt.obcc" "skinCluster1.ifcl[3]";
connectAttr "C_snakeChain5_jnt.obcc" "skinCluster1.ifcl[4]";
connectAttr "C_snakeChain6_jnt.obcc" "skinCluster1.ifcl[5]";
connectAttr "C_snakeChain7_jnt.obcc" "skinCluster1.ifcl[6]";
connectAttr "C_snakeChain8_jnt.obcc" "skinCluster1.ifcl[7]";
connectAttr "C_snakeChain9_jnt.obcc" "skinCluster1.ifcl[8]";
connectAttr "C_snakeChain10_jnt.obcc" "skinCluster1.ifcl[9]";
connectAttr "C_snakeChain11_jnt.obcc" "skinCluster1.ifcl[10]";
connectAttr "C_snakeChain12_jnt.obcc" "skinCluster1.ifcl[11]";
connectAttr "C_snakeChain13_jnt.obcc" "skinCluster1.ifcl[12]";
connectAttr "C_snakeChain14_jnt.obcc" "skinCluster1.ifcl[13]";
connectAttr "C_snakeChain15_jnt.obcc" "skinCluster1.ifcl[14]";
connectAttr "C_snakeChain16_jnt.obcc" "skinCluster1.ifcl[15]";
connectAttr "C_snakeChain17_jnt.obcc" "skinCluster1.ifcl[16]";
connectAttr "C_snakeChain18_jnt.obcc" "skinCluster1.ifcl[17]";
connectAttr "C_snakeChain19_jnt.obcc" "skinCluster1.ifcl[18]";
connectAttr "C_snakeChain20_jnt.obcc" "skinCluster1.ifcl[19]";
connectAttr "C_snakeChain21_jnt.obcc" "skinCluster1.ifcl[20]";
connectAttr "C_snakeChain22_jnt.obcc" "skinCluster1.ifcl[21]";
connectAttr "C_snakeChain23_jnt.obcc" "skinCluster1.ifcl[22]";
connectAttr "C_snakeChain24_jnt.obcc" "skinCluster1.ifcl[23]";
connectAttr "C_snakeChain25_jnt.obcc" "skinCluster1.ifcl[24]";
connectAttr "C_snakeChain26_jnt.obcc" "skinCluster1.ifcl[25]";
connectAttr "C_snakeChain27_jnt.obcc" "skinCluster1.ifcl[26]";
connectAttr "C_snakeChain28_jnt.obcc" "skinCluster1.ifcl[27]";
connectAttr "C_snakeChain29_jnt.obcc" "skinCluster1.ifcl[28]";
connectAttr "C_snakeChain30_jnt.obcc" "skinCluster1.ifcl[29]";
connectAttr "C_snakeChain31_jnt.obcc" "skinCluster1.ifcl[30]";
connectAttr "C_snakeChain32_jnt.obcc" "skinCluster1.ifcl[31]";
connectAttr "C_snakeChain33_jnt.obcc" "skinCluster1.ifcl[32]";
connectAttr "C_snakeChain34_jnt.obcc" "skinCluster1.ifcl[33]";
connectAttr "C_snakeChain35_jnt.obcc" "skinCluster1.ifcl[34]";
connectAttr "C_snakeChain36_jnt.obcc" "skinCluster1.ifcl[35]";
connectAttr "C_snakeChain37_jnt.obcc" "skinCluster1.ifcl[36]";
connectAttr "C_snakeChain38_jnt.obcc" "skinCluster1.ifcl[37]";
connectAttr "C_snakeChain39_jnt.obcc" "skinCluster1.ifcl[38]";
connectAttr "C_snakeChain40_jnt.obcc" "skinCluster1.ifcl[39]";
connectAttr "C_snakeChain41_jnt.obcc" "skinCluster1.ifcl[40]";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "snake_geoShape.iog.og[4]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "groupParts4.og" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "C_snakeRig_grp.msg" "bindPose1.m[0]";
connectAttr "C_snakeChain1_jnt.msg" "bindPose1.m[1]";
connectAttr "C_snakeChain2_jnt.msg" "bindPose1.m[2]";
connectAttr "C_snakeChain3_jnt.msg" "bindPose1.m[3]";
connectAttr "C_snakeChain4_jnt.msg" "bindPose1.m[4]";
connectAttr "C_snakeChain5_jnt.msg" "bindPose1.m[5]";
connectAttr "C_snakeChain6_jnt.msg" "bindPose1.m[6]";
connectAttr "C_snakeChain7_jnt.msg" "bindPose1.m[7]";
connectAttr "C_snakeChain8_jnt.msg" "bindPose1.m[8]";
connectAttr "C_snakeChain9_jnt.msg" "bindPose1.m[9]";
connectAttr "C_snakeChain10_jnt.msg" "bindPose1.m[10]";
connectAttr "C_snakeChain11_jnt.msg" "bindPose1.m[11]";
connectAttr "C_snakeChain12_jnt.msg" "bindPose1.m[12]";
connectAttr "C_snakeChain13_jnt.msg" "bindPose1.m[13]";
connectAttr "C_snakeChain14_jnt.msg" "bindPose1.m[14]";
connectAttr "C_snakeChain15_jnt.msg" "bindPose1.m[15]";
connectAttr "C_snakeChain16_jnt.msg" "bindPose1.m[16]";
connectAttr "C_snakeChain17_jnt.msg" "bindPose1.m[17]";
connectAttr "C_snakeChain18_jnt.msg" "bindPose1.m[18]";
connectAttr "C_snakeChain19_jnt.msg" "bindPose1.m[19]";
connectAttr "C_snakeChain20_jnt.msg" "bindPose1.m[20]";
connectAttr "C_snakeChain21_jnt.msg" "bindPose1.m[21]";
connectAttr "C_snakeChain22_jnt.msg" "bindPose1.m[22]";
connectAttr "C_snakeChain23_jnt.msg" "bindPose1.m[23]";
connectAttr "C_snakeChain24_jnt.msg" "bindPose1.m[24]";
connectAttr "C_snakeChain25_jnt.msg" "bindPose1.m[25]";
connectAttr "C_snakeChain26_jnt.msg" "bindPose1.m[26]";
connectAttr "C_snakeChain27_jnt.msg" "bindPose1.m[27]";
connectAttr "C_snakeChain28_jnt.msg" "bindPose1.m[28]";
connectAttr "C_snakeChain29_jnt.msg" "bindPose1.m[29]";
connectAttr "C_snakeChain30_jnt.msg" "bindPose1.m[30]";
connectAttr "C_snakeChain31_jnt.msg" "bindPose1.m[31]";
connectAttr "C_snakeChain32_jnt.msg" "bindPose1.m[32]";
connectAttr "C_snakeChain33_jnt.msg" "bindPose1.m[33]";
connectAttr "C_snakeChain34_jnt.msg" "bindPose1.m[34]";
connectAttr "C_snakeChain35_jnt.msg" "bindPose1.m[35]";
connectAttr "C_snakeChain36_jnt.msg" "bindPose1.m[36]";
connectAttr "C_snakeChain37_jnt.msg" "bindPose1.m[37]";
connectAttr "C_snakeChain38_jnt.msg" "bindPose1.m[38]";
connectAttr "C_snakeChain39_jnt.msg" "bindPose1.m[39]";
connectAttr "C_snakeChain40_jnt.msg" "bindPose1.m[40]";
connectAttr "C_snakeChain41_jnt.msg" "bindPose1.m[41]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "bindPose1.m[5]" "bindPose1.p[6]";
connectAttr "bindPose1.m[6]" "bindPose1.p[7]";
connectAttr "bindPose1.m[7]" "bindPose1.p[8]";
connectAttr "bindPose1.m[8]" "bindPose1.p[9]";
connectAttr "bindPose1.m[9]" "bindPose1.p[10]";
connectAttr "bindPose1.m[10]" "bindPose1.p[11]";
connectAttr "bindPose1.m[11]" "bindPose1.p[12]";
connectAttr "bindPose1.m[12]" "bindPose1.p[13]";
connectAttr "bindPose1.m[13]" "bindPose1.p[14]";
connectAttr "bindPose1.m[14]" "bindPose1.p[15]";
connectAttr "bindPose1.m[15]" "bindPose1.p[16]";
connectAttr "bindPose1.m[16]" "bindPose1.p[17]";
connectAttr "bindPose1.m[17]" "bindPose1.p[18]";
connectAttr "bindPose1.m[18]" "bindPose1.p[19]";
connectAttr "bindPose1.m[19]" "bindPose1.p[20]";
connectAttr "bindPose1.m[20]" "bindPose1.p[21]";
connectAttr "bindPose1.m[21]" "bindPose1.p[22]";
connectAttr "bindPose1.m[22]" "bindPose1.p[23]";
connectAttr "bindPose1.m[23]" "bindPose1.p[24]";
connectAttr "bindPose1.m[24]" "bindPose1.p[25]";
connectAttr "bindPose1.m[25]" "bindPose1.p[26]";
connectAttr "bindPose1.m[26]" "bindPose1.p[27]";
connectAttr "bindPose1.m[27]" "bindPose1.p[28]";
connectAttr "bindPose1.m[28]" "bindPose1.p[29]";
connectAttr "bindPose1.m[29]" "bindPose1.p[30]";
connectAttr "bindPose1.m[30]" "bindPose1.p[31]";
connectAttr "bindPose1.m[31]" "bindPose1.p[32]";
connectAttr "bindPose1.m[32]" "bindPose1.p[33]";
connectAttr "bindPose1.m[33]" "bindPose1.p[34]";
connectAttr "bindPose1.m[34]" "bindPose1.p[35]";
connectAttr "bindPose1.m[35]" "bindPose1.p[36]";
connectAttr "bindPose1.m[36]" "bindPose1.p[37]";
connectAttr "bindPose1.m[37]" "bindPose1.p[38]";
connectAttr "bindPose1.m[38]" "bindPose1.p[39]";
connectAttr "bindPose1.m[39]" "bindPose1.p[40]";
connectAttr "bindPose1.m[40]" "bindPose1.p[41]";
connectAttr "C_snakeChain1_jnt.bps" "bindPose1.wm[1]";
connectAttr "C_snakeChain2_jnt.bps" "bindPose1.wm[2]";
connectAttr "C_snakeChain3_jnt.bps" "bindPose1.wm[3]";
connectAttr "C_snakeChain4_jnt.bps" "bindPose1.wm[4]";
connectAttr "C_snakeChain5_jnt.bps" "bindPose1.wm[5]";
connectAttr "C_snakeChain6_jnt.bps" "bindPose1.wm[6]";
connectAttr "C_snakeChain7_jnt.bps" "bindPose1.wm[7]";
connectAttr "C_snakeChain8_jnt.bps" "bindPose1.wm[8]";
connectAttr "C_snakeChain9_jnt.bps" "bindPose1.wm[9]";
connectAttr "C_snakeChain10_jnt.bps" "bindPose1.wm[10]";
connectAttr "C_snakeChain11_jnt.bps" "bindPose1.wm[11]";
connectAttr "C_snakeChain12_jnt.bps" "bindPose1.wm[12]";
connectAttr "C_snakeChain13_jnt.bps" "bindPose1.wm[13]";
connectAttr "C_snakeChain14_jnt.bps" "bindPose1.wm[14]";
connectAttr "C_snakeChain15_jnt.bps" "bindPose1.wm[15]";
connectAttr "C_snakeChain16_jnt.bps" "bindPose1.wm[16]";
connectAttr "C_snakeChain17_jnt.bps" "bindPose1.wm[17]";
connectAttr "C_snakeChain18_jnt.bps" "bindPose1.wm[18]";
connectAttr "C_snakeChain19_jnt.bps" "bindPose1.wm[19]";
connectAttr "C_snakeChain20_jnt.bps" "bindPose1.wm[20]";
connectAttr "C_snakeChain21_jnt.bps" "bindPose1.wm[21]";
connectAttr "C_snakeChain22_jnt.bps" "bindPose1.wm[22]";
connectAttr "C_snakeChain23_jnt.bps" "bindPose1.wm[23]";
connectAttr "C_snakeChain24_jnt.bps" "bindPose1.wm[24]";
connectAttr "C_snakeChain25_jnt.bps" "bindPose1.wm[25]";
connectAttr "C_snakeChain26_jnt.bps" "bindPose1.wm[26]";
connectAttr "C_snakeChain27_jnt.bps" "bindPose1.wm[27]";
connectAttr "C_snakeChain28_jnt.bps" "bindPose1.wm[28]";
connectAttr "C_snakeChain29_jnt.bps" "bindPose1.wm[29]";
connectAttr "C_snakeChain30_jnt.bps" "bindPose1.wm[30]";
connectAttr "C_snakeChain31_jnt.bps" "bindPose1.wm[31]";
connectAttr "C_snakeChain32_jnt.bps" "bindPose1.wm[32]";
connectAttr "C_snakeChain33_jnt.bps" "bindPose1.wm[33]";
connectAttr "C_snakeChain34_jnt.bps" "bindPose1.wm[34]";
connectAttr "C_snakeChain35_jnt.bps" "bindPose1.wm[35]";
connectAttr "C_snakeChain36_jnt.bps" "bindPose1.wm[36]";
connectAttr "C_snakeChain37_jnt.bps" "bindPose1.wm[37]";
connectAttr "C_snakeChain38_jnt.bps" "bindPose1.wm[38]";
connectAttr "C_snakeChain39_jnt.bps" "bindPose1.wm[39]";
connectAttr "C_snakeChain40_jnt.bps" "bindPose1.wm[40]";
connectAttr "C_snakeChain41_jnt.bps" "bindPose1.wm[41]";
connectAttr "blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "snake_geoShape.iog.og[2]" ":initialShadingGroup.dsm" -na;
connectAttr "snake_geoShape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "C_surface1_srfShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "blinn1.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of snakeRig.ma
