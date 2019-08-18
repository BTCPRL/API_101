//Maya ASCII 2014 scene
//Name: snakePlug.ma
//Last modified: Sun, Nov 16, 2014 06:35:32 PM
//Codeset: 1252
requires maya "2014";
requires -nodeType "chainOnPath" "chainOnPath" "2.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014";
fileInfo "cutIdentifier" "201307170459-880822";
fileInfo "osv" "Microsoft Windows 7 Business Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 10.890128045583079 11.380612495194812 12.832524741611518 ;
	setAttr ".r" -type "double3" -42.338352735560662 39.400000000052444 2.0579891896445538e-015 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 28.547139656967055;
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
createNode transform -n "C_curve1_crv";
	setAttr ".v" no;
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
createNode transform -n "C_surfaceSide1_crv";
	setAttr ".v" no;
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
createNode transform -n "C_surfaceSide2_crv";
	setAttr ".v" no;
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
createNode transform -n "C_surface1_srf";
	setAttr ".v" no;
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
createNode transform -n "C_snakeCenterDrivers1_grp";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 0 0 -0.34999999999999964 ;
	setAttr ".sp" -type "double3" 0 0 -0.34999999999999964 ;
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
createNode transform -n "chain_grp";
	setAttr ".v" no;
createNode joint -n "C_snakeChain1_jnt" -p "chain_grp";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 0 0 4.9999948978403452 1;
createNode joint -n "C_snakeChain2_jnt" -p "chain_grp";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 0 0 4.7324986831928744 1;
createNode joint -n "C_snakeChain3_jnt" -p "chain_grp";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 0 0 4.4650023267455339 1;
createNode joint -n "C_snakeChain4_jnt" -p "chain_grp";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 0 0 4.1974959390657913 1;
createNode joint -n "C_snakeChain5_jnt" -p "chain_grp";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 0 0 3.9300008161553035 1;
createNode joint -n "C_snakeChain6_jnt" -p "chain_grp";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 0 0 3.6625048043020909 1;
createNode joint -n "C_snakeChain7_jnt" -p "chain_grp";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 0 0 3.394998606667377 1;
createNode joint -n "C_snakeChain8_jnt" -p "chain_grp";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 0 0 3.1275027276929475 1;
createNode joint -n "C_snakeChain9_jnt" -p "chain_grp";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 0 0 2.8599959485406465 1;
createNode joint -n "C_snakeChain10_jnt" -p "chain_grp";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 0 0 2.5925009388191724 1;
createNode joint -n "C_snakeChain11_jnt" -p "chain_grp";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 0 0 2.3250049111695681 1;
createNode joint -n "C_snakeChain12_jnt" -p "chain_grp";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 0 0 2.0574980234725682 1;
createNode joint -n "C_snakeChain13_jnt" -p "chain_grp";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 0 0 1.7900029582940249 1;
createNode joint -n "C_snakeChain14_jnt" -p "chain_grp";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 0 0 1.5224966416170345 1;
createNode joint -n "C_snakeChain15_jnt" -p "chain_grp";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 0 0 1.2550010204315196 1;
createNode joint -n "C_snakeChain16_jnt" -p "chain_grp";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 0 0 0.98750000000000049 1;
createNode joint -n "C_snakeChain17_jnt" -p "chain_grp";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 0 0 0.71999897956848535 1;
createNode joint -n "C_snakeChain18_jnt" -p "chain_grp";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 0 0 0.4525030612945552 1;
createNode joint -n "C_snakeChain19_jnt" -p "chain_grp";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 0 0 0.18499693870544745 1;
createNode joint -n "C_snakeChain20_jnt" -p "chain_grp";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 0 0 -0.082498979568482483 1;
createNode joint -n "C_snakeChain21_jnt" -p "chain_grp";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 0 0 -0.35000510215759184 1;
createNode joint -n "C_snakeChain22_jnt" -p "chain_grp";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 0 0 -0.61750102043151489 1;
createNode joint -n "C_snakeChain23_jnt" -p "chain_grp";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 0 0 -0.88499693870544494 1;
createNode joint -n "C_snakeChain24_jnt" -p "chain_grp";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 0 0 -1.1525030612945524 1;
createNode joint -n "C_snakeChain25_jnt" -p "chain_grp";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 0 0 -1.4199989795684824 1;
createNode joint -n "C_snakeChain26_jnt" -p "chain_grp";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 0 0 -1.6875051021575906 1;
createNode joint -n "C_snakeChain27_jnt" -p "chain_grp";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 0 0 -1.9550010204315142 1;
createNode joint -n "C_snakeChain28_jnt" -p "chain_grp";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 0 0 -2.222496641617032 1;
createNode joint -n "C_snakeChain29_jnt" -p "chain_grp";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 0 0 -2.4900029582940233 1;
createNode joint -n "C_snakeChain30_jnt" -p "chain_grp";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 0 0 -2.7574980234725697 1;
createNode joint -n "C_snakeChain31_jnt" -p "chain_grp";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 0 0 -3.0250049111695656 1;
createNode joint -n "C_snakeChain32_jnt" -p "chain_grp";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 0 0 -3.2925009388191659 1;
createNode joint -n "C_snakeChain33_jnt" -p "chain_grp";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 0 0 -3.5599959485406383 1;
createNode joint -n "C_snakeChain34_jnt" -p "chain_grp";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 0 0 -3.8275027276929507 1;
createNode joint -n "C_snakeChain35_jnt" -p "chain_grp";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 0 0 -4.0949986066673771 1;
createNode joint -n "C_snakeChain36_jnt" -p "chain_grp";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 0 0 -4.3625048043020893 1;
createNode joint -n "C_snakeChain37_jnt" -p "chain_grp";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 0 0 -4.6300008161552988 1;
createNode joint -n "C_snakeChain38_jnt" -p "chain_grp";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 0 0 -4.8974959390657835 1;
createNode joint -n "C_snakeChain39_jnt" -p "chain_grp";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 0 0 -5.1650023267455367 1;
createNode joint -n "C_snakeChain40_jnt" -p "chain_grp";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 0 0 -5.4324986831928737 1;
createNode joint -n "C_snakeChain41_jnt" -p "chain_grp";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 0 0 -5.6999948978403445 1;
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
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n"
		+ "                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;\n\t\t\tif (`objExists nodeEditorPanel2Info`) nodeEditor -e -restoreInfo nodeEditorPanel2Info $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
		+ "                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;\n\t\t\tif (`objExists nodeEditorPanel2Info`) nodeEditor -e -restoreInfo nodeEditorPanel2Info $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n"
		+ "\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels yes -displayOrthographicLabels yes -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition axis;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
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
createNode hyperGraphInfo -n "nodeEditorPanel2Info";
createNode hyperView -n "hyperView1";
	setAttr ".vl" -type "double2" -838.59012978602925 -4540.5735671152452 ;
	setAttr ".vh" -type "double2" 4618.0224956253433 -1588.1037087169827 ;
	setAttr ".dag" no;
createNode hyperLayout -n "hyperLayout1";
	setAttr ".ihi" 0;
	setAttr -s 77 ".hyp";
	setAttr ".hyp[0].x" 2092.857177734375;
	setAttr ".hyp[0].y" -358.57144165039062;
	setAttr ".hyp[0].nvs" 1920;
	setAttr ".hyp[1].x" 2092.857177734375;
	setAttr ".hyp[1].y" -5358.5712890625;
	setAttr ".hyp[1].nvs" 1920;
	setAttr ".hyp[2].x" 2092.857177734375;
	setAttr ".hyp[2].y" -5072.85693359375;
	setAttr ".hyp[2].nvs" 1920;
	setAttr ".hyp[3].x" 2092.857177734375;
	setAttr ".hyp[3].y" -930;
	setAttr ".hyp[3].nvs" 1920;
	setAttr ".hyp[4].x" 2092.857177734375;
	setAttr ".hyp[4].y" -5787.14306640625;
	setAttr ".hyp[4].nvs" 1920;
	setAttr ".hyp[5].x" 1.4285714626312256;
	setAttr ".hyp[5].y" -1930;
	setAttr ".hyp[5].nvs" 1920;
	setAttr ".hyp[6].x" 601.4285888671875;
	setAttr ".hyp[6].y" -1858.5714111328125;
	setAttr ".hyp[6].nvs" 1920;
	setAttr ".hyp[7].x" 1.4285714626312256;
	setAttr ".hyp[7].y" -2072.857177734375;
	setAttr ".hyp[7].nvs" 1920;
	setAttr ".hyp[8].x" 2092.857177734375;
	setAttr ".hyp[8].y" -4930;
	setAttr ".hyp[8].nvs" 1920;
	setAttr ".hyp[9].x" 601.4285888671875;
	setAttr ".hyp[9].y" -2001.4285888671875;
	setAttr ".hyp[9].nvs" 1920;
	setAttr ".hyp[10].x" 2092.857177734375;
	setAttr ".hyp[10].y" -644.28570556640625;
	setAttr ".hyp[10].nvs" 1920;
	setAttr ".hyp[11].x" 2092.857177734375;
	setAttr ".hyp[11].y" -787.14288330078125;
	setAttr ".hyp[11].nvs" 1920;
	setAttr ".hyp[12].x" 2092.857177734375;
	setAttr ".hyp[12].y" -5215.71435546875;
	setAttr ".hyp[12].nvs" 1920;
	setAttr ".hyp[13].x" 2092.857177734375;
	setAttr ".hyp[13].y" -501.42855834960937;
	setAttr ".hyp[13].nvs" 1920;
	setAttr ".hyp[14].x" 2092.857177734375;
	setAttr ".hyp[14].y" -5501.4287109375;
	setAttr ".hyp[14].nvs" 1920;
	setAttr ".hyp[15].x" 2092.857177734375;
	setAttr ".hyp[15].y" -72.857139587402344;
	setAttr ".hyp[15].nvs" 1920;
	setAttr ".hyp[16].x" 1.4285714626312256;
	setAttr ".hyp[16].y" -3358.571533203125;
	setAttr ".hyp[16].nvs" 1920;
	setAttr ".hyp[17].x" 1.4285714626312256;
	setAttr ".hyp[17].y" -2215.71435546875;
	setAttr ".hyp[17].nvs" 1920;
	setAttr ".hyp[18].x" 1.4285714626312256;
	setAttr ".hyp[18].y" -3501.428466796875;
	setAttr ".hyp[18].nvs" 1920;
	setAttr ".hyp[19].x" 601.4285888671875;
	setAttr ".hyp[19].y" -3287.142822265625;
	setAttr ".hyp[19].nvs" 1920;
	setAttr ".hyp[20].x" 2092.857177734375;
	setAttr ".hyp[20].y" -5644.28564453125;
	setAttr ".hyp[20].nvs" 1920;
	setAttr ".hyp[21].x" 2092.857177734375;
	setAttr ".hyp[21].y" -215.71427917480469;
	setAttr ".hyp[21].nvs" 1920;
	setAttr ".hyp[22].x" 1201.4285888671875;
	setAttr ".hyp[22].y" -2930;
	setAttr ".hyp[22].nvs" 1920;
	setAttr ".hyp[23].x" 2092.857177734375;
	setAttr ".hyp[23].y" -1072.857177734375;
	setAttr ".hyp[23].nvs" 1920;
	setAttr ".hyp[24].x" 961.4285888671875;
	setAttr ".hyp[24].y" -3287.142822265625;
	setAttr ".hyp[24].nvs" 1920;
	setAttr ".hyp[25].x" 2092.857177734375;
	setAttr ".hyp[25].y" -4787.14306640625;
	setAttr ".hyp[25].nvs" 1920;
	setAttr ".hyp[26].x" 1.4285714626312256;
	setAttr ".hyp[26].y" -2358.571533203125;
	setAttr ".hyp[26].nvs" 1920;
	setAttr ".hyp[27].x" 1.4285714626312256;
	setAttr ".hyp[27].y" -2501.428466796875;
	setAttr ".hyp[27].nvs" 1920;
	setAttr ".hyp[28].x" 601.4285888671875;
	setAttr ".hyp[28].y" -2144.28564453125;
	setAttr ".hyp[28].nvs" 1920;
	setAttr ".hyp[29].x" 2092.857177734375;
	setAttr ".hyp[29].y" -1215.7142333984375;
	setAttr ".hyp[29].nvs" 1920;
	setAttr ".hyp[30].x" 1.4285714626312256;
	setAttr ".hyp[30].y" -2644.28564453125;
	setAttr ".hyp[30].nvs" 1920;
	setAttr ".hyp[31].x" 601.4285888671875;
	setAttr ".hyp[31].y" -2287.142822265625;
	setAttr ".hyp[31].nvs" 1920;
	setAttr ".hyp[32].x" 601.4285888671875;
	setAttr ".hyp[32].y" -2430;
	setAttr ".hyp[32].nvs" 1920;
	setAttr ".hyp[33].x" 2092.857177734375;
	setAttr ".hyp[33].y" -4644.28564453125;
	setAttr ".hyp[33].nvs" 1920;
	setAttr ".hyp[34].x" 2092.857177734375;
	setAttr ".hyp[34].y" -1358.5714111328125;
	setAttr ".hyp[34].nvs" 1920;
	setAttr ".hyp[35].x" 361.42855834960937;
	setAttr ".hyp[35].y" -2572.857177734375;
	setAttr ".hyp[35].nvs" 1920;
	setAttr ".hyp[36].x" 2092.857177734375;
	setAttr ".hyp[36].y" -4501.4287109375;
	setAttr ".hyp[36].nvs" 1920;
	setAttr ".hyp[37].x" 2092.857177734375;
	setAttr ".hyp[37].y" -1501.4285888671875;
	setAttr ".hyp[37].nvs" 1920;
	setAttr ".hyp[38].x" 1.4285714626312256;
	setAttr ".hyp[38].y" -3644.28564453125;
	setAttr ".hyp[38].nvs" 1920;
	setAttr ".hyp[39].x" 1.4285714626312256;
	setAttr ".hyp[39].y" -3787.142822265625;
	setAttr ".hyp[39].nvs" 1920;
	setAttr ".hyp[40].x" 1.4285714626312256;
	setAttr ".hyp[40].y" -2787.142822265625;
	setAttr ".hyp[40].nvs" 1920;
	setAttr ".hyp[41].x" 1.4285714626312256;
	setAttr ".hyp[41].y" -2930;
	setAttr ".hyp[41].nvs" 1920;
	setAttr ".hyp[42].x" 2092.857177734375;
	setAttr ".hyp[42].y" -4358.5712890625;
	setAttr ".hyp[42].nvs" 1920;
	setAttr ".hyp[43].x" 2092.857177734375;
	setAttr ".hyp[43].y" -1644.2857666015625;
	setAttr ".hyp[43].nvs" 1920;
	setAttr ".hyp[44].x" 2092.857177734375;
	setAttr ".hyp[44].y" -4215.71435546875;
	setAttr ".hyp[44].nvs" 1920;
	setAttr ".hyp[45].x" 2092.857177734375;
	setAttr ".hyp[45].y" -1787.142822265625;
	setAttr ".hyp[45].nvs" 1920;
	setAttr ".hyp[46].x" 2092.857177734375;
	setAttr ".hyp[46].y" -4072.857177734375;
	setAttr ".hyp[46].nvs" 1920;
	setAttr ".hyp[47].x" 601.4285888671875;
	setAttr ".hyp[47].y" -2572.857177734375;
	setAttr ".hyp[47].nvs" 1920;
	setAttr ".hyp[48].x" 2092.857177734375;
	setAttr ".hyp[48].y" -1930;
	setAttr ".hyp[48].nvs" 1920;
	setAttr ".hyp[49].x" 1.4285714626312256;
	setAttr ".hyp[49].y" -3930;
	setAttr ".hyp[49].nvs" 1920;
	setAttr ".hyp[50].x" 601.4285888671875;
	setAttr ".hyp[50].y" -2715.71435546875;
	setAttr ".hyp[50].nvs" 1920;
	setAttr ".hyp[51].x" 961.4285888671875;
	setAttr ".hyp[51].y" -2572.857177734375;
	setAttr ".hyp[51].nvs" 1920;
	setAttr ".hyp[52].x" 2092.857177734375;
	setAttr ".hyp[52].y" -3930;
	setAttr ".hyp[52].nvs" 1920;
	setAttr ".hyp[53].x" 1.4285714626312256;
	setAttr ".hyp[53].y" -4072.857177734375;
	setAttr ".hyp[53].nvs" 1920;
	setAttr ".hyp[54].x" 2092.857177734375;
	setAttr ".hyp[54].y" -2072.857177734375;
	setAttr ".hyp[54].nvs" 1920;
	setAttr ".hyp[55].x" 2092.857177734375;
	setAttr ".hyp[55].y" -3787.142822265625;
	setAttr ".hyp[55].nvs" 1920;
	setAttr ".hyp[56].x" 2092.857177734375;
	setAttr ".hyp[56].y" -2215.71435546875;
	setAttr ".hyp[56].nvs" 1920;
	setAttr ".hyp[57].x" 2092.857177734375;
	setAttr ".hyp[57].y" -3644.28564453125;
	setAttr ".hyp[57].nvs" 1920;
	setAttr ".hyp[58].x" 2092.857177734375;
	setAttr ".hyp[58].y" -2358.571533203125;
	setAttr ".hyp[58].nvs" 1920;
	setAttr ".hyp[59].x" 1.4285714626312256;
	setAttr ".hyp[59].y" -3072.857177734375;
	setAttr ".hyp[59].nvs" 1920;
	setAttr ".hyp[60].x" 1.4285714626312256;
	setAttr ".hyp[60].y" -4215.71435546875;
	setAttr ".hyp[60].nvs" 1920;
	setAttr ".hyp[61].x" 601.4285888671875;
	setAttr ".hyp[61].y" -2858.571533203125;
	setAttr ".hyp[61].nvs" 1920;
	setAttr ".hyp[62].x" 1.4285714626312256;
	setAttr ".hyp[62].y" -3215.71435546875;
	setAttr ".hyp[62].nvs" 1920;
	setAttr ".hyp[63].x" 2092.857177734375;
	setAttr ".hyp[63].y" -3501.428466796875;
	setAttr ".hyp[63].nvs" 1920;
	setAttr ".hyp[64].x" 2092.857177734375;
	setAttr ".hyp[64].y" -2501.428466796875;
	setAttr ".hyp[64].nvs" 1920;
	setAttr ".hyp[65].x" 2092.857177734375;
	setAttr ".hyp[65].y" -3358.571533203125;
	setAttr ".hyp[65].nvs" 1920;
	setAttr ".hyp[66].x" 2092.857177734375;
	setAttr ".hyp[66].y" -2644.28564453125;
	setAttr ".hyp[66].nvs" 1920;
	setAttr ".hyp[67].x" 361.42855834960937;
	setAttr ".hyp[67].y" -4001.428466796875;
	setAttr ".hyp[67].nvs" 1920;
	setAttr ".hyp[68].x" 2092.857177734375;
	setAttr ".hyp[68].y" -3215.71435546875;
	setAttr ".hyp[68].nvs" 1920;
	setAttr ".hyp[69].x" 2092.857177734375;
	setAttr ".hyp[69].y" -2787.142822265625;
	setAttr ".hyp[69].nvs" 1920;
	setAttr ".hyp[70].x" 2092.857177734375;
	setAttr ".hyp[70].y" -3072.857177734375;
	setAttr ".hyp[70].nvs" 1920;
	setAttr ".hyp[71].x" 601.4285888671875;
	setAttr ".hyp[71].y" -3001.428466796875;
	setAttr ".hyp[71].nvs" 1920;
	setAttr ".hyp[72].x" 1.4285714626312256;
	setAttr ".hyp[72].y" -4358.5712890625;
	setAttr ".hyp[72].nvs" 1920;
	setAttr ".hyp[73].x" 601.4285888671875;
	setAttr ".hyp[73].y" -3144.28564453125;
	setAttr ".hyp[73].nvs" 1920;
	setAttr ".hyp[74].x" 1.4285714626312256;
	setAttr ".hyp[74].y" -4501.4287109375;
	setAttr ".hyp[74].nvs" 1920;
	setAttr ".hyp[75].x" 1.4285714626312256;
	setAttr ".hyp[75].y" -4644.28564453125;
	setAttr ".hyp[75].nvs" 1920;
	setAttr ".hyp[76].x" 2092.857177734375;
	setAttr ".hyp[76].y" -2930;
	setAttr ".hyp[76].nvs" 1920;
	setAttr ".anf" yes;
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
createNode chainOnPath -n "chain_CHN";
	setAttr ".cch" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".ic" -type "nurbsCurve" 
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
	setAttr ".is" -type "nurbsSurface" 
		3 3 0 0 no 
		12 0 0 0 1 2 3 4 5 6 7 7 7
		6 0 0 0 1 1 1
		
		40
		0.40000000000000008 0 5
		0.13333333333333333 0 5
		-0.13333333333333333 0 5
		-0.40000000000000008 0 5
		0.40000000000000008 0 3.8111111111111113
		0.13333333333333333 0 3.8111111111111113
		-0.13333333333333333 0 3.8111111111111113
		-0.40000000000000008 0 3.8111111111111113
		0.40000000000000008 0 2.6222222222222222
		0.13333333333333333 0 2.6222222222222222
		-0.13333333333333333 0 2.6222222222222222
		-0.40000000000000008 0 2.6222222222222222
		0.40000000000000008 0 1.4333333333333336
		0.13333333333333333 0 1.4333333333333336
		-0.13333333333333333 0 1.4333333333333336
		-0.40000000000000008 0 1.4333333333333336
		0.40000000000000008 0 0.24444444444444446
		0.13333333333333333 0 0.24444444444444446
		-0.13333333333333333 0 0.24444444444444446
		-0.40000000000000008 0 0.24444444444444446
		0.40000000000000008 0 -0.94444444444444464
		0.13333333333333333 0 -0.94444444444444464
		-0.13333333333333333 0 -0.94444444444444464
		-0.40000000000000008 0 -0.94444444444444464
		0.40000000000000008 0 -2.1333333333333329
		0.13333333333333333 0 -2.1333333333333329
		-0.13333333333333333 0 -2.1333333333333329
		-0.40000000000000008 0 -2.1333333333333329
		0.40000000000000008 0 -3.3222222222222229
		0.13333333333333333 0 -3.3222222222222229
		-0.13333333333333333 0 -3.3222222222222229
		-0.40000000000000008 0 -3.3222222222222229
		0.40000000000000008 0 -4.5111111111111111
		0.13333333333333333 0 -4.5111111111111111
		-0.13333333333333333 0 -4.5111111111111111
		-0.40000000000000008 0 -4.5111111111111111
		0.40000000000000008 0 -5.6999999999999993
		0.13333333333333333 0 -5.6999999999999993
		-0.13333333333333333 0 -5.6999999999999993
		-0.40000000000000008 0 -5.6999999999999993
		
		;
	setAttr ".noo" 41;
	setAttr -s 41 ".prv[0:40]"  5.1021575927734363e-006 0.26750102043151835 
		0.53499693870544396 0.80250306129455573 1.0699989795684806 1.337494897842407 1.6050010204315188 
		1.8724969387054435 2.140003061294554 2.40749897956848 2.6749948978424065 2.9425010204315187 
		3.2099969387054448 3.4775030612945534 3.7449989795684799 4.0124999999999993 4.2800010204315146 
		4.5474969387054447 4.8150030612945525 5.0824989795684825 5.3500051021575921 5.617501020431515 
		5.884996938705445 6.1525030612945528 6.4199989795684829 6.6875051021575906 6.9550010204315136 
		7.2224969387054436 7.4900030612945532 7.7574989795684832 8.025005102157591 8.2925010204315139 
		8.5599969387054369 8.8275030612945589 9.0949989795684818 9.3625051021575896 9.6300010204315125 
		9.8974969387054355 10.165003061294557 10.432498979568482 10.699994897842405;
	setAttr ".dcl" 10.699999999999998;
	setAttr ".stfl" 0;
	setAttr ".rvr" 0;
	setAttr ".pras" 0;
	setAttr -s 41 ".ot";
	setAttr -s 41 ".or";
createNode skinCluster -n "skinCluster1";
	setAttr -s 922 ".wl";
	setAttr -s 2 ".wl[0].w[0:1]"  0.88815273522886962 0.11184726477113036;
	setAttr -s 2 ".wl[1].w[0:1]"  0.91110652611058329 0.088893473889416666;
	setAttr -s 2 ".wl[2].w[0:1]"  0.94056358309912824 0.05943641690087182;
	setAttr -s 2 ".wl[3].w[0:1]"  0.96390285053343738 0.036097149466562686;
	setAttr -s 2 ".wl[4].w[0:1]"  0.9722357019651191 0.027764298034880959;
	setAttr -s 2 ".wl[5].w[0:1]"  0.96390284674788351 0.036097153252116529;
	setAttr -s 2 ".wl[6].w[0:1]"  0.94056359077309104 0.059436409226908932;
	setAttr -s 2 ".wl[7].w[0:1]"  0.91110656767328668 0.08889343232671329;
	setAttr -s 2 ".wl[8].w[0:1]"  0.88815278165674172 0.11184721834325832;
	setAttr -s 2 ".wl[9].w[0:1]"  0.87972644034931968 0.12027355965068039;
	setAttr -s 2 ".wl[10].w[0:1]"  0.88815278165674172 0.11184721834325832;
	setAttr -s 2 ".wl[11].w[0:1]"  0.91110430880755744 0.088895691192442547;
	setAttr -s 2 ".wl[12].w[0:1]"  0.94056394091094542 0.059436059089054548;
	setAttr -s 2 ".wl[13].w[0:1]"  0.96390190566066469 0.036098094339335342;
	setAttr -s 2 ".wl[14].w[0:1]"  0.97223586479202406 0.027764135207975941;
	setAttr -s 2 ".wl[15].w[0:1]"  0.96390192080313841 0.036098079196861692;
	setAttr -s 2 ".wl[16].w[0:1]"  0.94056397928073154 0.059436020719268533;
	setAttr -s 2 ".wl[17].w[0:1]"  0.91110687969131232 0.08889312030868772;
	setAttr -s 2 ".wl[18].w[0:1]"  0.88815285129854193 0.11184714870145807;
	setAttr -s 2 ".wl[19].w[0:1]"  0.87972653560520964 0.12027346439479032;
	setAttr -s 2 ".wl[20].w[0:1]"  0.37438507043403368 0.62561492956596632;
	setAttr -s 2 ".wl[21].w[0:1]"  0.35433937842704955 0.64566062157295045;
	setAttr -s 2 ".wl[22].w[0:1]"  0.31894811501391701 0.68105188498608304;
	setAttr -s 2 ".wl[23].w[0:1]"  0.27558188579711973 0.72441811420288027;
	setAttr -s 2 ".wl[24].w[0:1]"  0.25345179223768782 0.74654820776231212;
	setAttr -s 2 ".wl[25].w[0:1]"  0.27558187985361848 0.72441812014638163;
	setAttr -s 2 ".wl[26].w[0:1]"  0.31894808492458615 0.68105191507541396;
	setAttr -s 2 ".wl[27].w[0:1]"  0.3543393240955176 0.64566067590448251;
	setAttr -s 2 ".wl[28].w[0:1]"  0.37438501070279884 0.62561498929720116;
	setAttr -s 2 ".wl[29].w[0:1]"  0.38068003553022017 0.61931996446977977;
	setAttr -s 2 ".wl[30].w[0:1]"  0.37438494918369164 0.62561505081630842;
	setAttr -s 2 ".wl[31].w[0:1]"  0.35433487420861726 0.64566512579138269;
	setAttr -s 2 ".wl[32].w[0:1]"  0.31894805483525313 0.68105194516474687;
	setAttr -s 2 ".wl[33].w[0:1]"  0.27558244775591889 0.72441755224408111;
	setAttr -s 2 ".wl[34].w[0:1]"  0.25344786061398611 0.74655213938601395;
	setAttr -s 2 ".wl[35].w[0:1]"  0.27558243586897629 0.72441756413102365;
	setAttr -s 2 ".wl[36].w[0:1]"  0.31894803979058534 0.68105196020941472;
	setAttr -s 2 ".wl[37].w[0:1]"  0.35433483345882189 0.64566516654117823;
	setAttr -s 2 ".wl[38].w[0:1]"  0.37438492529116496 0.62561507470883504;
	setAttr -s 2 ".wl[39].w[0:1]"  0.38068000147267494 0.619319998527325;
	setAttr -s 2 ".wl[40].w[2:3]"  0.53490275825698574 0.46509724174301437;
	setAttr -s 2 ".wl[41].w[2:3]"  0.54299466089897996 0.45700533910102015;
	setAttr -s 2 ".wl[42].w[2:3]"  0.56023997749217957 0.43976002250782037;
	setAttr -s 2 ".wl[43].w[2:3]"  0.58905074747191455 0.41094925252808556;
	setAttr -s 2 ".wl[44].w[2:3]"  0.60884591332263904 0.39115408667736101;
	setAttr -s 2 ".wl[45].w[2:3]"  0.589050752637998 0.41094924736200206;
	setAttr -s 2 ".wl[46].w[2:3]"  0.56024000007485819 0.43975999992514186;
	setAttr -s 2 ".wl[47].w[2:3]"  0.54299471165860158 0.45700528834139836;
	setAttr -s 2 ".wl[48].w[2:3]"  0.53490278776870803 0.46509721223129197;
	setAttr -s 2 ".wl[49].w[2:3]"  0.53256118323321699 0.46743881676678306;
	setAttr -s 2 ".wl[50].w[2:3]"  0.53490357677824851 0.46509642322175149;
	setAttr -s 2 ".wl[51].w[2:3]"  0.54299474527963609 0.45700525472036396;
	setAttr -s 2 ".wl[52].w[2:3]"  0.56024000007485819 0.43975999992514186;
	setAttr -s 2 ".wl[53].w[2:3]"  0.58905098972147107 0.41094901027852887;
	setAttr -s 2 ".wl[54].w[2:3]"  0.60884627614366926 0.39115372385633074;
	setAttr -s 2 ".wl[55].w[2:3]"  0.58905099488758106 0.41094900511241905;
	setAttr -s 2 ".wl[56].w[2:3]"  0.56024001362446996 0.4397599863755301;
	setAttr -s 2 ".wl[57].w[2:3]"  0.54299475796957386 0.45700524203042614;
	setAttr -s 2 ".wl[58].w[2:3]"  0.53490358661570736 0.46509641338429264;
	setAttr -s 2 ".wl[59].w[2:3]"  0.53256119223682197 0.46743880776317814;
	setAttr -s 2 ".wl[60].w[3:4]"  0.79944422837380602 0.20055577162619398;
	setAttr -s 2 ".wl[61].w[3:4]"  0.79944690702488297 0.20055309297511698;
	setAttr -s 2 ".wl[62].w[3:4]"  0.79944431462665078 0.20055568537334917;
	setAttr -s 2 ".wl[63].w[3:4]"  0.79944553883919645 0.20055446116080361;
	setAttr -s 2 ".wl[64].w[3:4]"  0.79944519824435656 0.20055480175564344;
	setAttr -s 2 ".wl[65].w[3:4]"  0.79944553883919645 0.20055446116080361;
	setAttr -s 2 ".wl[66].w[3:4]"  0.79944433464178 0.20055566535822011;
	setAttr -s 2 ".wl[67].w[3:4]"  0.79944696212191824 0.20055303787808179;
	setAttr -s 2 ".wl[68].w[3:4]"  0.79944453921547676 0.20055546078452319;
	setAttr -s 2 ".wl[69].w[3:4]"  0.79944562956690435 0.20055437043309562;
	setAttr -s 2 ".wl[70].w[3:4]"  0.79944554924282063 0.2005544507571794;
	setAttr -s 2 ".wl[71].w[3:4]"  0.7994453189978008 0.20055468100219925;
	setAttr -s 2 ".wl[72].w[3:4]"  0.7994455958372666 0.20055440416273335;
	setAttr -s 2 ".wl[73].w[3:4]"  0.79944623673849002 0.20055376326150998;
	setAttr -s 2 ".wl[74].w[3:4]"  0.79944469017371211 0.20055530982628789;
	setAttr -s 2 ".wl[75].w[3:4]"  0.79944624550733867 0.20055375449266136;
	setAttr -s 2 ".wl[76].w[3:4]"  0.79944561585240426 0.20055438414759569;
	setAttr -s 2 ".wl[77].w[3:4]"  0.79944537409467009 0.20055462590532991;
	setAttr -s 2 ".wl[78].w[3:4]"  0.79944561401316572 0.20055438598683437;
	setAttr -s 2 ".wl[79].w[3:4]"  0.79944569767050233 0.20055430232949761;
	setAttr -s 2 ".wl[80].w[4:5]"  0.89285739168278477 0.10714260831721521;
	setAttr -s 2 ".wl[81].w[4:5]"  0.89285715478391703 0.10714284521608296;
	setAttr -s 2 ".wl[82].w[4:5]"  0.89285721455713529 0.10714278544286476;
	setAttr -s 2 ".wl[83].w[4:5]"  0.89285686701683731 0.10714313298316268;
	setAttr -s 2 ".wl[84].w[4:5]"  0.89285724218157358 0.10714275781842637;
	setAttr -s 2 ".wl[85].w[4:5]"  0.89285686701683731 0.10714313298316268;
	setAttr -s 2 ".wl[86].w[4:5]"  0.89285723163436637 0.10714276836563369;
	setAttr -s 2 ".wl[87].w[4:5]"  0.89285720179358019 0.10714279820641978;
	setAttr -s 2 ".wl[88].w[4:5]"  0.89285765689802943 0.10714234310197064;
	setAttr -s 2 ".wl[89].w[4:5]"  0.89285776751144008 0.10714223248855996;
	setAttr -s 2 ".wl[90].w[4:5]"  0.89285713598862604 0.107142864011374;
	setAttr -s 2 ".wl[91].w[4:5]"  0.89285726891807371 0.10714273108192633;
	setAttr -s 2 ".wl[92].w[4:5]"  0.89285727151001681 0.10714272848998321;
	setAttr -s 2 ".wl[93].w[4:5]"  0.89285746247574305 0.10714253752425697;
	setAttr -s 2 ".wl[94].w[4:5]"  0.89285778569798457 0.1071422143020154;
	setAttr -s 2 ".wl[95].w[4:5]"  0.89285746995743742 0.10714253004256262;
	setAttr -s 2 ".wl[96].w[4:5]"  0.89285728858727365 0.1071427114127264;
	setAttr -s 2 ".wl[97].w[4:5]"  0.89285731592764672 0.10714268407235325;
	setAttr -s 2 ".wl[98].w[4:5]"  0.89285719125178009 0.10714280874821992;
	setAttr -s 2 ".wl[99].w[4:5]"  0.89285782561843685 0.10714217438156322;
	setAttr -s 2 ".wl[100].w[4:5]"  0.18465739019668739 0.81534260980331263;
	setAttr -s 2 ".wl[101].w[4:5]"  0.18465750671981357 0.81534249328018649;
	setAttr -s 2 ".wl[102].w[4:5]"  0.18465682640245831 0.81534317359754171;
	setAttr -s 2 ".wl[103].w[4:5]"  0.18465742661515494 0.81534257338484506;
	setAttr -s 2 ".wl[104].w[4:5]"  0.18465813303668843 0.81534186696331157;
	setAttr -s 2 ".wl[105].w[4:5]"  0.18465742661515494 0.81534257338484506;
	setAttr -s 2 ".wl[106].w[4:5]"  0.18465680631309161 0.81534319368690844;
	setAttr -s 2 ".wl[107].w[4:5]"  0.18465745141872175 0.8153425485812783;
	setAttr -s 2 ".wl[108].w[4:5]"  0.18465797510603343 0.81534202489396657;
	setAttr -s 2 ".wl[109].w[4:5]"  0.18465733555126612 0.81534266444873382;
	setAttr -s 2 ".wl[110].w[4:5]"  0.18465629831317573 0.81534370168682424;
	setAttr -s 2 ".wl[111].w[4:5]"  0.18465721869910087 0.8153427813008991;
	setAttr -s 2 ".wl[112].w[4:5]"  0.1846573694058847 0.81534263059411538;
	setAttr -s 2 ".wl[113].w[4:5]"  0.18465776629592159 0.81534223370407843;
	setAttr -s 2 ".wl[114].w[4:5]"  0.18465703934210961 0.81534296065789036;
	setAttr -s 2 ".wl[115].w[4:5]"  0.18465775749463076 0.81534224250536924;
	setAttr -s 2 ".wl[116].w[4:5]"  0.18465734931658342 0.8153426506834166;
	setAttr -s 2 ".wl[117].w[4:5]"  0.18465716339794791 0.81534283660205209;
	setAttr -s 2 ".wl[118].w[4:5]"  0.1846562333028357 0.81534376669716435;
	setAttr -s 2 ".wl[119].w[4:5]"  0.18465726719532058 0.81534273280467939;
	setAttr -s 2 ".wl[120].w[5:6]"  0.37456162560903011 0.62543837439096994;
	setAttr -s 2 ".wl[121].w[5:6]"  0.37456144806482805 0.62543855193517195;
	setAttr -s 2 ".wl[122].w[5:6]"  0.37456151612397393 0.62543848387602607;
	setAttr -s 2 ".wl[123].w[5:6]"  0.37455939135222943 0.62544060864777051;
	setAttr -s 2 ".wl[124].w[5:6]"  0.37456024375216895 0.62543975624783099;
	setAttr -s 2 ".wl[125].w[5:6]"  0.37455939135222943 0.62544060864777051;
	setAttr -s 2 ".wl[126].w[5:6]"  0.374561505084052 0.62543849491594794;
	setAttr -s 2 ".wl[127].w[5:6]"  0.37456141767449397 0.62543858232550609;
	setAttr -s 2 ".wl[128].w[5:6]"  0.3745625193833742 0.62543748061662585;
	setAttr -s 2 ".wl[129].w[5:6]"  0.37456147175961019 0.62543852824038981;
	setAttr -s 2 ".wl[130].w[5:6]"  0.37456032701825276 0.6254396729817473;
	setAttr -s 2 ".wl[131].w[5:6]"  0.37456152530357989 0.62543847469642011;
	setAttr -s 2 ".wl[132].w[5:6]"  0.37456058722046959 0.62543941277953052;
	setAttr -s 2 ".wl[133].w[5:6]"  0.37456132739523645 0.6254386726047636;
	setAttr -s 2 ".wl[134].w[5:6]"  0.37456297523592735 0.6254370247640727;
	setAttr -s 2 ".wl[135].w[5:6]"  0.37456132255853242 0.62543867744146753;
	setAttr -s 2 ".wl[136].w[5:6]"  0.37456057618049149 0.62543942381950857;
	setAttr -s 2 ".wl[137].w[5:6]"  0.37456149491329399 0.62543850508670606;
	setAttr -s 2 ".wl[138].w[5:6]"  0.37456029129197588 0.62543970870802412;
	setAttr -s 2 ".wl[139].w[5:6]"  0.37456143419511728 0.62543856580488277;
	setAttr -s 2 ".wl[140].w[6:7]"  0.6354575560029796 0.36454244399702046;
	setAttr -s 2 ".wl[141].w[6:7]"  0.63545637836710833 0.36454362163289167;
	setAttr -s 2 ".wl[142].w[6:7]"  0.63545760697755771 0.36454239302244235;
	setAttr -s 2 ".wl[143].w[6:7]"  0.63545739674022372 0.36454260325977633;
	setAttr -s 2 ".wl[144].w[6:7]"  0.63545761426330638 0.36454238573669367;
	setAttr -s 2 ".wl[145].w[6:7]"  0.63545739674022372 0.36454260325977633;
	setAttr -s 2 ".wl[146].w[6:7]"  0.63545656961894081 0.36454343038105919;
	setAttr -s 2 ".wl[147].w[6:7]"  0.63545666327342976 0.3645433367265703;
	setAttr -s 2 ".wl[148].w[6:7]"  0.63545773970739228 0.36454226029260772;
	setAttr -s 2 ".wl[149].w[6:7]"  0.6354587036977043 0.3645412963022957;
	setAttr -s 2 ".wl[150].w[6:7]"  0.63545669051919762 0.36454330948080249;
	setAttr -s 2 ".wl[151].w[6:7]"  0.63545784948864203 0.36454215051135802;
	setAttr -s 2 ".wl[152].w[6:7]"  0.63545851009991672 0.36454148990008328;
	setAttr -s 2 ".wl[153].w[6:7]"  0.63545655585123961 0.36454344414876033;
	setAttr -s 2 ".wl[154].w[6:7]"  0.63545635041885584 0.36454364958114427;
	setAttr -s 2 ".wl[155].w[6:7]"  0.63545656103348402 0.36454343896651598;
	setAttr -s 2 ".wl[156].w[6:7]"  0.63545852192871288 0.36454147807128717;
	setAttr -s 2 ".wl[157].w[6:7]"  0.63545762970378028 0.36454237029621983;
	setAttr -s 2 ".wl[158].w[6:7]"  0.63545672879762505 0.36454327120237495;
	setAttr -s 2 ".wl[159].w[6:7]"  0.63545874394652713 0.36454125605347287;
	setAttr -s 2 ".wl[160].w[7:8]"  0.82055047125597913 0.17944952874402081;
	setAttr -s 2 ".wl[161].w[7:8]"  0.82055025328403985 0.1794497467159602;
	setAttr -s 2 ".wl[162].w[7:8]"  0.82055163623191074 0.1794483637680892;
	setAttr -s 2 ".wl[163].w[7:8]"  0.82055108666973375 0.17944891333026633;
	setAttr -s 2 ".wl[164].w[7:8]"  0.82055128433227886 0.17944871566772114;
	setAttr -s 2 ".wl[165].w[7:8]"  0.82055108666973375 0.17944891333026633;
	setAttr -s 2 ".wl[166].w[7:8]"  0.82055165630458815 0.17944834369541179;
	setAttr -s 2 ".wl[167].w[7:8]"  0.82055030853931465 0.17944969146068532;
	setAttr -s 2 ".wl[168].w[7:8]"  0.82055120966682682 0.17944879033317326;
	setAttr -s 2 ".wl[169].w[7:8]"  0.82055117765826002 0.17944882234174001;
	setAttr -s 2 ".wl[170].w[7:8]"  0.82055120966682682 0.17944879033317326;
	setAttr -s 2 ".wl[171].w[7:8]"  0.82055086619633055 0.17944913380366939;
	setAttr -s 2 ".wl[172].w[7:8]"  0.82055114383165906 0.17944885616834094;
	setAttr -s 2 ".wl[173].w[7:8]"  0.8205510937049536 0.1794489062950464;
	setAttr -s 2 ".wl[174].w[7:8]"  0.82055074509572756 0.17944925490427246;
	setAttr -s 2 ".wl[175].w[7:8]"  0.82055110249897645 0.17944889750102358;
	setAttr -s 2 ".wl[176].w[7:8]"  0.82055116390433458 0.17944883609566539;
	setAttr -s 2 ".wl[177].w[7:8]"  0.82055092145159725 0.17944907854840281;
	setAttr -s 2 ".wl[178].w[7:8]"  0.82055127462340616 0.17944872537659387;
	setAttr -s 2 ".wl[179].w[7:8]"  0.82055124595763462 0.17944875404236543;
	setAttr -s 2 ".wl[180].w[7:8]"  0.1094017676422213 0.89059823235777869;
	setAttr -s 2 ".wl[181].w[7:8]"  0.10940201517931386 0.89059798482068619;
	setAttr -s 2 ".wl[182].w[7:8]"  0.10940193740762118 0.89059806259237884;
	setAttr -s 2 ".wl[183].w[7:8]"  0.10940194629439827 0.89059805370560174;
	setAttr -s 2 ".wl[184].w[7:8]"  0.10940168255486041 0.89059831744513962;
	setAttr -s 2 ".wl[185].w[7:8]"  0.10940194629439827 0.89059805370560174;
	setAttr -s 2 ".wl[186].w[7:8]"  0.10940192013209808 0.89059807986790196;
	setAttr -s 2 ".wl[187].w[7:8]"  0.1094015391397223 0.89059846086027761;
	setAttr -s 2 ".wl[188].w[7:8]"  0.10940184043714053 0.89059815956285948;
	setAttr -s 2 ".wl[189].w[7:8]"  0.10940211219866762 0.89059788780133242;
	setAttr -s 2 ".wl[190].w[7:8]"  0.10940193731479371 0.89059806268520636;
	setAttr -s 2 ".wl[191].w[7:8]"  0.10940152328792668 0.89059847671207326;
	setAttr -s 2 ".wl[192].w[7:8]"  0.10940189709807144 0.89059810290192865;
	setAttr -s 2 ".wl[193].w[7:8]"  0.10940194023954621 0.89059805976045381;
	setAttr -s 2 ".wl[194].w[7:8]"  0.10940224026972445 0.89059775973027555;
	setAttr -s 2 ".wl[195].w[7:8]"  0.10940193267098315 0.89059806732901681;
	setAttr -s 2 ".wl[196].w[7:8]"  0.10940187982255441 0.89059812017744555;
	setAttr -s 2 ".wl[197].w[7:8]"  0.10940123152178836 0.89059876847821162;
	setAttr -s 2 ".wl[198].w[7:8]"  0.10940188141004265 0.8905981185899573;
	setAttr -s 2 ".wl[199].w[7:8]"  0.10940205341685547 0.89059794658314451;
	setAttr -s 2 ".wl[200].w[8:9]"  0.2065188244561704 0.79348117554382969;
	setAttr -s 2 ".wl[201].w[8:9]"  0.20651946670393703 0.79348053329606305;
	setAttr -s 2 ".wl[202].w[8:9]"  0.20651937692702196 0.79348062307297806;
	setAttr -s 2 ".wl[203].w[8:9]"  0.20652002559756885 0.79347997440243112;
	setAttr -s 2 ".wl[204].w[8:9]"  0.20651972654025388 0.79348027345974614;
	setAttr -s 2 ".wl[205].w[8:9]"  0.20652002559756885 0.79347997440243112;
	setAttr -s 2 ".wl[206].w[8:9]"  0.20651935698476001 0.79348064301524002;
	setAttr -s 2 ".wl[207].w[8:9]"  0.20651856068037422 0.79348143931962578;
	setAttr -s 2 ".wl[208].w[8:9]"  0.20651926498765952 0.79348073501234051;
	setAttr -s 2 ".wl[209].w[8:9]"  0.20651929678825909 0.79348070321174091;
	setAttr -s 2 ".wl[210].w[8:9]"  0.20651926498765952 0.79348073501234051;
	setAttr -s 2 ".wl[211].w[8:9]"  0.20651939350885254 0.79348060649114749;
	setAttr -s 2 ".wl[212].w[8:9]"  0.20651933039507989 0.79348066960492014;
	setAttr -s 2 ".wl[213].w[8:9]"  0.20651938019609742 0.79348061980390261;
	setAttr -s 2 ".wl[214].w[8:9]"  0.20651900274716534 0.79348099725283461;
	setAttr -s 2 ".wl[215].w[8:9]"  0.20651937145921215 0.79348062854078794;
	setAttr -s 2 ".wl[216].w[8:9]"  0.20651931045282174 0.79348068954717821;
	setAttr -s 2 ".wl[217].w[8:9]"  0.2065195513302589 0.7934804486697411;
	setAttr -s 2 ".wl[218].w[8:9]"  0.2065192004531157 0.79348079954688433;
	setAttr -s 2 ".wl[219].w[8:9]"  0.20651922893264046 0.79348077106735959;
	setAttr -s 2 ".wl[220].w[9:10]"  0.41446029345751112 0.58553970654248888;
	setAttr -s 2 ".wl[221].w[9:10]"  0.41446025590750291 0.58553974409249709;
	setAttr -s 2 ".wl[222].w[9:10]"  0.41446030347629198 0.58553969652370796;
	setAttr -s 2 ".wl[223].w[9:10]"  0.41445919055011043 0.58554080944988962;
	setAttr -s 2 ".wl[224].w[9:10]"  0.41445918182803088 0.58554081817196924;
	setAttr -s 2 ".wl[225].w[9:10]"  0.41445919055011043 0.58554080944988962;
	setAttr -s 2 ".wl[226].w[9:10]"  0.41446029576012539 0.58553970423987467;
	setAttr -s 2 ".wl[227].w[9:10]"  0.41445920007711101 0.58554079992288899;
	setAttr -s 2 ".wl[228].w[9:10]"  0.41446026016410903 0.58553973983589103;
	setAttr -s 2 ".wl[229].w[9:10]"  0.41446027246857037 0.58553972753142969;
	setAttr -s 2 ".wl[230].w[9:10]"  0.41446026016410903 0.58553973983589103;
	setAttr -s 2 ".wl[231].w[9:10]"  0.41446030989222221 0.58553969010777784;
	setAttr -s 2 ".wl[232].w[9:10]"  0.4144602854719035 0.5855397145280965;
	setAttr -s 2 ".wl[233].w[9:10]"  0.41446030474118001 0.58553969525881999;
	setAttr -s 2 ".wl[234].w[9:10]"  0.41446043875043437 0.58553956124956563;
	setAttr -s 2 ".wl[235].w[9:10]"  0.41446030136065787 0.58553969863934219;
	setAttr -s 2 ".wl[236].w[9:10]"  0.41446027775573707 0.58553972224426287;
	setAttr -s 2 ".wl[237].w[9:10]"  0.41446028865144624 0.58553971134855387;
	setAttr -s 2 ".wl[238].w[9:10]"  0.41446023519404768 0.58553976480595238;
	setAttr -s 2 ".wl[239].w[9:10]"  0.41446024621350303 0.58553975378649692;
	setAttr -s 2 ".wl[240].w[10:11]"  0.67253737281528791 0.32746262718471209;
	setAttr -s 2 ".wl[241].w[10:11]"  0.67253737001696345 0.32746262998303655;
	setAttr -s 2 ".wl[242].w[10:11]"  0.67253743547281508 0.32746256452718503;
	setAttr -s 2 ".wl[243].w[10:11]"  0.67253840733361114 0.32746159266638891;
	setAttr -s 2 ".wl[244].w[10:11]"  0.67253842376874662 0.32746157623125344;
	setAttr -s 2 ".wl[245].w[10:11]"  0.67253840733361114 0.32746159266638891;
	setAttr -s 2 ".wl[246].w[10:11]"  0.67253745001260978 0.32746254998739022;
	setAttr -s 2 ".wl[247].w[10:11]"  0.67253756513271401 0.32746243486728593;
	setAttr -s 2 ".wl[248].w[10:11]"  0.67253841489125177 0.32746158510874818;
	setAttr -s 2 ".wl[249].w[10:11]"  0.67253847324213201 0.32746152675786794;
	setAttr -s 2 ".wl[250].w[10:11]"  0.67253841489125177 0.32746158510874818;
	setAttr -s 2 ".wl[251].w[10:11]"  0.67253953715413772 0.32746046284586233;
	setAttr -s 2 ".wl[252].w[10:11]"  0.67253844873946633 0.32746155126053361;
	setAttr -s 2 ".wl[253].w[10:11]"  0.67253841242964785 0.3274615875703521;
	setAttr -s 2 ".wl[254].w[10:11]"  0.67253842376874629 0.32746157623125366;
	setAttr -s 2 ".wl[255].w[10:11]"  0.67253841879969256 0.32746158120030755;
	setAttr -s 2 ".wl[256].w[10:11]"  0.67253846327932676 0.3274615367206733;
	setAttr -s 2 ".wl[257].w[10:11]"  0.67253859784009407 0.32746140215990593;
	setAttr -s 2 ".wl[258].w[10:11]"  0.6725384619432242 0.3274615380567758;
	setAttr -s 2 ".wl[259].w[10:11]"  0.67253852271553338 0.32746147728446656;
	setAttr -s 2 ".wl[260].w[11:12]"  0.83890591325587716 0.16109408674412287;
	setAttr -s 2 ".wl[261].w[11:12]"  0.83890684414119843 0.16109315585880155;
	setAttr -s 2 ".wl[262].w[11:12]"  0.83890740080149873 0.16109259919850133;
	setAttr -s 2 ".wl[263].w[11:12]"  0.8389072193965148 0.16109278060348514;
	setAttr -s 2 ".wl[264].w[11:12]"  0.83890694567206858 0.16109305432793147;
	setAttr -s 2 ".wl[265].w[11:12]"  0.8389072193965148 0.16109278060348514;
	setAttr -s 2 ".wl[266].w[11:12]"  0.83890742064034529 0.16109257935965465;
	setAttr -s 2 ".wl[267].w[11:12]"  0.83890689875286573 0.1610931012471343;
	setAttr -s 2 ".wl[268].w[11:12]"  0.83890704481152634 0.16109295518847366;
	setAttr -s 2 ".wl[269].w[11:12]"  0.8389070131758245 0.16109298682417553;
	setAttr -s 2 ".wl[270].w[11:12]"  0.83890704481152634 0.16109295518847366;
	setAttr -s 2 ".wl[271].w[11:12]"  0.83890670534205558 0.16109329465794445;
	setAttr -s 2 ".wl[272].w[11:12]"  0.838906979743266 0.16109302025673405;
	setAttr -s 2 ".wl[273].w[11:12]"  0.83890693020047991 0.16109306979952009;
	setAttr -s 2 ".wl[274].w[11:12]"  0.83890658565211473 0.16109341434788538;
	setAttr -s 2 ".wl[275].w[11:12]"  0.83890693889206247 0.16109306110793759;
	setAttr -s 2 ".wl[276].w[11:12]"  0.83890699958211723 0.16109300041788274;
	setAttr -s 2 ".wl[277].w[11:12]"  0.83890675995366837 0.16109324004633163;
	setAttr -s 2 ".wl[278].w[11:12]"  0.83890710901143051 0.16109289098856955;
	setAttr -s 2 ".wl[279].w[11:12]"  0.83890708067958508 0.16109291932041497;
	setAttr -s 2 ".wl[280].w[11:12]"  0.11912075897003291 0.88087924102996706;
	setAttr -s 2 ".wl[281].w[11:12]"  0.11912071684028459 0.88087928315971542;
	setAttr -s 2 ".wl[282].w[11:12]"  0.11912074386541756 0.88087925613458251;
	setAttr -s 2 ".wl[283].w[11:12]"  0.11912089667209402 0.88087910332790598;
	setAttr -s 2 ".wl[284].w[11:12]"  0.11912072072618958 0.88087927927381038;
	setAttr -s 2 ".wl[285].w[11:12]"  0.11912089667209402 0.88087910332790598;
	setAttr -s 2 ".wl[286].w[11:12]"  0.1191207258379073 0.88087927416209266;
	setAttr -s 2 ".wl[287].w[11:12]"  0.11912071543815904 0.88087928456184095;
	setAttr -s 2 ".wl[288].w[11:12]"  0.11912068118577977 0.88087931881422021;
	setAttr -s 2 ".wl[289].w[11:12]"  0.11912065938583909 0.88087934061416095;
	setAttr -s 2 ".wl[290].w[11:12]"  0.11912082555571706 0.88087917444428299;
	setAttr -s 2 ".wl[291].w[11:12]"  0.1191206506730408 0.88087934932695922;
	setAttr -s 2 ".wl[292].w[11:12]"  0.11912124317539516 0.88087875682460481;
	setAttr -s 2 ".wl[293].w[11:12]"  0.11912087915513046 0.88087912084486952;
	setAttr -s 2 ".wl[294].w[11:12]"  0.11912088430060673 0.88087911569939337;
	setAttr -s 2 ".wl[295].w[11:12]"  0.11912087125711818 0.88087912874288188;
	setAttr -s 2 ".wl[296].w[11:12]"  0.11912096047852676 0.88087903952147328;
	setAttr -s 2 ".wl[297].w[11:12]"  0.11912060104761578 0.88087939895238421;
	setAttr -s 2 ".wl[298].w[11:12]"  0.11912076721749924 0.8808792327825008;
	setAttr -s 2 ".wl[299].w[11:12]"  0.11912059804544058 0.88087940195455938;
	setAttr -s 2 ".wl[300].w[12:13]"  0.23135099137256035 0.76864900862743968;
	setAttr -s 2 ".wl[301].w[12:13]"  0.23135074279585527 0.76864925720414479;
	setAttr -s 2 ".wl[302].w[12:13]"  0.23135029434546431 0.76864970565453572;
	setAttr -s 2 ".wl[303].w[12:13]"  0.23135085911991743 0.76864914088008263;
	setAttr -s 2 ".wl[304].w[12:13]"  0.23135064350421919 0.76864935649578081;
	setAttr -s 2 ".wl[305].w[12:13]"  0.23135085911991743 0.76864914088008263;
	setAttr -s 2 ".wl[306].w[12:13]"  0.23135027494413593 0.76864972505586404;
	setAttr -s 2 ".wl[307].w[12:13]"  0.23135022480616269 0.76864977519383726;
	setAttr -s 2 ".wl[308].w[12:13]"  0.23135090766059985 0.76864909233940015;
	setAttr -s 2 ".wl[309].w[12:13]"  0.23135021638051731 0.76864978361948266;
	setAttr -s 2 ".wl[310].w[12:13]"  0.23135023984178837 0.76864976015821163;
	setAttr -s 2 ".wl[311].w[12:13]"  0.23135067158622741 0.76864932841377254;
	setAttr -s 2 ".wl[312].w[12:13]"  0.23135061018444766 0.76864938981555231;
	setAttr -s 2 ".wl[313].w[12:13]"  0.23135013010179056 0.76864986989820938;
	setAttr -s 2 ".wl[314].w[12:13]"  0.23135064350421936 0.76864935649578059;
	setAttr -s 2 ".wl[315].w[12:13]"  0.23134995417772228 0.76865004582227781;
	setAttr -s 2 ".wl[316].w[12:13]"  0.2313505907831328 0.7686494092168672;
	setAttr -s 2 ".wl[317].w[12:13]"  0.23135061817900243 0.76864938182099762;
	setAttr -s 2 ".wl[318].w[12:13]"  0.23135017705776026 0.76864982294223971;
	setAttr -s 2 ".wl[319].w[12:13]"  0.2313501503654769 0.7686498496345231;
	setAttr -s 2 ".wl[320].w[13:14]"  0.45594178973559885 0.54405821026440115;
	setAttr -s 2 ".wl[321].w[13:14]"  0.45594235528938559 0.54405764471061446;
	setAttr -s 2 ".wl[322].w[13:14]"  0.45594120867699245 0.5440587913230075;
	setAttr -s 2 ".wl[323].w[13:14]"  0.45594175091473943 0.54405824908526057;
	setAttr -s 2 ".wl[324].w[13:14]"  0.45594120619154394 0.54405879380845612;
	setAttr -s 2 ".wl[325].w[13:14]"  0.45594175091473943 0.54405824908526057;
	setAttr -s 2 ".wl[326].w[13:14]"  0.45594120464175325 0.54405879535824686;
	setAttr -s 2 ".wl[327].w[13:14]"  0.45594119421366619 0.54405880578633381;
	setAttr -s 2 ".wl[328].w[13:14]"  0.45594177232474603 0.54405822767525402;
	setAttr -s 2 ".wl[329].w[13:14]"  0.45594176744513915 0.54405823255486097;
	setAttr -s 2 ".wl[330].w[13:14]"  0.45594179495330384 0.54405820504669622;
	setAttr -s 2 ".wl[331].w[13:14]"  0.45594178701592447 0.54405821298407553;
	setAttr -s 2 ".wl[332].w[13:14]"  0.45594174462413278 0.54405825537586716;
	setAttr -s 2 ".wl[333].w[13:14]"  0.45594120933847732 0.54405879066152263;
	setAttr -s 2 ".wl[334].w[13:14]"  0.45594120619154377 0.54405879380845634;
	setAttr -s 2 ".wl[335].w[13:14]"  0.45594120757060236 0.54405879242939759;
	setAttr -s 2 ".wl[336].w[13:14]"  0.45594231557335885 0.54405768442664115;
	setAttr -s 2 ".wl[337].w[13:14]"  0.45594177590801138 0.54405822409198856;
	setAttr -s 2 ".wl[338].w[13:14]"  0.45594178189517209 0.54405821810482791;
	setAttr -s 2 ".wl[339].w[13:14]"  0.45594175371499041 0.54405824628500965;
	setAttr -s 2 ".wl[340].w[14:15]"  0.70688505636495391 0.29311494363504609;
	setAttr -s 2 ".wl[341].w[14:15]"  0.70688504856975687 0.29311495143024308;
	setAttr -s 2 ".wl[342].w[14:15]"  0.70688503468820252 0.29311496531179754;
	setAttr -s 2 ".wl[343].w[14:15]"  0.70688495406622565 0.29311504593377435;
	setAttr -s 2 ".wl[344].w[14:15]"  0.7068851207121214 0.29311487928787855;
	setAttr -s 2 ".wl[345].w[14:15]"  0.70688495406622565 0.29311504593377435;
	setAttr -s 2 ".wl[346].w[14:15]"  0.70688505138299096 0.2931149486170091;
	setAttr -s 2 ".wl[347].w[14:15]"  0.70688464457012357 0.29311535542987643;
	setAttr -s 2 ".wl[348].w[14:15]"  0.70688463163202897 0.29311536836797103;
	setAttr -s 2 ".wl[349].w[14:15]"  0.70688510177686892 0.29311489822313114;
	setAttr -s 2 ".wl[350].w[14:15]"  0.70688508158846286 0.29311491841153708;
	setAttr -s 2 ".wl[351].w[14:15]"  0.70688510984551889 0.29311489015448111;
	setAttr -s 2 ".wl[352].w[14:15]"  0.70688507364270758 0.29311492635729242;
	setAttr -s 2 ".wl[353].w[14:15]"  0.70688487013068702 0.29311512986931304;
	setAttr -s 2 ".wl[354].w[14:15]"  0.70688504497112203 0.29311495502887791;
	setAttr -s 2 ".wl[355].w[14:15]"  0.70688518333358019 0.29311481666641975;
	setAttr -s 2 ".wl[356].w[14:15]"  0.70688509033749425 0.29311490966250575;
	setAttr -s 2 ".wl[357].w[14:15]"  0.70688515580234768 0.29311484419765232;
	setAttr -s 2 ".wl[358].w[14:15]"  0.70688513561394706 0.293114864386053;
	setAttr -s 2 ".wl[359].w[14:15]"  0.7068851585826319 0.29311484141736804;
	setAttr -s 2 ".wl[360].w[15:16]"  0.85477227883030182 0.14522772116969818;
	setAttr -s 2 ".wl[361].w[15:16]"  0.85477212017610449 0.14522787982389554;
	setAttr -s 2 ".wl[362].w[15:16]"  0.85477250914233749 0.14522749085766251;
	setAttr -s 2 ".wl[363].w[15:16]"  0.8547722980445438 0.1452277019554562;
	setAttr -s 2 ".wl[364].w[15:16]"  0.8547723199591204 0.14522768004087966;
	setAttr -s 2 ".wl[365].w[15:16]"  0.8547722980445438 0.1452277019554562;
	setAttr -s 2 ".wl[366].w[15:16]"  0.85477239856378273 0.14522760143621724;
	setAttr -s 2 ".wl[367].w[15:16]"  0.85477237750716173 0.14522762249283822;
	setAttr -s 2 ".wl[368].w[15:16]"  0.85477218853747694 0.14522781146252309;
	setAttr -s 2 ".wl[369].w[15:16]"  0.85477238592680682 0.14522761407319321;
	setAttr -s 2 ".wl[370].w[15:16]"  0.854772261919855 0.145227738080145;
	setAttr -s 2 ".wl[371].w[15:16]"  0.85477219417181216 0.14522780582818784;
	setAttr -s 2 ".wl[372].w[15:16]"  0.85477245381738121 0.14522754618261879;
	setAttr -s 2 ".wl[373].w[15:16]"  0.85477227101863562 0.14522772898136432;
	setAttr -s 2 ".wl[374].w[15:16]"  0.85477239531055582 0.14522760468944415;
	setAttr -s 2 ".wl[375].w[15:16]"  0.85477248063743139 0.14522751936256859;
	setAttr -s 2 ".wl[376].w[15:16]"  0.85477247320479344 0.14522752679520662;
	setAttr -s 2 ".wl[377].w[15:16]"  0.85477224754082481 0.14522775245917521;
	setAttr -s 2 ".wl[378].w[15:16]"  0.85477232465887765 0.14522767534112241;
	setAttr -s 2 ".wl[379].w[15:16]"  0.85477245189450879 0.14522754810549121;
	setAttr -s 2 ".wl[380].w[15:16]"  0.1305750852123152 0.8694249147876848;
	setAttr -s 2 ".wl[381].w[15:16]"  0.13057500906465674 0.86942499093534331;
	setAttr -s 2 ".wl[382].w[15:16]"  0.13057510953216628 0.86942489046783367;
	setAttr -s 2 ".wl[383].w[15:16]"  0.13057503427401701 0.86942496572598293;
	setAttr -s 2 ".wl[384].w[15:16]"  0.1305750979954246 0.86942490200457545;
	setAttr -s 2 ".wl[385].w[15:16]"  0.13057494938076072 0.86942505061923925;
	setAttr -s 2 ".wl[386].w[15:16]"  0.13057509080174098 0.86942490919825899;
	setAttr -s 2 ".wl[387].w[15:16]"  0.1305750423975576 0.86942495760244243;
	setAttr -s 2 ".wl[388].w[15:16]"  0.13057497201991136 0.86942502798008869;
	setAttr -s 2 ".wl[389].w[15:16]"  0.13057494936989425 0.86942505063010578;
	setAttr -s 2 ".wl[390].w[15:16]"  0.13057505691324503 0.869424943086755;
	setAttr -s 2 ".wl[391].w[15:16]"  0.1305750252107449 0.86942497478925507;
	setAttr -s 2 ".wl[392].w[15:16]"  0.13057498093450859 0.86942501906549141;
	setAttr -s 2 ".wl[393].w[15:16]"  0.13057495096812016 0.86942504903187978;
	setAttr -s 2 ".wl[394].w[15:16]"  0.13057509799542477 0.86942490200457523;
	setAttr -s 2 ".wl[395].w[15:16]"  0.13057494276214668 0.86942505723785335;
	setAttr -s 2 ".wl[396].w[15:16]"  0.13057496220409359 0.86942503779590641;
	setAttr -s 2 ".wl[397].w[15:16]"  0.13057497365031051 0.86942502634968954;
	setAttr -s 2 ".wl[398].w[15:16]"  0.13057499630032052 0.86942500369967957;
	setAttr -s 2 ".wl[399].w[15:16]"  0.13057488563770814 0.86942511436229186;
	setAttr -s 2 ".wl[400].w[16:17]"  0.25929723077200395 0.74070276922799605;
	setAttr -s 2 ".wl[401].w[16:17]"  0.25929718905419485 0.74070281094580515;
	setAttr -s 2 ".wl[402].w[16:17]"  0.25929743089101109 0.74070256910898891;
	setAttr -s 2 ".wl[403].w[16:17]"  0.25929736099814638 0.74070263900185374;
	setAttr -s 2 ".wl[404].w[16:17]"  0.25929733612593192 0.74070266387406813;
	setAttr -s 2 ".wl[405].w[16:17]"  0.25929736099814638 0.74070263900185374;
	setAttr -s 2 ".wl[406].w[16:17]"  0.2592973449976394 0.74070265500236065;
	setAttr -s 2 ".wl[407].w[16:17]"  0.25929736497227068 0.74070263502772937;
	setAttr -s 2 ".wl[408].w[16:17]"  0.25929715141839493 0.74070284858160507;
	setAttr -s 2 ".wl[409].w[16:17]"  0.25929715496211314 0.74070284503788686;
	setAttr -s 2 ".wl[410].w[16:17]"  0.25929737922506735 0.74070262077493265;
	setAttr -s 2 ".wl[411].w[16:17]"  0.2592973971399305 0.74070260286006961;
	setAttr -s 2 ".wl[412].w[16:17]"  0.25929738797821578 0.74070261202178422;
	setAttr -s 2 ".wl[413].w[16:17]"  0.2592972318827203 0.74070276811727975;
	setAttr -s 2 ".wl[414].w[16:17]"  0.25929741956321151 0.74070258043678849;
	setAttr -s 2 ".wl[415].w[16:17]"  0.25929742584847482 0.74070257415152518;
	setAttr -s 2 ".wl[416].w[16:17]"  0.25929736958701971 0.74070263041298023;
	setAttr -s 2 ".wl[417].w[16:17]"  0.25929734651330555 0.74070265348669451;
	setAttr -s 2 ".wl[418].w[16:17]"  0.25929731970988573 0.74070268029011421;
	setAttr -s 2 ".wl[419].w[16:17]"  0.25929709238411119 0.74070290761588875;
	setAttr -s 2 ".wl[420].w[17:18]"  0.49822628422863491 0.50177371577136509;
	setAttr -s 2 ".wl[421].w[17:18]"  0.49822642908666592 0.50177357091333408;
	setAttr -s 2 ".wl[422].w[17:18]"  0.49822628383289025 0.50177371616710975;
	setAttr -s 2 ".wl[423].w[17:18]"  0.49822613865088472 0.50177386134911539;
	setAttr -s 2 ".wl[424].w[17:18]"  0.49822642819573409 0.50177357180426585;
	setAttr -s 2 ".wl[425].w[17:18]"  0.49822613865088472 0.50177386134911539;
	setAttr -s 2 ".wl[426].w[17:18]"  0.49822642875944328 0.50177357124055677;
	setAttr -s 2 ".wl[427].w[17:18]"  0.49822628339736008 0.50177371660263992;
	setAttr -s 2 ".wl[428].w[17:18]"  0.49822613805520261 0.50177386194479745;
	setAttr -s 2 ".wl[429].w[17:18]"  0.49822628332643126 0.50177371667356874;
	setAttr -s 2 ".wl[430].w[17:18]"  0.4982264288781495 0.5017735711218505;
	setAttr -s 2 ".wl[431].w[17:18]"  0.49822628346526132 0.50177371653473879;
	setAttr -s 2 ".wl[432].w[17:18]"  0.49822628390139306 0.50177371609860688;
	setAttr -s 2 ".wl[433].w[17:18]"  0.49822628260012231 0.50177371739987764;
	setAttr -s 2 ".wl[434].w[17:18]"  0.49822628314118922 0.50177371685881089;
	setAttr -s 2 ".wl[435].w[17:18]"  0.49822613799350762 0.50177386200649243;
	setAttr -s 2 ".wl[436].w[17:18]"  0.49822613789884229 0.50177386210115771;
	setAttr -s 2 ".wl[437].w[17:18]"  0.49822628301566946 0.50177371698433049;
	setAttr -s 2 ".wl[438].w[17:18]"  0.49822628299540594 0.50177371700459406;
	setAttr -s 2 ".wl[439].w[17:18]"  0.49822628277070513 0.50177371722929487;
	setAttr -s 2 ".wl[440].w[18:19]"  0.73822449163167536 0.26177550836832464;
	setAttr -s 2 ".wl[441].w[18:19]"  0.73822449876742702 0.26177550123257304;
	setAttr -s 2 ".wl[442].w[18:19]"  0.73822455889742244 0.26177544110257756;
	setAttr -s 2 ".wl[443].w[18:19]"  0.73822448702708798 0.26177551297291207;
	setAttr -s 2 ".wl[444].w[18:19]"  0.73822448898656667 0.26177551101343338;
	setAttr -s 2 ".wl[445].w[18:19]"  0.73822457742587788 0.26177542257412217;
	setAttr -s 2 ".wl[446].w[18:19]"  0.73822457655597107 0.26177542344402893;
	setAttr -s 2 ".wl[447].w[18:19]"  0.73822459895237058 0.26177540104762947;
	setAttr -s 2 ".wl[448].w[18:19]"  0.73822462628067964 0.26177537371932047;
	setAttr -s 2 ".wl[449].w[18:19]"  0.73822458141524117 0.26177541858475878;
	setAttr -s 2 ".wl[450].w[18:19]"  0.73822455289772981 0.26177544710227024;
	setAttr -s 2 ".wl[451].w[18:19]"  0.73822455368491235 0.26177544631508776;
	setAttr -s 2 ".wl[452].w[18:19]"  0.7382245673805975 0.2617754326194025;
	setAttr -s 2 ".wl[453].w[18:19]"  0.73822461506652048 0.26177538493347946;
	setAttr -s 2 ".wl[454].w[18:19]"  0.73822460689255853 0.26177539310744147;
	setAttr -s 2 ".wl[455].w[18:19]"  0.7382246230766345 0.26177537692336544;
	setAttr -s 2 ".wl[456].w[18:19]"  0.73822464469449856 0.26177535530550144;
	setAttr -s 2 ".wl[457].w[18:19]"  0.73822460401471435 0.2617753959852856;
	setAttr -s 2 ".wl[458].w[18:19]"  0.73822461847206244 0.26177538152793756;
	setAttr -s 2 ".wl[459].w[18:19]"  0.73822464362631446 0.26177535637368549;
	setAttr -s 2 ".wl[460].w[19:20]"  0.86838709925281532 0.13161290074718468;
	setAttr -s 2 ".wl[461].w[19:20]"  0.86838711152248282 0.13161288847751715;
	setAttr -s 2 ".wl[462].w[19:20]"  0.86838712094975712 0.13161287905024288;
	setAttr -s 2 ".wl[463].w[19:20]"  0.86838715181336557 0.13161284818663441;
	setAttr -s 2 ".wl[464].w[19:20]"  0.86838716437961683 0.13161283562038326;
	setAttr -s 2 ".wl[465].w[19:20]"  0.86838713030665815 0.13161286969334188;
	setAttr -s 2 ".wl[466].w[19:20]"  0.86838717420944134 0.13161282579055861;
	setAttr -s 2 ".wl[467].w[19:20]"  0.86838718828112305 0.13161281171887701;
	setAttr -s 2 ".wl[468].w[19:20]"  0.8683871868909272 0.13161281310907277;
	setAttr -s 2 ".wl[469].w[19:20]"  0.86838720719264517 0.13161279280735486;
	setAttr -s 2 ".wl[470].w[19:20]"  0.86838714234015724 0.13161285765984279;
	setAttr -s 2 ".wl[471].w[19:20]"  0.86838716345608913 0.13161283654391093;
	setAttr -s 2 ".wl[472].w[19:20]"  0.86838717774982965 0.13161282225017037;
	setAttr -s 2 ".wl[473].w[19:20]"  0.86838713689067637 0.13161286310932374;
	setAttr -s 2 ".wl[474].w[19:20]"  0.86838715342588302 0.13161284657411707;
	setAttr -s 2 ".wl[475].w[19:20]"  0.86838720715445117 0.13161279284554891;
	setAttr -s 2 ".wl[476].w[19:20]"  0.86838721804185082 0.13161278195814921;
	setAttr -s 2 ".wl[477].w[19:20]"  0.8683872321827576 0.13161276781724235;
	setAttr -s 2 ".wl[478].w[19:20]"  0.86838724197480044 0.13161275802519964;
	setAttr -s 2 ".wl[479].w[19:20]"  0.8683872711116305 0.13161272888836958;
	setAttr -s 2 ".wl[480].w[19:20]"  0.14400949810420025 0.85599050189579984;
	setAttr -s 2 ".wl[481].w[19:20]"  0.14400951610378837 0.85599048389621157;
	setAttr -s 2 ".wl[482].w[19:20]"  0.14400944704743521 0.85599055295256476;
	setAttr -s 2 ".wl[483].w[19:20]"  0.14400940903716014 0.85599059096283991;
	setAttr -s 2 ".wl[484].w[19:20]"  0.1440093332360515 0.85599066676394853;
	setAttr -s 2 ".wl[485].w[19:20]"  0.14400945868021903 0.85599054131978103;
	setAttr -s 2 ".wl[486].w[19:20]"  0.14400942770542585 0.85599057229457409;
	setAttr -s 2 ".wl[487].w[19:20]"  0.14400946285980143 0.85599053714019857;
	setAttr -s 2 ".wl[488].w[19:20]"  0.14400941464813508 0.8559905853518649;
	setAttr -s 2 ".wl[489].w[19:20]"  0.14400940481680621 0.85599059518319376;
	setAttr -s 2 ".wl[490].w[19:20]"  0.1440095049659891 0.85599049503401092;
	setAttr -s 2 ".wl[491].w[19:20]"  0.14400949669049792 0.8559905033095021;
	setAttr -s 2 ".wl[492].w[19:20]"  0.14400948705513117 0.85599051294486883;
	setAttr -s 2 ".wl[493].w[19:20]"  0.14400947276510551 0.85599052723489444;
	setAttr -s 2 ".wl[494].w[19:20]"  0.14400935517377392 0.85599064482622611;
	setAttr -s 2 ".wl[495].w[19:20]"  0.14400939378411878 0.8559906062158813;
	setAttr -s 2 ".wl[496].w[19:20]"  0.14400938257408 0.85599061742591998;
	setAttr -s 2 ".wl[497].w[19:20]"  0.14400944344652716 0.85599055655347278;
	setAttr -s 2 ".wl[498].w[19:20]"  0.14400936561434685 0.85599063438565315;
	setAttr -s 2 ".wl[499].w[19:20]"  0.14400933900363252 0.85599066099636756;
	setAttr -s 2 ".wl[500].w[20:21]"  0.29038897145484388 0.70961102854515612;
	setAttr -s 2 ".wl[501].w[20:21]"  0.2903887773806561 0.70961122261934384;
	setAttr -s 2 ".wl[502].w[20:21]"  0.29038880830084074 0.70961119169915921;
	setAttr -s 2 ".wl[503].w[20:21]"  0.29038875512764362 0.70961124487235638;
	setAttr -s 2 ".wl[504].w[20:21]"  0.29038881252169901 0.70961118747830099;
	setAttr -s 2 ".wl[505].w[20:21]"  0.29038868242990634 0.70961131757009366;
	setAttr -s 2 ".wl[506].w[20:21]"  0.29038866777145017 0.70961133222854977;
	setAttr -s 2 ".wl[507].w[20:21]"  0.29038890932072847 0.70961109067927153;
	setAttr -s 2 ".wl[508].w[20:21]"  0.2903888987571499 0.7096111012428501;
	setAttr -s 2 ".wl[509].w[20:21]"  0.29038912525382243 0.70961087474617768;
	setAttr -s 2 ".wl[510].w[20:21]"  0.29038895780944712 0.70961104219055282;
	setAttr -s 2 ".wl[511].w[20:21]"  0.29038867061059703 0.70961132938940297;
	setAttr -s 2 ".wl[512].w[20:21]"  0.29038870714700787 0.70961129285299207;
	setAttr -s 2 ".wl[513].w[20:21]"  0.29038889977470972 0.70961110022529028;
	setAttr -s 2 ".wl[514].w[20:21]"  0.29038865964386179 0.70961134035613826;
	setAttr -s 2 ".wl[515].w[20:21]"  0.29038866914313233 0.70961133085686767;
	setAttr -s 2 ".wl[516].w[20:21]"  0.29038862845796909 0.70961137154203091;
	setAttr -s 2 ".wl[517].w[20:21]"  0.290388937339704 0.70961106266029605;
	setAttr -s 2 ".wl[518].w[20:21]"  0.29038863279425048 0.70961136720574958;
	setAttr -s 2 ".wl[519].w[20:21]"  0.29038906792469393 0.70961093207530601;
	setAttr -s 2 ".wl[520].w[21:22]"  0.54054519857053074 0.45945480142946921;
	setAttr -s 2 ".wl[521].w[21:22]"  0.54054520255558747 0.45945479744441253;
	setAttr -s 2 ".wl[522].w[21:22]"  0.54054493506739576 0.4594550649326043;
	setAttr -s 2 ".wl[523].w[21:22]"  0.54054522350009115 0.45945477649990885;
	setAttr -s 2 ".wl[524].w[21:22]"  0.5405452285263016 0.4594547714736984;
	setAttr -s 2 ".wl[525].w[21:22]"  0.54054493555050842 0.45945506444949158;
	setAttr -s 2 ".wl[526].w[21:22]"  0.54054496606556657 0.45945503393443349;
	setAttr -s 2 ".wl[527].w[21:22]"  0.54054524251842317 0.45945475748157683;
	setAttr -s 2 ".wl[528].w[21:22]"  0.54054493707754714 0.45945506292245292;
	setAttr -s 2 ".wl[529].w[21:22]"  0.54054493636143042 0.45945506363856953;
	setAttr -s 2 ".wl[530].w[21:22]"  0.54054493186721386 0.45945506813278608;
	setAttr -s 2 ".wl[531].w[21:22]"  0.54054493815762672 0.45945506184237328;
	setAttr -s 2 ".wl[532].w[21:22]"  0.54054494373921436 0.45945505626078575;
	setAttr -s 2 ".wl[533].w[21:22]"  0.54054520876681145 0.45945479123318861;
	setAttr -s 2 ".wl[534].w[21:22]"  0.54054494057668323 0.45945505942331671;
	setAttr -s 2 ".wl[535].w[21:22]"  0.5405449384813219 0.4594550615186781;
	setAttr -s 2 ".wl[536].w[21:22]"  0.54054494745570814 0.45945505254429192;
	setAttr -s 2 ".wl[537].w[21:22]"  0.5405449483882554 0.4594550516117446;
	setAttr -s 2 ".wl[538].w[21:22]"  0.54054494389403684 0.45945505610596327;
	setAttr -s 2 ".wl[539].w[21:22]"  0.54054494900718275 0.4594550509928173;
	setAttr -s 2 ".wl[540].w[22:23]"  0.76643384850908547 0.23356615149091448;
	setAttr -s 2 ".wl[541].w[22:23]"  0.76643399736467277 0.2335660026353272;
	setAttr -s 2 ".wl[542].w[22:23]"  0.76643392148034639 0.23356607851965355;
	setAttr -s 2 ".wl[543].w[22:23]"  0.76643392399384414 0.23356607600615589;
	setAttr -s 2 ".wl[544].w[22:23]"  0.76643395014359994 0.23356604985640017;
	setAttr -s 2 ".wl[545].w[22:23]"  0.76643392399384414 0.23356607600615589;
	setAttr -s 2 ".wl[546].w[22:23]"  0.7664341231546038 0.23356587684539618;
	setAttr -s 2 ".wl[547].w[22:23]"  0.76643386825332616 0.2335661317466739;
	setAttr -s 2 ".wl[548].w[22:23]"  0.76643393193859188 0.2335660680614082;
	setAttr -s 2 ".wl[549].w[22:23]"  0.76643392821284162 0.23356607178715838;
	setAttr -s 2 ".wl[550].w[22:23]"  0.76643424239942637 0.23356575760057363;
	setAttr -s 2 ".wl[551].w[22:23]"  0.76643393755793809 0.23356606244206193;
	setAttr -s 2 ".wl[552].w[22:23]"  0.7664341489357529 0.2335658510642471;
	setAttr -s 2 ".wl[553].w[22:23]"  0.76643402967969165 0.2335659703203084;
	setAttr -s 2 ".wl[554].w[22:23]"  0.76643404475900712 0.23356595524099288;
	setAttr -s 2 ".wl[555].w[22:23]"  0.76643377238304466 0.23356622761695536;
	setAttr -s 2 ".wl[556].w[22:23]"  0.76643416827161315 0.23356583172838688;
	setAttr -s 2 ".wl[557].w[22:23]"  0.76643399078497831 0.23356600921502171;
	setAttr -s 2 ".wl[558].w[22:23]"  0.76643430497158171 0.23356569502841829;
	setAttr -s 2 ".wl[559].w[22:23]"  0.76643399400508039 0.23356600599491961;
	setAttr -s 2 ".wl[560].w[23:24]"  0.87999247020927807 0.12000752979072192;
	setAttr -s 2 ".wl[561].w[23:24]"  0.87999236529091118 0.12000763470908885;
	setAttr -s 2 ".wl[562].w[23:24]"  0.87999244672281907 0.12000755327718103;
	setAttr -s 2 ".wl[563].w[23:24]"  0.87999243741779798 0.12000756258220203;
	setAttr -s 2 ".wl[564].w[23:24]"  0.87999231149509138 0.1200076885049086;
	setAttr -s 2 ".wl[565].w[23:24]"  0.87999243741779798 0.12000756258220203;
	setAttr -s 2 ".wl[566].w[23:24]"  0.8799924648113906 0.12000753518860938;
	setAttr -s 2 ".wl[567].w[23:24]"  0.87999260802918167 0.12000739197081831;
	setAttr -s 2 ".wl[568].w[23:24]"  0.87999254825708362 0.12000745174291634;
	setAttr -s 2 ".wl[569].w[23:24]"  0.87999251941244805 0.12000748058755194;
	setAttr -s 2 ".wl[570].w[23:24]"  0.87999244682001521 0.12000755317998477;
	setAttr -s 2 ".wl[571].w[23:24]"  0.87999228531317308 0.12000771468682687;
	setAttr -s 2 ".wl[572].w[23:24]"  0.8799926352982641 0.12000736470173584;
	setAttr -s 2 ".wl[573].w[23:24]"  0.87999244375761332 0.12000755624238672;
	setAttr -s 2 ".wl[574].w[23:24]"  0.87999245786421976 0.12000754213578026;
	setAttr -s 2 ".wl[575].w[23:24]"  0.87999245168238027 0.12000754831761976;
	setAttr -s 2 ".wl[576].w[23:24]"  0.87999250701804799 0.12000749298195196;
	setAttr -s 2 ".wl[577].w[23:24]"  0.87999233510674646 0.12000766489325353;
	setAttr -s 2 ".wl[578].w[23:24]"  0.87999255607443705 0.12000744392556299;
	setAttr -s 2 ".wl[579].w[23:24]"  0.87999258096067368 0.1200074190393263;
	setAttr -s 2 ".wl[580].w[23:24]"  0.15967548346827853 0.84032451653172158;
	setAttr -s 2 ".wl[581].w[23:24]"  0.15967526189379522 0.84032473810620478;
	setAttr -s 2 ".wl[582].w[23:24]"  0.15967536377987493 0.8403246362201251;
	setAttr -s 2 ".wl[583].w[23:24]"  0.15967569031496803 0.84032430968503191;
	setAttr -s 2 ".wl[584].w[23:24]"  0.15967531725292583 0.84032468274707417;
	setAttr -s 2 ".wl[585].w[23:24]"  0.15967569031496803 0.84032430968503191;
	setAttr -s 2 ".wl[586].w[23:24]"  0.15967534397140506 0.84032465602859496;
	setAttr -s 2 ".wl[587].w[23:24]"  0.15967543818931032 0.84032456181068971;
	setAttr -s 2 ".wl[588].w[23:24]"  0.15967539799957545 0.84032460200042458;
	setAttr -s 2 ".wl[589].w[23:24]"  0.15967519876334721 0.84032480123665287;
	setAttr -s 2 ".wl[590].w[23:24]"  0.15967545354045073 0.84032454645954935;
	setAttr -s 2 ".wl[591].w[23:24]"  0.15967542001330692 0.84032457998669319;
	setAttr -s 2 ".wl[592].w[23:24]"  0.15967569379211563 0.84032430620788445;
	setAttr -s 2 ".wl[593].w[23:24]"  0.15967534149762833 0.8403246585023717;
	setAttr -s 2 ".wl[594].w[23:24]"  0.15967572781111458 0.84032427218888539;
	setAttr -s 2 ".wl[595].w[23:24]"  0.15967533281935745 0.84032466718064258;
	setAttr -s 2 ".wl[596].w[23:24]"  0.15967567398365845 0.84032432601634166;
	setAttr -s 2 ".wl[597].w[23:24]"  0.15967536548529884 0.84032463451470119;
	setAttr -s 2 ".wl[598].w[23:24]"  0.15967538943893636 0.84032461056106367;
	setAttr -s 2 ".wl[599].w[23:24]"  0.15967513136304035 0.84032486863695965;
	setAttr -s 2 ".wl[600].w[24:25]"  0.32448408418229285 0.6755159158177072;
	setAttr -s 2 ".wl[601].w[24:25]"  0.3244839297762046 0.67551607022379545;
	setAttr -s 2 ".wl[602].w[24:25]"  0.32448402065528298 0.67551597934471708;
	setAttr -s 2 ".wl[603].w[24:25]"  0.3244840282385521 0.67551597176144784;
	setAttr -s 2 ".wl[604].w[24:25]"  0.32448401157542706 0.67551598842457294;
	setAttr -s 2 ".wl[605].w[24:25]"  0.3244840282385521 0.67551597176144784;
	setAttr -s 2 ".wl[606].w[24:25]"  0.32448400591372328 0.67551599408627672;
	setAttr -s 2 ".wl[607].w[24:25]"  0.3244834026909314 0.67551659730906866;
	setAttr -s 2 ".wl[608].w[24:25]"  0.32448402057607129 0.67551597942392871;
	setAttr -s 2 ".wl[609].w[24:25]"  0.32448396141578378 0.67551603858421627;
	setAttr -s 2 ".wl[610].w[24:25]"  0.3244834927371843 0.67551650726281576;
	setAttr -s 2 ".wl[611].w[24:25]"  0.32448346778604359 0.67551653221395647;
	setAttr -s 2 ".wl[612].w[24:25]"  0.3244839862583111 0.6755160137416889;
	setAttr -s 2 ".wl[613].w[24:25]"  0.32448340935410036 0.67551659064589975;
	setAttr -s 2 ".wl[614].w[24:25]"  0.32448401157542717 0.67551598842457283;
	setAttr -s 2 ".wl[615].w[24:25]"  0.32448340289566652 0.67551659710433343;
	setAttr -s 2 ".wl[616].w[24:25]"  0.32448397151675262 0.67551602848324743;
	setAttr -s 2 ".wl[617].w[24:25]"  0.3244834272059024 0.6755165727940976;
	setAttr -s 2 ".wl[618].w[24:25]"  0.32448344503237514 0.67551655496762486;
	setAttr -s 2 ".wl[619].w[24:25]"  0.32448391125608311 0.67551608874391689;
	setAttr -s 2 ".wl[620].w[25:26]"  0.58212522626022989 0.41787477373977017;
	setAttr -s 2 ".wl[621].w[25:26]"  0.58212518525715518 0.41787481474284477;
	setAttr -s 2 ".wl[622].w[25:26]"  0.58212587291540052 0.41787412708459948;
	setAttr -s 2 ".wl[623].w[25:26]"  0.58212581462762225 0.41787418537237775;
	setAttr -s 2 ".wl[624].w[25:26]"  0.58212519547867092 0.41787480452132908;
	setAttr -s 2 ".wl[625].w[25:26]"  0.58212581462762225 0.41787418537237775;
	setAttr -s 2 ".wl[626].w[25:26]"  0.58212588033576662 0.41787411966423332;
	setAttr -s 2 ".wl[627].w[25:26]"  0.58212528483344028 0.41787471516655972;
	setAttr -s 2 ".wl[628].w[25:26]"  0.58212525827703876 0.41787474172296135;
	setAttr -s 2 ".wl[629].w[25:26]"  0.58212528805594599 0.41787471194405401;
	setAttr -s 2 ".wl[630].w[25:26]"  0.58212579767864725 0.41787420232135281;
	setAttr -s 2 ".wl[631].w[25:26]"  0.58212585185003962 0.41787414814996049;
	setAttr -s 2 ".wl[632].w[25:26]"  0.58212589022958761 0.41787410977041239;
	setAttr -s 2 ".wl[633].w[25:26]"  0.5821253210544528 0.4178746789455472;
	setAttr -s 2 ".wl[634].w[25:26]"  0.58212526280760057 0.41787473719239937;
	setAttr -s 2 ".wl[635].w[25:26]"  0.58212532430536157 0.41787467569463838;
	setAttr -s 2 ".wl[636].w[25:26]"  0.58212533744184103 0.41787466255815897;
	setAttr -s 2 ".wl[637].w[25:26]"  0.58212587227653922 0.41787412772346089;
	setAttr -s 2 ".wl[638].w[25:26]"  0.5821258216914087 0.4178741783085913;
	setAttr -s 2 ".wl[639].w[25:26]"  0.5821253133043216 0.4178746866956784;
	setAttr -s 2 ".wl[640].w[26:27]"  0.79152250678048175 0.20847749321951825;
	setAttr -s 2 ".wl[641].w[26:27]"  0.79152303654868117 0.20847696345131889;
	setAttr -s 2 ".wl[642].w[26:27]"  0.79152341854970409 0.20847658145029588;
	setAttr -s 2 ".wl[643].w[26:27]"  0.79152311595136826 0.20847688404863182;
	setAttr -s 2 ".wl[644].w[26:27]"  0.79152213182021702 0.208477868179783;
	setAttr -s 2 ".wl[645].w[26:27]"  0.79152311595136826 0.20847688404863182;
	setAttr -s 2 ".wl[646].w[26:27]"  0.79152343846299866 0.20847656153700142;
	setAttr -s 2 ".wl[647].w[26:27]"  0.79152330377325408 0.20847669622674594;
	setAttr -s 2 ".wl[648].w[26:27]"  0.79152323797160573 0.2084767620283943;
	setAttr -s 2 ".wl[649].w[26:27]"  0.79152320621725292 0.20847679378274708;
	setAttr -s 2 ".wl[650].w[26:27]"  0.79152248103183465 0.20847751896816538;
	setAttr -s 2 ".wl[651].w[26:27]"  0.79152321584140051 0.20847678415859947;
	setAttr -s 2 ".wl[652].w[26:27]"  0.79152346501405546 0.20847653498594448;
	setAttr -s 2 ".wl[653].w[26:27]"  0.79152312293071325 0.20847687706928672;
	setAttr -s 2 ".wl[654].w[26:27]"  0.79152295777524473 0.20847704222475527;
	setAttr -s 2 ".wl[655].w[26:27]"  0.79152313165489274 0.20847686834510731;
	setAttr -s 2 ".wl[656].w[26:27]"  0.79152348492734637 0.20847651507265372;
	setAttr -s 2 ".wl[657].w[26:27]"  0.79152262538764206 0.20847737461235791;
	setAttr -s 2 ".wl[658].w[26:27]"  0.79152254547245271 0.20847745452754723;
	setAttr -s 2 ".wl[659].w[26:27]"  0.79152327397419053 0.20847672602580944;
	setAttr -s 2 ".wl[660].w[27:28]"  0.88984774563710733 0.11015225436289267;
	setAttr -s 2 ".wl[661].w[27:28]"  0.88984764506472236 0.11015235493527768;
	setAttr -s 2 ".wl[662].w[27:28]"  0.88984772312351668 0.11015227687648337;
	setAttr -s 2 ".wl[663].w[27:28]"  0.88984776575881319 0.11015223424118679;
	setAttr -s 2 ".wl[664].w[27:28]"  0.88984748609859676 0.11015251390140328;
	setAttr -s 2 ".wl[665].w[27:28]"  0.88984776575881319 0.11015223424118679;
	setAttr -s 2 ".wl[666].w[27:28]"  0.88984774046281412 0.11015225953718591;
	setAttr -s 2 ".wl[667].w[27:28]"  0.88984769279570386 0.11015230720429622;
	setAttr -s 2 ".wl[668].w[27:28]"  0.88984806815553374 0.1101519318444663;
	setAttr -s 2 ".wl[669].w[27:28]"  0.88984779280196169 0.11015220719803825;
	setAttr -s 2 ".wl[670].w[27:28]"  0.88984806815553374 0.1101519318444663;
	setAttr -s 2 ".wl[671].w[27:28]"  0.88984770870602925 0.11015229129397074;
	setAttr -s 2 ".wl[672].w[27:28]"  0.88984776358187312 0.11015223641812689;
	setAttr -s 2 ".wl[673].w[27:28]"  0.88984826724382171 0.1101517327561783;
	setAttr -s 2 ".wl[674].w[27:28]"  0.88984804846333077 0.11015195153666926;
	setAttr -s 2 ".wl[675].w[27:28]"  0.88984827484032181 0.11015172515967818;
	setAttr -s 2 ".wl[676].w[27:28]"  0.88984778092116446 0.11015221907883559;
	setAttr -s 2 ".wl[677].w[27:28]"  0.88984750873221197 0.11015249126778802;
	setAttr -s 2 ".wl[678].w[27:28]"  0.88984812426660964 0.11015187573339039;
	setAttr -s 2 ".wl[679].w[27:28]"  0.88984785180070147 0.11015214819929847;
	setAttr -s 2 ".wl[680].w[27:28]"  0.17781346707261472 0.82218653292738531;
	setAttr -s 2 ".wl[681].w[27:28]"  0.17781358344444143 0.82218641655555857;
	setAttr -s 2 ".wl[682].w[27:28]"  0.17781378767926856 0.82218621232073141;
	setAttr -s 2 ".wl[683].w[27:28]"  0.17781403642915611 0.82218596357084395;
	setAttr -s 2 ".wl[684].w[27:28]"  0.17781364965891652 0.82218635034108356;
	setAttr -s 2 ".wl[685].w[27:28]"  0.17781403642915611 0.82218596357084395;
	setAttr -s 2 ".wl[686].w[27:28]"  0.17781376761607748 0.82218623238392252;
	setAttr -s 2 ".wl[687].w[27:28]"  0.17781352821515498 0.82218647178484505;
	setAttr -s 2 ".wl[688].w[27:28]"  0.17781391349000766 0.82218608650999236;
	setAttr -s 2 ".wl[689].w[27:28]"  0.17781394548349497 0.82218605451650506;
	setAttr -s 2 ".wl[690].w[27:28]"  0.177813380504667 0.82218661949533312;
	setAttr -s 2 ".wl[691].w[27:28]"  0.17781457577816112 0.82218542422183882;
	setAttr -s 2 ".wl[692].w[27:28]"  0.17781427385056131 0.82218572614943863;
	setAttr -s 2 ".wl[693].w[27:28]"  0.17781437566893304 0.82218562433106701;
	setAttr -s 2 ".wl[694].w[27:28]"  0.17781401375068623 0.82218598624931383;
	setAttr -s 2 ".wl[695].w[27:28]"  0.17781436687906829 0.82218563312093174;
	setAttr -s 2 ".wl[696].w[27:28]"  0.17781425378737126 0.82218574621262874;
	setAttr -s 2 ".wl[697].w[27:28]"  0.17781452054885674 0.82218547945114329;
	setAttr -s 2 ".wl[698].w[27:28]"  0.17781331557870025 0.82218668442129972;
	setAttr -s 2 ".wl[699].w[27:28]"  0.17781387721629671 0.82218612278370329;
	setAttr -s 2 ".wl[700].w[28:29]"  0.36134696015148976 0.63865303984851018;
	setAttr -s 2 ".wl[701].w[28:29]"  0.36134807401255564 0.63865192598744436;
	setAttr -s 2 ".wl[702].w[28:29]"  0.36134715311899995 0.6386528468810001;
	setAttr -s 2 ".wl[703].w[28:29]"  0.36134802586187809 0.63865197413812191;
	setAttr -s 2 ".wl[704].w[28:29]"  0.36134801221219204 0.63865198778780796;
	setAttr -s 2 ".wl[705].w[28:29]"  0.36134802586187809 0.63865197413812191;
	setAttr -s 2 ".wl[706].w[28:29]"  0.36134714104332416 0.63865285895667578;
	setAttr -s 2 ".wl[707].w[28:29]"  0.36134699695212696 0.63865300304787298;
	setAttr -s 2 ".wl[708].w[28:29]"  0.36134795186742141 0.63865204813257859;
	setAttr -s 2 ".wl[709].w[28:29]"  0.36134901494510019 0.63865098505489981;
	setAttr -s 2 ".wl[710].w[28:29]"  0.36134795186742141 0.63865204813257859;
	setAttr -s 2 ".wl[711].w[28:29]"  0.36134802969078883 0.63865197030921128;
	setAttr -s 2 ".wl[712].w[28:29]"  0.3613481687606771 0.6386518312393229;
	setAttr -s 2 ".wl[713].w[28:29]"  0.36134781321579568 0.63865218678420432;
	setAttr -s 2 ".wl[714].w[28:29]"  0.36134801221219215 0.63865198778780785;
	setAttr -s 2 ".wl[715].w[28:29]"  0.3613478079253396 0.6386521920746604;
	setAttr -s 2 ".wl[716].w[28:29]"  0.36134815668508252 0.63865184331491742;
	setAttr -s 2 ".wl[717].w[28:29]"  0.36134695263005706 0.63865304736994288;
	setAttr -s 2 ".wl[718].w[28:29]"  0.36134791278984429 0.63865208721015576;
	setAttr -s 2 ".wl[719].w[28:29]"  0.36134897385679066 0.63865102614320934;
	setAttr -s 2 ".wl[720].w[29:30]"  0.6221779083750113 0.3778220916249887;
	setAttr -s 2 ".wl[721].w[29:30]"  0.62217903692491083 0.37782096307508917;
	setAttr -s 2 ".wl[722].w[29:30]"  0.62217908544991707 0.37782091455008293;
	setAttr -s 2 ".wl[723].w[29:30]"  0.62217926593897765 0.37782073406102235;
	setAttr -s 2 ".wl[724].w[29:30]"  0.62217909208904321 0.37782090791095679;
	setAttr -s 2 ".wl[725].w[29:30]"  0.62217926593897765 0.37782073406102235;
	setAttr -s 2 ".wl[726].w[29:30]"  0.62217909622884093 0.37782090377115907;
	setAttr -s 2 ".wl[727].w[29:30]"  0.62217799641780314 0.37782200358219692;
	setAttr -s 2 ".wl[728].w[29:30]"  0.62217795488301186 0.37782204511698819;
	setAttr -s 2 ".wl[729].w[29:30]"  0.62217698840489188 0.37782301159510823;
	setAttr -s 2 ".wl[730].w[29:30]"  0.62217807577433415 0.37782192422566591;
	setAttr -s 2 ".wl[731].w[29:30]"  0.6221801466647241 0.37781985333527601;
	setAttr -s 2 ".wl[732].w[29:30]"  0.62218002252741422 0.37781997747258572;
	setAttr -s 2 ".wl[733].w[29:30]"  0.62217926971686488 0.37782073028313512;
	setAttr -s 2 ".wl[734].w[29:30]"  0.62217909208904321 0.37782090791095685;
	setAttr -s 2 ".wl[735].w[29:30]"  0.62218015858279452 0.37781984141720554;
	setAttr -s 2 ".wl[736].w[29:30]"  0.62218003330639593 0.37781996669360407;
	setAttr -s 2 ".wl[737].w[29:30]"  0.62217815095426987 0.37782184904573013;
	setAttr -s 2 ".wl[738].w[29:30]"  0.6221781106554154 0.37782188934458472;
	setAttr -s 2 ".wl[739].w[29:30]"  0.62217702508072614 0.37782297491927397;
	setAttr -s 2 ".wl[740].w[30:31]"  0.81362666242822412 0.18637333757177588;
	setAttr -s 2 ".wl[741].w[30:31]"  0.81362743821678551 0.18637256178321451;
	setAttr -s 2 ".wl[742].w[30:31]"  0.81362760931600686 0.18637239068399308;
	setAttr -s 2 ".wl[743].w[30:31]"  0.8136269572942969 0.1863730427057031;
	setAttr -s 2 ".wl[744].w[30:31]"  0.81362696215938668 0.18637303784061326;
	setAttr -s 2 ".wl[745].w[30:31]"  0.8136269572942969 0.1863730427057031;
	setAttr -s 2 ".wl[746].w[30:31]"  0.81362762940615829 0.18637237059384171;
	setAttr -s 2 ".wl[747].w[30:31]"  0.81362749352018215 0.18637250647981787;
	setAttr -s 2 ".wl[748].w[30:31]"  0.81362742713411973 0.18637257286588024;
	setAttr -s 2 ".wl[749].w[30:31]"  0.81362739509751569 0.18637260490248436;
	setAttr -s 2 ".wl[750].w[30:31]"  0.81362742713411973 0.18637257286588024;
	setAttr -s 2 ".wl[751].w[30:31]"  0.81362729766003072 0.18637270233996936;
	setAttr -s 2 ".wl[752].w[30:31]"  0.81362765619302391 0.18637234380697604;
	setAttr -s 2 ".wl[753].w[30:31]"  0.81362674571092419 0.18637325428907581;
	setAttr -s 2 ".wl[754].w[30:31]"  0.81362676137846424 0.18637323862153579;
	setAttr -s 2 ".wl[755].w[30:31]"  0.81362766660921992 0.18637233339077999;
	setAttr -s 2 ".wl[756].w[30:31]"  0.81362767628317112 0.18637232371682891;
	setAttr -s 2 ".wl[757].w[30:31]"  0.81362700189747617 0.18637299810252389;
	setAttr -s 2 ".wl[758].w[30:31]"  0.81362749214713914 0.18637250785286094;
	setAttr -s 2 ".wl[759].w[30:31]"  0.81362746345623416 0.18637253654376584;
	setAttr -s 2 ".wl[760].w[31:32]"  0.27858886729064164 0.72141113270935842;
	setAttr -s 2 ".wl[761].w[31:32]"  0.27858809204191604 0.72141190795808396;
	setAttr -s 2 ".wl[762].w[31:32]"  0.27859045453009451 0.72140954546990554;
	setAttr -s 2 ".wl[763].w[31:32]"  0.27859035948321548 0.72140964051678447;
	setAttr -s 2 ".wl[764].w[31:32]"  0.27858969937353573 0.72141030062646427;
	setAttr -s 2 ".wl[765].w[31:32]"  0.27859035948321548 0.72140964051678447;
	setAttr -s 2 ".wl[766].w[31:32]"  0.2785904366866323 0.7214095633133677;
	setAttr -s 2 ".wl[767].w[31:32]"  0.27858804292209394 0.72141195707790606;
	setAttr -s 2 ".wl[768].w[31:32]"  0.2785895439008807 0.72141045609911936;
	setAttr -s 2 ".wl[769].w[31:32]"  0.27858917317893855 0.7214108268210615;
	setAttr -s 2 ".wl[770].w[31:32]"  0.27858890961335409 0.72141109038664597;
	setAttr -s 2 ".wl[771].w[31:32]"  0.27858859754397414 0.72141140245602586;
	setAttr -s 2 ".wl[772].w[31:32]"  0.2785906748644093 0.72140932513559075;
	setAttr -s 2 ".wl[773].w[31:32]"  0.27859128927722082 0.72140871072277923;
	setAttr -s 2 ".wl[774].w[31:32]"  0.27858969937353573 0.72141030062646427;
	setAttr -s 2 ".wl[775].w[31:32]"  0.2785912814598539 0.7214087185401461;
	setAttr -s 2 ".wl[776].w[31:32]"  0.27859065702098884 0.72140934297901116;
	setAttr -s 2 ".wl[777].w[31:32]"  0.27858891192002555 0.72141108807997445;
	setAttr -s 2 ".wl[778].w[31:32]"  0.27858948615778878 0.72141051384221122;
	setAttr -s 2 ".wl[779].w[31:32]"  0.27858911246407414 0.72141088753592586;
	setAttr -s 2 ".wl[780].w[33:34]"  0.51734120888510648 0.48265879111489352;
	setAttr -s 2 ".wl[781].w[33:34]"  0.51734124534009096 0.48265875465990909;
	setAttr -s 2 ".wl[782].w[33:34]"  0.51734239842086771 0.48265760157913229;
	setAttr -s 2 ".wl[783].w[33:34]"  0.5173438794797327 0.48265612052026735;
	setAttr -s 2 ".wl[784].w[33:34]"  0.51734244538884511 0.48265755461115489;
	setAttr -s 2 ".wl[785].w[33:34]"  0.51734246752196233 0.48265753247803767;
	setAttr -s 2 ".wl[786].w[33:34]"  0.51734098813363549 0.48265901186636451;
	setAttr -s 2 ".wl[787].w[33:34]"  0.51734124839622708 0.48265875160377292;
	setAttr -s 2 ".wl[788].w[33:34]"  0.51734262804164188 0.48265737195835806;
	setAttr -s 2 ".wl[789].w[33:34]"  0.51734118831192222 0.48265881168807784;
	setAttr -s 2 ".wl[790].w[33:34]"  0.51734262804164188 0.48265737195835806;
	setAttr -s 2 ".wl[791].w[33:34]"  0.51734550361249176 0.48265449638750818;
	setAttr -s 2 ".wl[792].w[33:34]"  0.51734666206459246 0.48265333793540766;
	setAttr -s 2 ".wl[793].w[33:34]"  0.51734670397810401 0.48265329602189599;
	setAttr -s 2 ".wl[794].w[33:34]"  0.51734529952805974 0.4826547004719402;
	setAttr -s 2 ".wl[795].w[33:34]"  0.51734670470791244 0.48265329529208756;
	setAttr -s 2 ".wl[796].w[33:34]"  0.51734666373039817 0.48265333626960183;
	setAttr -s 2 ".wl[797].w[33:34]"  0.51734409622277555 0.4826559037772245;
	setAttr -s 2 ".wl[798].w[33:34]"  0.51734263163462435 0.48265736836537565;
	setAttr -s 2 ".wl[799].w[33:34]"  0.51734119397827194 0.48265880602172812;
	setAttr -s 2 ".wl[800].w[35:36]"  0.92992497680209096 0.070075023197909037;
	setAttr -s 2 ".wl[801].w[35:36]"  0.92992632807408049 0.070073671925919595;
	setAttr -s 2 ".wl[802].w[35:36]"  0.92992574700597452 0.07007425299402549;
	setAttr -s 2 ".wl[803].w[35:36]"  0.92992609030464302 0.070073909695357095;
	setAttr -s 2 ".wl[804].w[35:36]"  0.92992693125318471 0.07007306874681532;
	setAttr -s 2 ".wl[805].w[35:36]"  0.92992609030464302 0.070073909695357095;
	setAttr -s 2 ".wl[806].w[35:36]"  0.9299257579539203 0.070074242046079704;
	setAttr -s 2 ".wl[807].w[35:36]"  0.92992635821106273 0.070073641788937324;
	setAttr -s 2 ".wl[808].w[35:36]"  0.92992502994452164 0.0700749700554784;
	setAttr -s 2 ".wl[809].w[35:36]"  0.92992525421136074 0.070074745788639328;
	setAttr -s 2 ".wl[810].w[35:36]"  0.92992553357347318 0.070074466426526802;
	setAttr -s 2 ".wl[811].w[35:36]"  0.92992585458555876 0.070074145414441347;
	setAttr -s 2 ".wl[812].w[35:36]"  0.92992678162130493 0.070073218378695123;
	setAttr -s 2 ".wl[813].w[35:36]"  0.92992653501822331 0.070073464981776676;
	setAttr -s 2 ".wl[814].w[35:36]"  0.92992642763007649 0.070073572369923606;
	setAttr -s 2 ".wl[815].w[35:36]"  0.92992710761981678 0.070072892380183285;
	setAttr -s 2 ".wl[816].w[35:36]"  0.92992679256915456 0.070073207430845455;
	setAttr -s 2 ".wl[817].w[35:36]"  0.92992640341652255 0.070073596583477546;
	setAttr -s 2 ".wl[818].w[35:36]"  0.92992556900160328 0.070074430998396761;
	setAttr -s 2 ".wl[819].w[35:36]"  0.9299253100886028 0.070074689911397189;
	setAttr -s 2 ".wl[820].w[36:37]"  0.56126123755260149 0.43873876244739851;
	setAttr -s 2 ".wl[821].w[36:37]"  0.56126158954699745 0.43873841045300255;
	setAttr -s 2 ".wl[822].w[36:37]"  0.56126060681767365 0.43873939318232635;
	setAttr -s 2 ".wl[823].w[36:37]"  0.56126075047046842 0.43873924952953153;
	setAttr -s 2 ".wl[824].w[36:37]"  0.56125841170855739 0.43874158829144255;
	setAttr -s 2 ".wl[825].w[36:37]"  0.56126075047046842 0.43873924952953153;
	setAttr -s 2 ".wl[826].w[36:37]"  0.56126061079035328 0.43873938920964672;
	setAttr -s 2 ".wl[827].w[36:37]"  0.56126160048319662 0.43873839951680338;
	setAttr -s 2 ".wl[828].w[36:37]"  0.56125765253125737 0.43874234746874269;
	setAttr -s 2 ".wl[829].w[36:37]"  0.56126110039460264 0.43873889960539736;
	setAttr -s 2 ".wl[830].w[36:37]"  0.5612540514325508 0.4387459485674492;
	setAttr -s 2 ".wl[831].w[36:37]"  0.56125041854539681 0.43874958145460324;
	setAttr -s 2 ".wl[832].w[36:37]"  0.56125024894179698 0.43874975105820302;
	setAttr -s 2 ".wl[833].w[36:37]"  0.56125344706846236 0.43874655293153764;
	setAttr -s 2 ".wl[834].w[36:37]"  0.56125077692125325 0.43874922307874686;
	setAttr -s 2 ".wl[835].w[36:37]"  0.56124995039370951 0.43875004960629049;
	setAttr -s 2 ".wl[836].w[36:37]"  0.56125025489986913 0.43874974510013082;
	setAttr -s 2 ".wl[837].w[36:37]"  0.56125042947956938 0.43874957052043068;
	setAttr -s 2 ".wl[838].w[36:37]"  0.56125406750085916 0.43874593249914084;
	setAttr -s 2 ".wl[839].w[36:37]"  0.56126111391226863 0.43873888608773137;
	setAttr -s 2 ".wl[840].w[37:38]"  0.22133290081067239 0.77866709918932764;
	setAttr -s 2 ".wl[841].w[37:38]"  0.22133399930757869 0.77866600069242131;
	setAttr -s 2 ".wl[842].w[37:38]"  0.2213343335948241 0.77866566640517587;
	setAttr -s 2 ".wl[843].w[37:38]"  0.22133501658145158 0.7786649834185484;
	setAttr -s 2 ".wl[844].w[37:38]"  0.22133480079320686 0.77866519920679322;
	setAttr -s 2 ".wl[845].w[37:38]"  0.22133501658145158 0.7786649834185484;
	setAttr -s 2 ".wl[846].w[37:38]"  0.22133432643731618 0.77866567356268379;
	setAttr -s 2 ".wl[847].w[37:38]"  0.22133397960460843 0.77866602039539157;
	setAttr -s 2 ".wl[848].w[37:38]"  0.22133285448588785 0.7786671455141122;
	setAttr -s 2 ".wl[849].w[37:38]"  0.22133281591258067 0.77866718408741942;
	setAttr -s 2 ".wl[850].w[37:38]"  0.22133285448588785 0.7786671455141122;
	setAttr -s 2 ".wl[851].w[37:38]"  0.2213344278437567 0.77866557215624332;
	setAttr -s 2 ".wl[852].w[37:38]"  0.22133430496479592 0.77866569503520411;
	setAttr -s 2 ".wl[853].w[37:38]"  0.22133296900101254 0.77866703099898749;
	setAttr -s 2 ".wl[854].w[37:38]"  0.22133123647525252 0.77866876352474745;
	setAttr -s 2 ".wl[855].w[37:38]"  0.2213329633565797 0.7786670366434203;
	setAttr -s 2 ".wl[856].w[37:38]"  0.22133428349227996 0.7786657165077201;
	setAttr -s 2 ".wl[857].w[37:38]"  0.22133438843793299 0.77866561156206704;
	setAttr -s 2 ".wl[858].w[37:38]"  0.2213328081611026 0.77866719183889743;
	setAttr -s 2 ".wl[859].w[37:38]"  0.2213327672038107 0.77866723279618932;
	setAttr -s 2 ".wl[860].w[38:39]"  0.28863710146744598 0.71136289853255397;
	setAttr -s 2 ".wl[861].w[38:39]"  0.28863715516125599 0.71136284483874401;
	setAttr -s 2 ".wl[862].w[38:39]"  0.2886362586444518 0.71136374135554825;
	setAttr -s 2 ".wl[863].w[38:39]"  0.2886360395632227 0.7113639604367773;
	setAttr -s 2 ".wl[864].w[38:39]"  0.28863014896307132 0.71136985103692874;
	setAttr -s 2 ".wl[865].w[38:39]"  0.2886360395632227 0.7113639604367773;
	setAttr -s 2 ".wl[866].w[38:39]"  0.28863624410147531 0.71136375589852474;
	setAttr -s 2 ".wl[867].w[38:39]"  0.28863713114142431 0.71136286885857569;
	setAttr -s 2 ".wl[868].w[38:39]"  0.28863687750049255 0.71136312249950751;
	setAttr -s 2 ".wl[869].w[38:39]"  0.28863686913173653 0.71136313086826342;
	setAttr -s 2 ".wl[870].w[38:39]"  0.28863687750049255 0.71136312249950751;
	setAttr -s 2 ".wl[871].w[38:39]"  0.28863326818807944 0.71136673181192056;
	setAttr -s 2 ".wl[872].w[38:39]"  0.28863622664990768 0.71136377335009227;
	setAttr -s 2 ".wl[873].w[38:39]"  0.28863603421122813 0.71136396578877181;
	setAttr -s 2 ".wl[874].w[38:39]"  0.2886378588048748 0.7113621411951252;
	setAttr -s 2 ".wl[875].w[38:39]"  0.2886360326820871 0.71136396731791285;
	setAttr -s 2 ".wl[876].w[38:39]"  0.2886362208327195 0.71136377916728055;
	setAttr -s 2 ".wl[877].w[38:39]"  0.28863709911498525 0.71136290088501475;
	setAttr -s 2 ".wl[878].w[38:39]"  0.28863683985106808 0.71136316014893186;
	setAttr -s 2 ".wl[879].w[38:39]"  0.28863685923499999 0.71136314076499996;
	setAttr -s 2 ".wl[880].w[39:40]"  0.89711131721336657 0.10288868278663339;
	setAttr -s 2 ".wl[881].w[39:40]"  0.89711090200229038 0.10288909799770966;
	setAttr -s 2 ".wl[882].w[39:40]"  0.89711246261921818 0.10288753738078185;
	setAttr -s 2 ".wl[883].w[39:40]"  0.89711130867096334 0.10288869132903673;
	setAttr -s 2 ".wl[884].w[39:40]"  0.89711011955853048 0.10288988044146959;
	setAttr -s 2 ".wl[885].w[39:40]"  0.89711130867096334 0.10288869132903673;
	setAttr -s 2 ".wl[886].w[39:40]"  0.89711247513465908 0.10288752486534092;
	setAttr -s 2 ".wl[887].w[39:40]"  0.89711091922825315 0.10288908077174695;
	setAttr -s 2 ".wl[888].w[39:40]"  0.89711155814376453 0.10288844185623548;
	setAttr -s 2 ".wl[889].w[39:40]"  0.89711163449004327 0.10288836550995677;
	setAttr -s 2 ".wl[890].w[39:40]"  0.89711155814376453 0.10288844185623548;
	setAttr -s 2 ".wl[891].w[39:40]"  0.89711092784123314 0.10288907215876687;
	setAttr -s 2 ".wl[892].w[39:40]"  0.8971124813923782 0.10288751860762184;
	setAttr -s 2 ".wl[893].w[39:40]"  0.89711131196083205 0.1028886880391679;
	setAttr -s 2 ".wl[894].w[39:40]"  0.8971127416955047 0.10288725830449533;
	setAttr -s 2 ".wl[895].w[39:40]"  0.89711131525069987 0.10288868474930014;
	setAttr -s 2 ".wl[896].w[39:40]"  0.89711249390781356 0.10288750609218643;
	setAttr -s 2 ".wl[897].w[39:40]"  0.89711095368016835 0.10288904631983173;
	setAttr -s 2 ".wl[898].w[39:40]"  0.89711157839412503 0.10288842160587497;
	setAttr -s 2 ".wl[899].w[39:40]"  0.89711166642877593 0.10288833357122415;
	setAttr -s 2 ".wl[900].w[39:40]"  0.01097388240119369 0.98902611759880632;
	setAttr -s 2 ".wl[901].w[39:40]"  0.010973698842191106 0.98902630115780887;
	setAttr -s 2 ".wl[902].w[39:40]"  0.010974080256079573 0.9890259197439204;
	setAttr -s 2 ".wl[903].w[39:40]"  0.010973785612130598 0.98902621438786942;
	setAttr -s 2 ".wl[904].w[39:40]"  0.010973698848719477 0.98902630115128054;
	setAttr -s 2 ".wl[905].w[39:40]"  0.010973785612130598 0.98902621438786942;
	setAttr -s 2 ".wl[906].w[39:40]"  0.010974078425792937 0.9890259215742071;
	setAttr -s 2 ".wl[907].w[39:40]"  0.010973693803909227 0.98902630619609078;
	setAttr -s 2 ".wl[908].w[39:40]"  0.010973876478300771 0.98902612352169927;
	setAttr -s 2 ".wl[909].w[39:40]"  0.01097381717419958 0.98902618282580046;
	setAttr -s 2 ".wl[910].w[39:40]"  0.010973876478300771 0.98902612352169927;
	setAttr -s 2 ".wl[911].w[39:40]"  0.010973810940113665 0.98902618905988637;
	setAttr -s 2 ".wl[912].w[39:40]"  0.010974074765221135 0.98902592523477884;
	setAttr -s 2 ".wl[913].w[39:40]"  0.010973974182939938 0.98902602581706012;
	setAttr -s 2 ".wl[914].w[39:40]"  0.010973499565999308 0.98902650043400064;
	setAttr -s 2 ".wl[915].w[39:40]"  0.010973973220705181 0.98902602677929485;
	setAttr -s 2 ".wl[916].w[39:40]"  0.010974072934935986 0.98902592706506409;
	setAttr -s 2 ".wl[917].w[39:40]"  0.010973805901814569 0.98902619409818548;
	setAttr -s 2 ".wl[918].w[39:40]"  0.010973864632523006 0.98902613536747697;
	setAttr -s 2 ".wl[919].w[39:40]"  0.010973810946517375 0.98902618905348261;
	setAttr -s 2 ".wl[920].w[0:1]"  0.99995109586991671 4.8904130083288445e-005;
	setAttr -s 2 ".wl[921].w[39:40]"  8.0245677458017146e-006 0.99999197543225427;
	setAttr -s 41 ".pm";
	setAttr ".pm[0]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 4.9999948978403452 0 -1.1102218917181317e-015 1;
	setAttr ".pm[1]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 4.7324986831928744 0 -1.0508258004177927e-015 1;
	setAttr ".pm[2]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 4.4650023267455339 0 -9.9142967763155762e-016 1;
	setAttr ".pm[3]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 4.1974959390657913 0 -9.3203132746428692e-016 1;
	setAttr ".pm[4]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 3.9300008161553035 0 -8.7263547857825496e-016 1;
	setAttr ".pm[5]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 3.6625048043020909 0 -8.1323943230728688e-016 1;
	setAttr ".pm[6]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 3.394998606667377 0 -7.5384112433848948e-016 1;
	setAttr ".pm[7]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 3.1275027276929475 0 -6.9444510757253829e-016 1;
	setAttr ".pm[8]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 2.8599959485406465 0 -6.3504667048089803e-016 1;
	setAttr ".pm[9]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 2.5925009388191724 0 -5.756508467278759e-016 1;
	setAttr ".pm[10]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 2.3250049111695681 0 -5.1625479694940426e-016 1;
	setAttr ".pm[11]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 2.0574980234725682 0 -4.5685633575599919e-016 1;
	setAttr ".pm[12]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 1.7900029582940249 0 -3.9746049968903405e-016 1;
	setAttr ".pm[13]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 1.5224966416170345 0 -3.380621652875414e-016 1;
	setAttr ".pm[14]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 1.2550010204315196 0 -2.7866620576222792e-016 1;
	setAttr ".pm[15]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 0.98750000000000049 0 -2.1926904736346853e-016 1;
	setAttr ".pm[16]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 0.71999897956848535 0 -1.5987188896471002e-016 1;
	setAttr ".pm[17]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 0.4525030612945552 0 -1.0047586347251673e-016 1;
	setAttr ".pm[18]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 0.18499693870544745 0 -4.1077572167191312e-017 1;
	setAttr ".pm[19]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 -0.082498979568482483 0 1.8318453325001923e-017 1;
	setAttr ".pm[20]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 -0.35000510215759184 0 7.7716744630327703e-017 1;
	setAttr ".pm[21]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 -0.61750102043151489 0 1.3711277012251941e-016 1;
	setAttr ".pm[22]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 -0.88499693870544494 0 1.9650879561471267e-016 1;
	setAttr ".pm[23]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 -1.1525030612945524 0 2.5590708692003802e-016 1;
	setAttr ".pm[24]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 -1.4199989795684824 0 3.1530311241223128e-016 1;
	setAttr ".pm[25]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 -1.6875051021575906 0 3.7470140371755681e-016 1;
	setAttr ".pm[26]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 -1.9550010204315142 0 4.3409742920974864e-016 1;
	setAttr ".pm[27]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 -2.222496641617032 0 4.9349338873506276e-016 1;
	setAttr ".pm[28]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 -2.4900029582940233 0 5.5289172313655561e-016 1;
	setAttr ".pm[29]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 -2.7574980234725697 0 6.1228755920352144e-016 1;
	setAttr ".pm[30]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 -3.0250049111695656 0 6.7168602039692562e-016 1;
	setAttr ".pm[31]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 -3.2925009388191659 0 7.3108207017539638e-016 1;
	setAttr ".pm[32]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 -3.5599959485406383 0 7.9047789392841811e-016 1;
	setAttr ".pm[33]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 -3.8275027276929507 0 8.4987633102006094e-016 1;
	setAttr ".pm[34]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 -4.0949986066673771 0 9.0927234778601143e-016 1;
	setAttr ".pm[35]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 -4.3625048043020893 0 9.6867065575480844e-016 1;
	setAttr ".pm[36]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 -4.6300008161552988 0 1.0280667020257758e-015 1;
	setAttr ".pm[37]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 -4.8974959390657835 0 1.0874625509118071e-015 1;
	setAttr ".pm[38]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 -5.1650023267455367 0 1.1468609010790802e-015 1;
	setAttr ".pm[39]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 -5.4324986831928737 0 1.2062570238653144e-015 1;
	setAttr ".pm[40]" -type "matrix" 2.2204460492503131e-016 -0 1 -0 -0 1 -0 0 -1 -0 2.2204460492503131e-016 -0
		 -5.6999948978403445 0 1.2656531151656535e-015 1;
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
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 -0 1.5707963267948966 0 0 0 0
		 4.9999948978403452 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 -0 1.5707963267948966 0 0 0 0
		 4.7324986831928744 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 -0 1.5707963267948966 0 0 0 0
		 4.4650023267455339 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 -0 1.5707963267948966 0 0 0 0
		 4.1974959390657913 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 -0 1.5707963267948966 0 0 0 0
		 3.9300008161553035 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 -0 1.5707963267948966 0 0 0 0
		 3.6625048043020909 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 -0 1.5707963267948966 0 0 0 0
		 3.394998606667377 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 -0 1.5707963267948966 0 0 0 0
		 3.1275027276929475 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 -0 1.5707963267948966 0 0 0 0
		 2.8599959485406465 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 -0 1.5707963267948966 0 0 0 0
		 2.5925009388191724 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 -0 1.5707963267948966 0 0 0 0
		 2.3250049111695681 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 -0 1.5707963267948966 0 0 0 0
		 2.0574980234725682 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 -0 1.5707963267948966 0 0 0 0
		 1.7900029582940249 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 -0 1.5707963267948966 0 0 0 0
		 1.5224966416170345 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 -0 1.5707963267948966 0 0 0 0
		 1.2550010204315196 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 -0 1.5707963267948966 0 0 0 0
		 0.98750000000000049 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 -0 1.5707963267948966 0 0 0 0
		 0.71999897956848535 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 -0 1.5707963267948966 0 0 0 0
		 0.4525030612945552 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 -0 1.5707963267948966 0 0 0 0
		 0.18499693870544745 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 -0 1.5707963267948966 0 0 0 0
		 -0.082498979568482483 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 -0 1.5707963267948966 0 0 0 0
		 -0.35000510215759184 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 -0 1.5707963267948966 0 0 0 0
		 -0.61750102043151489 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[23]" -type "matrix" "xform" 1 1 1 -0 1.5707963267948966 0 0 0 0
		 -0.88499693870544494 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[24]" -type "matrix" "xform" 1 1 1 -0 1.5707963267948966 0 0 0 0
		 -1.1525030612945524 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[25]" -type "matrix" "xform" 1 1 1 -0 1.5707963267948966 0 0 0 0
		 -1.4199989795684824 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[26]" -type "matrix" "xform" 1 1 1 -0 1.5707963267948966 0 0 0 0
		 -1.6875051021575906 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[27]" -type "matrix" "xform" 1 1 1 -0 1.5707963267948966 0 0 0 0
		 -1.9550010204315142 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[28]" -type "matrix" "xform" 1 1 1 -0 1.5707963267948966 0 0 0 0
		 -2.222496641617032 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[29]" -type "matrix" "xform" 1 1 1 -0 1.5707963267948966 0 0 0 0
		 -2.4900029582940233 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[30]" -type "matrix" "xform" 1 1 1 -0 1.5707963267948966 0 0 0 0
		 -2.7574980234725697 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[31]" -type "matrix" "xform" 1 1 1 -0 1.5707963267948966 0 0 0 0
		 -3.0250049111695656 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[32]" -type "matrix" "xform" 1 1 1 -0 1.5707963267948966 0 0 0 0
		 -3.2925009388191659 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[33]" -type "matrix" "xform" 1 1 1 -0 1.5707963267948966 0 0 0 0
		 -3.5599959485406383 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[34]" -type "matrix" "xform" 1 1 1 -0 1.5707963267948966 0 0 0 0
		 -3.8275027276929507 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[35]" -type "matrix" "xform" 1 1 1 -0 1.5707963267948966 0 0 0 0
		 -4.0949986066673771 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[36]" -type "matrix" "xform" 1 1 1 -0 1.5707963267948966 0 0 0 0
		 -4.3625048043020893 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[37]" -type "matrix" "xform" 1 1 1 -0 1.5707963267948966 0 0 0 0
		 -4.6300008161552988 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[38]" -type "matrix" "xform" 1 1 1 -0 1.5707963267948966 0 0 0 0
		 -4.8974959390657835 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[39]" -type "matrix" "xform" 1 1 1 -0 1.5707963267948966 0 0 0 0
		 -5.1650023267455367 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[40]" -type "matrix" "xform" 1 1 1 -0 1.5707963267948966 0 0 0 0
		 -5.4324986831928737 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[41]" -type "matrix" "xform" 1 1 1 -0 1.5707963267948966 0 0 0 0
		 -5.6999948978403445 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
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
connectAttr "loft1.os" "C_surface1_srfShape.cr";
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
connectAttr "chain_CHN.ot[0]" "C_snakeChain1_jnt.t";
connectAttr "chain_CHN.or[0]" "C_snakeChain1_jnt.r";
connectAttr "chain_CHN.ot[1]" "C_snakeChain2_jnt.t";
connectAttr "chain_CHN.or[1]" "C_snakeChain2_jnt.r";
connectAttr "chain_CHN.ot[2]" "C_snakeChain3_jnt.t";
connectAttr "chain_CHN.or[2]" "C_snakeChain3_jnt.r";
connectAttr "chain_CHN.ot[3]" "C_snakeChain4_jnt.t";
connectAttr "chain_CHN.or[3]" "C_snakeChain4_jnt.r";
connectAttr "chain_CHN.ot[4]" "C_snakeChain5_jnt.t";
connectAttr "chain_CHN.or[4]" "C_snakeChain5_jnt.r";
connectAttr "chain_CHN.ot[5]" "C_snakeChain6_jnt.t";
connectAttr "chain_CHN.or[5]" "C_snakeChain6_jnt.r";
connectAttr "chain_CHN.ot[6]" "C_snakeChain7_jnt.t";
connectAttr "chain_CHN.or[6]" "C_snakeChain7_jnt.r";
connectAttr "chain_CHN.ot[7]" "C_snakeChain8_jnt.t";
connectAttr "chain_CHN.or[7]" "C_snakeChain8_jnt.r";
connectAttr "chain_CHN.ot[8]" "C_snakeChain9_jnt.t";
connectAttr "chain_CHN.or[8]" "C_snakeChain9_jnt.r";
connectAttr "chain_CHN.ot[9]" "C_snakeChain10_jnt.t";
connectAttr "chain_CHN.or[9]" "C_snakeChain10_jnt.r";
connectAttr "chain_CHN.ot[10]" "C_snakeChain11_jnt.t";
connectAttr "chain_CHN.or[10]" "C_snakeChain11_jnt.r";
connectAttr "chain_CHN.ot[11]" "C_snakeChain12_jnt.t";
connectAttr "chain_CHN.or[11]" "C_snakeChain12_jnt.r";
connectAttr "chain_CHN.ot[12]" "C_snakeChain13_jnt.t";
connectAttr "chain_CHN.or[12]" "C_snakeChain13_jnt.r";
connectAttr "chain_CHN.ot[13]" "C_snakeChain14_jnt.t";
connectAttr "chain_CHN.or[13]" "C_snakeChain14_jnt.r";
connectAttr "chain_CHN.ot[14]" "C_snakeChain15_jnt.t";
connectAttr "chain_CHN.or[14]" "C_snakeChain15_jnt.r";
connectAttr "chain_CHN.ot[15]" "C_snakeChain16_jnt.t";
connectAttr "chain_CHN.or[15]" "C_snakeChain16_jnt.r";
connectAttr "chain_CHN.ot[16]" "C_snakeChain17_jnt.t";
connectAttr "chain_CHN.or[16]" "C_snakeChain17_jnt.r";
connectAttr "chain_CHN.ot[17]" "C_snakeChain18_jnt.t";
connectAttr "chain_CHN.or[17]" "C_snakeChain18_jnt.r";
connectAttr "chain_CHN.ot[18]" "C_snakeChain19_jnt.t";
connectAttr "chain_CHN.or[18]" "C_snakeChain19_jnt.r";
connectAttr "chain_CHN.ot[19]" "C_snakeChain20_jnt.t";
connectAttr "chain_CHN.or[19]" "C_snakeChain20_jnt.r";
connectAttr "chain_CHN.ot[20]" "C_snakeChain21_jnt.t";
connectAttr "chain_CHN.or[20]" "C_snakeChain21_jnt.r";
connectAttr "chain_CHN.ot[21]" "C_snakeChain22_jnt.t";
connectAttr "chain_CHN.or[21]" "C_snakeChain22_jnt.r";
connectAttr "chain_CHN.ot[22]" "C_snakeChain23_jnt.t";
connectAttr "chain_CHN.or[22]" "C_snakeChain23_jnt.r";
connectAttr "chain_CHN.ot[23]" "C_snakeChain24_jnt.t";
connectAttr "chain_CHN.or[23]" "C_snakeChain24_jnt.r";
connectAttr "chain_CHN.ot[24]" "C_snakeChain25_jnt.t";
connectAttr "chain_CHN.or[24]" "C_snakeChain25_jnt.r";
connectAttr "chain_CHN.ot[25]" "C_snakeChain26_jnt.t";
connectAttr "chain_CHN.or[25]" "C_snakeChain26_jnt.r";
connectAttr "chain_CHN.ot[26]" "C_snakeChain27_jnt.t";
connectAttr "chain_CHN.or[26]" "C_snakeChain27_jnt.r";
connectAttr "chain_CHN.ot[27]" "C_snakeChain28_jnt.t";
connectAttr "chain_CHN.or[27]" "C_snakeChain28_jnt.r";
connectAttr "chain_CHN.ot[28]" "C_snakeChain29_jnt.t";
connectAttr "chain_CHN.or[28]" "C_snakeChain29_jnt.r";
connectAttr "chain_CHN.ot[29]" "C_snakeChain30_jnt.t";
connectAttr "chain_CHN.or[29]" "C_snakeChain30_jnt.r";
connectAttr "chain_CHN.ot[30]" "C_snakeChain31_jnt.t";
connectAttr "chain_CHN.or[30]" "C_snakeChain31_jnt.r";
connectAttr "chain_CHN.ot[31]" "C_snakeChain32_jnt.t";
connectAttr "chain_CHN.or[31]" "C_snakeChain32_jnt.r";
connectAttr "chain_CHN.ot[32]" "C_snakeChain33_jnt.t";
connectAttr "chain_CHN.or[32]" "C_snakeChain33_jnt.r";
connectAttr "chain_CHN.ot[33]" "C_snakeChain34_jnt.t";
connectAttr "chain_CHN.or[33]" "C_snakeChain34_jnt.r";
connectAttr "chain_CHN.ot[34]" "C_snakeChain35_jnt.t";
connectAttr "chain_CHN.or[34]" "C_snakeChain35_jnt.r";
connectAttr "chain_CHN.ot[35]" "C_snakeChain36_jnt.t";
connectAttr "chain_CHN.or[35]" "C_snakeChain36_jnt.r";
connectAttr "chain_CHN.ot[36]" "C_snakeChain37_jnt.t";
connectAttr "chain_CHN.or[36]" "C_snakeChain37_jnt.r";
connectAttr "chain_CHN.ot[37]" "C_snakeChain38_jnt.t";
connectAttr "chain_CHN.or[37]" "C_snakeChain38_jnt.r";
connectAttr "chain_CHN.ot[38]" "C_snakeChain39_jnt.t";
connectAttr "chain_CHN.or[38]" "C_snakeChain39_jnt.r";
connectAttr "chain_CHN.ot[39]" "C_snakeChain40_jnt.t";
connectAttr "chain_CHN.or[39]" "C_snakeChain40_jnt.r";
connectAttr "chain_CHN.ot[40]" "C_snakeChain41_jnt.t";
connectAttr "chain_CHN.or[40]" "C_snakeChain41_jnt.r";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
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
connectAttr "hyperView1.msg" "nodeEditorPanel2Info.b[0]";
connectAttr "hyperLayout1.msg" "hyperView1.hl";
connectAttr "C_snakeChain21_jnt.msg" "hyperLayout1.hyp[0].dn";
connectAttr "C_snakeChain1_jnt.msg" "hyperLayout1.hyp[1].dn";
connectAttr "C_snakeChain41_jnt.msg" "hyperLayout1.hyp[2].dn";
connectAttr "C_snakeChain29_jnt.msg" "hyperLayout1.hyp[3].dn";
connectAttr "C_snakeChain38_jnt.msg" "hyperLayout1.hyp[4].dn";
connectAttr "C_snakeside5_locShape.msg" "hyperLayout1.hyp[5].dn";
connectAttr "C_snakeCenter3_locShape.msg" "hyperLayout1.hyp[6].dn";
connectAttr "C_snakeside9_locShape.msg" "hyperLayout1.hyp[7].dn";
connectAttr "C_snakeChain16_jnt.msg" "hyperLayout1.hyp[8].dn";
connectAttr "C_snakeCenter7_locShape.msg" "hyperLayout1.hyp[9].dn";
connectAttr "C_snakeChain5_jnt.msg" "hyperLayout1.hyp[10].dn";
connectAttr "C_snakeChain24_jnt.msg" "hyperLayout1.hyp[11].dn";
connectAttr "C_snakeChain33_jnt.msg" "hyperLayout1.hyp[12].dn";
connectAttr "C_snakeChain11_jnt.msg" "hyperLayout1.hyp[13].dn";
connectAttr "C_snakeChain20_jnt.msg" "hyperLayout1.hyp[14].dn";
connectAttr "C_snakeChain40_jnt.msg" "hyperLayout1.hyp[15].dn";
connectAttr "C_snakeside14_locShape.msg" "hyperLayout1.hyp[16].dn";
connectAttr "C_snakeside2_locShape.msg" "hyperLayout1.hyp[17].dn";
connectAttr "C_snakeside18_locShape.msg" "hyperLayout1.hyp[18].dn";
connectAttr "loft1.msg" "hyperLayout1.hyp[19].dn";
connectAttr "C_snakeChain28_jnt.msg" "hyperLayout1.hyp[20].dn";
connectAttr "C_snakeChain37_jnt.msg" "hyperLayout1.hyp[21].dn";
connectAttr "chain_CHN.msg" "hyperLayout1.hyp[22].dn";
connectAttr "C_snakeChain15_jnt.msg" "hyperLayout1.hyp[23].dn";
connectAttr "C_surface1_srfShape.msg" "hyperLayout1.hyp[24].dn";
connectAttr "C_snakeChain4_jnt.msg" "hyperLayout1.hyp[25].dn";
connectAttr "C_snakeside6_locShape.msg" "hyperLayout1.hyp[26].dn";
connectAttr "C_snakeside10_locShape.msg" "hyperLayout1.hyp[27].dn";
connectAttr "C_snakeCenter4_locShape.msg" "hyperLayout1.hyp[28].dn";
connectAttr "C_snakeChain32_jnt.msg" "hyperLayout1.hyp[29].dn";
connectAttr "C_snakeside1_locShape.msg" "hyperLayout1.hyp[30].dn";
connectAttr "C_snakeCenter8_locShape.msg" "hyperLayout1.hyp[31].dn";
connectAttr "C_snakeCenter1_locShape.msg" "hyperLayout1.hyp[32].dn";
connectAttr "C_snakeChain10_jnt.msg" "hyperLayout1.hyp[33].dn";
connectAttr "C_snakeChain19_jnt.msg" "hyperLayout1.hyp[34].dn";
connectAttr "C_surfaceSide1_crvShape.msg" "hyperLayout1.hyp[35].dn";
connectAttr "C_snakeChain27_jnt.msg" "hyperLayout1.hyp[36].dn";
connectAttr "C_snakeChain36_jnt.msg" "hyperLayout1.hyp[37].dn";
connectAttr "C_snakeside15_locShape.msg" "hyperLayout1.hyp[38].dn";
connectAttr "C_snakeside19_locShape.msg" "hyperLayout1.hyp[39].dn";
connectAttr "C_snakeside3_locShape.msg" "hyperLayout1.hyp[40].dn";
connectAttr "C_snakeside7_locShape.msg" "hyperLayout1.hyp[41].dn";
connectAttr "C_snakeChain14_jnt.msg" "hyperLayout1.hyp[42].dn";
connectAttr "C_snakeChain23_jnt.msg" "hyperLayout1.hyp[43].dn";
connectAttr "C_snakeChain3_jnt.msg" "hyperLayout1.hyp[44].dn";
connectAttr "C_snakeChain31_jnt.msg" "hyperLayout1.hyp[45].dn";
connectAttr "C_snakeChain9_jnt.msg" "hyperLayout1.hyp[46].dn";
connectAttr "C_snakeCenter5_locShape.msg" "hyperLayout1.hyp[47].dn";
connectAttr "C_snakeChain18_jnt.msg" "hyperLayout1.hyp[48].dn";
connectAttr "C_snakeside12_locShape.msg" "hyperLayout1.hyp[49].dn";
connectAttr "C_snakeCenter9_locShape.msg" "hyperLayout1.hyp[50].dn";
connectAttr "C_curve1_crvShape.msg" "hyperLayout1.hyp[51].dn";
connectAttr "C_snakeChain7_jnt.msg" "hyperLayout1.hyp[52].dn";
connectAttr "C_snakeside16_locShape.msg" "hyperLayout1.hyp[53].dn";
connectAttr "C_snakeChain26_jnt.msg" "hyperLayout1.hyp[54].dn";
connectAttr "C_snakeChain35_jnt.msg" "hyperLayout1.hyp[55].dn";
connectAttr "C_snakeChain13_jnt.msg" "hyperLayout1.hyp[56].dn";
connectAttr "C_snakeChain22_jnt.msg" "hyperLayout1.hyp[57].dn";
connectAttr "C_snakeChain2_jnt.msg" "hyperLayout1.hyp[58].dn";
connectAttr "C_snakeside4_locShape.msg" "hyperLayout1.hyp[59].dn";
connectAttr "C_snakeside20_locShape.msg" "hyperLayout1.hyp[60].dn";
connectAttr "C_snakeCenter2_locShape.msg" "hyperLayout1.hyp[61].dn";
connectAttr "C_snakeside8_locShape.msg" "hyperLayout1.hyp[62].dn";
connectAttr "C_snakeChain30_jnt.msg" "hyperLayout1.hyp[63].dn";
connectAttr "C_snakeChain39_jnt.msg" "hyperLayout1.hyp[64].dn";
connectAttr "C_snakeChain8_jnt.msg" "hyperLayout1.hyp[65].dn";
connectAttr "C_snakeChain17_jnt.msg" "hyperLayout1.hyp[66].dn";
connectAttr "C_surfaceSide2_crvShape.msg" "hyperLayout1.hyp[67].dn";
connectAttr "C_snakeChain6_jnt.msg" "hyperLayout1.hyp[68].dn";
connectAttr "C_snakeChain25_jnt.msg" "hyperLayout1.hyp[69].dn";
connectAttr "C_snakeChain34_jnt.msg" "hyperLayout1.hyp[70].dn";
connectAttr "C_snakeCenter6_locShape.msg" "hyperLayout1.hyp[71].dn";
connectAttr "C_snakeside13_locShape.msg" "hyperLayout1.hyp[72].dn";
connectAttr "C_snakeCenter10_locShape.msg" "hyperLayout1.hyp[73].dn";
connectAttr "C_snakeside11_locShape.msg" "hyperLayout1.hyp[74].dn";
connectAttr "C_snakeside17_locShape.msg" "hyperLayout1.hyp[75].dn";
connectAttr "C_snakeChain12_jnt.msg" "hyperLayout1.hyp[76].dn";
connectAttr "C_surfaceSide1_crvShape.ws" "loft1.ic[0]";
connectAttr "C_surfaceSide2_crvShape.ws" "loft1.ic[1]";
connectAttr "C_curve1_crvShape.ws" "chain_CHN.ic";
connectAttr "C_surface1_srfShape.ws" "chain_CHN.is";
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
connectAttr "chain_grp.msg" "bindPose1.m[0]";
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
connectAttr "bindPose1.m[0]" "bindPose1.p[2]";
connectAttr "bindPose1.m[0]" "bindPose1.p[3]";
connectAttr "bindPose1.m[0]" "bindPose1.p[4]";
connectAttr "bindPose1.m[0]" "bindPose1.p[5]";
connectAttr "bindPose1.m[0]" "bindPose1.p[6]";
connectAttr "bindPose1.m[0]" "bindPose1.p[7]";
connectAttr "bindPose1.m[0]" "bindPose1.p[8]";
connectAttr "bindPose1.m[0]" "bindPose1.p[9]";
connectAttr "bindPose1.m[0]" "bindPose1.p[10]";
connectAttr "bindPose1.m[0]" "bindPose1.p[11]";
connectAttr "bindPose1.m[0]" "bindPose1.p[12]";
connectAttr "bindPose1.m[0]" "bindPose1.p[13]";
connectAttr "bindPose1.m[0]" "bindPose1.p[14]";
connectAttr "bindPose1.m[0]" "bindPose1.p[15]";
connectAttr "bindPose1.m[0]" "bindPose1.p[16]";
connectAttr "bindPose1.m[0]" "bindPose1.p[17]";
connectAttr "bindPose1.m[0]" "bindPose1.p[18]";
connectAttr "bindPose1.m[0]" "bindPose1.p[19]";
connectAttr "bindPose1.m[0]" "bindPose1.p[20]";
connectAttr "bindPose1.m[0]" "bindPose1.p[21]";
connectAttr "bindPose1.m[0]" "bindPose1.p[22]";
connectAttr "bindPose1.m[0]" "bindPose1.p[23]";
connectAttr "bindPose1.m[0]" "bindPose1.p[24]";
connectAttr "bindPose1.m[0]" "bindPose1.p[25]";
connectAttr "bindPose1.m[0]" "bindPose1.p[26]";
connectAttr "bindPose1.m[0]" "bindPose1.p[27]";
connectAttr "bindPose1.m[0]" "bindPose1.p[28]";
connectAttr "bindPose1.m[0]" "bindPose1.p[29]";
connectAttr "bindPose1.m[0]" "bindPose1.p[30]";
connectAttr "bindPose1.m[0]" "bindPose1.p[31]";
connectAttr "bindPose1.m[0]" "bindPose1.p[32]";
connectAttr "bindPose1.m[0]" "bindPose1.p[33]";
connectAttr "bindPose1.m[0]" "bindPose1.p[34]";
connectAttr "bindPose1.m[0]" "bindPose1.p[35]";
connectAttr "bindPose1.m[0]" "bindPose1.p[36]";
connectAttr "bindPose1.m[0]" "bindPose1.p[37]";
connectAttr "bindPose1.m[0]" "bindPose1.p[38]";
connectAttr "bindPose1.m[0]" "bindPose1.p[39]";
connectAttr "bindPose1.m[0]" "bindPose1.p[40]";
connectAttr "bindPose1.m[0]" "bindPose1.p[41]";
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
// End of snakePlug.ma
