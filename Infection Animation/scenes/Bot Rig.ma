//Maya ASCII 2023 scene
//Name: Bot Rig.ma
//Last modified: Mon, Apr 10, 2023 10:52:07 PM
//Codeset: 1252
file -rdi 1 -ns "bot_body1" -rfn "bot_bodyRN" -op "v=0;" -typ "mayaAscii" "C:/Git repos/Infection-Animation-Project/Infection Animation//scenes/bot body.ma";
file -r -ns "bot_body1" -dr 1 -rfn "bot_bodyRN" -op "v=0;" -typ "mayaAscii" "C:/Git repos/Infection-Animation-Project/Infection Animation//scenes/bot body.ma";
requires maya "2023";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.1.2";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202205052215-234554116d";
fileInfo "osv" "Windows 10 Home v2009 (Build: 19044)";
fileInfo "UUID" "FAD7A107-4C1A-ACE8-A7C9-88A4F2E9EE75";
createNode transform -s -n "persp";
	rename -uid "C824FEE6-4250-01DE-8149-D3AEBCFFA1E3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -28.000085884872533 11.614327963424209 15.562073973025154 ;
	setAttr ".r" -type "double3" -4.8000000000310905 -2945.1999999997624 0 ;
	setAttr ".rpt" -type "double3" 4.0802904296052088e-15 -1.2222554648065199e-15 -2.9151352310564792e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "114580A6-45DE-3FC7-AAAB-94AAED5575D9";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 34.147501737924586;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -3.0308867758159014e-14 18.502199780127143 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "C506B3AB-4A6D-4A01-F31C-ABA4AA6A4589";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "7A6E5C35-44B6-5D52-1E00-F8A380B0A064";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 28.996133254015465;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "2C271563-4CF5-B3B0-6CB3-F5B249BD0836";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -7.991603958759951 21.081445556634403 1000.1499628224029 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "22598393-48B1-AB84-F3C2-5E83C399A8E0";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1001.0598027505531;
	setAttr ".ow" 16.796102830900445;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" 4.5087172985076904 31.661932945251465 -0.909839928150177 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "6FCEFFE3-47D3-2603-4D86-7F880CA51D84";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 1.0269183249315061 1.3142433475406186 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "1CC9CEA2-4843-0030-7C0F-67AF70B3889F";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 3.4352629617836121;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode joint -n "ROOT";
	rename -uid "4F328173-4DCE-E4D4-9EBB-24ADA45115F7";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "Cog_Jnt" -p "ROOT";
	rename -uid "7D2BDAE1-48DF-38C5-78BF-B688E017D7A9";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.2;
createNode joint -n "Hip_Jnt" -p "Cog_Jnt";
	rename -uid "18975748-41E6-FFF0-608E-A3A34F6CBCA0";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.15;
createNode joint -n "L_FK_Leg_01_Jnt" -p "Hip_Jnt";
	rename -uid "13919751-49E9-76EC-7942-FEB5C3DD64A3";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 90 -2.3058054096851883 -90.000000000000014 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "L_FK_Leg_02_Jnt" -p "L_FK_Leg_01_Jnt";
	rename -uid "33F6FEE3-4695-EED0-36E6-1EBFBB1ADCB5";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 -10.6399187581798 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "L_FK_Leg_03_Jnt" -p "L_FK_Leg_02_Jnt";
	rename -uid "E12D3004-4FAF-0B08-A3A0-E09E2E10E824";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 17.694 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "L_FK_Leg_04_Jnt" -p "L_FK_Leg_03_Jnt";
	rename -uid "73E2774F-4908-5572-9195-EFAF09BBCF04";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "L_FK_Ankle" -p "L_FK_Leg_04_Jnt";
	rename -uid "0AD27409-48B5-43B8-A5A1-C3BD6B24C59A";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 1.2711917846755624e-14 5.1185346126379194e-16 80.640113348494623 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "L_FK_Toe_1_Jnt" -p "L_FK_Ankle";
	rename -uid "33152CA6-42D9-F654-5A79-869CADF819CB";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -5.9927837315948117e-12 -0.15650822584598831 -47.953935235796074 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "L_FK_Toe_1_Point" -p "L_FK_Toe_1_Jnt";
	rename -uid "5BD88670-4908-0A94-104D-1ABB44D765E0";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 2.1301241271946472 -1.2999584048101198e-16 1.1102230246251565e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode parentConstraint -n "L_FK_Toe_1_Jnt_parentConstraint1" -p "L_FK_Toe_1_Jnt";
	rename -uid "1C8BA7B5-4458-1727-0077-E29479A3BE97";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_FK_Toe_02_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".tg[0].tot" -type "double3" -1.1102230246251565e-15 1.1102230246251565e-15 
		-1.3322676295501878e-15 ;
	setAttr ".tg[0].tor" -type "double3" 6.2120162271056906e-17 2.1990553852306348e-14 
		1.5902773407317584e-14 ;
	setAttr ".lr" -type "double3" -6.2120208622330651e-17 -2.2024719967048629e-14 -1.9083291690221365e-14 ;
	setAttr ".rst" -type "double3" 0.91741719841957114 -0.80941700935363659 0.55936503410339267 ;
	setAttr ".rsrr" -type "double3" -6.2120208622330651e-17 -2.2024719967048629e-14 
		-1.9083291690221365e-14 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_FK_Toe_1_Jnt_scaleConstraint1" -p "L_FK_Toe_1_Jnt";
	rename -uid "6A6A05EB-4530-C0E1-341E-0999B85F9DC6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_FK_Toe_02_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".o" -type "double3" 1 1.0000000000000002 1.0000000000000004 ;
	setAttr -k on ".w0";
createNode joint -n "L_FK_Toe_2_Jnt" -p "L_FK_Ankle";
	rename -uid "ED65C091-4CC5-C28E-32BF-0583E15C274D";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 2.0224303218483583e-12 0.15643131750670236 -47.954021257668899 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "L_FK_Toe_2_Point" -p "L_FK_Toe_2_Jnt";
	rename -uid "5583A450-4765-EA31-FC92-94AC4B18302A";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 2.1301234825568294 -6.3030170359539184e-16 1.6930483510267523e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode parentConstraint -n "L_FK_Toe_2_Jnt_parentConstraint1" -p "L_FK_Toe_2_Jnt";
	rename -uid "05766EF6-4A60-2C79-B5D3-E0B154E4F407";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_FK_Toe_01_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".tg[0].tot" -type "double3" -1.3322676295501878e-15 1.1102230246251565e-15 
		-4.4408920985006262e-16 ;
	setAttr ".tg[0].tor" -type "double3" 0 -1.1355574136162714e-14 6.3611093629270351e-15 ;
	setAttr ".lr" -type "double3" 1.2424041724466862e-17 1.1371104188318295e-14 1.2328575864533714e-33 ;
	setAttr ".rst" -type "double3" 0.91741940379142783 -0.80941534042358287 -0.55937027931213379 ;
	setAttr ".rsrr" -type "double3" 1.2424041724466862e-17 1.1371104188318295e-14 1.2328575864533714e-33 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_FK_Toe_2_Jnt_scaleConstraint1" -p "L_FK_Toe_2_Jnt";
	rename -uid "22FBD545-4AD5-5CB3-A17A-B2A0A1081EC5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_FK_Toe_01_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".o" -type "double3" 1 1 0.99999999999999978 ;
	setAttr -k on ".w0";
createNode joint -n "L_FK_Heel_Jnt" -p "L_FK_Ankle";
	rename -uid "1DBE6EF0-442D-8161-2217-19BC713FC10C";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 180.00000000000003 56.896573258530047 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "L_FK_Heel_Point" -p "L_FK_Heel_Jnt";
	rename -uid "90A90AA3-44BE-F047-5CA9-E5857963D0B2";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 1.9999277266240991 5.5511552429087829e-16 4.1774574668360299e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode parentConstraint -n "L_FK_Heel_Jnt_parentConstraint1" -p "L_FK_Heel_Jnt";
	rename -uid "8BFF7370-48D4-43B9-8D3B-C48514BDD261";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_FK_Toe_03_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".tg[0].tot" -type "double3" -9.4368957093138306e-16 8.8817841970012523e-16 
		0 ;
	setAttr ".tg[0].tor" -type "double3" 1.4124500153760508e-30 5.6498000615042044e-30 
		3.1805546814635176e-15 ;
	setAttr ".rst" -type "double3" -0.64067840576172053 -0.71594381332397261 8.8817841970012523e-16 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_FK_Heel_Jnt_scaleConstraint1" -p "L_FK_Heel_Jnt";
	rename -uid "DBE76E01-4CFE-CB83-3710-B0B112428254";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_FK_Toe_03_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".o" -type "double3" 1 0.99999999999999978 1 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_FK_Ankle_parentConstraint1" -p "L_FK_Ankle";
	rename -uid "778BCFFA-4AF5-F664-F8BE-CDBD2F88CD30";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_FK_Ankle_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -2.2204460492503131e-16 -4.4408920985006262e-16 
		8.8817841970012523e-16 ;
	setAttr ".rst" -type "double3" -3.1341151895958319e-11 1.929456445137756e-05 4.4408920985006262e-15 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_FK_Ankle_scaleConstraint1" -p "L_FK_Ankle";
	rename -uid "C007FB0A-40D7-1D41-A9F8-1AB073E6E581";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_FK_Ankle_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode parentConstraint -n "L_FK_Leg_04_Jnt_parentConstraint1" -p "L_FK_Leg_04_Jnt";
	rename -uid "F28B5DAE-4837-CA16-D687-99B568269492";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_FK_Leg_03_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".tg[0].tot" -type "double3" 4.4408920985006262e-15 4.4408920985006262e-16 
		-8.8817841970012523e-16 ;
	setAttr ".rst" -type "double3" 5.9395843815356653 -1.6653345369377348e-15 -8.8817841970012523e-16 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_FK_Leg_04_Jnt_scaleConstraint1" -p "L_FK_Leg_04_Jnt";
	rename -uid "48BB60D2-40CB-5A94-B946-AB9A8E9C91E3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_FK_Leg_03_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr -k on ".w0";
createNode parentConstraint -n "L_FK_Leg_03_Jnt_parentConstraint1" -p "L_FK_Leg_03_Jnt";
	rename -uid "88B6E641-40F5-2C46-96EC-D3934C3D28FB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_FK_Leg_02_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".tg[0].tot" -type "double3" 1.7763568394002505e-15 4.4408920985006262e-16 
		-8.8817841970012523e-16 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -1.9083328088781101e-14 ;
	setAttr ".lr" -type "double3" 0 0 1.5902773407317584e-14 ;
	setAttr ".rst" -type "double3" 5.9432347305218762 -1.7763568394002505e-15 -2.2204460492503131e-15 ;
	setAttr ".rsrr" -type "double3" 0 0 1.5902773407317584e-14 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_FK_Leg_03_Jnt_scaleConstraint1" -p "L_FK_Leg_03_Jnt";
	rename -uid "91F801BA-4582-253F-F034-9EB05188C783";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_FK_Leg_02_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr -k on ".w0";
createNode parentConstraint -n "L_FK_Leg_02_Jnt_parentConstraint1" -p "L_FK_Leg_02_Jnt";
	rename -uid "2CF25F44-45D8-DF47-670E-599D95E85BBD";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_FK_Leg_01_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0 4.4408920985006262e-16 0 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 2.8624992133171654e-14 ;
	setAttr ".lr" -type "double3" 0 0 -2.8624992133171654e-14 ;
	setAttr ".rst" -type "double3" 6.1336035473229735 -6.6613381477509392e-16 -8.8817841970012523e-16 ;
	setAttr ".rsrr" -type "double3" 0 0 -2.8624992133171654e-14 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_FK_Leg_02_Jnt_scaleConstraint1" -p "L_FK_Leg_02_Jnt";
	rename -uid "DDD26477-4388-52E4-67E7-9CBB79C14FEB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_FK_Leg_01_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr -k on ".w0";
createNode parentConstraint -n "L_FK_Leg_01_Jnt_parentConstraint1" -p "L_FK_Leg_01_Jnt";
	rename -uid "410514C2-4D84-A04A-EDF5-8F852206DDA2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_FK_Hip_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 3.5527136788005009e-15 2.2204460492503131e-16 
		-4.4408920985006262e-16 ;
	setAttr ".tg[0].tor" -type "double3" 8.8278125961003172e-32 -1.9310840053969444e-32 
		3.975693351829396e-16 ;
	setAttr ".rst" -type "double3" 3.1503720283508301 -1.6036872863769567 0.015260815620422807 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_FK_Leg_01_Jnt_scaleConstraint1" -p "L_FK_Leg_01_Jnt";
	rename -uid "DF6F1473-4D02-EB3D-8368-A3B4DF485A47";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_FK_Hip_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode joint -n "L_IK_Leg_01_Jnt" -p "Hip_Jnt";
	rename -uid "975D6E49-47A1-3532-7EBE-3D81D900DC34";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".r" -type "double3" -8.5021127386572066e-07 7.7911827010387454e-08 -5.7806604512935521e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 90 -2.3058054096851888 -90.000000000000014 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.08;
createNode joint -n "L_IK_Leg_02_Jnt" -p "L_IK_Leg_01_Jnt";
	rename -uid "5C9F68DD-40BC-FCA7-AA09-E7A1BF616FA4";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 6.1336035473229726 -6.9577163686392426e-16 -1.3619335764320998e-15 ;
	setAttr ".r" -type "double3" -8.9302321037026898e-06 8.0361050287354076e-06 -9.4962703286289234e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 -10.6399187581798 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.08;
createNode joint -n "L_IK_Leg_03_Jnt" -p "L_IK_Leg_02_Jnt";
	rename -uid "EF24A82B-4076-D1AA-0FF9-EA907553CFB7";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 5.943234730521878 -1.9129547912365335e-15 -1.6321589033717438e-15 ;
	setAttr ".r" -type "double3" 4.3213736750319386e-42 1.6008291407820042e-26 -1.8970107260738755e-11 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 17.693999999999988 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.08;
createNode joint -n "L_IK_Leg_04_Jnt" -p "L_IK_Leg_03_Jnt";
	rename -uid "04DBB4D9-406F-DD81-C819-CE922D0970A9";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 5.9395843815356653 -1.3322676295501878e-15 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".ssc" no;
	setAttr ".radi" 0.08;
createNode joint -n "L_IK_Ankle" -p "L_IK_Leg_04_Jnt";
	rename -uid "101E9F41-41C1-A758-0A71-76AB9F796DA8";
	setAttr ".t" -type "double3" -3.1336266914649968e-11 1.9294564452154717e-05 2.6645352591003757e-15 ;
	setAttr ".r" -type "double3" 4.3028888415989772e-06 -3.7963272001160714e-06 -1.4255128464312399e-13 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 1.2711917846755624e-14 5.1185346126379204e-16 80.640113348494623 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.08;
createNode joint -n "L_IK_Toe_1_Jnt" -p "L_IK_Ankle";
	rename -uid "A14F5FD1-4A9F-D89B-9618-A184BFFC5214";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 0.91741719841957103 -0.80941700935363725 0.55936503410339355 ;
	setAttr ".r" -type "double3" 2.5444437451708134e-14 -1.5528067073056017e-30 1.3261668626196291e-30 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 1.2424088075917192e-17 -0.15650822584598834 -47.953935235796081 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.08;
createNode joint -n "L_IK_Toe_1_Point" -p "L_IK_Toe_1_Jnt";
	rename -uid "F79A321C-494A-6194-A33A-6E96BCC99250";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 2.1301241271946472 -1.2999584048101198e-16 1.1102230246251565e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".ssc" no;
	setAttr ".radi" 0.08;
createNode joint -n "L_IK_Toe_2_Jnt" -p "L_IK_Ankle";
	rename -uid "692A9F73-4D78-5037-6E47-2BBEFDB55FA5";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 0.91741940379142761 -0.80941534042358354 -0.55937027931213379 ;
	setAttr ".r" -type "double3" -2.5444437451708134e-14 7.5289871240646064e-30 -2.0223551931698183e-30 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0.15643131750670239 -47.954021257668892 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.08;
createNode joint -n "L_IK_Toe_2_Point" -p "L_IK_Toe_2_Jnt";
	rename -uid "0B49C650-416C-98F4-B5B3-06BDB8DEBC6D";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 2.1301234825568294 -6.3030170359539184e-16 1.6930483510267523e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".ssc" no;
	setAttr ".radi" 0.08;
createNode joint -n "L_IK_Heel_Jnt" -p "L_IK_Ankle";
	rename -uid "8790D649-4876-B2FC-4CB6-E68689520CF4";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -0.64067840576172053 -0.71594381332397283 4.4408920985006262e-16 ;
	setAttr ".r" -type "double3" 2.5347852657140819e-06 7.0357463361302276e-22 5.2946701649478029e-21 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 180.00000000000003 56.896573258530047 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.08;
createNode joint -n "L_IK_Heel_Point" -p "L_IK_Heel_Jnt";
	rename -uid "B60E6DD4-460C-E724-7D55-C8AFC32BA5EF";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 1.9999277266240991 5.5511552429087829e-16 4.1774574668360299e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".ssc" no;
	setAttr ".radi" 0.08;
createNode ikEffector -n "effector12" -p "L_IK_Heel_Jnt";
	rename -uid "4EC72A0B-4D1D-C5C6-E59D-4288C1021394";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "L_IK_Toe_1_Rev_IK_Driver" -p "L_IK_Ankle";
	rename -uid "DE9DF52C-4903-D082-6B70-93B35F9BC35D";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 0.91741940379142761 -0.80941534042358354 0 ;
	setAttr ".r" -type "double3" 2.9145651478970973e-07 -8.624173172389522e-23 2.3165322157567515e-23 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 1.2424088030373924e-17 0.15643131750670239 -47.954021257668892 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.08;
createNode joint -n "L_IK_Toe_2_Rev_IK_Driver" -p "L_IK_Toe_1_Rev_IK_Driver";
	rename -uid "98AE685A-4F08-6DA5-59C0-74B06EF4F839";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 2.1301234825568294 -6.3030170359539184e-16 1.6930483510267523e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".ssc" no;
	setAttr ".radi" 0.08;
createNode ikEffector -n "effector14" -p "L_IK_Toe_1_Rev_IK_Driver";
	rename -uid "D360573B-4776-2F1D-82DD-6184E57053CF";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector11" -p "L_IK_Ankle";
	rename -uid "A74BD83A-4B87-6D70-6BD3-79A510C3F7C4";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector13" -p "L_IK_Ankle";
	rename -uid "9E3D4072-4EE8-CC3B-44CB-C3AAE5D05513";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode orientConstraint -n "L_IK_Leg_04_Jnt_orientConstraint1" -p "L_IK_Leg_04_Jnt";
	rename -uid "3786E9E7-4B09-ACD8-ABEA-08BAE37097CA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Leg_IK_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" -80.640113348493458 89.999987986339903 0 ;
	setAttr ".o" -type "double3" 90 -9.3598866515054002 -89.999999999999972 ;
	setAttr ".rsrr" -type "double3" 6.361109362927032e-15 6.361109362927032e-15 3.1805546814635168e-15 ;
	setAttr -k on ".w0";
createNode ikEffector -n "effector4" -p "L_IK_Leg_03_Jnt";
	rename -uid "664F72AB-45CB-0E41-C5A7-9B88E1EDF4CA";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector3" -p "L_IK_Leg_02_Jnt";
	rename -uid "CF3783F2-4497-DFE0-DEC7-D7993F90F77C";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode pointConstraint -n "L_IK_Leg_01_Jnt_pointConstraint1" -p "L_IK_Leg_01_Jnt";
	rename -uid "8D0F62B7-46AE-A8EB-CD0C-4AAE84B357B0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_IK_Leg_01_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".o" -type "double3" 4.4408920985006262e-16 0 0 ;
	setAttr ".rst" -type "double3" 3.1503720283508301 -1.6036872863769531 0.015260815620422363 ;
	setAttr -k on ".w0";
createNode joint -n "L_RK_Leg_01_Jnt" -p "Hip_Jnt";
	rename -uid "534E9C8D-4A29-0DCD-1CD1-74B9415A1E48";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 90 -2.3058054096851888 -90.000000000000014 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.12;
createNode joint -n "L_RK_Leg_02_Jnt" -p "L_RK_Leg_01_Jnt";
	rename -uid "04913726-44D7-FD2C-34C9-97ABDDBEEB84";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 -10.6399187581798 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.12;
createNode joint -n "L_RK_Leg_03_Jnt" -p "L_RK_Leg_02_Jnt";
	rename -uid "5D055840-49E4-EB75-1DC0-829190BA3E3D";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 17.693999999999988 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.12;
createNode joint -n "L_RK_Leg_04_Jnt" -p "L_RK_Leg_03_Jnt";
	rename -uid "77490815-4E89-4CBA-5293-7BBA6323F4ED";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".ssc" no;
	setAttr ".radi" 0.12;
createNode parentConstraint -n "L_RK_Leg_04_Jnt_parentConstraint1" -p "L_RK_Leg_04_Jnt";
	rename -uid "68E02695-4416-F2D2-F854-B19176E2069C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_FK_Leg_04_JntW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "L_IK_Leg_04_JntW1" -dv 1 -min 0 -at "double";
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
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" 4.4408920985006262e-16 -1.3322676295501878e-15 
		8.8817841970012523e-16 ;
	setAttr ".tg[1].tot" -type "double3" 5.3290705182007514e-15 -5.5511151231257827e-16 
		-4.4408920985006262e-16 ;
	setAttr ".rst" -type "double3" 5.9395843815356688 -3.1086244689504383e-15 -4.4408920985006262e-16 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "L_RK_Leg_03_Jnt_parentConstraint1" -p "L_RK_Leg_03_Jnt";
	rename -uid "16DCCF47-4FB4-68BC-390F-AE899DD1449A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_FK_Leg_03_JntW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "L_IK_Leg_03_JntW1" -dv 1 -min 0 -at "double";
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
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" -1.7763568394002505e-15 -3.3306690738754696e-16 
		8.8817841970012523e-16 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -6.3611093629270335e-15 ;
	setAttr ".tg[1].tot" -type "double3" 0 8.8817841970012523e-16 4.4408920985006262e-16 ;
	setAttr ".rst" -type "double3" 5.9432347305218736 -1.7763568394002505e-15 -1.7763568394002505e-15 ;
	setAttr ".rsrr" -type "double3" 0 0 6.3611093629270335e-15 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "L_RK_Leg_02_Jnt_parentConstraint1" -p "L_RK_Leg_02_Jnt";
	rename -uid "EE1E5E1B-4310-7FC0-7094-CA85C27028EB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_FK_Leg_02_JntW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "L_IK_Leg_02_JntW1" -dv 1 -min 0 -at "double";
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
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" -3.5527136788005009e-15 -4.4408920985006262e-16 
		-4.4408920985006262e-16 ;
	setAttr ".tg[1].tot" -type "double3" 5.3290705182007514e-15 1.3322676295501878e-15 
		-4.4408920985006262e-16 ;
	setAttr ".rst" -type "double3" 6.1336035473229771 -7.7715611723760958e-16 -1.7763568394002505e-15 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "L_RK_Leg_01_Jnt_parentConstraint1" -p "L_RK_Leg_01_Jnt";
	rename -uid "2D65938F-4C58-054C-19AD-928D143D1E98";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_FK_Leg_01_JntW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "L_IK_Leg_01_JntW1" -dv 1 -min 0 -at "double";
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
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" -3.5527136788005009e-15 -1.1102230246251565e-16 
		4.4408920985006262e-16 ;
	setAttr ".tg[0].tor" -type "double3" 8.8278125961003172e-32 -1.9310840053969444e-32 
		3.975693351829396e-16 ;
	setAttr ".tg[1].tot" -type "double3" 0 5.5511151231257827e-16 1.3322676295501878e-15 ;
	setAttr ".tg[1].tor" -type "double3" 8.8278125961003172e-32 -1.9310840053969444e-32 
		3.975693351829396e-16 ;
	setAttr ".rst" -type "double3" 3.1503720283508292 -1.6036872863769531 0.015260815620422807 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode joint -n "R_FK_Leg_01_Jnt" -p "Hip_Jnt";
	rename -uid "99CFBE8F-4B0A-7ABC-82BD-BAB5653F2180";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -90 2.3058054096852012 90.000000000000014 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "R_FK_Leg_02_Jnt" -p "R_FK_Leg_01_Jnt";
	rename -uid "49F26991-48E5-AE3A-933E-F0B1843DA617";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 9.6002461982591115e-31 -10.639918758179837 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "R_FK_Leg_03_Jnt" -p "R_FK_Leg_02_Jnt";
	rename -uid "71439472-4A1D-AFBD-4D26-98A6FF20C89E";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 2.6793654814158099e-31 1.7214234562395615e-30 17.694000000000017 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "R_FK_Leg_04_Jnt" -p "R_FK_Leg_03_Jnt";
	rename -uid "F8F9A022-4509-43CE-57E6-4B979F86E12D";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "R_FK_Ankle" -p "R_FK_Leg_04_Jnt";
	rename -uid "E718BEA8-4614-24DF-36BD-D8B0840EEEEA";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 1.9728627145290501e-14 5.1185346126379569e-16 80.640113348494609 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "R_FK_Toe_1_Jnt" -p "R_FK_Ankle";
	rename -uid "E89026A7-4977-C50E-20BB-D0B00EC7D5EC";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 9.7177241221640002e-12 -0.15650822584599347 -47.953935235796074 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "R_FK_Toe_1_Point" -p "R_FK_Toe_1_Jnt";
	rename -uid "E853F577-4917-99C8-95E3-8D9E6DA8215A";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -2.1301252337833549 1.211979176796163e-06 -1.3915594854196911e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode parentConstraint -n "R_FK_Toe_1_Jnt_parentConstraint1" -p "R_FK_Toe_1_Jnt";
	rename -uid "B8905FBA-4466-950A-403A-9589B2492A26";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_FK_Toe_02_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".tg[0].tot" -type "double3" -2.0868630334902605e-07 -1.1102230246251565e-16 
		-4.4408920985006262e-16 ;
	setAttr ".tg[0].tor" -type "double3" 8.6968292071268037e-17 4.1744780194208675e-15 
		3.1805614688920925e-14 ;
	setAttr ".lr" -type "double3" -9.9392333795733728e-17 -4.1993261028697997e-15 -3.1805474017515691e-14 ;
	setAttr ".rst" -type "double3" -0.91741699999999982 0.809417 -0.55936500000000011 ;
	setAttr ".rsrr" -type "double3" -9.9392333795733728e-17 -4.1993261028697997e-15 
		-3.1805474017515691e-14 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_FK_Toe_1_Jnt_scaleConstraint1" -p "R_FK_Toe_1_Jnt";
	rename -uid "6E98B836-41E2-8143-5D2C-BC97B9C94644";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_FK_Toe_02_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".o" -type "double3" 1 1 1.0000000000000007 ;
	setAttr -k on ".w0";
createNode joint -n "R_FK_Toe_2_Jnt" -p "R_FK_Ankle";
	rename -uid "78798611-48A8-86CC-E59E-7FB801A92B34";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -8.4524673856162613e-12 0.15643131750669717 -47.954021257668913 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "R_FK_Toe_2_Point" -p "R_FK_Toe_2_Jnt";
	rename -uid "00613D21-47F0-BE2E-2192-A69105161247";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -2.1301238943304797 -5.0088892089572568e-07 4.2544915892506197e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode parentConstraint -n "R_FK_Toe_2_Jnt_parentConstraint1" -p "R_FK_Toe_2_Jnt";
	rename -uid "0E4C1720-4BAE-506D-B842-4898F1BD2D24";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_FK_Toe_01_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".tg[0].tot" -type "double3" 1.7553415831983443e-07 2.5089226740604431e-07 
		-3.0718485399816586e-07 ;
	setAttr ".tg[0].tor" -type "double3" -3.7272125173400587e-17 1.525672323764531e-14 
		1.9083328088781104e-14 ;
	setAttr ".lr" -type "double3" 7.4544250346804552e-17 -1.5207027070747439e-14 -2.5444388920295149e-14 ;
	setAttr ".rst" -type "double3" -0.917419 0.80941499999999977 0.55937000000000037 ;
	setAttr ".rsrr" -type "double3" 7.4544250346804552e-17 -1.5207027070747439e-14 -2.5444388920295149e-14 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_FK_Toe_2_Jnt_scaleConstraint1" -p "R_FK_Toe_2_Jnt";
	rename -uid "B10CC656-4714-8C35-8F49-2EB3E8B1C229";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_FK_Toe_01_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".o" -type "double3" 1 1 1.0000000000000007 ;
	setAttr -k on ".w0";
createNode joint -n "R_FK_Heel_Jnt" -p "R_FK_Ankle";
	rename -uid "E0D0049C-4FC6-E134-B3F9-998CEF5412C1";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 179.99999879258178 -2.4305527180969933e-14 -123.10342674146995 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "R_FK_Heel_Point" -p "R_FK_Heel_Jnt";
	rename -uid "A32C492B-436F-33C0-55C5-0B9A6080A691";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -1.9999293359945347 -5.3346797406206292e-06 -1.1235457009206584e-13 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".jo" -type "double3" 1.2074182697257331e-06 -6.7025172773217535e-23 -5.1220069872813922e-22 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode parentConstraint -n "R_FK_Heel_Jnt_parentConstraint1" -p "R_FK_Heel_Jnt";
	rename -uid "8B5B79CD-409E-4F89-21DA-5091E326E2CC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_FK_Toe_03_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".tg[0].tot" -type "double3" -1.9714251953129036e-07 -4.4408920985006262e-16 
		2.8350841674296134e-08 ;
	setAttr ".tg[0].tor" -type "double3" 1.895758319773386e-22 -6.6351541192068509e-22 
		2.8624992133171654e-14 ;
	setAttr ".lr" -type "double3" 1.8957583197733839e-22 7.5830332790935439e-22 -3.1805546814635168e-14 ;
	setAttr ".rst" -type "double3" 0.64067800000000052 0.71594400000000014 -4.4408920985006262e-16 ;
	setAttr ".rsrr" -type "double3" 1.8957583197733839e-22 7.5830332790935439e-22 -3.1805546814635168e-14 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_FK_Heel_Jnt_scaleConstraint1" -p "R_FK_Heel_Jnt";
	rename -uid "DA97ED83-4BB5-0ED7-9CCD-78BE15692DA3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_FK_Toe_03_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".o" -type "double3" 1.0000000000000002 1 1.0000000000000009 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_FK_Ankle_parentConstraint1" -p "R_FK_Ankle";
	rename -uid "D588E103-445F-3A67-5A9A-CB9688613951";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_FK_Ankle_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -1.004791256864479e-07 3.7872314528897277e-07 
		-2.835082613117379e-08 ;
	setAttr ".lr" -type "double3" 0 0 6.3611093629270335e-15 ;
	setAttr ".rst" -type "double3" 4.3999767034286208e-06 -1.5468543440921856e-05 8.8817841970012523e-16 ;
	setAttr ".rsrr" -type "double3" 0 0 6.3611093629270335e-15 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_FK_Ankle_scaleConstraint1" -p "R_FK_Ankle";
	rename -uid "C56158C2-42D2-9992-9DFB-5DB33065F0A4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_FK_Ankle_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" 1 0.99999999999999978 1.0000000000000007 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_FK_Leg_04_Jnt_parentConstraint1" -p "R_FK_Leg_04_Jnt";
	rename -uid "83B5F8A9-4DD3-955A-FE46-FF98F5318346";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_FK_Leg_03_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".tg[0].tot" -type "double3" -4.8849813083506888e-15 7.7715611723760958e-16 
		-2.8350828795709049e-08 ;
	setAttr ".rst" -type "double3" -5.9395887181004188 -3.7725637842545012e-06 1.7763568394002505e-15 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_FK_Leg_04_Jnt_scaleConstraint1" -p "R_FK_Leg_04_Jnt";
	rename -uid "9DCEBF58-4CB0-5DB1-856A-5A87AE550EB8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_FK_Leg_03_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".o" -type "double3" 1.0000000000000002 1 1 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_FK_Leg_03_Jnt_parentConstraint1" -p "R_FK_Leg_03_Jnt";
	rename -uid "F861DA0B-46DF-C77E-E0FC-B48236D5B339";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_FK_Leg_02_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".tg[0].tot" -type "double3" -4.5340298449048078e-07 -9.1004879521072723e-08 
		-2.8350829683887468e-08 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -6.3611093629270335e-15 ;
	setAttr ".rst" -type "double3" -5.9432350000000032 -4.4408920985006262e-16 2.2204460492503131e-15 ;
	setAttr ".rsrr" -type "double3" 0 0 6.3611093629270335e-15 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_FK_Leg_03_Jnt_scaleConstraint1" -p "R_FK_Leg_03_Jnt";
	rename -uid "0F4346A1-43BA-1B94-653D-92BFE39F988B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_FK_Leg_02_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".o" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_FK_Leg_02_Jnt_parentConstraint1" -p "R_FK_Leg_02_Jnt";
	rename -uid "7F0DD550-4B83-4A29-20FA-62821E2ADAF7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_FK_Leg_01_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".tg[0].tot" -type "double3" -1.3481645133595066e-07 -2.2450400294360406e-07 
		-2.8350830572065888e-08 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 4.7708320221952752e-15 ;
	setAttr ".lr" -type "double3" 0 0 -7.9513867036587919e-15 ;
	setAttr ".rst" -type "double3" -6.1336039999999983 0 -4.4408920985006262e-16 ;
	setAttr ".rsrr" -type "double3" 0 0 -7.9513867036587919e-15 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_FK_Leg_02_Jnt_scaleConstraint1" -p "R_FK_Leg_02_Jnt";
	rename -uid "707DB14B-42CB-FC74-2EE9-B48757554014";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_FK_Leg_01_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".o" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_FK_Leg_01_Jnt_parentConstraint1" -p "R_FK_Leg_01_Jnt";
	rename -uid "FFA789FB-4759-151C-66FB-0D9AB88D7486";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_FK_Hip_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0 -1.9575210330469162e-07 -2.8350829239798259e-08 ;
	setAttr ".tg[0].tor" -type "double3" -8.8278125961003172e-32 3.2828428091748057e-31 
		0 ;
	setAttr ".rst" -type "double3" -3.1503719999999995 -1.6036870000000008 0.015260999999999969 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_FK_Leg_01_Jnt_scaleConstraint1" -p "R_FK_Leg_01_Jnt";
	rename -uid "CC3C2F50-4970-2B69-C6A9-BF820C76D876";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_FK_Hip_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr -k on ".w0";
createNode joint -n "R_IK_Leg_01_Jnt" -p "Hip_Jnt";
	rename -uid "AAB9CD8C-460C-7DE3-E5A1-C09CA0AB4666";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".r" -type "double3" -8.50211259994073e-07 7.7911824603411647e-08 -5.7806607276895785e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -90 2.3058054096852074 90.000000000000014 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.08;
createNode joint -n "R_IK_Leg_02_Jnt" -p "R_IK_Leg_01_Jnt";
	rename -uid "3E58DB82-4B02-0F03-B37E-E4AC91EB43D2";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -6.133604 0 4.4408920985006262e-16 ;
	setAttr ".r" -type "double3" 1.3866559138197173e-14 2.1576318470637268e-15 -3.454346659037554e-30 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 -10.639918758179837 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.08;
createNode joint -n "R_IK_Leg_03_Jnt" -p "R_IK_Leg_02_Jnt";
	rename -uid "890BC2E7-4E6C-3049-460F-DB93DF45EA95";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -5.943235 0 1.7763568394002505e-15 ;
	setAttr ".r" -type "double3" 1.6167392950178672e-29 -2.0204151401330126e-29 7.2078301999238172e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 17.694000000000017 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.08;
createNode joint -n "R_IK_Leg_04_Jnt" -p "R_IK_Leg_03_Jnt";
	rename -uid "52C774D7-425C-E159-FE61-C19A02E45E9D";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -5.9395887181004179 -3.7725637842545012e-06 1.3322676295501878e-15 ;
	setAttr ".r" -type "double3" 6.361109362927032e-15 6.361109362927032e-15 3.1805546814635168e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".ssc" no;
	setAttr ".radi" 0.08;
createNode joint -n "R_IK_Ankle" -p "R_IK_Leg_04_Jnt";
	rename -uid "45DB0069-4D9D-242E-F357-6CAF4266EAD4";
	setAttr ".t" -type "double3" 4.3999766998759071e-06 -1.5468543440366744e-05 4.4408920985006262e-16 ;
	setAttr ".r" -type "double3" 1.6967639827824318e-14 1.8960975605361594e-14 -8.9536428721061007e-30 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 1.9728627145290498e-14 5.118534612637951e-16 80.640113348494623 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.08;
createNode joint -n "R_IK_Toe_1_Jnt" -p "R_IK_Ankle";
	rename -uid "FAC128A9-4B5E-04FB-251C-8A8C933A9DEF";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -0.917417 0.809417 -0.559365 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 -0.1565082258459935 -47.953935235796081 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.08;
createNode joint -n "R_IK_Toe_1_Point" -p "R_IK_Toe_1_Jnt";
	rename -uid "0437B7E1-4B4D-8062-234A-5DBA1313ED5D";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -2.1301252337833549 1.211979176796163e-06 -1.3915594854196911e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".ssc" no;
	setAttr ".radi" 0.08;
createNode joint -n "R_IK_Toe_2_Jnt" -p "R_IK_Ankle";
	rename -uid "D47949F9-4B7A-2531-F303-B7A91C6C67DD";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -0.917419 0.809415 0.55937 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0.15643131750669717 -47.954021257668913 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.08;
createNode joint -n "R_IK_Toe_2_Point" -p "R_IK_Toe_2_Jnt";
	rename -uid "8A2C7B19-4633-6864-887C-1E87312EDC23";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -2.1301238943304797 -5.0088892089572568e-07 4.2544915892506197e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".ssc" no;
	setAttr ".radi" 0.08;
createNode joint -n "R_IK_Heel_Jnt" -p "R_IK_Ankle";
	rename -uid "95F7F2D9-41E5-C0AF-42A8-2BB842E379D0";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 0.640678 0.715944 -4.4408920985006262e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 179.99999879258178 0 -123.10342674146997 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.08;
createNode joint -n "R_IK_Heel_Point" -p "R_IK_Heel_Jnt";
	rename -uid "2FEA1D12-4EF0-D87C-EE6B-D99BA2A4196A";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -1.9999293359945347 -5.3346797406206292e-06 -1.1235457009206584e-13 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".ssc" no;
	setAttr ".radi" 0.08;
createNode ikEffector -n "effector18" -p "R_IK_Heel_Jnt";
	rename -uid "C0457738-49C4-3B8D-96AD-52B60175A35D";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "R_IK_Toe_1_Rev_IK_Driver" -p "R_IK_Ankle";
	rename -uid "B5007DDD-400F-EC66-EE06-0DAD4C70C9E3";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -0.917417 0.809417 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 1.2424088075917192e-17 -0.1565082258459935 -47.953935235796081 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.08;
createNode joint -n "R_IK_Toe_1_Rev_IK_Driver" -p "|ROOT|Cog_Jnt|Hip_Jnt|R_IK_Leg_01_Jnt|R_IK_Leg_02_Jnt|R_IK_Leg_03_Jnt|R_IK_Leg_04_Jnt|R_IK_Ankle|R_IK_Toe_1_Rev_IK_Driver";
	rename -uid "9EA6FBC8-4560-42C8-9C73-E6BC3161C00A";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -2.1301252337833549 1.211979176796163e-06 -1.3915594854196911e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".ssc" no;
	setAttr ".radi" 0.08;
createNode ikEffector -n "effector16" -p "|ROOT|Cog_Jnt|Hip_Jnt|R_IK_Leg_01_Jnt|R_IK_Leg_02_Jnt|R_IK_Leg_03_Jnt|R_IK_Leg_04_Jnt|R_IK_Ankle|R_IK_Toe_1_Rev_IK_Driver";
	rename -uid "9BA41817-4C77-E2D8-F037-28970F3C7A9F";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector15" -p "R_IK_Ankle";
	rename -uid "47BD0FA5-4CE8-7CD4-F803-609CEEED8C90";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector17" -p "R_IK_Ankle";
	rename -uid "9482CD6E-4E50-EA42-F8BD-F6B3675E7A83";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector6" -p "R_IK_Leg_03_Jnt";
	rename -uid "D7ADB424-4291-D043-6F36-C1882E09334A";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector5" -p "R_IK_Leg_02_Jnt";
	rename -uid "78401BD5-48A4-B686-4EAD-BE872234150F";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode pointConstraint -n "R_IK_Leg_01_Jnt_pointConstraint1" -p "R_IK_Leg_01_Jnt";
	rename -uid "985DD81E-41E2-EB98-6AE6-78A9E3658F07";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_IK_Leg_01_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".o" -type "double3" 2.8350829239798259e-08 2.8637695659305962e-07 1.8437957763697832e-07 ;
	setAttr ".rst" -type "double3" -3.150372 -1.603687 0.015261 ;
	setAttr -k on ".w0";
createNode joint -n "R_RK_Leg_01_Jnt" -p "Hip_Jnt";
	rename -uid "4DDA07BD-47CC-632D-57E5-95946B0DE282";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -90 2.3058054096852074 90.000000000000014 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.12;
createNode joint -n "R_RK_Leg_02_Jnt" -p "R_RK_Leg_01_Jnt";
	rename -uid "81ABE8C0-4A54-1908-FB23-EC86CA9AB238";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 -10.639918758179837 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.12;
createNode joint -n "R_RK_Leg_03_Jnt" -p "R_RK_Leg_02_Jnt";
	rename -uid "AB6B25B0-44D8-D56B-911A-70A55449658B";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 17.694000000000017 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.12;
createNode joint -n "R_RK_Leg_04_Jnt" -p "R_RK_Leg_03_Jnt";
	rename -uid "309F7CC5-4E54-770F-27DA-77BCCC43454E";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".ssc" no;
	setAttr ".radi" 0.12;
createNode parentConstraint -n "R_RK_Leg_04_Jnt_parentConstraint1" -p "R_RK_Leg_04_Jnt";
	rename -uid "B5E6AFC4-4F78-A997-7477-379B6D8D8158";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_FK_Leg_04_JntW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "R_IK_Leg_04_JntW1" -dv 1 -min 0 -at "double";
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
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" -8.8817841970012523e-16 -9.9920072216264089e-16 
		1.7763568394002505e-15 ;
	setAttr ".tg[1].tot" -type "double3" -5.773159728050814e-15 -1.1102230246251565e-16 
		2.2204460492503131e-15 ;
	setAttr ".rst" -type "double3" -5.9395887181004188 -3.7725637846985904e-06 2.2204460492503131e-15 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "R_RK_Leg_03_Jnt_parentConstraint1" -p "R_RK_Leg_03_Jnt";
	rename -uid "D661633A-464C-D15D-AA3D-90B6F80769CB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_FK_Leg_03_JntW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "R_IK_Leg_03_JntW1" -dv 1 -min 0 -at "double";
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
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" 0 -7.7715611723760958e-16 8.8817841970012523e-16 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -3.180554681463516e-15 ;
	setAttr ".tg[1].tot" -type "double3" -1.7763568394002505e-15 3.3306690738754696e-16 
		4.4408920985006262e-16 ;
	setAttr ".tg[1].tor" -type "double3" 0 0 -3.180554681463516e-15 ;
	setAttr ".rst" -type "double3" -5.9432350000000032 -1.3322676295501878e-15 2.2204460492503131e-15 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "R_RK_Leg_02_Jnt_parentConstraint1" -p "R_RK_Leg_02_Jnt";
	rename -uid "20C5062D-4298-EACB-FCBB-53951C20CAA1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_FK_Leg_02_JntW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "R_IK_Leg_02_JntW1" -dv 1 -min 0 -at "double";
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
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" -3.5527136788005009e-15 -4.4408920985006262e-16 
		1.3322676295501878e-15 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -1.5902773407317588e-15 ;
	setAttr ".tg[1].tot" -type "double3" 1.7763568394002505e-15 4.4408920985006262e-16 
		-4.4408920985006262e-16 ;
	setAttr ".tg[1].tor" -type "double3" 0 0 -1.5902773407317588e-15 ;
	setAttr ".rst" -type "double3" -6.133604 2.2204460492503131e-16 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "R_RK_Leg_01_Jnt_parentConstraint1" -p "R_RK_Leg_01_Jnt";
	rename -uid "3F628B7F-46A1-5B78-693B-5788F4D48388";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_FK_Leg_01_JntW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "R_IK_Leg_01_JntW1" -dv 1 -min 0 -at "double";
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
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" 0 0 4.4408920985006262e-16 ;
	setAttr ".tg[0].tor" -type "double3" -8.8278125961003172e-32 3.2828428091748057e-31 
		0 ;
	setAttr ".tg[1].tot" -type "double3" 0 0 4.4408920985006262e-16 ;
	setAttr ".tg[1].tor" -type "double3" -8.8278125961003172e-32 3.2828428091748057e-31 
		0 ;
	setAttr ".rst" -type "double3" -3.150372 -1.6036870000000008 0.015260999999999969 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "Hip_Jnt_parentConstraint1" -p "Hip_Jnt";
	rename -uid "1B3B8BF7-433D-164F-37C8-458475FA9845";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Hip_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -5.0266867935053918e-16 -1.8474111129762605e-13 
		-5.2771137615259534e-07 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Hip_Jnt_scaleConstraint1" -p "Hip_Jnt";
	rename -uid "A2778466-4387-A8FF-3488-3C8A409E49B9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Hip_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode joint -n "Spine_00_Jnt" -p "Cog_Jnt";
	rename -uid "54CC26A4-4815-BB82-2193-6494538F6AEC";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.15;
createNode joint -n "Spine_01_Jnt" -p "Spine_00_Jnt";
	rename -uid "EFC482AE-4B2C-922F-6D08-9C8774570079";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 89.99999999999649 2.0035338760965796e-05 90.000000000000014 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "Spine_02_Jnt" -p "Spine_01_Jnt";
	rename -uid "D9359F80-442E-33A9-8955-17A6959C0CF2";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -3.180554681462795e-15 -7.7640197978986878e-28 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "Spine_03_Jnt" -p "Spine_02_Jnt";
	rename -uid "25244A01-4641-D334-27F0-39AA703DC7DC";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 -0.88805944220783095 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "Neck_00_Jnt" -p "Spine_03_Jnt";
	rename -uid "9134BC4B-46B8-7587-ECB6-608345E745F3";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".jo" -type "double3" 1.2723448802153536e-14 3.5176934732496981e-12 -89.111920522453403 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "Neck_01_jnt" -p "Neck_00_Jnt";
	rename -uid "7B7F6721-4CE5-6B42-D088-C3973DAF82C8";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "Eye" -p "Neck_01_jnt";
	rename -uid "31DF73CE-4E53-69FE-822A-4684D8C8DCA2";
	setAttr ".t" -type "double3" -0.94321244955062122 1.6809921264648153 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 90 0 90 ;
	setAttr ".radi" 0.1;
createNode aimConstraint -n "Eye_aimConstraint1" -p "Eye";
	rename -uid "9A759D1A-4E22-12DF-EAEF-DABB6DCCBED7";
	addAttr -dcb 0 -ci true -sn "w0" -ln "Eye_PointW0" -dv 1 -at "double";
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
	setAttr ".a" -type "double3" -1 0 0 ;
	setAttr ".wut" 1;
	setAttr -k on ".w0";
createNode parentConstraint -n "Neck_01_jnt_parentConstraint1" -p "Neck_01_jnt";
	rename -uid "1628F247-4E8C-E49E-37D5-FD9C1EE1454A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Neck_02_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 1.5543122344752192e-15 2.1316282072803006e-14 
		1.6004063509345428e-13 ;
	setAttr ".rst" -type "double3" -0.86484992504119707 2.5895462036132848 6.6174449004242214e-24 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Neck_01_jnt_scaleConstraint1" -p "Neck_01_jnt";
	rename -uid "1AAFACDD-4DB8-7C15-BE26-A3A2B03F63F1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Neck_02_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" 1 1.0000000000000007 1 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Neck_00_Jnt_parentConstraint1" -p "Neck_00_Jnt";
	rename -uid "F36035E2-4540-7875-77F0-C3B5AEC9F631";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Neck_01_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 6.6613381477509392e-16 1.4210854715202004e-14 
		-6.6174449004242214e-24 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -1.9083328088781101e-14 ;
	setAttr ".rst" -type "double3" 5.78584553074365 -9.7699626167013776e-15 3.9687096720086856e-08 ;
	setAttr ".rsrr" -type "double3" 0 0 1.9083328088781101e-14 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Neck_00_Jnt_scaleConstraint1" -p "Neck_00_Jnt";
	rename -uid "8C4E3D1F-425A-D0F0-98B0-59A7AEDA2AFD";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Neck_01_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" 1.0000000000000002 1.0000000000000004 1 ;
	setAttr -k on ".w0";
createNode joint -n "L_Clav_Jnt" -p "Spine_03_Jnt";
	rename -uid "9EA06B75-44EB-1DCD-67D1-1FB1212A29B3";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0.88807947754582872 -89.999992374170503 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "L_FK_Arm_01_Jnt" -p "L_Clav_Jnt";
	rename -uid "5DE558B3-4A9F-030F-95DA-FEA3F2374AE1";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -90.000206802080925 -88.506 90.000201339490658 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "L_FK_Arm_02_Jnt" -p "L_FK_Arm_01_Jnt";
	rename -uid "2F5E5CBA-4678-B490-08C5-218B6FBB2B5C";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 3.504750294311699 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "L_FK_Arm_03_Jnt" -p "L_FK_Arm_02_Jnt";
	rename -uid "3B31A2BD-49A1-1135-AF87-E0ADD4DF4932";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode parentConstraint -n "L_FK_Arm_03_Jnt_parentConstraint1" -p "L_FK_Arm_03_Jnt";
	rename -uid "CFC9247F-44FF-6C60-69E9-DB9EC9AA9AAD";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_FK_Arm_03_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".tg[0].tot" -type "double3" -1.0658141036401503e-14 1.6653345369377348e-16 
		3.5527136788005009e-15 ;
	setAttr ".rst" -type "double3" 7.9860011112408866 1.6764367671839864e-14 3.5527136788005009e-15 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_FK_Arm_03_Jnt_scaleConstraint1" -p "L_FK_Arm_03_Jnt";
	rename -uid "A2227AC3-425B-EB1E-F47A-EDA1CC32FA43";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_FK_Arm_03_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".o" -type "double3" 1 0.99999999999999978 0.99999999999999911 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_FK_Arm_02_Jnt_parentConstraint1" -p "L_FK_Arm_02_Jnt";
	rename -uid "238BCE20-489B-5175-347A-B987C7FE5BE4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_FK_Arm_02_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".tg[0].tot" -type "double3" -2.1316282072803006e-14 5.5511151231257827e-17 
		8.8817841970012523e-16 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -1.0734372049939366e-14 ;
	setAttr ".lr" -type "double3" 0 0 1.7493050748049337e-14 ;
	setAttr ".rst" -type "double3" 7.0036667971622926 6.6613381477509392e-16 2.9309887850104133e-14 ;
	setAttr ".rsrr" -type "double3" 0 0 1.1131941385122306e-14 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_FK_Arm_02_Jnt_scaleConstraint1" -p "L_FK_Arm_02_Jnt";
	rename -uid "BC360B66-4D07-7184-2336-36B2100DB8A7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_FK_Arm_02_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".o" -type "double3" 1 0.99999999999999978 0.99999999999999933 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_FK_Arm_01_Jnt_parentConstraint1" -p "L_FK_Arm_01_Jnt";
	rename -uid "4683EEC3-485D-2CBF-9A99-009E06B9096C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_FK_Arm_01_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".tg[0].tot" -type "double3" -2.1316282072803006e-14 -2.2204460492503131e-16 
		0 ;
	setAttr ".tg[0].tor" -type "double3" -3.9150640530958254e-13 -1.2722213417730771e-14 
		-4.9497382230275978e-14 ;
	setAttr ".lr" -type "double3" 3.9160579515519551e-13 1.3981705955671725e-14 4.9696166897867492e-14 ;
	setAttr ".rst" -type "double3" 2.5333225727081294 -2.2204460492503131e-16 2.3841856844342146e-07 ;
	setAttr ".rsrr" -type "double3" 3.9160579515519551e-13 1.3981705955671725e-14 4.9696166897867492e-14 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_FK_Arm_01_Jnt_scaleConstraint1" -p "L_FK_Arm_01_Jnt";
	rename -uid "D8219ABC-49A6-3208-6330-F1940D00B876";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_FK_Arm_01_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".o" -type "double3" 1.0000000000000004 1.0000000000000002 0.99999999999999978 ;
	setAttr -k on ".w0";
createNode joint -n "L_IK_Arm_01_Jnt" -p "L_Clav_Jnt";
	rename -uid "DD444618-4451-88C3-FCEA-D9BB72211E0A";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -90.000206802081237 -88.506000000000014 90.000201339490999 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.08;
createNode joint -n "L_IK_Arm_02_Jnt" -p "L_IK_Arm_01_Jnt";
	rename -uid "FE2DAD76-4C80-7E49-776D-579E87C5272C";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 7.0036667971622961 3.6478807852654283e-16 2.8769838221729632e-14 ;
	setAttr ".r" -type "double3" -3.1999403170134789e-41 1.4483663580287109e-26 2.1554108588727731e-13 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 3.504750294311699 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.08;
createNode joint -n "L_IK_Arm_03_Jnt" -p "L_IK_Arm_02_Jnt";
	rename -uid "5B1C13DE-4BA7-E948-49AD-44AF44D27044";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 7.9860011112408822 1.695824260364198e-14 4.4621461791651417e-29 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".ssc" no;
	setAttr ".radi" 0.08;
createNode orientConstraint -n "L_IK_Arm_03_Jnt_orientConstraint1" -p "L_IK_Arm_03_Jnt";
	rename -uid "D161DE0B-491E-0D48-C38A-099D3F152493";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Arm_IK_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" -89.999999705696553 89.999994054227642 0 ;
	setAttr ".o" -type "double3" 89.999999999999972 0 -89.999994054227628 ;
	setAttr ".rsrr" -type "double3" 2.4505686169561605e-23 -9.5416640443905503e-15 -2.9430346427118925e-07 ;
	setAttr -k on ".w0";
createNode ikEffector -n "effector1" -p "L_IK_Arm_02_Jnt";
	rename -uid "697A5ADD-40C5-83B6-6CB6-4E9153DC4748";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode pointConstraint -n "L_IK_Arm_01_Jnt_pointConstraint1" -p "L_IK_Arm_01_Jnt";
	rename -uid "6844D81C-41BB-E212-F552-AEA5ED6A3431";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_IK_Arm_01_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".o" -type "double3" 8.8817841970012523e-16 -6.6613383130453192e-16 -3.5527135729213825e-15 ;
	setAttr ".rst" -type "double3" 2.5333225727081303 -1.6529437998315542e-23 2.3841857910156261e-07 ;
	setAttr -k on ".w0";
createNode joint -n "L_RK_Arm_01_Jnt" -p "L_Clav_Jnt";
	rename -uid "95B13FB4-41B7-2110-1246-21BF5812E624";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -90.000206802081237 -88.506000000000014 90.000201339490999 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.12;
createNode joint -n "L_RK_Arm_02_Jnt" -p "L_RK_Arm_01_Jnt";
	rename -uid "87E6FFED-4F36-6E55-0A43-409B8FC24481";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 3.504750294311699 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.12;
createNode joint -n "L_RK_Arm_03_Jnt" -p "L_RK_Arm_02_Jnt";
	rename -uid "F0354622-43A6-E69C-08DF-71812FF6BB2E";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".ssc" no;
	setAttr ".radi" 0.12;
createNode joint -n "L_Hand_0" -p "L_RK_Arm_03_Jnt";
	rename -uid "D0CAF3C3-4324-4545-3AF3-75A5CBB2B463";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".jo" -type "double3" -2.9291016518289382e-11 -4.7798500995161864e-10 0.00013267735104638455 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "L_Fing_2_01_Jnt" -p "L_Hand_0";
	rename -uid "78EB3B07-419E-6E27-D4E5-30B94AC0E172";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90.000005294912739 -5.9455341768353112e-06 0.0011145650018270052 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "L_Fing_2_02_Jnt" -p "L_Fing_2_01_Jnt";
	rename -uid "A31F311F-429A-7E97-631D-DBA5329D3354";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "L_Fing_2_03_Jnt" -p "L_Fing_2_02_Jnt";
	rename -uid "7E377022-483D-ABD1-B7B9-508B13B6A88D";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode parentConstraint -n "L_Fing_2_03_Jnt_parentConstraint1" -p "L_Fing_2_03_Jnt";
	rename -uid "E3AD9236-4E75-F33E-013F-5B9A5E74ECA0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Finger_2_03_CtrlW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -1.7763568394002505e-15 4.4408920985006262e-15 
		-7.4853317988399226e-16 ;
	setAttr ".rst" -type "double3" 0.7073262502537645 -5.7109872386718052e-13 3.9796757223854728e-08 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Fing_2_03_Jnt_scaleConstraint1" -p "L_Fing_2_03_Jnt";
	rename -uid "8AD05209-4CAF-870B-04B4-F491DD6C2AFE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Finger_2_03_CtrlW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".o" -type "double3" 1 1.0000000000000002 0.99999999999999978 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Fing_2_02_Jnt_parentConstraint1" -p "L_Fing_2_02_Jnt";
	rename -uid "B765084D-412F-49ED-DE74-79BD4DA72AC8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Finger_2_02_CtrlW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -5.3290705182007514e-15 0 -8.6562701451242674e-16 ;
	setAttr ".rst" -type "double3" 0.80443842450526049 6.5725203057809267e-13 3.331536435613458e-15 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Fing_2_02_Jnt_scaleConstraint1" -p "L_Fing_2_02_Jnt";
	rename -uid "E2215C46-442B-FC96-7E2E-39A3BD45695F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Finger_2_02_CtrlW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".o" -type "double3" 1 1.0000000000000002 0.99999999999999978 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Fing_2_01_Jnt_parentConstraint1" -p "L_Fing_2_01_Jnt";
	rename -uid "D8911B94-4114-0D63-0A9E-51A40D3431B8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Finger_2_01_CtrlW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 1.7763568394002505e-15 2.6645352591003757e-15 
		-4.3194614551822497e-16 ;
	setAttr ".tg[0].tor" -type "double3" 2.8356119495927214e-07 -7.5023013796258166e-15 
		-8.4491928192234265e-14 ;
	setAttr ".lr" -type "double3" -2.8356120129229391e-07 -9.194373155931904e-15 3.9251527406207521e-14 ;
	setAttr ".rst" -type "double3" 2.1584238228565411 -0.39641731755103793 -0.11943648515848793 ;
	setAttr ".rsrr" -type "double3" -2.835612012927331e-07 7.5023742797889936e-15 8.4491928173669364e-14 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Fing_2_01_Jnt_scaleConstraint1" -p "L_Fing_2_01_Jnt";
	rename -uid "3CCDE2A0-429F-7C02-51DE-BC997D24AACD";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Finger_2_01_CtrlW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".o" -type "double3" 1 1.0000000000000002 0.99999999999999978 ;
	setAttr -k on ".w0";
createNode joint -n "L_Fing_1_01_Jnt" -p "L_Hand_0";
	rename -uid "B3E00ED1-414A-9CD7-735F-A9A64E6C9EA5";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90.000005294912455 -5.9454737221402359e-06 0.0011213324206931444 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "L_Fing_1_02_Jnt" -p "L_Fing_1_01_Jnt";
	rename -uid "B7D3780C-42CC-9838-B0A8-138CE7C5B484";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "L_Fing_1_03_Jnt" -p "L_Fing_1_02_Jnt";
	rename -uid "4B819A62-4D15-D386-6A1B-1184F6392F75";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode parentConstraint -n "L_Fing_1_03_Jnt_parentConstraint1" -p "L_Fing_1_03_Jnt";
	rename -uid "471918AF-4123-B4F3-7728-D9896EF6A0BE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Finger_1_03_CtrlW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 3.5527136788005009e-15 6.2172489379008766e-15 
		3.3306690738754696e-16 ;
	setAttr ".rst" -type "double3" 0.70732528722123611 1.3447021274259896e-12 1.8866802498074264e-07 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Fing_1_03_Jnt_scaleConstraint1" -p "L_Fing_1_03_Jnt";
	rename -uid "D8362CD5-430C-7A7C-F6BD-4AA560C3780A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Finger_1_03_CtrlW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".o" -type "double3" 0.99999999999999978 1 0.99999999999999978 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Fing_1_02_Jnt_parentConstraint1" -p "L_Fing_1_02_Jnt";
	rename -uid "EB24B9AD-4E84-52D9-46C3-0AA2469304F5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Finger_1_02_CtrlW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 1.7763568394002505e-15 1.7763568394002505e-15 
		2.2204460492503131e-16 ;
	setAttr ".rst" -type "double3" 0.80443939013522758 1.5081269566508126e-12 8.3266726846886741e-15 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Fing_1_02_Jnt_scaleConstraint1" -p "L_Fing_1_02_Jnt";
	rename -uid "72AF6641-41EF-D972-318F-84897422B69C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Finger_1_02_CtrlW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".o" -type "double3" 0.99999999999999978 1 0.99999999999999978 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Fing_1_01_Jnt_parentConstraint1" -p "L_Fing_1_01_Jnt";
	rename -uid "904DD1F0-4538-3F03-1B37-C0A28F79A5CB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Finger_1_01_CtrlW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -1.7763568394002505e-15 0 0 ;
	setAttr ".tg[0].tor" -type "double3" 2.8355627145955741e-07 -3.4353204342507895e-15 
		3.8385428204270709e-15 ;
	setAttr ".lr" -type "double3" -2.8355627143224981e-07 1.1387993061554017e-14 -2.3634506963980376e-14 ;
	setAttr ".rst" -type "double3" 2.1584074677291269 0.41545400597408655 -0.11943593329334945 ;
	setAttr ".rsrr" -type "double3" -2.8355627143244394e-07 3.4355387157945467e-15 -3.8385435872316232e-15 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Fing_1_01_Jnt_scaleConstraint1" -p "L_Fing_1_01_Jnt";
	rename -uid "98C6F4C9-4CF1-F4DA-E177-139555787DF8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Finger_1_01_CtrlW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".o" -type "double3" 0.99999999999999978 1 0.99999999999999978 ;
	setAttr -k on ".w0";
createNode joint -n "L_Thumb_01_Jnt" -p "L_Hand_0";
	rename -uid "3DEDA489-4AE9-BA6B-86C1-7CA42C6DCA09";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -179.99999605128431 -32.589330532705432 28.918720919762571 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "L_Thumb_02_Jnt" -p "L_Thumb_01_Jnt";
	rename -uid "5512D44C-4493-5E94-ABCA-9EBE660B2759";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 4.5366754680114108 -0.60360330455906097 -0.16931820389673791 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "L_Thumb_03_Jnt" -p "L_Thumb_02_Jnt";
	rename -uid "314B33D1-4571-AE9B-BC46-6EAE591B58E4";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".jo" -type "double3" 1.590277340731758e-15 0 -9.5416640443905503e-15 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode parentConstraint -n "L_Thumb_03_Jnt_parentConstraint1" -p "L_Thumb_03_Jnt";
	rename -uid "BC77B2BD-4AB2-AA78-46F8-73BA2EB3AE28";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Thumb_03_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -5.3290705182007514e-15 0 -3.1086244689504383e-15 ;
	setAttr ".rst" -type "double3" 0.68048706101218848 -8.8817841970012523e-16 0 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Thumb_03_Jnt_scaleConstraint1" -p "L_Thumb_03_Jnt";
	rename -uid "07AE9DC1-4FFE-46F3-CEA9-BC92C38460DA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Thumb_03_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" 1 1 0.99999999999999978 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Thumb_02_Jnt_parentConstraint1" -p "L_Thumb_02_Jnt";
	rename -uid "E6ECEFD6-4A8B-D9C4-B783-4DB097189CDA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Thumb_02_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -3.5527136788005009e-15 0 -3.5527136788005009e-15 ;
	setAttr ".tg[0].tor" -type "double3" 4.4527765540489241e-14 4.1247818525229986e-14 
		-8.9080379164427421e-15 ;
	setAttr ".lr" -type "double3" -1.0430641047867033 -1.8160600882699647e-14 -2.3947647351089007e-14 ;
	setAttr ".rst" -type "double3" 0.51208691675721774 2.8613868607862969e-08 8.874833756777889e-09 ;
	setAttr ".rsrr" -type "double3" -1.0430641047866267 -4.1009699498549841e-14 9.6264875157181313e-15 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Thumb_02_Jnt_scaleConstraint1" -p "L_Thumb_02_Jnt";
	rename -uid "672DD473-4909-512E-6EBF-E98F4FF7421C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Thumb_02_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Thumb_01_Jnt_parentConstraint1" -p "L_Thumb_01_Jnt";
	rename -uid "957CC3B9-46F1-6F51-509A-03BF5BEEF88C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Thumb_01_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 1.7763568394002505e-15 8.8817841970012523e-16 
		0 ;
	setAttr ".tg[0].tor" -type "double3" -3.1805546814635168e-14 1.2722218725854067e-14 
		3.0215269473903408e-14 ;
	setAttr ".lr" -type "double3" -12.497839458351098 -7.2701461927940009e-15 -6.6394798428793829e-14 ;
	setAttr ".rst" -type "double3" 1.2729699375690817 0.79519514682288772 0.16328636021821641 ;
	setAttr ".rsrr" -type "double3" -12.497839458351097 -2.2085719347995659e-14 -2.637772898582763e-14 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Thumb_01_Jnt_scaleConstraint1" -p "L_Thumb_01_Jnt";
	rename -uid "899E0532-4BAD-F87C-1E0B-5188C4BC002E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Thumb_01_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" 1 1.0000000000000002 1 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Hand_0_parentConstraint1" -p "L_Hand_0";
	rename -uid "08CDEAAB-482D-0044-0217-85ABD90BEF91";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Hand_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -1.7763568394002505e-15 0 0 ;
	setAttr ".tg[0].tor" -type "double3" -6.36111012123036e-15 7.5830332790935439e-22 
		-5.5659706925611543e-15 ;
	setAttr ".lr" -type "double3" 0 0 1.5903986692642239e-15 ;
	setAttr ".rst" -type "double3" 6.2568046567235074 15.155729392538872 -0.92358458564690271 ;
	setAttr ".rsrr" -type "double3" 6.3611093629270335e-15 -6.3611093629270335e-15 6.3611093629270335e-15 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Hand_0_scaleConstraint1" -p "L_Hand_0";
	rename -uid "1F3BEE81-41B1-6DBC-4D25-2BA8EBF79778";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Hand_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" 1 1 0.99999999999999978 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_RK_Arm_03_Jnt_parentConstraint1" -p "L_RK_Arm_03_Jnt";
	rename -uid "FF6BF692-450B-5C84-9D53-2BAF18C8D033";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_FK_Arm_03_JntW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "L_IK_Arm_03_JntW1" -dv 1 -min 0 -at "double";
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
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" -8.8817841970012523e-15 -3.2751579226442118e-15 
		-3.5527136788005009e-15 ;
	setAttr ".tg[1].tot" -type "double3" -1.9539925233402755e-14 -3.3306690738754696e-16 
		0 ;
	setAttr ".rst" -type "double3" 7.9860011112408866 1.6542323066914832e-14 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "L_RK_Arm_02_Jnt_parentConstraint1" -p "L_RK_Arm_02_Jnt";
	rename -uid "F4646B9B-4CDB-5D86-0F0C-D4B7B0FEC237";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_FK_Arm_02_JntW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "L_IK_Arm_02_JntW1" -dv 1 -min 0 -at "double";
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
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" -7.1054273576010019e-15 -1.3877787807814457e-15 
		-8.8817841970012523e-16 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -3.975693351829396e-16 ;
	setAttr ".tg[1].tot" -type "double3" -2.1316282072803006e-14 6.106226635438361e-16 
		0 ;
	setAttr ".tg[1].tor" -type "double3" 0 0 -3.975693351829396e-16 ;
	setAttr ".rst" -type "double3" 7.0036667971623032 0 2.8421709430404007e-14 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "L_Pist_Shold_Grp" -p "L_RK_Arm_01_Jnt";
	rename -uid "65CE2454-48A5-ACE6-2565-2190A9596149";
	setAttr ".t" -type "double3" 30.1493878750432 1.0163550953496938 6.2568053363730929 ;
	setAttr ".r" -type "double3" -88.506000000008243 89.999994054227628 0 ;
createNode joint -n "L_Pist_Shold_1" -p "L_Pist_Shold_Grp";
	rename -uid "27AFD882-484E-B966-B9F5-5A97F81D2444";
	setAttr ".t" -type "double3" 6.0370416641235352 30.118148803710938 -0.21828770637512251 ;
	setAttr ".ro" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -3.6258323368684243e-13 5.3554405553816538e-06 -3.7109233097195169e-06 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.05;
createNode aimConstraint -n "joint32_aimConstraint1" -p "L_Pist_Shold_1";
	rename -uid "80A7E902-44F9-6FF2-F095-E897D99FF538";
	addAttr -dcb 0 -ci true -sn "w0" -ln "joint31W0" -dv 1 -at "double";
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
	setAttr ".a" -type "double3" 0 -1 0 ;
	setAttr ".wut" 0;
	setAttr ".rsrr" -type "double3" -5.3171781787693977 -5.3033587686479429 -89.850680217734237 ;
	setAttr -k on ".w0";
createNode joint -n "L_Pist_Shold_2" -p "L_Pist_Shold_Grp";
	rename -uid "CFCCD4B3-4DF2-C5D2-DA6A-7EAC19626A87";
	setAttr ".t" -type "double3" 6.0384635925292969 31.570621490478516 -1.0163012742996216 ;
	setAttr ".ro" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.05;
createNode aimConstraint -n "joint34_aimConstraint1" -p "L_Pist_Shold_2";
	rename -uid "77B622C5-4DE8-829E-0F03-20B3CEAD9C31";
	addAttr -dcb 0 -ci true -sn "w0" -ln "joint33W0" -dv 1 -at "double";
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
	setAttr ".a" -type "double3" 0 -1 0 ;
	setAttr ".wut" 0;
	setAttr ".rsrr" -type "double3" -2.9911413847960349 -3.1230196736819207 -92.472450720948999 ;
	setAttr -k on ".w0";
createNode joint -n "L_Pist_Shold_3" -p "L_Pist_Shold_Grp";
	rename -uid "F2608F93-4956-DA23-CB47-CEBC13302D94";
	setAttr ".t" -type "double3" 6.0369167327880859 31.570621490478516 -2.5878441333770752 ;
	setAttr ".ro" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.05;
createNode aimConstraint -n "joint36_aimConstraint1" -p "L_Pist_Shold_3";
	rename -uid "6447B8C4-48CD-61C5-2E53-F597C076FD72";
	addAttr -dcb 0 -ci true -sn "w0" -ln "joint35W0" -dv 1 -at "double";
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
	setAttr ".a" -type "double3" 0 -1 0 ;
	setAttr ".wut" 0;
	setAttr ".rsrr" -type "double3" 2.993300434819981 3.1253696483667595 -92.474206698599048 ;
	setAttr -k on ".w0";
createNode joint -n "L_Pist_Shold_4" -p "L_Pist_Shold_Grp";
	rename -uid "7900561F-421D-EE68-7266-2EBB3EF144BE";
	setAttr ".t" -type "double3" 6.0370426177978516 30.118148803710938 -3.3858575820922852 ;
	setAttr ".ro" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.05;
createNode aimConstraint -n "joint38_aimConstraint1" -p "L_Pist_Shold_4";
	rename -uid "E1A80423-4AAD-9AC6-B41C-989FC023182E";
	addAttr -dcb 0 -ci true -sn "w0" -ln "joint37W0" -dv 1 -at "double";
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
	setAttr ".a" -type "double3" 0 -1 0 ;
	setAttr ".wut" 0;
	setAttr ".rsrr" -type "double3" 5.2090744992744575 5.1955596322631648 -89.850949223002402 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_RK_Arm_01_Jnt_parentConstraint1" -p "L_RK_Arm_01_Jnt";
	rename -uid "26E07DD1-4847-0309-05AE-7EB2A6192837";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_FK_Arm_01_JntW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "L_IK_Arm_01_JntW1" -dv 1 -min 0 -at "double";
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
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" -1.0658141036401503e-14 -6.6613381477509392e-16 
		-2.6645352591003757e-15 ;
	setAttr ".tg[0].tor" -type "double3" 3.5880632737230086e-14 7.5830332790935439e-22 
		-9.1440947092076103e-15 ;
	setAttr ".tg[1].tot" -type "double3" -3.1974423109204508e-14 -8.8817841970012523e-16 
		-8.8817841970012523e-16 ;
	setAttr ".tg[1].tor" -type "double3" 1.4455157188272067e-21 -1.5166066558187088e-21 
		1.987846675914698e-16 ;
	setAttr ".rst" -type "double3" 2.5333225727081303 -1.1102230246251565e-15 2.3841855067985307e-07 ;
	setAttr ".rsrr" -type "double3" -1.8089404750823751e-14 2.345037875493128e-16 4.4726550208080702e-15 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "L_Clav_Jnt_parentConstraint1" -p "L_Clav_Jnt";
	rename -uid "E75C1B49-40CC-3C03-97D5-BBAAD8B19C8F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Clav_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -4.4408920985006262e-16 -8.8817841970012523e-16 
		-3.5527136788005009e-15 ;
	setAttr ".tg[0].tor" -type "double3" -1.0909669892623245e-14 9.1590879829608965e-10 
		-1.4197641768050502e-11 ;
	setAttr ".lr" -type "double3" 1.1181637438540531e-14 -9.1591292556366051e-10 1.4197648224884764e-11 ;
	setAttr ".rst" -type "double3" 4.0170544134279247 -0.31348867816045933 3.7234814167022576 ;
	setAttr ".rsrr" -type "double3" 1.0933156604050795e-14 -9.1591292556366051e-10 1.4197697921051665e-11 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Clav_Jnt_scaleConstraint1" -p "L_Clav_Jnt";
	rename -uid "CC0E992E-4A8B-0A87-7624-4DBA35B8883A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Clav_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" 1.0000000000000004 1.0000000000000004 1 ;
	setAttr -k on ".w0";
createNode joint -n "L_Pist_Rot_Jnt" -p "Spine_03_Jnt";
	rename -uid "8005A73C-4157-D82A-3272-F7896DD14FA7";
	setAttr ".t" -type "double3" 4.0170544134279176 -0.31348867816068693 3.7234814167022483 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -89.111920522453403 -89.99999999999649 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.06;
createNode transform -n "L_Base_Pist_grp" -p "L_Pist_Rot_Jnt";
	rename -uid "A47D89C1-4F2F-7E88-3E28-4AA6EFC74C0B";
	setAttr ".t" -type "double3" -3.7234814167040216 -30.076603569417145 2.3273365762415885 ;
	setAttr ".r" -type "double3" -1.0000000000000042 0 0 ;
	setAttr ".rp" -type "double3" 3.921658992767334 30.887287139892578 -1.8002356290817261 ;
	setAttr ".rpt" -type "double3" 0 -0.036122727318958971 -0.53878330430454158 ;
	setAttr ".sp" -type "double3" 3.921658992767334 30.887287139892578 -1.8002356290817261 ;
createNode joint -n "L_Pist_Base_1" -p "L_Base_Pist_grp";
	rename -uid "F0B3EA01-4B56-2C65-51D9-3AB1FD7F6240";
	setAttr ".t" -type "double3" 3.9233989715576172 30.112640380859375 -0.021571159362792969 ;
	setAttr ".ro" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.05;
createNode aimConstraint -n "joint31_aimConstraint1" -p "L_Pist_Base_1";
	rename -uid "4EE0972E-48C6-5F6A-CB8D-9CBAA6AEFD88";
	addAttr -dcb 0 -ci true -sn "w0" -ln "joint32W0" -dv 1 -at "double";
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
	setAttr ".a" -type "double3" 0 -1 0 ;
	setAttr ".wut" 0;
	setAttr ".rsrr" -type "double3" 5.3171781787693986 -5.3310334955903294 90.149319782265749 ;
	setAttr -k on ".w0";
createNode joint -n "L_Pist_Base_2" -p "L_Base_Pist_grp";
	rename -uid "2A9E9045-4714-A026-30B6-CFBC398CCD1C";
	setAttr ".t" -type "double3" 3.9237327575683594 31.661933898925781 -0.90569782257080078 ;
	setAttr ".ro" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.05;
createNode aimConstraint -n "joint33_aimConstraint1" -p "L_Pist_Base_2";
	rename -uid "1EB7AE2A-4752-BB2D-2700-719C85AC61FF";
	addAttr -dcb 0 -ci true -sn "w0" -ln "joint34W0" -dv 1 -at "double";
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
	setAttr ".a" -type "double3" 0 -1 0 ;
	setAttr ".wut" 0;
	setAttr ".rsrr" -type "double3" 2.9911413847960358 -2.8648271786999553 87.52754927905103 ;
	setAttr -k on ".w0";
createNode joint -n "L_Pist_Base_3" -p "L_Base_Pist_grp";
	rename -uid "26FC133F-45CF-3E6C-5C51-0E93AF752D83";
	setAttr ".t" -type "double3" 3.9237327575683594 31.661931991577148 -2.6984467506408691 ;
	setAttr ".ro" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.05;
createNode aimConstraint -n "joint35_aimConstraint1" -p "L_Pist_Base_3";
	rename -uid "99310935-4E1C-32C7-8D27-BAAED10987C7";
	addAttr -dcb 0 -ci true -sn "w0" -ln "joint36W0" -dv 1 -at "double";
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
	setAttr ".a" -type "double3" 0 -1 0 ;
	setAttr ".wut" 0;
	setAttr ".rsrr" -type "double3" -2.9933004348199814 2.86680722370077 87.525793301400981 ;
	setAttr -k on ".w0";
createNode joint -n "L_Pist_Base_4" -p "L_Base_Pist_grp";
	rename -uid "AB0B87E8-4D38-9C48-538A-91974245214A";
	setAttr ".t" -type "double3" 3.9195852279663086 30.112640380859375 -3.5789000988006592 ;
	setAttr ".ro" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.05;
createNode aimConstraint -n "joint37_aimConstraint1" -p "L_Pist_Base_4";
	rename -uid "631E4F56-4C21-0297-2A58-A2AF7322D050";
	addAttr -dcb 0 -ci true -sn "w0" -ln "joint38W0" -dv 1 -at "double";
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
	setAttr ".a" -type "double3" 0 -1 0 ;
	setAttr ".wut" 0;
	setAttr ".rsrr" -type "double3" -5.2090744992744575 5.2226244244537252 90.149050776997612 ;
	setAttr -k on ".w0";
createNode joint -n "R_Clav_Jnt" -p "Spine_03_Jnt";
	rename -uid "33ED2B78-4EFC-88C8-4BE5-43BACB58199F";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -179.11192052245508 -89.999992374170091 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "R_FK_Arm_01_Jnt" -p "R_Clav_Jnt";
	rename -uid "FD7AA12A-4DB1-CC76-2C45-2FBACE890AF0";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -89.99962194783788 -88.505867322625662 89.99961644771561 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "R_FK_Arm_02_Jnt" -p "R_FK_Arm_01_Jnt";
	rename -uid "8A64EC08-44A7-422F-0A78-BF8BF13DF7D3";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 3.504750294311699 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "R_FK_Arm_03_Jnt" -p "R_FK_Arm_02_Jnt";
	rename -uid "49B51C7D-4CF1-8C49-7E01-3BA548CB2165";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode parentConstraint -n "R_FK_Arm_03_Jnt_parentConstraint1" -p "R_FK_Arm_03_Jnt";
	rename -uid "5E88C33F-4DEE-FEA5-AE61-348A90BE0D69";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_FK_Arm_03_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".tg[0].tot" -type "double3" 1.7763568394002505e-14 -4.496403249731884e-15 
		1.0464680677557681e-08 ;
	setAttr ".rst" -type "double3" -7.986001000000007 1.1102230246251565e-16 -8.8817841970012523e-16 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_FK_Arm_03_Jnt_scaleConstraint1" -p "R_FK_Arm_03_Jnt";
	rename -uid "5AB89C08-46A9-4C82-0709-4CB12E40CA81";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_FK_Arm_03_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".o" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000002 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_FK_Arm_02_Jnt_parentConstraint1" -p "R_FK_Arm_02_Jnt";
	rename -uid "7B599AA6-4484-5356-E55A-E09738404449";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_FK_Arm_02_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".tg[0].tot" -type "double3" 2.1316282072803006e-14 -2.1649348980190553e-15 
		1.0531191030338505e-08 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 6.7586786981099735e-15 ;
	setAttr ".lr" -type "double3" 0 0 -3.975693351829396e-16 ;
	setAttr ".rst" -type "double3" -7.0036669999999965 0 1.7763568394002505e-15 ;
	setAttr ".rsrr" -type "double3" 0 0 -7.1562480332929135e-15 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_FK_Arm_02_Jnt_scaleConstraint1" -p "R_FK_Arm_02_Jnt";
	rename -uid "F6D71C78-4375-C140-95A7-40B5E76B7110";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_FK_Arm_02_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".o" -type "double3" 1.0000000000000004 1.0000000000000002 1 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_FK_Arm_01_Jnt_parentConstraint1" -p "R_FK_Arm_01_Jnt";
	rename -uid "3105D405-4E52-B71B-15AF-C1A9465C24C6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_FK_Arm_01_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".tg[0].tot" -type "double3" -3.5527136788005009e-15 3.2354493018083019e-07 
		1.0589589649612208e-08 ;
	setAttr ".tg[0].tor" -type "double3" 1.3040273966509423e-13 1.2722220242460726e-14 
		1.3517357396219949e-14 ;
	setAttr ".lr" -type "double3" -1.3040274194000419e-13 1.7020937162519449e-15 -1.3417965062424214e-14 ;
	setAttr ".rst" -type "double3" -2.5333229999999993 5.225807342412736e-09 3.3713385150235808e-07 ;
	setAttr ".rsrr" -type "double3" -1.3040274194000419e-13 1.7020937162519449e-15 -1.3417965062424214e-14 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_FK_Arm_01_Jnt_scaleConstraint1" -p "R_FK_Arm_01_Jnt";
	rename -uid "983BDA47-4E9B-974C-B6BC-EA87A9C0ED9E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_FK_Arm_01_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".o" -type "double3" 1.0000000000000004 1.0000000000000002 1 ;
	setAttr -k on ".w0";
createNode joint -n "R_IK_Arm_01_Jnt" -p "R_Clav_Jnt";
	rename -uid "021313AF-478C-47C3-A509-B8B86AED75D4";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".r" -type "double3" -8.5332029534126394e-07 -2.7819284542200467e-08 2.0715976205815387e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -89.999621947836175 -88.505867322625662 89.999616447713905 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.08;
createNode joint -n "R_IK_Arm_02_Jnt" -p "R_IK_Arm_01_Jnt";
	rename -uid "757726E4-4458-8C14-D162-8ABB95A13DA2";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -7.003667 0 0 ;
	setAttr ".r" -type "double3" 0 0 1.3716250920099476e-13 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 3.504750294311699 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.08;
createNode joint -n "R_IK_Arm_03_Jnt" -p "R_IK_Arm_02_Jnt";
	rename -uid "13CA1881-4F82-2DE2-8B8A-558DE1277E1A";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -7.986001 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".ssc" no;
	setAttr ".radi" 0.08;
createNode orientConstraint -n "R_IK_Arm_03_Jnt_orientConstraint1" -p "R_IK_Arm_03_Jnt";
	rename -uid "D1F3AF25-441B-2345-EC7E-07907018919E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Arm_IK_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" 90.000132971654452 89.99999405441919 0 ;
	setAttr ".o" -type "double3" -90.000000000013785 0.00013297165444306976 89.999994054419204 ;
	setAttr ".rsrr" -type "double3" 1.2722218725854067e-14 -2.5444437451708134e-14 -3.1805546814635195e-15 ;
	setAttr -k on ".w0";
createNode ikEffector -n "effector2" -p "R_IK_Arm_02_Jnt";
	rename -uid "B358B65A-4110-9164-C207-EBB4385FEE4A";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode pointConstraint -n "R_IK_Arm_01_Jnt_pointConstraint1" -p "R_IK_Arm_01_Jnt";
	rename -uid "415735EC-4F84-A337-2829-099536D557A3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_IK_Arm_01_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".o" -type "double3" -1.0589649157566328e-08 3.1016767954028523e-07 -5.1708252257753884e-07 ;
	setAttr ".rst" -type "double3" -2.533323 5.2258077865019459e-09 3.3713385150235808e-07 ;
	setAttr -k on ".w0";
createNode joint -n "R_RK_Arm_01_Jnt" -p "R_Clav_Jnt";
	rename -uid "131D8AEB-4E20-2793-491C-45ACFACF6FF5";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -89.999621947836175 -88.505867322625662 89.999616447713905 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.12;
createNode joint -n "R_RK_Arm_02_Jnt" -p "R_RK_Arm_01_Jnt";
	rename -uid "7ADB6064-486F-37BB-EBAC-3DABDB971895";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 3.504750294311699 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.12;
createNode joint -n "R_RK_Arm_03_Jnt" -p "R_RK_Arm_02_Jnt";
	rename -uid "9682FED8-420E-0D5E-6E9A-559F15B1C959";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".ssc" no;
	setAttr ".radi" 0.12;
createNode joint -n "R_Hand_0" -p "R_RK_Arm_03_Jnt";
	rename -uid "EE51EFBF-4F53-6215-4A9E-96BAFA7F12E6";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".jo" -type "double3" -7.1759471613150057e-13 -8.6067886178424954e-13 1.0336802714756426e-14 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "R_Fing_2_01_Jnt" -p "R_Hand_0";
	rename -uid "1B33E59F-446D-632A-EA50-A8A5C92DBCCE";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90.000005294912725 -5.945487324915415e-06 0.0011145650021194596 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "R_Fing_2_02_Jnt" -p "R_Fing_2_01_Jnt";
	rename -uid "813EB824-44AA-6D0D-104B-94BAA35AFB93";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.4787793334710979e-06 1.2093920108617193e-18 6.4645041353581972e-21 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "R_Fing_2_03_Jnt" -p "R_Fing_2_02_Jnt";
	rename -uid "B6FCDF57-419B-DD46-26CC-338215A2C034";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".jo" -type "double3" 2.2588727439225502e-06 1.8473768117088593e-18 9.9060539097040001e-21 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode parentConstraint -n "R_Fing_2_03_Jnt_parentConstraint1" -p "R_Fing_2_03_Jnt";
	rename -uid "4320D0CF-4133-827F-DACC-A9AB7AEA7398";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Finger_2_03_CtrlW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -5.3290705182007514e-15 0 6.0715321659188248e-18 ;
	setAttr ".tg[0].tor" -type "double3" 4.0212091190655496e-06 0 0 ;
	setAttr ".lr" -type "double3" 5.201005594017037e-07 0 0 ;
	setAttr ".rst" -type "double3" -0.70732600000000367 4.0009931367990248e-08 -1.0842021724855044e-16 ;
	setAttr ".rsrr" -type "double3" -3.791516639546771e-22 0 0 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Fing_2_03_Jnt_scaleConstraint1" -p "R_Fing_2_03_Jnt";
	rename -uid "1434ED9F-49B5-0A7D-8BA8-21925B051D46";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Finger_2_03_CtrlW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".o" -type "double3" 0.99999999999999911 0.99999999999999911 0.99999999999999933 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Fing_2_02_Jnt_parentConstraint1" -p "R_Fing_2_02_Jnt";
	rename -uid "531B02C8-4AB6-0688-619C-448814D2F1C1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Finger_2_02_CtrlW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -3.5527136788005009e-15 -2.6645352591003757e-15 
		7.8062556418956319e-17 ;
	setAttr ".tg[0].tor" -type "double3" 1.4787791941213365e-06 -2.4633431121258592e-06 
		3.2411860110422413e-06 ;
	setAttr ".lr" -type "double3" 1.5545231265913921e-20 2.7034728876142782e-13 5.5288373477714294e-12 ;
	setAttr ".rst" -type "double3" -0.80446092017490223 4.5506328483213565e-08 -3.3673682116016138e-06 ;
	setAttr ".rsrr" -type "double3" 3.791516639546772e-22 3.5882287150547794e-23 1.1695363245376186e-21 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Fing_2_02_Jnt_scaleConstraint1" -p "R_Fing_2_02_Jnt";
	rename -uid "E07C93D5-4087-62B4-B46D-47A5129E3743";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Finger_2_02_CtrlW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".o" -type "double3" 0.99999999999999933 0.99999999999999933 0.99999999999999933 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Fing_2_01_Jnt_parentConstraint1" -p "R_Fing_2_01_Jnt";
	rename -uid "553D48A3-41D6-2D36-6EFC-C7B78EE68006";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Finger_2_01_CtrlW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -3.5527136788005009e-15 -8.8817841970012523e-16 
		-1.294410693145065e-07 ;
	setAttr ".tg[0].tor" -type "double3" -9.9725456189862457e-12 -2.4633431125327806e-06 
		3.2411859855983393e-06 ;
	setAttr ".lr" -type "double3" 2.3654355118339334e-07 2.5696692896199037e-13 5.4932237550933243e-12 ;
	setAttr ".rst" -type "double3" -2.1584240000000037 0.396417 0.1194399347616395 ;
	setAttr ".rsrr" -type "double3" 9.9614972632856939e-12 -5.8237695583439284e-19 9.7062825972346783e-20 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Fing_2_01_Jnt_scaleConstraint1" -p "R_Fing_2_01_Jnt";
	rename -uid "06166CCC-44D6-65C2-1A68-1E92BA01B684";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Finger_2_01_CtrlW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".o" -type "double3" 0.99999999999999933 0.99999999999999933 0.99999999999999933 ;
	setAttr -k on ".w0";
createNode joint -n "R_Fing_1_01_Jnt" -p "R_Hand_0";
	rename -uid "94DD6F72-49C7-05B4-E998-ED96D49D7D5E";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90.000005294912469 -5.9453663408962838e-06 0.0011213324213049376 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "R_Fing_1_02_Jnt" -p "R_Fing_1_01_Jnt";
	rename -uid "34591B75-4937-B62C-E795-59A708065B27";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.2074182697257329e-06 2.2630245701935804e-18 1.201428703183403e-20 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "R_Fing_1_03_Jnt" -p "R_Fing_1_02_Jnt";
	rename -uid "9B6D0F77-42C3-A3EA-0D77-ACADFD82D0A5";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".jo" -type "double3" 1.2074182697257329e-06 2.2630245701935804e-18 1.201428703183403e-20 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode parentConstraint -n "R_Fing_1_03_Jnt_parentConstraint1" -p "R_Fing_1_03_Jnt";
	rename -uid "2BF46D87-48DA-D757-326B-419C09ADF6A6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Finger_1_03_CtrlW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -5.3290705182007514e-15 -8.8817841970012523e-16 
		-2.6428529154021163e-07 ;
	setAttr ".tg[0].tor" -type "double3" 2.4346972692345444e-13 4.3040760714847901e-06 
		3.2410644143434719e-06 ;
	setAttr ".lr" -type "double3" -2.4346971181057607e-13 2.6716659482101776e-13 5.5415596727353676e-12 ;
	setAttr ".rst" -type "double3" -0.70732500000000265 4.0013849122999545e-08 0 ;
	setAttr ".rsrr" -type "double3" -2.4346972692345444e-13 6.1475931758315028e-23 3.3403229296634552e-22 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Fing_1_03_Jnt_scaleConstraint1" -p "R_Fing_1_03_Jnt";
	rename -uid "98025F8C-4973-711F-5CED-60A336E43F64";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Finger_1_03_CtrlW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".o" -type "double3" 0.99999999999999933 0.99999999999999933 0.99999999999999933 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Fing_1_02_Jnt_parentConstraint1" -p "R_Fing_1_02_Jnt";
	rename -uid "E5B802A4-4CAD-9011-43A3-1FB5FE0A1F83";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Finger_1_02_CtrlW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 1.7763568394002505e-15 -1.7763568394002505e-15 
		-4.5295332340433703e-07 ;
	setAttr ".tg[0].tor" -type "double3" 2.4346972605771517e-13 4.3040760730750674e-06 
		3.2410644016212535e-06 ;
	setAttr ".lr" -type "double3" -2.4346971080990058e-13 2.6955200931550873e-13 5.5288373539134741e-12 ;
	setAttr ".rst" -type "double3" -0.80443899999999857 4.5498994794002101e-08 0 ;
	setAttr ".rsrr" -type "double3" -2.4346972605771512e-13 6.1475880241502921e-23 3.3403232210482101e-22 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Fing_1_02_Jnt_scaleConstraint1" -p "R_Fing_1_02_Jnt";
	rename -uid "7C93213E-4E33-AB48-BCC0-5FA1CE496025";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Finger_1_02_CtrlW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".o" -type "double3" 0.99999999999999933 0.99999999999999933 0.99999999999999933 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Fing_1_01_Jnt_parentConstraint1" -p "R_Fing_1_01_Jnt";
	rename -uid "9CF5F79E-45B9-73C6-172A-C881DE46453A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Finger_1_01_CtrlW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0 -1.7763568394002505e-15 -4.52953340279727e-07 ;
	setAttr ".tg[0].tor" -type "double3" -9.5121748708273349e-12 4.3040760729345785e-06 
		3.241064376176197e-06 ;
	setAttr ".lr" -type "double3" 2.365430931831939e-07 2.5696789953260182e-13 5.5211616394814373e-12 ;
	setAttr ".rst" -type "double3" -2.1584070000000022 -0.41545400000000021 0.11943600000000032 ;
	setAttr ".rsrr" -type "double3" 9.5098584984852889e-12 -9.7062825972405427e-20 9.7062825972389297e-20 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Fing_1_01_Jnt_scaleConstraint1" -p "R_Fing_1_01_Jnt";
	rename -uid "D52CDD82-4CEF-FD29-6317-90B724F2F18D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Finger_1_01_CtrlW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".o" -type "double3" 0.99999999999999933 0.99999999999999933 0.99999999999999933 ;
	setAttr -k on ".w0";
createNode joint -n "R_Thumb_01_Jnt" -p "R_Hand_0";
	rename -uid "0725C79D-45D3-049C-0D3A-A4BB4858CC47";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -179.99999605128428 -32.589330532705439 28.918720919762585 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "R_Thumb_02_Jnt" -p "R_Thumb_01_Jnt";
	rename -uid "B753414F-403E-5F09-0DF4-B3A895E7E234";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 4.5366754680120396 -0.60360330455903977 -0.16931820389672614 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "R_Thumb_03_Jnt" -p "R_Thumb_02_Jnt";
	rename -uid "BCB7F84C-49F4-ED86-85AE-DD926D4C0172";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".jo" -type "double3" 2.4148365394514654e-06 -4.0215109161997321e-22 1.0724028422473612e-21 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode parentConstraint -n "R_Thumb_03_Jnt_parentConstraint1" -p "R_Thumb_03_Jnt";
	rename -uid "EB675DDE-4F43-C2C1-BA08-D495D3046EFC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Thumb_03_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -3.5527136788005009e-15 8.8817841970012523e-16 
		4.4408920985006262e-16 ;
	setAttr ".tg[0].tor" -type "double3" 3.0196225444126296e-14 0 0 ;
	setAttr ".lr" -type "double3" -2.7015674175027754e-14 0 0 ;
	setAttr ".rst" -type "double3" -0.68048700000000117 0 0 ;
	setAttr ".rsrr" -type "double3" -3.0196225444126296e-14 0 0 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Thumb_03_Jnt_scaleConstraint1" -p "R_Thumb_03_Jnt";
	rename -uid "86A6C741-4042-F47F-AF2A-018D5DA5E212";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Thumb_03_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" 0.99999999999999956 0.99999999999999933 0.99999999999999956 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Thumb_02_Jnt_parentConstraint1" -p "R_Thumb_02_Jnt";
	rename -uid "393F6369-4647-51BF-4C8B-4CADFC4B93F0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Thumb_02_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0 1.7763568394002505e-15 4.4408920985006262e-16 ;
	setAttr ".tg[0].tor" -type "double3" 1.5505204072134644e-14 -1.9480897423964044e-14 
		1.9257264672923639e-16 ;
	setAttr ".lr" -type "double3" -1.0430639988509769 9.7836843880586163e-08 1.2628141160011824e-07 ;
	setAttr ".rst" -type "double3" -0.51208699999999752 8.8817841970012523e-16 1.7763568394002505e-15 ;
	setAttr ".rsrr" -type "double3" -1.043064000000016 1.9641013643905423e-14 -4.9871862156440002e-16 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Thumb_02_Jnt_scaleConstraint1" -p "R_Thumb_02_Jnt";
	rename -uid "BD13CDDA-47CF-A6E6-9857-FEB05AA6F537";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Thumb_02_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" 0.99999999999999933 0.99999999999999933 0.99999999999999933 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Thumb_01_Jnt_parentConstraint1" -p "R_Thumb_01_Jnt";
	rename -uid "78CA6149-4053-8680-05BB-B9B2B5A22202";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Thumb_01_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -1.7763568394002505e-15 1.7763568394002505e-15 
		4.4408920985006262e-16 ;
	setAttr ".tg[0].tor" -type "double3" -1.5902773407317587e-14 -4.4527765540489247e-14 
		1.7493050748049344e-14 ;
	setAttr ".lr" -type "double3" -12.497838825551632 1.1438553277055576e-07 1.1151821584589833e-07 ;
	setAttr ".rst" -type "double3" -1.2729700000000008 -0.79519500000000076 -0.16328600000000115 ;
	setAttr ".rsrr" -type "double3" -12.497838999999981 3.4824108007117566e-14 -3.2609282726073499e-14 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Thumb_01_Jnt_scaleConstraint1" -p "R_Thumb_01_Jnt";
	rename -uid "8B7B0FD6-4C9C-FBCD-33BE-2FAADEDD88AB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Thumb_01_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" 0.99999999999999933 0.99999999999999933 0.99999999999999911 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Hand_0_parentConstraint1" -p "R_Hand_0";
	rename -uid "6CC25C4A-44F7-150B-4BD7-5083F8800F93";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Hand_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -3.5494061911833796e-07 4.4698142359633763e-07 
		3.4327651476928622e-07 ;
	setAttr ".tg[0].tor" -type "double3" 2.3654302324235474e-07 2.704306190375687e-06 
		2.7909367329842377e-13 ;
	setAttr ".lr" -type "double3" 0 -8.8049527781431697e-13 0 ;
	setAttr ".rst" -type "double3" -6.2568049999999991 15.155729000000001 -0.9235850000000001 ;
	setAttr ".rsrr" -type "double3" -2.3654302324235376e-07 -6.3611099406811559e-15 
		-2.7988881195565861e-13 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Hand_0_scaleConstraint1" -p "R_Hand_0";
	rename -uid "A407D01B-40CB-BC93-5EF8-8497F64994C6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Hand_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" 0.99999999999999933 0.99999999999999933 0.99999999999999933 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_RK_Arm_03_Jnt_parentConstraint1" -p "R_RK_Arm_03_Jnt";
	rename -uid "5040E99C-4C4B-7B2E-F3B8-4DA1795A798B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_FK_Arm_03_JntW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "R_IK_Arm_03_JntW1" -dv 1 -min 0 -at "double";
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
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" -1.7763568394002505e-15 7.7715611723760958e-16 
		7.1054273576010019e-15 ;
	setAttr ".tg[1].tot" -type "double3" -8.8817841970012523e-15 0 -8.8817841970012523e-16 ;
	setAttr ".rst" -type "double3" -7.9860010000000017 -4.4408920985006262e-16 -8.8817841970012523e-16 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "R_RK_Arm_02_Jnt_parentConstraint1" -p "R_RK_Arm_02_Jnt";
	rename -uid "42D6EB02-47B5-6F2D-1587-109F7E242AB3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_FK_Arm_02_JntW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "R_IK_Arm_02_JntW1" -dv 1 -min 0 -at "double";
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
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" -1.0658141036401503e-14 5.5511151231257827e-16 
		2.6645352591003757e-15 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -3.975693351829396e-16 ;
	setAttr ".tg[1].tot" -type "double3" -1.0658141036401503e-14 2.2204460492503131e-16 
		8.8817841970012523e-16 ;
	setAttr ".tg[1].tor" -type "double3" 0 0 -3.975693351829396e-16 ;
	setAttr ".rst" -type "double3" -7.0036670000000107 2.2204460492503131e-16 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "R_Pist_Shold_Grp" -p "R_RK_Arm_01_Jnt";
	rename -uid "B1DA15EF-44E8-A100-D603-009363FCE172";
	setAttr ".t" -type "double3" -30.149389719724731 -1.0162856032624188 -6.2568053467111637 ;
	setAttr ".r" -type "double3" 91.494132677342762 89.99999405441919 0 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1.0000000000000004 ;
createNode joint -n "R_Pist_Shold_1" -p "R_Pist_Shold_Grp";
	rename -uid "664ECBBA-42DE-53FE-710C-32BF071A6A4B";
	setAttr ".t" -type "double3" -6.0370416641235352 30.118148803710938 -0.21828770637512207 ;
	setAttr ".ro" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.05;
createNode aimConstraint -n "joint40_aimConstraint1" -p "R_Pist_Shold_1";
	rename -uid "6169756A-43F9-6AA8-DEF3-B8888A921712";
	addAttr -dcb 0 -ci true -sn "w0" -ln "joint39W0" -dv 1 -at "double";
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
	setAttr ".a" -type "double3" 0 -1 0 ;
	setAttr ".wut" 0;
	setAttr ".rsrr" -type "double3" -5.3171781787693977 5.3033587686479429 89.850680217734237 ;
	setAttr -k on ".w0";
createNode joint -n "R_Pist_Shold_2" -p "R_Pist_Shold_Grp";
	rename -uid "74CA9C89-4DB6-DF2F-72BD-FE8D531E5153";
	setAttr ".t" -type "double3" -6.0384635925292969 31.570621490478516 -1.0163012742996216 ;
	setAttr ".ro" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.05;
createNode aimConstraint -n "joint41_aimConstraint1" -p "R_Pist_Shold_2";
	rename -uid "0A264601-4EF1-ACE8-4F8E-E9B7C34BC887";
	addAttr -dcb 0 -ci true -sn "w0" -ln "joint42W0" -dv 1 -at "double";
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
	setAttr ".a" -type "double3" 0 -1 0 ;
	setAttr ".wut" 0;
	setAttr ".rsrr" -type "double3" -2.9911413847960349 3.1230196736819207 92.472450720948999 ;
	setAttr -k on ".w0";
createNode joint -n "R_Pist_Shold_3" -p "R_Pist_Shold_Grp";
	rename -uid "013B1A72-4B6E-2E64-6B38-E2BD2F1B25C5";
	setAttr ".t" -type "double3" -6.0384635925292969 31.570621490478516 -2.5878441333770752 ;
	setAttr ".ro" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.05;
createNode aimConstraint -n "joint44_aimConstraint1" -p "R_Pist_Shold_3";
	rename -uid "8FE1B1FC-41C1-A7B4-CE81-0196005FD1AB";
	addAttr -dcb 0 -ci true -sn "w0" -ln "joint43W0" -dv 1 -at "double";
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
	setAttr ".a" -type "double3" 0 -1 0 ;
	setAttr ".wut" 0;
	setAttr ".rsrr" -type "double3" 2.9911189747018687 -3.1229934637718157 92.472399140078167 ;
	setAttr -k on ".w0";
createNode joint -n "R_Pist_Shold_4" -p "R_Pist_Shold_Grp";
	rename -uid "D9C3D695-432B-AD12-02DB-119E3509E260";
	setAttr ".t" -type "double3" -6.0370426177978516 30.118148803710938 -3.3858575820922852 ;
	setAttr ".ro" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.05;
createNode aimConstraint -n "joint46_aimConstraint1" -p "R_Pist_Shold_4";
	rename -uid "4555A893-4000-03B0-5E3A-0F99B5C5F85D";
	addAttr -dcb 0 -ci true -sn "w0" -ln "joint45W0" -dv 1 -at "double";
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
	setAttr ".a" -type "double3" 0 -1 0 ;
	setAttr ".wut" 0;
	setAttr ".rsrr" -type "double3" 5.2090744992744575 -5.1955596322631648 89.850949223002402 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_RK_Arm_01_Jnt_parentConstraint1" -p "R_RK_Arm_01_Jnt";
	rename -uid "5F8F2D27-4E78-CE37-1A54-0C9790ADB20F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_FK_Arm_01_JntW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "R_IK_Arm_01_JntW1" -dv 1 -min 0 -at "double";
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
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" 3.5527136788005009e-15 2.2204460492503131e-16 
		1.7763568394002505e-15 ;
	setAttr ".tg[0].tor" -type "double3" 9.5416637126328436e-15 3.1805546814635168e-14 
		0 ;
	setAttr ".tg[1].tot" -type "double3" 7.1054273576010019e-15 -2.2204460492503131e-16 
		1.7763568394002505e-15 ;
	setAttr ".tg[1].tor" -type "double3" -4.739395799433465e-22 3.0332133116374176e-21 
		0 ;
	setAttr ".rst" -type "double3" -2.5333230000000011 5.225807342412736e-09 3.3713385150235808e-07 ;
	setAttr ".rsrr" -type "double3" -4.7708320221952752e-15 -1.9025866895805442e-14 
		9.9392333795735688e-17 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "R_Clav_Jnt_parentConstraint1" -p "R_Clav_Jnt";
	rename -uid "747D44F9-45E7-32BC-BCF2-F2B4F40E03D4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Clav_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 4.1670224559808844e-07 3.1539349953924045e-07 
		-4.1836657871385796e-07 ;
	setAttr ".tg[0].tor" -type "double3" -1.7529612366959724e-16 -9.1590243640870751e-10 
		1.4197642555761781e-11 ;
	setAttr ".lr" -type "double3" -1.1347779282976484e-22 9.1589797051168603e-10 -1.4197648224884854e-11 ;
	setAttr ".rst" -type "double3" 4.0170540000000123 -0.31348900000000013 -3.7234810000000005 ;
	setAttr ".rsrr" -type "double3" -1.1347779282976484e-22 9.1589797051168603e-10 -1.4197648224884854e-11 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Clav_Jnt_scaleConstraint1" -p "R_Clav_Jnt";
	rename -uid "9A19249D-4414-F699-3A31-839ECD6AA59C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Clav_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" 1.0000000000000004 1.0000000000000004 1 ;
	setAttr -k on ".w0";
createNode joint -n "R_Pist_Rot_Jnt" -p "Spine_03_Jnt";
	rename -uid "6FEEB753-47EA-B454-B146-17995CD1C682";
	setAttr ".t" -type "double3" 4.017054 -0.31348630253390652 -3.723481 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90.888079477546626 -89.99999999999217 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.06;
createNode transform -n "R_Pist_Base_Grp" -p "R_Pist_Rot_Jnt";
	rename -uid "A1D5155F-48C1-083A-5CDF-27880B85EABC";
	setAttr ".t" -type "double3" 3.7234809999959726 30.076603234484757 -2.3273341882832859 ;
	setAttr ".r" -type "double3" 178.99999999999997 0 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999978 ;
createNode joint -n "R_Pist_Base_1" -p "R_Pist_Base_Grp";
	rename -uid "31E40447-412C-1D33-02F8-8A8F9A27E473";
	setAttr ".t" -type "double3" -3.9233989715576172 30.112640380859375 -0.021571159362792969 ;
	setAttr ".ro" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.05;
createNode aimConstraint -n "joint39_aimConstraint1" -p "R_Pist_Base_1";
	rename -uid "E300E9B4-4E43-6DAF-AC45-E7A0B984556F";
	addAttr -dcb 0 -ci true -sn "w0" -ln "joint40W0" -dv 1 -at "double";
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
	setAttr ".a" -type "double3" 0 -1 0 ;
	setAttr ".wut" 0;
	setAttr ".rsrr" -type "double3" 5.3171781787693986 5.3310334955903294 -90.149319782265749 ;
	setAttr -k on ".w0";
createNode joint -n "R_Pist_Base_2" -p "R_Pist_Base_Grp";
	rename -uid "A1414B5C-463D-C101-CC66-2B9F2088C386";
	setAttr ".t" -type "double3" -3.9237327575683594 31.661933898925781 -0.90569782257080078 ;
	setAttr ".ro" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.05;
createNode aimConstraint -n "joint42_aimConstraint1" -p "R_Pist_Base_2";
	rename -uid "93A6721B-471F-F548-8833-6080C3BD0EA0";
	addAttr -dcb 0 -ci true -sn "w0" -ln "joint41W0" -dv 1 -at "double";
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
	setAttr ".a" -type "double3" 0 -1 0 ;
	setAttr ".wut" 0;
	setAttr ".rsrr" -type "double3" 2.9911413847960358 2.8648271786999553 -87.52754927905103 ;
	setAttr -k on ".w0";
createNode joint -n "R_Pist_Base_3" -p "R_Pist_Base_Grp";
	rename -uid "AE080872-406A-0FDB-DB57-BF8DA93B8EB7";
	setAttr ".t" -type "double3" -3.9237327575683594 31.661931991577148 -2.6984467506408691 ;
	setAttr ".ro" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.05;
createNode aimConstraint -n "joint43_aimConstraint1" -p "R_Pist_Base_3";
	rename -uid "B35C066C-4EC4-FF47-7156-D59865D71CB8";
	addAttr -dcb 0 -ci true -sn "w0" -ln "joint44W0" -dv 1 -at "double";
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
	setAttr ".a" -type "double3" 0 -1 0 ;
	setAttr ".wut" 0;
	setAttr ".rsrr" -type "double3" -2.9911189747018678 -2.8648082945525464 -87.527600859921861 ;
	setAttr -k on ".w0";
createNode joint -n "R_Pist_Base_4" -p "R_Pist_Base_Grp";
	rename -uid "07795ACC-4E1C-8E10-7072-D68F7170EA56";
	setAttr ".t" -type "double3" -3.9195852279663086 30.112640380859375 -3.5789000988006592 ;
	setAttr ".ro" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.05;
createNode aimConstraint -n "joint45_aimConstraint1" -p "R_Pist_Base_4";
	rename -uid "77A5F04F-40E7-13E1-2D5F-7A82464BF1C9";
	addAttr -dcb 0 -ci true -sn "w0" -ln "joint46W0" -dv 1 -at "double";
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
	setAttr ".a" -type "double3" 0 -1 0 ;
	setAttr ".wut" 0;
	setAttr ".rsrr" -type "double3" -5.2090744992744575 -5.2226244244537252 -90.149050776997612 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Spine_03_Jnt_parentConstraint1" -p "Spine_03_Jnt";
	rename -uid "90E236B5-4250-DC84-963B-D191AF4FCF25";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine_04_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -3.5527136788005009e-15 3.5762786865234375e-07 
		9.0841742494188259e-16 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -0.88805944220783095 ;
	setAttr ".rst" -type "double3" 1.3636283874511328 3.5762786887438835e-07 3.027863265561656e-16 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Spine_03_Jnt_scaleConstraint1" -p "Spine_03_Jnt";
	rename -uid "9B2E8C2C-42C8-A27E-33DB-F8A6D7710795";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine_04_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" 1.0000000000000004 1.0000000000000004 1 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Spine_02_Jnt_parentConstraint1" -p "Spine_02_Jnt";
	rename -uid "8F376576-461F-4E89-5A68-39B3DCA64156";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine_03_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0 -2.2204460492503131e-16 4.5420871247094761e-16 ;
	setAttr ".rst" -type "double3" 1.3636283874512536 0 3.0278632655617822e-16 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Spine_02_Jnt_scaleConstraint1" -p "Spine_02_Jnt";
	rename -uid "261475D0-4AFB-42CC-2E05-45876A7BEFD3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine_03_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Spine_01_Jnt_parentConstraint1" -p "Spine_01_Jnt";
	rename -uid "995A6F5F-47CC-A6AB-9167-D2ACF7B2D6EA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine_02_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0 -2.2204460492503131e-16 1.2621774483536189e-29 ;
	setAttr ".tg[0].tor" -type "double3" 0 4.4570108517420546e-31 0 ;
	setAttr ".rst" -type "double3" -1.5580002878114989e-29 1.5091152191162109 2.2204460492503131e-16 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Spine_01_Jnt_scaleConstraint1" -p "Spine_01_Jnt";
	rename -uid "3422665B-4F13-8539-FCDB-C8A4609B68DB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine_02_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Spine_00_Jnt_parentConstraint1" -p "Spine_00_Jnt";
	rename -uid "D8D81EBC-4522-0F67-6327-3A8335EB90E1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine_01_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0 -5.2771137637463994e-07 -5.0270107836636123e-16 ;
	setAttr ".tg[0].tor" -type "double3" -89.99997996466125 -89.99999999999649 0 ;
	setAttr ".lr" -type "double3" -1.080826172953466e-25 -3.5208740323801139e-12 3.5176934776986502e-12 ;
	setAttr ".rst" -type "double3" -1.7157724688557007e-29 0 0 ;
	setAttr ".rsrr" -type "double3" -1.0808261729534662e-25 -3.5208740323801139e-12 
		3.5176934776986502e-12 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Spine_00_Jnt_scaleConstraint1" -p "Spine_00_Jnt";
	rename -uid "C1704F24-496D-FB68-5288-FDA0462C5672";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine_01_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode parentConstraint -n "Cog_Jnt_parentConstraint1" -p "Cog_Jnt";
	rename -uid "805055B1-4551-9FD7-1C00-1FA89AC69300";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Cog_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 0 21.864555358886719 -1.4263598918914795 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Cog_Jnt_scaleConstraint1" -p "Cog_Jnt";
	rename -uid "41EF3363-4330-A317-D831-8AB78EA46475";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Cog_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode joint -n "L_RK_Ankle";
	rename -uid "54A5DD4D-40AE-0573-10E2-39A384B06E0D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.1503720283508261 2.3912553787231445 -1.0597651004791255 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 -90 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.12;
createNode joint -n "L_RK_Toe_1_Jnt" -p "L_RK_Ankle";
	rename -uid "EF3F84D7-474A-DF89-3A2C-C3A255C12C4E";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".t" -type "double3" 0.91741719841957103 -0.80941700935363725 0.55936503410339355 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 1.2424088075917192e-17 -0.15650822584598834 -47.953935235796081 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.12;
createNode joint -n "L_RK_Toe_1_Point" -p "L_RK_Toe_1_Jnt";
	rename -uid "8D5B5C50-480F-8188-BBD5-96AECECCB5C6";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".t" -type "double3" 2.1301241271946472 -1.2999584048101198e-16 1.1102230246251565e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".ssc" no;
	setAttr ".radi" 0.12;
createNode joint -n "L_RK_Toe_2_Jnt" -p "L_RK_Ankle";
	rename -uid "E042491F-44E8-3F97-233B-979C94C167F2";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".t" -type "double3" 0.91741940379142761 -0.80941534042358354 -0.55937027931213379 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 1.2424088030373924e-17 0.15643131750670239 -47.954021257668892 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.12;
createNode joint -n "L_RK_Toe_2_Point" -p "L_RK_Toe_2_Jnt";
	rename -uid "A505805D-4346-9FEC-F5F4-4E814759A48E";
	setAttr ".ovc" 14;
	setAttr ".t" -type "double3" 2.1301234825568294 -6.3030170359539184e-16 1.6930483510267523e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".ssc" no;
	setAttr ".radi" 0.12;
createNode joint -n "L_RK_Heel_Jnt" -p "L_RK_Ankle";
	rename -uid "80D6674E-49C1-7EDF-997C-CCADB2DD5F7E";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".t" -type "double3" -0.64067840576172053 -0.71594381332397283 4.4408920985006262e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 180.00000000000003 56.896573258530047 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.12;
createNode joint -n "L_RK_Heel_Point" -p "L_RK_Heel_Jnt";
	rename -uid "84848D24-4A9E-F283-3DA6-EE8B0164339D";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".t" -type "double3" 1.9999277266240991 5.5511552429087829e-16 4.1774574668360299e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".ssc" no;
	setAttr ".radi" 0.12;
createNode joint -n "R_RK_Ankle";
	rename -uid "20E90A2E-4CE7-8F91-0BE0-5191027B4C2E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.150372 2.391255 -1.059765 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -180 90 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.12;
createNode joint -n "R_RK_Toe_1_Jnt" -p "R_RK_Ankle";
	rename -uid "CE05B3E3-44DF-512C-115E-1680BE51F3BB";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".t" -type "double3" -0.917417 0.809417 -0.559365 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 1.2424088075917192e-17 -0.1565082258459935 -47.953935235796081 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.12;
createNode joint -n "R_RK_Toe_1_Point" -p "R_RK_Toe_1_Jnt";
	rename -uid "C92FA9DE-4679-0846-6072-6288994F1B1B";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".t" -type "double3" -2.1301252337833549 1.211979176796163e-06 -1.3915594854196911e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".ssc" no;
	setAttr ".radi" 0.12;
createNode joint -n "R_RK_Toe_2_Jnt" -p "R_RK_Ankle";
	rename -uid "3BF02893-41E5-41F4-28C7-E08953DDC956";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".t" -type "double3" -0.917419 0.809415 0.55937 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0.15643131750669717 -47.954021257668913 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.12;
createNode joint -n "R_RK_Toe_2_Point" -p "R_RK_Toe_2_Jnt";
	rename -uid "CF9F7F92-4BC2-1B7A-A44C-AB8443CA2D53";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".t" -type "double3" -2.1301238943304797 -5.0088892089572568e-07 4.2544915892506197e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".ssc" no;
	setAttr ".radi" 0.12;
createNode joint -n "R_RK_Heel_Jnt" -p "R_RK_Ankle";
	rename -uid "6BA79FBC-42D7-9D53-9842-A2BBA0120121";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".t" -type "double3" 0.640678 0.715944 -4.4408920985006262e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 179.99999879258178 0 -123.10342674146997 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.12;
createNode joint -n "R_RK_Heel_Point" -p "R_RK_Heel_Jnt";
	rename -uid "1CFC46AC-4851-ABF1-5966-CF95874A961F";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".t" -type "double3" -1.9999293359945347 -5.3346797406206292e-06 -1.1235457009206584e-13 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".ssc" no;
	setAttr ".radi" 0.12;
createNode transform -n "ROOT_Ctrl_Grp";
	rename -uid "D74FF7AF-4B18-905C-5356-13A07C27FA6B";
createNode transform -n "ROOT_Ctrl" -p "ROOT_Ctrl_Grp";
	rename -uid "6218F2AD-4D31-5AF8-EA11-E0929E6DCD1D";
createNode nurbsCurve -n "ROOT_CtrlShape" -p "ROOT_Ctrl";
	rename -uid "5C075113-412D-06BD-C8EC-E0B67E65E9A0";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -11.144827186618311 -0.78361162489122504 
		-10.361215561727077 -15.761165757619979 -1.1081941875543877 -8.9723573656389913e-16 
		-11.144827186618304 -0.78361162489122482 10.361215561727077 -7.5543351176714898e-15 
		-4.5837321299390434e-16 14.652971570065583 11.144827186618297 0.78361162489122416 
		10.361215561727077 15.761165757619986 1.1081941875543881 1.467798183799603e-15 11.144827186618283 
		0.78361162489122393 -10.361215561727077 -4.7236435385968947e-15 -1.1408553407844185e-16 
		-14.652971570065583 0 0 0 0 0 0 0 0 0;
createNode transform -n "Transform_Ctrl_Grp" -p "ROOT_Ctrl";
	rename -uid "E90D85D8-418C-1CEA-898C-FCA420493A5E";
createNode transform -n "Transform_Ctrl" -p "Transform_Ctrl_Grp";
	rename -uid "3280BFBD-4BD8-722F-A1AF-D69B18B83CD3";
	addAttr -ci true -sn "L_Arm_IKFK" -ln "L_Arm_IKFK" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "R_Arm_IKFK" -ln "R_Arm_IKFK" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "L_Leg_IKFK" -ln "L_Leg_IKFK" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "R_Leg_IKFK" -ln "R_Leg_IKFK" -min 0 -max 1 -at "double";
	setAttr -k on ".L_Arm_IKFK";
	setAttr -k on ".R_Arm_IKFK";
	setAttr -k on ".L_Leg_IKFK";
	setAttr -k on ".R_Leg_IKFK";
createNode nurbsCurve -n "Transform_CtrlShape" -p "Transform_Ctrl";
	rename -uid "AAAD6D11-4313-B237-4AEC-2FBED8E36FB7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-9.490007351308396 -4.4408920985006262e-16 -9.4900073513083854
		-10.941428727445917 0 -6.6996928345827623e-16
		-9.4900073513083925 -4.4408920985006262e-16 9.4900073513083854
		-4.2049256179956522e-15 -4.0092423061865602e-16 10.941428727445908
		9.4900073513083854 -3.3306690738754696e-16 9.4900073513083854
		10.941428727445924 -2.2204460492503131e-16 1.0960103988140081e-15
		9.4900073513083729 -4.4408920985006262e-16 -9.4900073513083854
		-2.1456412482674043e-15 -2.6520958415643775e-16 -10.941428727445908
		-9.490007351308396 -4.4408920985006262e-16 -9.4900073513083854
		-10.941428727445917 0 -6.6996928345827623e-16
		-9.4900073513083925 -4.4408920985006262e-16 9.4900073513083854
		;
createNode transform -n "Cog_Ctrl_Grp" -p "Transform_Ctrl";
	rename -uid "7F32B573-46F6-8140-C1AD-BF90BA5147EC";
	setAttr ".t" -type "double3" 0 21.864555358886719 -1.4263598918914795 ;
createNode transform -n "Cog_Ctrl" -p "Cog_Ctrl_Grp";
	rename -uid "4463F391-43B8-5FBB-E4F1-1EAC24C08E01";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
createNode nurbsCurve -n "Cog_CtrlShape" -p "Cog_Ctrl";
	rename -uid "692CA5B1-401E-343E-DAAC-9FBE7C73D043";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 4.9979872123632232 -0.78361162489122471 
		-4.2143755874719959 5.3089091003594016 -1.1081941875543877 -2.5721960360486038e-16 
		4.9979872123632232 -0.78361162489122416 4.2143755874719959 1.2090008937259381e-15 
		1.0408340855860843e-17 4.2007149128050125 -4.9979872123632232 0.78361162489122449 
		4.2143755874719959 -5.3089091003594095 1.1081941875543881 4.2078848581615624e-16 
		-4.9979872123632232 0.78361162489122416 -4.2143755874719959 7.4097402460072099e-17 
		8.3266726846886741e-17 -4.2007149128050125 0 0 0 0 0 0 0 0 0;
createNode transform -n "Hip_Ctrl_Grp" -p "Transform_Ctrl";
	rename -uid "D0576EE2-441B-5C32-6B13-0BBC9D0A6398";
	setAttr ".rp" -type "double3" 0 2.2204460492503131e-16 0 ;
	setAttr ".rpt" -type "double3" -1.3607845848013155e-29 -2.2204452727989033e-16 2.2204460492501775e-16 ;
	setAttr ".sp" -type "double3" 0 2.2204460492503131e-16 0 ;
createNode transform -n "Hip_Ctrl" -p "Hip_Ctrl_Grp";
	rename -uid "B28031B4-4C86-5738-6894-EC8E7354BEA1";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr ".t" -type "double3" 0 2.2204460492503131e-16 0 ;
	setAttr ".rp" -type "double3" 0 2.2204460492503131e-16 0 ;
	setAttr ".sp" -type "double3" 0 2.2204460492503131e-16 0 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "Hip_CtrlShape" -p "Hip_Ctrl";
	rename -uid "B1B6296A-4741-C830-7436-48B835B31DD1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-3.3301537044218472 -0.12194688165802225 -3.438802939903769
		-4.7545525204584536 -0.1219468816580227 -3.1166252680764307e-16
		-3.330153704421845 -0.12194688165802259 3.438802939903769
		0.10864923548191736 -0.12194688165802253 4.8632017559403815
		3.5474521753856862 -0.12194688165802248 3.438802939903769
		4.9718509914222944 -0.12194688165802248 4.7327294238178462e-16
		3.547452175385684 -0.12194688165802259 -3.438802939903769
		0.10864923548191829 -0.12194688165802242 -4.8632017559403815
		-3.3301537044218472 -0.12194688165802225 -3.438802939903769
		-4.7545525204584536 -0.1219468816580227 -3.1166252680764307e-16
		-3.330153704421845 -0.12194688165802259 3.438802939903769
		;
createNode parentConstraint -n "Hip_Ctrl_Grp_parentConstraint1" -p "Hip_Ctrl_Grp";
	rename -uid "DEDE26B0-4671-A7D4-20A2-D181EDC96A0F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Cog_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 5.0266867935053918e-16 1.8496315590255108e-13 
		5.2771137615259534e-07 ;
	setAttr ".rst" -type "double3" 5.0266867935055279e-16 21.864555358886903 -1.4263593641801036 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Hip_Ctrl_Grp_parentConstraint2" -p "Hip_Ctrl_Grp";
	rename -uid "78222246-404D-F5BD-4CDF-E4ACB90F14A4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Cog_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 5.0266867935053918e-16 1.8496315590255108e-13 
		5.2771137615259534e-07 ;
	setAttr ".rst" -type "double3" 5.0266867935055279e-16 21.864555358886903 -1.4263593641801036 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Hip_Ctrl_Grp_scaleConstraint1" -p "Hip_Ctrl_Grp";
	rename -uid "20496752-45BB-8412-E6E5-E580F217B2E1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Cog_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "L_Hand_Ctrl_Grp" -p "Transform_Ctrl";
	rename -uid "C97B1B8A-4957-DA8F-4339-CEB405C1D313";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode transform -n "L_Hand_Ctrl" -p "L_Hand_Ctrl_Grp";
	rename -uid "BE86D313-4FFD-C4B5-8DA2-D8A297AAE8F2";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 5.5511151231257827e-17 1.7763568394002505e-15 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode nurbsCurve -n "L_Hand_CtrlShape" -p "L_Hand_Ctrl";
	rename -uid "E1D5B8AC-41C4-25C1-6604-F68C91B0C25D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 4.5749942131363195 -1.1102230246251565e-16 
		1.4432899320127035e-15 4.5749942131363195 -4.4408920985006262e-16 1.2373180088723941e-15 
		4.5749942131363195 -1.1102230246251565e-16 1.4432899320127035e-15 4.5749942131363195 
		-2.2204460492503131e-16 0 4.5749942131363195 -2.2204460492503131e-16 1.4432899320127035e-15 
		4.5749942131363195 -6.6613381477509392e-16 1.2373180088723941e-15 4.5749942131363195 
		-1.1102230246251565e-16 1.4432899320127035e-15 4.5749942131363195 -2.2204460492503131e-16 
		0 0 0 0 0 0 0 0 0 0;
createNode transform -n "L_Thumb_03_Ctrl_Grp" -p "L_Hand_Ctrl";
	rename -uid "3D7E142A-497F-8BF5-FB29-348F71CE5732";
createNode transform -n "L_Thumb_03_Ctrl" -p "L_Thumb_03_Ctrl_Grp";
	rename -uid "F04D8FEF-4164-D739-4BBA-5880BC05F4D0";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 -8.8817841970012523e-16 -8.8817841970012523e-16 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "L_Thumb_03_CtrlShape" -p "L_Thumb_03_Ctrl";
	rename -uid "EFF8CF87-4375-6A40-6245-52A376E99BD9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -2.3991186704942363e-17 -0.3918058124456123 
		0.3918058124456123 -2.0775313423421279e-33 -0.55409709377719385 3.3928661615554561e-17 
		2.3991186704942363e-17 -0.39180581244561224 -0.3918058124456123 3.3928661615554579e-17 
		-2.8724491187624158e-17 -0.55409709377719407 2.3991186704942363e-17 0.3918058124456123 
		-0.3918058124456123 3.3986572389042944e-33 0.55409709377719418 -5.5504284848016124e-17 
		-2.3991186704942363e-17 0.39180581244561224 0.3918058124456123 -3.3928661615554579e-17 
		7.556202503899795e-17 0.55409709377719407 0 0 0 0 0 0 0 0 0;
createNode parentConstraint -n "L_Thumb_03_Ctrl_Grp_parentConstraint1" -p "L_Thumb_03_Ctrl_Grp";
	rename -uid "0F0967F9-4C7B-2153-4E51-FBA82A54F7CE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Thumb_02_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0.68048706101218848 1.7763568394002505e-15 
		-8.8817841970012523e-16 ;
	setAttr ".tg[0].tor" -type "double3" -1.5902773407317584e-15 1.272221872585407e-14 
		6.3611093629270351e-15 ;
	setAttr ".lr" -type "double3" -79.405211933730072 -28.287882352317649 -126.9537608501998 ;
	setAttr ".rst" -type "double3" 5.4574670679137203 13.119997770261513 0.54274690423315941 ;
	setAttr ".rsrr" -type "double3" -79.405211933730072 -28.287882352317649 -126.9537608501998 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Thumb_03_Ctrl_Grp_parentConstraint2" -p "L_Thumb_03_Ctrl_Grp";
	rename -uid "E67A4DCD-4F19-96AE-CD68-2A843CFC6DED";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Thumb_02_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0.68048706101218848 2.6645352591003757e-15 
		-8.8817841970012523e-16 ;
	setAttr ".tg[0].tor" -type "double3" -1.5902773407317584e-15 1.272221872585407e-14 
		6.3611093629270351e-15 ;
	setAttr ".lr" -type "double3" 170.97305633447564 -31.963383052988608 28.959595767000121 ;
	setAttr ".rst" -type "double3" 5.4574670679137203 13.119997770261513 0.54274690423315852 ;
	setAttr ".rsrr" -type "double3" -79.405211933730072 -28.287882352317649 -126.9537608501998 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Thumb_03_Ctrl_Grp_scaleConstraint1" -p "L_Thumb_03_Ctrl_Grp";
	rename -uid "030F99F1-4523-7C67-BE08-3D8107A52ABC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Thumb_02_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "L_Thumb_02_Ctrl_Grp" -p "L_Hand_Ctrl";
	rename -uid "7AD2F573-4110-614D-1557-2A9090B23C86";
createNode transform -n "L_Thumb_02_Ctrl" -p "L_Thumb_02_Ctrl_Grp";
	rename -uid "6C3E727F-48C1-1DB5-E648-2BB6ACF510D8";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr ".t" -type "double3" 0 0 4.4408920985006262e-16 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "L_Thumb_02_CtrlShape" -p "L_Thumb_02_Ctrl";
	rename -uid "0FE55E36-4EEC-F0E6-C6F0-C6960D2C88F5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 1.7523656526953083e-15 -0.3918058124456123 
		0.39180581244561136 1.7763568394002505e-15 -0.55409709377719385 -8.5424975808457065e-16 
		1.8003480261051931e-15 -0.39180581244561224 -0.39180581244561319 1.8102855010158048e-15 
		-2.8724491187624158e-17 -0.55409709377719496 1.8003480261051931e-15 0.3918058124456123 
		-0.39180581244561319 1.7763568394002505e-15 0.55409709377719418 -9.4368270454814135e-16 
		1.7523656526953083e-15 0.39180581244561224 0.39180581244561136 1.7424281777846957e-15 
		7.556202503899795e-17 0.55409709377719329 0 0 0 0 0 0 0 0 0;
createNode parentConstraint -n "L_Thumb_02_Ctrl_Grp_parentConstraint1" -p "L_Thumb_02_Ctrl_Grp";
	rename -uid "ED12707A-46B8-3714-8AFD-C9B55D786F2D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Thumb_01_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0.51208691675722129 2.8613868607862969e-08 
		8.8748359772239382e-09 ;
	setAttr ".tg[0].tor" -type "double3" 3.4936113632247756 -0.60360330455908295 -0.16931820389669969 ;
	setAttr ".lr" -type "double3" -79.405211933730087 -28.287882352317638 -126.9537608501998 ;
	setAttr ".rst" -type "double3" 5.817701339721677 13.598848342895504 0.22026273608207628 ;
	setAttr ".rsrr" -type "double3" -79.405211933730087 -28.287882352317638 -126.9537608501998 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Thumb_02_Ctrl_Grp_parentConstraint2" -p "L_Thumb_02_Ctrl_Grp";
	rename -uid "7E3BD1E5-4115-97F4-2A97-178D1B04AE1B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Thumb_01_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0.51208691675722129 2.8613868607862969e-08 
		8.8748359772239382e-09 ;
	setAttr ".tg[0].tor" -type "double3" 3.4936113632247756 -0.60360330455908295 -0.16931820389669969 ;
	setAttr ".lr" -type "double3" 170.97305633447564 -31.963383052988608 28.959595767000124 ;
	setAttr ".rst" -type "double3" 5.817701339721677 13.598848342895504 0.22026273608207628 ;
	setAttr ".rsrr" -type "double3" -79.405211933730087 -28.287882352317638 -126.9537608501998 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Thumb_02_Ctrl_Grp_scaleConstraint1" -p "L_Thumb_02_Ctrl_Grp";
	rename -uid "A04C18E8-456D-DFFC-412A-959BCC5EC7A7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Thumb_01_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "L_Thumb_01_Ctrl_Grp" -p "L_Hand_Ctrl";
	rename -uid "B7607117-42D9-1213-AE1A-4A93157FF9D1";
createNode transform -n "L_Thumb_01_Ctrl" -p "L_Thumb_01_Ctrl_Grp";
	rename -uid "DF0CCA41-4051-1B07-1B2B-9EAA3D129065";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 -8.8817841970012523e-16 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "L_Thumb_01_CtrlShape" -p "L_Thumb_01_Ctrl";
	rename -uid "041AA198-432C-5B29-EF54-E5AADC2D0F99";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -2.3991186704942363e-17 -0.39180581244561274 
		0.39180581244561136 -2.0775313423421279e-33 -0.5540970937771944 -8.5424975808457065e-16 
		2.3991186704942363e-17 -0.39180581244561269 -0.39180581244561319 3.3928661615554579e-17 
		-4.7281370103768677e-16 -0.55409709377719496 2.3991186704942363e-17 0.39180581244561186 
		-0.39180581244561319 3.3986572389042944e-33 0.55409709377719374 -9.4368270454814135e-16 
		-2.3991186704942363e-17 0.3918058124456118 0.39180581244561136 -3.3928661615554579e-17 
		-3.6852718481106467e-16 0.55409709377719329 0 0 0 0 0 0 0 0 0;
createNode parentConstraint -n "L_Thumb_01_Ctrl_Grp_parentConstraint1" -p "L_Thumb_01_Ctrl_Grp";
	rename -uid "B0E2986F-43B3-8ED3-143B-558F838B12EB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Hand_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 1.2729699375690835 0.79519514682288817 0.16328636021821552 ;
	setAttr ".tg[0].tor" -type "double3" 167.50216449036455 -32.589330532705425 28.918720919762603 ;
	setAttr ".lr" -type "double3" -82.588781720399183 -28.043679939793051 -127.60869821715401 ;
	setAttr ".rst" -type "double3" 6.09351843007589 13.956891700432244 -0.020492112480248292 ;
	setAttr ".rsrr" -type "double3" -82.588781720399183 -28.043679939793051 -127.60869821715401 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Thumb_01_Ctrl_Grp_parentConstraint2" -p "L_Thumb_01_Ctrl_Grp";
	rename -uid "C2DED33D-451E-E8CB-36C9-539C101F4160";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Hand_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 1.2729699375690835 0.79519514682288817 0.1632863602182173 ;
	setAttr ".tg[0].tor" -type "double3" 167.50216449036455 -32.589330532705425 28.918720919762603 ;
	setAttr ".lr" -type "double3" 167.50216449036455 -32.589330532705432 28.91872091976261 ;
	setAttr ".rst" -type "double3" 6.0935184300758882 13.956891700432244 -0.020492112480248292 ;
	setAttr ".rsrr" -type "double3" -82.588781720399183 -28.043679939793051 -127.60869821715401 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Thumb_01_Ctrl_Grp_scaleConstraint1" -p "L_Thumb_01_Ctrl_Grp";
	rename -uid "EC5E3522-4082-F022-2749-A3B753C66CDC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Hand_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "L_Finger_2_01_Ctrl_Grp" -p "L_Hand_Ctrl";
	rename -uid "84C34B27-4EA0-34CF-EBA5-A7AFC3EB8D87";
createNode transform -n "L_Finger_2_01_Ctrl" -p "L_Finger_2_01_Ctrl_Grp";
	rename -uid "7C23EA79-46FB-89F1-263D-238458752278";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 4.3715031594615539e-16 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999967 0.99999999999999967 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "L_Finger_2_01_CtrlShape" -p "L_Finger_2_01_Ctrl";
	rename -uid "27F0C46E-4519-8F5C-5D6E-21B3075AE577";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -2.3991186704942363e-17 -0.3918058124456123 
		0.3918058124456123 -2.0775313423421279e-33 -0.55409709377719385 3.2627619008571956e-17 
		2.3991186704942363e-17 -0.39180581244561224 -0.3918058124456123 3.3928661615554579e-17 
		-2.8724491187624158e-17 -0.55409709377719407 2.3991186704942363e-17 0.3918058124456123 
		-0.3918058124456123 3.3986572389042944e-33 0.55409709377719418 -5.6805327454998723e-17 
		-2.3991186704942363e-17 0.39180581244561224 0.3918058124456123 -3.3928661615554579e-17 
		7.556202503899795e-17 0.55409709377719407 0 0 0 0 0 0 0 0 0;
createNode parentConstraint -n "L_Finger_2_01_Ctrl_Grp_parentConstraint1" -p "L_Finger_2_01_Ctrl_Grp";
	rename -uid "96A8BD6C-4CC5-7B35-4E0A-7FA2A94F76CD";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Hand_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 2.1584238228565358 -0.39641731755103837 -0.11943648515849059 ;
	setAttr ".tg[0].tor" -type "double3" 90.000005011351547 -5.9455342231605147e-06 
		0.0011145650018154238 ;
	setAttr ".lr" -type "double3" 0 -175.00000246334338 89.999996746494389 ;
	setAttr ".rst" -type "double3" 6.3762412071228027 12.970973014831543 -1.1304169893264768 ;
	setAttr ".rsrr" -type "double3" 0 -175.00000246334338 89.999996746494389 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Finger_2_01_Ctrl_Grp_parentConstraint2" -p "L_Finger_2_01_Ctrl_Grp";
	rename -uid "8280B32E-40D2-FA51-4F23-7B899291D04B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Hand_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 2.1584238228565358 -0.39641731755103837 -0.1194364851584897 ;
	setAttr ".tg[0].tor" -type "double3" 90.000005011351547 -5.9455342231605147e-06 
		0.0011145650018154238 ;
	setAttr ".lr" -type "double3" 90.000005011351533 -5.9455342231605443e-06 0.0011145650018154238 ;
	setAttr ".rst" -type "double3" 6.3762412071228018 12.970973014831543 -1.1304169893264768 ;
	setAttr ".rsrr" -type "double3" 0 -175.00000246334338 89.999996746494389 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Finger_2_01_Ctrl_Grp_scaleConstraint1" -p "L_Finger_2_01_Ctrl_Grp";
	rename -uid "C5FDCFD3-4E95-086B-F26C-FA9733505B69";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Hand_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "L_Finger_2_02_Ctrl_Grp" -p "L_Hand_Ctrl";
	rename -uid "089FBCBD-4A37-443F-E461-E4A50A9CD5B9";
createNode transform -n "L_Finger_2_02_Ctrl" -p "L_Finger_2_02_Ctrl_Grp";
	rename -uid "F65748D0-40BC-5897-F171-D5BFE8187318";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 0 2.1510571102112408e-16 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999967 0.99999999999999967 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "L_Finger_2_02_CtrlShape" -p "L_Finger_2_02_Ctrl";
	rename -uid "BFB8E9D1-450A-740A-5BAB-92A69879E677";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -9.1216960640506763e-16 -0.3918058124456123 
		0.39180581244561236 -8.8817841970012523e-16 -0.55409709377719385 1.4364992147108763e-16 
		-8.6418723299518293e-16 -0.39180581244561224 -0.39180581244561224 -8.5424975808457065e-16 
		-2.8724491187624158e-17 -0.55409709377719396 -8.6418723299518293e-16 0.3918058124456123 
		-0.39180581244561224 -8.8817841970012523e-16 0.55409709377719418 5.4216975007516919e-17 
		-9.1216960640506763e-16 0.39180581244561224 0.39180581244561236 -9.2210708131567981e-16 
		7.556202503899795e-17 0.55409709377719418 0 0 0 0 0 0 0 0 0;
createNode parentConstraint -n "L_Finger_2_02_Ctrl_Grp_parentConstraint1" -p "L_Finger_2_02_Ctrl_Grp";
	rename -uid "C83D49E5-44E1-4EEF-A96B-2A99AAC1664B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Finger_2_01_CtrlW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0.80443842450526759 6.5725203057809267e-13 
		3.3428121382073073e-15 ;
	setAttr ".tg[0].tor" -type "double3" 4.4352555006755807e-15 0 -5.0888874609104779e-14 ;
	setAttr ".lr" -type "double3" 0 -175.00000246334338 89.999996746494347 ;
	setAttr ".rst" -type "double3" 6.376241161616429 12.169595718383787 -1.0603055953979446 ;
	setAttr ".rsrr" -type "double3" 0 -175.00000246334338 89.999996746494347 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Finger_2_02_Ctrl_Grp_parentConstraint2" -p "L_Finger_2_02_Ctrl_Grp";
	rename -uid "8F89DE48-4020-BA9C-3836-C0AB9790C4D4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Finger_2_01_CtrlW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0.80443842450527114 6.581402089977928e-13 3.5648567431323386e-15 ;
	setAttr ".tg[0].tor" -type "double3" 4.4352555006755807e-15 0 -5.0888874609104779e-14 ;
	setAttr ".lr" -type "double3" 90.000005011351533 -5.9455342231605443e-06 0.0011145650018162196 ;
	setAttr ".rst" -type "double3" 6.3762411616164281 12.169595718383784 -1.0603055953979446 ;
	setAttr ".rsrr" -type "double3" 0 -175.00000246334338 89.999996746494347 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Finger_2_02_Ctrl_Grp_scaleConstraint1" -p "L_Finger_2_02_Ctrl_Grp";
	rename -uid "B458DB11-4C9F-D1DE-4FFD-938547F377FA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Finger_2_01_CtrlW0" -dv 1 -min 
		0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "L_Finger_2_03_Ctrl_Grp" -p "L_Hand_Ctrl";
	rename -uid "D1870E49-4743-D90D-6020-CCB5F930FB58";
createNode transform -n "L_Finger_2_03_Ctrl" -p "L_Finger_2_03_Ctrl_Grp";
	rename -uid "09BC4FCC-4B66-2B6E-6685-0295C338912F";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 1.0408340855860843e-16 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999967 0.99999999999999967 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "L_Finger_2_03_CtrlShape" -p "L_Finger_2_03_Ctrl";
	rename -uid "D427B063-418D-8952-3044-B89AADD81EDD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -2.3991186704942363e-17 -0.39180581244561274 
		0.39180581244561236 -2.0775313423421279e-33 -0.5540970937771944 8.8138770239829789e-17 
		2.3991186704942363e-17 -0.39180581244561269 -0.39180581244561224 3.3928661615554579e-17 
		-4.7281370103768677e-16 -0.55409709377719407 2.3991186704942363e-17 0.39180581244561186 
		-0.39180581244561224 3.3986572389042944e-33 0.55409709377719374 -1.2941762237408959e-18 
		-2.3991186704942363e-17 0.3918058124456118 0.39180581244561236 -3.3928661615554579e-17 
		-3.6852718481106467e-16 0.55409709377719407 0 0 0 0 0 0 0 0 0;
createNode parentConstraint -n "L_Finger_2_03_Ctrl_Grp_parentConstraint1" -p "L_Finger_2_03_Ctrl_Grp";
	rename -uid "D6548A0B-4200-C7C1-1BFC-80A89D3E2120";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Finger_2_02_CtrlW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0.70732625025376095 -5.7553961596568115e-13 
		3.9796756912471865e-08 ;
	setAttr ".tg[0].tor" -type "double3" 7.7616971735762256e-15 0 -8.9055530856974739e-14 ;
	setAttr ".lr" -type "double3" 0 -175.00000246334338 89.999996746494304 ;
	setAttr ".rst" -type "double3" 6.3762411216047576 11.464961051940923 -0.99865812063215764 ;
	setAttr ".rsrr" -type "double3" 0 -175.00000246334338 89.999996746494304 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Finger_2_03_Ctrl_Grp_parentConstraint2" -p "L_Finger_2_03_Ctrl_Grp";
	rename -uid "EF993444-4384-9125-8F23-5B8E8C94CCE4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Finger_2_02_CtrlW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0.70732625025375917 -5.7465143754598103e-13 
		3.9796757023494167e-08 ;
	setAttr ".tg[0].tor" -type "double3" 7.7616971735762256e-15 0 -8.9055530856974739e-14 ;
	setAttr ".lr" -type "double3" 90.000005011351533 -5.9455342231604469e-06 0.0011145650018170152 ;
	setAttr ".rst" -type "double3" 6.3762411216047568 11.464961051940925 -0.99865812063215786 ;
	setAttr ".rsrr" -type "double3" 0 -175.00000246334338 89.999996746494304 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Finger_2_03_Ctrl_Grp_scaleConstraint1" -p "L_Finger_2_03_Ctrl_Grp";
	rename -uid "74897A58-435C-6CF5-2490-1C94B10EC799";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Finger_2_02_CtrlW0" -dv 1 -min 
		0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "L_Finger_1_03_Ctrl_Grp" -p "L_Hand_Ctrl";
	rename -uid "31482CDF-4331-E7C8-1F1D-0CB2831989DB";
createNode transform -n "L_Finger_1_03_Ctrl" -p "L_Finger_1_03_Ctrl_Grp";
	rename -uid "FD327ABE-4344-2E7D-9B18-2DB4C246EB95";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 -1.1102230246251565e-16 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "L_Finger_1_03_CtrlShape" -p "L_Finger_1_03_Ctrl";
	rename -uid "AEAB7A72-4690-D786-8315-9A8ED1FC0797";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 8.6418723299518293e-16 -0.3918058124456123 
		0.3918058124456123 8.8817841970012523e-16 -0.55409709377719385 3.3928661615554561e-17 
		9.1216960640506763e-16 -0.39180581244561224 -0.3918058124456123 9.2210708131567981e-16 
		-2.8724491187624158e-17 -0.55409709377719407 9.1216960640506763e-16 0.3918058124456123 
		-0.3918058124456123 8.8817841970012523e-16 0.55409709377719418 -5.5504284848016124e-17 
		8.6418723299518293e-16 0.39180581244561224 0.3918058124456123 8.5424975808457065e-16 
		7.556202503899795e-17 0.55409709377719407 0 0 0 0 0 0 0 0 0;
createNode parentConstraint -n "L_Finger_1_03_Ctrl_Grp_parentConstraint1" -p "L_Finger_1_03_Ctrl_Grp";
	rename -uid "DB638DCC-4FAB-9E51-684A-FBA13B03C67D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Finger_1_02_CtrlW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0.70732528722123611 1.3411494137471891e-12 
		1.8866802509176495e-07 ;
	setAttr ".tg[0].tor" -type "double3" 2.0592795488934785e-15 2.5444437451708134e-14 
		-1.2722218285563478e-14 ;
	setAttr ".lr" -type "double3" 0 -174.9999956959245 89.999996746555752 ;
	setAttr ".rst" -type "double3" 6.3762406447664448 11.535720825195316 -0.18987622857093045 ;
	setAttr ".rsrr" -type "double3" 0 -174.9999956959245 89.999996746555752 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Finger_1_03_Ctrl_Grp_parentConstraint2" -p "L_Finger_1_03_Ctrl_Grp";
	rename -uid "83A9DC1B-481C-D0D2-7B5A-B59DEC4570DB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Finger_1_02_CtrlW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0.70732528722123611 1.3420375921668892e-12 
		1.8866802520278725e-07 ;
	setAttr ".tg[0].tor" -type "double3" 2.0592795488934785e-15 2.5444437451708134e-14 
		-1.2722218285563478e-14 ;
	setAttr ".lr" -type "double3" 90.000005011356194 -5.9454737055796347e-06 0.001121332420704532 ;
	setAttr ".rst" -type "double3" 6.3762406447664439 11.535720825195316 -0.18987622857093056 ;
	setAttr ".rsrr" -type "double3" 0 -174.9999956959245 89.999996746555752 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Finger_1_03_Ctrl_Grp_scaleConstraint1" -p "L_Finger_1_03_Ctrl_Grp";
	rename -uid "EDE081B2-4FB4-53B3-5A05-B0B1FF9850D6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Finger_1_02_CtrlW0" -dv 1 -min 
		0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "L_Finger_1_02_Ctrl_Grp" -p "L_Hand_Ctrl";
	rename -uid "A4DA4593-4729-7044-1EC1-419F3CC91EAF";
createNode transform -n "L_Finger_1_02_Ctrl" -p "L_Finger_1_02_Ctrl_Grp";
	rename -uid "20F0E6F2-4903-91DE-4881-7A923DB38FE6";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr ".t" -type "double3" 0 0 2.2204460492503131e-16 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "L_Finger_1_02_CtrlShape" -p "L_Finger_1_02_Ctrl";
	rename -uid "EB17E166-49D1-F716-908A-358C6010C80A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -9.1216960640506743e-16 -0.3918058124456123 
		0.39180581244561208 -8.8817841970012523e-16 -0.55409709377719385 -1.3260479207821895e-16 
		-8.6418723299518303e-16 -0.3918058124456123 -0.39180581244561252 -8.5424975808457046e-16 
		-2.8724491187624158e-17 -0.55409709377719418 -8.6418723299518303e-16 0.39180581244561241 
		-0.39180581244561252 -8.8817841970012523e-16 0.55409709377719429 -2.220377385417896e-16 
		-9.1216960640506743e-16 0.3918058124456123 0.39180581244561208 -9.2210708131568001e-16 
		7.556202503899795e-17 0.55409709377719396 0 0 0 0 0 0 0 0 0;
createNode parentConstraint -n "L_Finger_1_02_Ctrl_Grp_parentConstraint1" -p "L_Finger_1_02_Ctrl_Grp";
	rename -uid "B6A30293-4F85-BC25-AD26-98A3148D3C91";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Finger_1_01_CtrlW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0.80443939013522403 1.5054624213917123e-12 
		7.8825834748386114e-15 ;
	setAttr ".tg[0].tor" -type "double3" 2.0592795488934785e-15 2.5444437451708134e-14 
		-1.2722218285563478e-14 ;
	setAttr ".lr" -type "double3" 0 -174.9999956959245 89.999996746555752 ;
	setAttr ".rst" -type "double3" 6.3762406847792237 12.240354537963871 -0.25152355432509954 ;
	setAttr ".rsrr" -type "double3" 0 -174.9999956959245 89.999996746555752 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Finger_1_02_Ctrl_Grp_parentConstraint2" -p "L_Finger_1_02_Ctrl_Grp";
	rename -uid "65F74926-4AE2-958A-0476-D1AC6B274EDA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Finger_1_01_CtrlW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0.80443939013522225 1.5063505998114124e-12 
		7.5495165674510645e-15 ;
	setAttr ".tg[0].tor" -type "double3" 2.0592795488934785e-15 2.5444437451708134e-14 
		-1.2722218285563478e-14 ;
	setAttr ".lr" -type "double3" 90.000005011356194 -5.9454737055795373e-06 0.0011213324207029415 ;
	setAttr ".rst" -type "double3" 6.3762406847792228 12.240354537963871 -0.25152355432509937 ;
	setAttr ".rsrr" -type "double3" 0 -174.9999956959245 89.999996746555752 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Finger_1_02_Ctrl_Grp_scaleConstraint1" -p "L_Finger_1_02_Ctrl_Grp";
	rename -uid "C246F6AC-4D2D-65E7-685B-72A3881A48D9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Finger_1_01_CtrlW0" -dv 1 -min 
		0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "L_Finger_1_01_Ctrl_Grp" -p "L_Hand_Ctrl";
	rename -uid "2A86F567-4DC2-039C-70EE-1882EB9233DE";
createNode transform -n "L_Finger_1_01_Ctrl" -p "L_Finger_1_01_Ctrl_Grp";
	rename -uid "DE60F0DA-4C69-084E-91CE-EF98A1700A9B";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr ".t" -type "double3" 0 0 1.1102230246251565e-16 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "L_Finger_1_01_CtrlShape" -p "L_Finger_1_01_Ctrl";
	rename -uid "9E7344CA-4B24-85A3-6D6A-6E81B6342DE0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -2.3991186704942375e-17 -0.39180581244561247 
		0.39180581244561208 -2.0775313423421289e-33 -0.55409709377719407 -1.8811594330947683e-16 
		2.3991186704942375e-17 -0.3918058124456123 -0.39180581244561263 3.3928661615554579e-17 
		-2.8724491187624164e-17 -0.5540970937771944 2.3991186704942375e-17 0.39180581244561236 
		-0.39180581244561263 3.3986572389042958e-33 0.5540970937771944 -2.7754888977304752e-16 
		-2.3991186704942375e-17 0.3918058124456123 0.39180581244561208 -3.3928661615554579e-17 
		7.5562025038997987e-17 0.55409709377719429 0 0 0 0 0 0 0 0 0;
createNode parentConstraint -n "L_Finger_1_01_Ctrl_Grp_parentConstraint1" -p "L_Finger_1_01_Ctrl_Grp";
	rename -uid "162D6A0F-4B1F-592E-B223-CC9CF50BA7FF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Hand_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 2.1584074677291252 0.41545400597408644 -0.11943593329335123 ;
	setAttr ".tg[0].tor" -type "double3" 90.000005011356194 -5.9454737055792959e-06 
		0.0011213324207021459 ;
	setAttr ".lr" -type "double3" 0 -174.9999956959245 89.999996746555752 ;
	setAttr ".rst" -type "double3" 6.3762407302856428 13.041732788085938 -0.32163512706756592 ;
	setAttr ".rsrr" -type "double3" 0 -174.9999956959245 89.999996746555752 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Finger_1_01_Ctrl_Grp_parentConstraint2" -p "L_Finger_1_01_Ctrl_Grp";
	rename -uid "9AC28FFF-4C5A-CDFB-806D-66B19174AF6A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Hand_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 2.1584074677291252 0.41545400597408644 -0.11943593329334945 ;
	setAttr ".tg[0].tor" -type "double3" 90.000005011356194 -5.9454737055792959e-06 
		0.0011213324207021459 ;
	setAttr ".lr" -type "double3" 90.000005011356194 -5.9454737055794399e-06 0.0011213324207021459 ;
	setAttr ".rst" -type "double3" 6.376240730285641 13.041732788085938 -0.32163512706756592 ;
	setAttr ".rsrr" -type "double3" 0 -174.9999956959245 89.999996746555752 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Finger_1_01_Ctrl_Grp_scaleConstraint1" -p "L_Finger_1_01_Ctrl_Grp";
	rename -uid "01CB8642-4D96-B399-04CE-739564F5AF74";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Hand_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Hand_Ctrl_Grp_parentConstraint1" -p "L_Hand_Ctrl_Grp";
	rename -uid "5FD21B6F-4A5D-DFFF-52AB-408BBC81A67B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_RK_Arm_03_JntW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 9.9139250941959745e-07 3.4680592704394719e-05 
		1.2515855019046285e-10 ;
	setAttr ".tg[0].tor" -type "double3" -2.9281011450531472e-11 -4.7800896715889593e-10 
		0.00013267735104558942 ;
	setAttr ".lr" -type "double3" 89.999994468478761 -4.9988829716542522 -89.999997284888622 ;
	setAttr ".rst" -type "double3" 6.2568046567235083 15.155729392538875 -0.92358458564690327 ;
	setAttr ".rsrr" -type "double3" 89.999994468478761 -4.9988829716542602 -89.999997284888622 ;
	setAttr -k on ".w0";
createNode transform -n "R_Hand_Ctrl_Grp" -p "Transform_Ctrl";
	rename -uid "D5BE6BCA-4973-D898-6E8A-EC9D977C47FD";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1.0000000000000004 ;
createNode transform -n "R_Hand_Ctrl" -p "R_Hand_Ctrl_Grp";
	rename -uid "C1FFEA25-4A0C-DE45-5D5C-CFBCAC296AF8";
	setAttr ".rp" -type "double3" 3.549406208946948e-07 -4.4698142370735994e-07 -3.4327651565746464e-07 ;
	setAttr ".sp" -type "double3" 3.549406208946948e-07 -4.4698142370735994e-07 -3.4327651565746464e-07 ;
createNode nurbsCurve -n "R_Hand_CtrlShape" -p "R_Hand_Ctrl";
	rename -uid "0CDA4A46-4079-150B-7372-0B8AF38423C0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-4.5749938581956959 -0.7836120718726507 0.78361128161470628
		-4.574993858195695 -1.1081946345358133 -3.4327651771510376e-07
		-4.5749938581956959 -0.78361207187265047 -0.78361196816774226
		-4.5749938581956959 -4.4698142635678969e-07 -1.1081945308309045
		-4.5749938581956959 0.78361117790979784 -0.78361196816774226
		-4.5749938581956968 1.108193740572962 -3.4327651789396964e-07
		-4.5749938581956959 0.78361117790979762 0.78361128161470628
		-4.5749938581956959 -4.4698142614821666e-07 1.1081938442778714
		-4.5749938581956959 -0.7836120718726507 0.78361128161470628
		-4.574993858195695 -1.1081946345358133 -3.4327651771510376e-07
		-4.5749938581956959 -0.78361207187265047 -0.78361196816774226
		;
createNode transform -n "R_Finger_2_01_Ctrl_Grp" -p "R_Hand_Ctrl";
	rename -uid "E235162E-40F7-D346-6EFF-DCB3C0E72E66";
createNode transform -n "R_Finger_2_01_Ctrl" -p "R_Finger_2_01_Ctrl_Grp";
	rename -uid "875253F5-486F-0FF5-DC62-9A92E27B7DA7";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr ".rp" -type "double3" 0 0 1.2944106920174947e-07 ;
	setAttr ".sp" -type "double3" 0 0 1.2944106920174947e-07 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "R_Finger_2_01_CtrlShape" -p "R_Finger_2_01_Ctrl";
	rename -uid "354D2327-43E6-E4BB-C4BC-75AD4022C29F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.2069997132878198e-13 -0.39180581244561219 0.3918059418866815
		4.5357217756744154e-13 -0.55409709377719374 1.2944106923697919e-07
		3.2074795370219168e-13 -0.39180581244561202 -0.3918056830045431
		3.392866161557806e-17 -2.8724491187596369e-17 -0.55409696433612499
		-3.2069997132878188e-13 0.39180581244561208 -0.3918056830045431
		-4.5357217756744175e-13 0.55409709377719407 1.2944106914754622e-07
		-3.2074795370219168e-13 0.39180581244561202 0.3918059418866815
		-3.39286616156164e-17 7.5562025038970167e-17 0.55409722321826338
		3.2069997132878198e-13 -0.39180581244561219 0.3918059418866815
		4.5357217756744154e-13 -0.55409709377719374 1.2944106923697919e-07
		3.2074795370219168e-13 -0.39180581244561202 -0.3918056830045431
		;
createNode parentConstraint -n "R_Finger_2_01_Ctrl_Grp_parentConstraint1" -p "R_Finger_2_01_Ctrl_Grp";
	rename -uid "794BA710-41F6-B959-0367-0BA158E40EA6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Hand_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -2.1584243493031678 0.39641744648831084 0.11944038155030157 ;
	setAttr ".tg[0].tor" -type "double3" 90.000005531508748 -1.078413124561647e-10 0.0011170283457963023 ;
	setAttr ".lr" -type "double3" -9.4368345040820508e-12 5.0000000000000027 89.999999999891742 ;
	setAttr ".rst" -type "double3" -6.3762450000024833 12.970972473493354 -1.1304170719010775 ;
	setAttr ".rsrr" -type "double3" -9.4368345040820508e-12 5.0000000000000027 89.999999999891742 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Finger_2_01_Ctrl_Grp_parentConstraint2" -p "R_Finger_2_01_Ctrl_Grp";
	rename -uid "5B23789B-41C5-0078-2B9A-1E8CD442A5CC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Hand_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -2.1584243493031661 0.39641744648831062 0.11944038155030245 ;
	setAttr ".tg[0].tor" -type "double3" 90.000005531508748 -1.078413124561647e-10 0.0011170283457963023 ;
	setAttr ".lr" -type "double3" 90.000005531508734 0 0.0011170283457963023 ;
	setAttr ".rst" -type "double3" -6.3762450000024842 12.970972473493354 -1.1304170719010775 ;
	setAttr ".rsrr" -type "double3" -9.4368345040820508e-12 5.0000000000000027 89.999999999891742 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Finger_2_01_Ctrl_Grp_scaleConstraint1" -p "R_Finger_2_01_Ctrl_Grp";
	rename -uid "A656A8DD-46EE-6AAC-1A95-6798327FAC6C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Hand_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "R_Finger_2_02_Ctrl_Grp" -p "R_Hand_Ctrl";
	rename -uid "36E7449C-4A16-83A0-CD51-27A9ADFEA824";
createNode transform -n "R_Finger_2_02_Ctrl" -p "R_Finger_2_02_Ctrl_Grp";
	rename -uid "B86E42B9-4DB2-5AEF-7ABF-079CF432E03E";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr ".rp" -type "double3" 1.7763568394002505e-15 0 -2.211772431870429e-16 ;
	setAttr ".sp" -type "double3" 1.7763568394002505e-15 0 -2.211772431870429e-16 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "R_Finger_2_02_CtrlShape" -p "R_Finger_2_02_Ctrl";
	rename -uid "2C086194-4EC9-A1C4-B319-2280BD61074B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.2176214648214587e-13 -0.39180581244561241 0.39180581244561224
		4.5470642452769759e-13 -0.55409709377719396 -7.5792598239978519e-17
		3.2181012885555562e-13 -0.39180581244561224 -0.39180581244561236
		9.2210708131570328e-16 -2.8724491186868922e-17 -0.55409709377719429
		-3.1998578964274557e-13 0.3918058124456123 -0.39180581244561236
		-4.5293006768829764e-13 0.55409709377719429 -1.6522554470354919e-16
		-3.2003377201615537e-13 0.39180581244561224 0.39180581244561224
		8.5424975808450873e-16 7.5562025039697608e-17 0.55409709377719407
		3.2176214648214587e-13 -0.39180581244561241 0.39180581244561224
		4.5470642452769759e-13 -0.55409709377719396 -7.5792598239978519e-17
		3.2181012885555562e-13 -0.39180581244561224 -0.39180581244561236
		;
createNode parentConstraint -n "R_Finger_2_02_Ctrl_Grp_parentConstraint1" -p "R_Finger_2_02_Ctrl_Grp";
	rename -uid "F2FA8CAE-4316-AA1A-1250-81B2DEDF4E29";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Finger_2_01_CtrlW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -0.8044609201747619 -1.5152323840084136e-12 
		-3.5313958298768822e-06 ;
	setAttr ".tg[0].tor" -type "double3" -9.4367234930079237e-12 -3.1805546814635168e-15 
		1.0787169257651664e-10 ;
	setAttr ".lr" -type "double3" -3.9908798545555496e-16 5.0000000000000036 89.999999999891727 ;
	setAttr ".rst" -type "double3" -6.3762450000024824 12.169572473493355 -1.0603070719010774 ;
	setAttr ".rsrr" -type "double3" -3.9908798545555496e-16 5.0000000000000036 89.999999999891727 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Finger_2_02_Ctrl_Grp_parentConstraint2" -p "R_Finger_2_02_Ctrl_Grp";
	rename -uid "E844F565-4450-BF39-031A-C0AE4FC39277";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Finger_2_01_CtrlW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -0.8044609201747619 -1.5152323840084136e-12 
		-3.5313958298768822e-06 ;
	setAttr ".tg[0].tor" -type "double3" -9.4367234930079237e-12 -3.1805546814635168e-15 
		1.0787169257651664e-10 ;
	setAttr ".lr" -type "double3" 90.000005531508734 0 0.0011170283457963026 ;
	setAttr ".rst" -type "double3" -6.3762450000024824 12.169572473493355 -1.0603070719010774 ;
	setAttr ".rsrr" -type "double3" -3.9908798545555496e-16 5.0000000000000036 89.999999999891727 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Finger_2_02_Ctrl_Grp_scaleConstraint1" -p "R_Finger_2_02_Ctrl_Grp";
	rename -uid "58C17888-4C7C-A96F-0D02-2FA40BCCEA97";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Finger_2_01_CtrlW0" -dv 1 -min 
		0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "R_Finger_2_03_Ctrl_Grp" -p "R_Hand_Ctrl";
	rename -uid "204453CC-4A9B-B5A7-0709-239498A737C6";
createNode transform -n "R_Finger_2_03_Ctrl" -p "R_Finger_2_03_Ctrl_Grp";
	rename -uid "1B6807C6-431D-4215-AABB-DA977F14FAF5";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr ".rp" -type "double3" 0 0 -1.0581813203458523e-16 ;
	setAttr ".sp" -type "double3" 0 0 -1.0581813203458523e-16 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "R_Finger_2_03_CtrlShape" -p "R_Finger_2_03_Ctrl";
	rename -uid "6DB5095F-4AEF-C8A1-2C3C-428FC91066E1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.2069997132878152e-13 -0.39180581244561169 0.39180581244561224
		4.5357217756744094e-13 -0.55409709377719307 -2.0281447008720673e-17
		3.2074795370219122e-13 -0.39180581244561152 -0.39180581244561236
		3.3928661615214543e-17 4.1536471866246602e-16 -0.55409709377719418
		-3.2069997132878218e-13 0.39180581244561247 -0.39180581244561236
		-4.5357217756744205e-13 0.5540970937771944 -1.0971439347229138e-16
		-3.2074795370219198e-13 0.39180581244561241 0.39180581244561224
		-3.3928661615979929e-17 5.1965123488903256e-16 0.55409709377719418
		3.2069997132878152e-13 -0.39180581244561169 0.39180581244561224
		4.5357217756744094e-13 -0.55409709377719307 -2.0281447008720673e-17
		3.2074795370219122e-13 -0.39180581244561152 -0.39180581244561236
		;
createNode parentConstraint -n "R_Finger_2_03_Ctrl_Grp_parentConstraint1" -p "R_Finger_2_03_Ctrl_Grp";
	rename -uid "4C23A577-4157-E6C6-025E-A8A9FB066D2E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Finger_2_02_CtrlW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -0.7073260000000019 -3.0553337637684308e-12 
		-3.0410382134346547e-08 ;
	setAttr ".tg[0].tor" -type "double3" -2.8356703186530702e-07 -2.4633431176918326e-06 
		3.2411860342732117e-06 ;
	setAttr ".lr" -type "double3" 2.8356703347314845e-07 4.9999975366568785 90.00000325345853 ;
	setAttr ".rst" -type "double3" -6.3762450000007584 11.464938059820474 -0.99865957930100901 ;
	setAttr ".rsrr" -type "double3" 2.8356703347314845e-07 4.9999975366568785 90.00000325345853 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Finger_2_03_Ctrl_Grp_parentConstraint2" -p "R_Finger_2_03_Ctrl_Grp";
	rename -uid "1E14A684-4EAD-9161-EE80-9DA741A23C02";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Finger_2_02_CtrlW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -0.7073260000000019 -3.0579982990275312e-12 
		-3.0410382134346547e-08 ;
	setAttr ".tg[0].tor" -type "double3" -2.8356703186530702e-07 -2.4633431176918326e-06 
		3.2411860342732117e-06 ;
	setAttr ".lr" -type "double3" 90.000005531508862 -3.2411857964546112e-06 0.0011145650023649022 ;
	setAttr ".rst" -type "double3" -6.3762450000007558 11.464938059820474 -0.99865957930100901 ;
	setAttr ".rsrr" -type "double3" 2.8356703347314845e-07 4.9999975366568785 90.00000325345853 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Finger_2_03_Ctrl_Grp_scaleConstraint1" -p "R_Finger_2_03_Ctrl_Grp";
	rename -uid "3C66EC3F-4ADF-6253-BD76-A8BEDACE6928";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Finger_2_02_CtrlW0" -dv 1 -min 
		0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "R_Finger_1_01_Ctrl_Grp" -p "R_Hand_Ctrl";
	rename -uid "001F5521-4FAB-D46A-0215-448AB7F8CCC1";
createNode transform -n "R_Finger_1_01_Ctrl" -p "R_Finger_1_01_Ctrl_Grp";
	rename -uid "2D7D3E39-4C08-5D5D-D9C2-F69DA61B1F11";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr ".rp" -type "double3" -1.7763568394002505e-15 8.8817841970012523e-16 4.5295334050177161e-07 ;
	setAttr ".sp" -type "double3" -1.7763568394002505e-15 8.8817841970012523e-16 4.5295334050177161e-07 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "R_Finger_1_01_CtrlShape" -p "R_Finger_1_01_Ctrl";
	rename -uid "7205101D-4A1D-D54B-C9A5-E3BDC38D0665";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		7.3429020724723904e-13 -0.39180581244561202 0.39180626539895302
		1.0384770984684113e-12 -0.55409709377719352 4.5295334075774486e-07
		7.343381896206488e-13 -0.39180581244561197 -0.39180535949227147
		3.3928661615608388e-17 -2.8724491187560544e-17 -0.55409664082385335
		-7.3429020724723904e-13 0.39180581244561202 -0.39180535949227147
		-1.0384770984684119e-12 0.55409709377719385 4.5295334066831194e-07
		-7.343381896206488e-13 0.39180581244561197 0.39180626539895302
		-3.3928661615696174e-17 7.5562025038934311e-17 0.55409754673053446
		7.3429020724723904e-13 -0.39180581244561202 0.39180626539895302
		1.0384770984684113e-12 -0.55409709377719352 4.5295334075774486e-07
		7.343381896206488e-13 -0.39180581244561197 -0.39180535949227147
		;
createNode parentConstraint -n "R_Finger_1_01_Ctrl_Grp_parentConstraint1" -p "R_Finger_1_01_Ctrl_Grp";
	rename -uid "EB82853A-4A2E-878A-8294-3BB26EA72824";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Hand_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -2.1584073493033511 -0.41545355351167251 0.11943644343608728 ;
	setAttr ".tg[0].tor" -type "double3" 90.000005531508748 -1.078413124561647e-10 0.0011170283457963023 ;
	setAttr ".lr" -type "double3" -9.4368345040820508e-12 5.0000000000000027 89.999999999891742 ;
	setAttr ".rst" -type "double3" -6.3762411402687631 13.041732860976577 -0.3216355881282299 ;
	setAttr ".rsrr" -type "double3" -9.4368345040820508e-12 5.0000000000000027 89.999999999891742 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Finger_1_01_Ctrl_Grp_parentConstraint2" -p "R_Finger_1_01_Ctrl_Grp";
	rename -uid "5501A13D-47AD-4F18-B1B5-04A3DA46ACF3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Hand_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -2.1584073493033511 -0.41545355351167251 0.11943644343608817 ;
	setAttr ".tg[0].tor" -type "double3" 90.000005531508748 -1.078413124561647e-10 0.0011170283457963023 ;
	setAttr ".lr" -type "double3" 90.000005531508734 0 0.0011170283457963023 ;
	setAttr ".rst" -type "double3" -6.376241140268764 13.041732860976577 -0.3216355881282299 ;
	setAttr ".rsrr" -type "double3" -9.4368345040820508e-12 5.0000000000000027 89.999999999891742 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Finger_1_01_Ctrl_Grp_scaleConstraint1" -p "R_Finger_1_01_Ctrl_Grp";
	rename -uid "B6EF0842-4FBC-835F-C8BB-8D801BFE95AF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Hand_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "R_Finger_1_02_Ctrl_Grp" -p "R_Hand_Ctrl";
	rename -uid "A9EBB76A-42B5-D831-D8D5-ED95DD714F23";
createNode transform -n "R_Finger_1_02_Ctrl" -p "R_Finger_1_02_Ctrl_Grp";
	rename -uid "5B3117A9-415F-5915-BDA6-6C8BC9908F79";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr ".rp" -type "double3" 0 0 4.5295332395944854e-07 ;
	setAttr ".sp" -type "double3" 0 0 4.5295332395944854e-07 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "R_Finger_1_02_CtrlShape" -p "R_Finger_1_02_Ctrl";
	rename -uid "FDC710E2-4301-DD94-267E-79A36EBB526E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		7.3517838566693947e-13 -0.39180581244561219 0.39180626539893648
		1.0393652768881118e-12 -0.55409709377719374 4.5295332415991064e-07
		7.3522636804034892e-13 -0.39180581244561197 -0.39180535949228812
		9.2210708131573306e-16 -2.8724491185895949e-17 -0.55409664082387011
		-7.3340202882753882e-13 0.39180581244561197 -0.39180535949228812
		-1.0375889200487119e-12 0.55409709377719396 4.5295332407047772e-07
		-7.3345001120094867e-13 0.39180581244561197 0.39180626539893648
		8.5424975808442895e-16 7.5562025040598955e-17 0.55409754673051825
		7.3517838566693947e-13 -0.39180581244561219 0.39180626539893648
		1.0393652768881118e-12 -0.55409709377719374 4.5295332415991064e-07
		7.3522636804034892e-13 -0.39180581244561197 -0.39180535949228812
		;
createNode parentConstraint -n "R_Finger_1_02_Ctrl_Grp_parentConstraint1" -p "R_Finger_1_02_Ctrl_Grp";
	rename -uid "83E4275B-41FA-775F-BEBE-FDBFC1E1A6BF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Finger_1_01_CtrlW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -0.80443899999999857 -5.9028337773270323e-12 
		-3.925236424784373e-07 ;
	setAttr ".tg[0].tor" -type "double3" -9.4367234930079237e-12 -3.1805546814635168e-15 
		1.0787169257651664e-10 ;
	setAttr ".lr" -type "double3" -3.9908798545555496e-16 5.0000000000000036 89.999999999891727 ;
	setAttr ".rst" -type "double3" -6.3762411402643755 12.240354999505145 -0.25152404938830164 ;
	setAttr ".rsrr" -type "double3" -3.9908798545555496e-16 5.0000000000000036 89.999999999891727 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Finger_1_02_Ctrl_Grp_parentConstraint2" -p "R_Finger_1_02_Ctrl_Grp";
	rename -uid "E866BB62-41F9-FAAD-8070-E6AFC0782650";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Finger_1_01_CtrlW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -0.80443900000000035 -5.9019455989073322e-12 
		-3.925236424784373e-07 ;
	setAttr ".tg[0].tor" -type "double3" -9.4367234930079237e-12 -3.1805546814635168e-15 
		1.0787169257651664e-10 ;
	setAttr ".lr" -type "double3" 90.000005531508734 0 0.0011170283457963026 ;
	setAttr ".rst" -type "double3" -6.3762411402643764 12.240354999505143 -0.25152404938830147 ;
	setAttr ".rsrr" -type "double3" -3.9908798545555496e-16 5.0000000000000036 89.999999999891727 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Finger_1_02_Ctrl_Grp_scaleConstraint1" -p "R_Finger_1_02_Ctrl_Grp";
	rename -uid "CADEB0E9-49CD-659A-06D9-C7AA6D5BE03E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Finger_1_01_CtrlW0" -dv 1 -min 
		0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "R_Finger_1_03_Ctrl_Grp" -p "R_Hand_Ctrl";
	rename -uid "E6C5BEBC-4004-396C-FC0D-9C951856C9BF";
createNode transform -n "R_Finger_1_03_Ctrl" -p "R_Finger_1_03_Ctrl_Grp";
	rename -uid "8C5FA6FB-476C-5CBE-59A2-20A99BF78F89";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr ".rp" -type "double3" 0 8.8817841970012523e-16 2.6428529198430084e-07 ;
	setAttr ".sp" -type "double3" 0 8.8817841970012523e-16 2.6428529198430084e-07 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "R_Finger_1_03_CtrlShape" -p "R_Finger_1_03_Ctrl";
	rename -uid "12DFA5FA-4A79-EF18-8D00-B7A1CAC0FF4E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		7.3340202882753922e-13 -0.39180581244561219 0.3918060767309044
		1.0375889200487115e-12 -0.55409709377719374 2.6428529212925179e-07
		7.3345001120094877e-13 -0.39180581244561202 -0.39180554816032021
		-8.5424975808451652e-16 -2.8724491189225157e-17 -0.55409682949190209
		-7.3517838566693927e-13 0.39180581244561208 -0.39180554816032021
		-1.0393652768881124e-12 0.55409709377719407 2.6428529203981887e-07
		-7.3522636804034902e-13 0.39180581244561202 0.3918060767309044
		-9.2210708131582102e-16 7.556202503726974e-17 0.55409735806248628
		7.3340202882753922e-13 -0.39180581244561219 0.3918060767309044
		1.0375889200487115e-12 -0.55409709377719374 2.6428529212925179e-07
		7.3345001120094877e-13 -0.39180581244561202 -0.39180554816032021
		;
createNode parentConstraint -n "nurbsCircle15_Grp_parentConstraint1" -p "R_Finger_1_03_Ctrl_Grp";
	rename -uid "BEC3E27E-4B56-CE2F-109D-FF8FF61CDC9D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Finger_1_02_CtrlW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -0.70732499999999554 2.4211743721025414e-12 
		-3.9981885846529508e-07 ;
	setAttr ".tg[0].tor" -type "double3" -9.438386714641602e-12 -4.7708320221952759e-15 
		1.0789077590460544e-10 ;
	setAttr ".lr" -type "double3" -3.9908798545555496e-16 5.0000000000000053 89.999999999891699 ;
	setAttr ".rst" -type "double3" -6.376241140268128 11.535721589308379 -0.18987656071704179 ;
	setAttr ".rsrr" -type "double3" -3.9908798545555496e-16 5.0000000000000053 89.999999999891699 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "nurbsCircle15_Grp_parentConstraint2" -p "R_Finger_1_03_Ctrl_Grp";
	rename -uid "C3DE5568-4805-B259-4CF7-5A900B94F71E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Finger_1_02_CtrlW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -0.70732499999999376 2.4211743721025414e-12 
		-3.9981885824325047e-07 ;
	setAttr ".tg[0].tor" -type "double3" -9.438386714641602e-12 -4.7708320221952759e-15 
		1.0789077590460544e-10 ;
	setAttr ".lr" -type "double3" 90.000005531508734 -9.7062825972397362e-20 0.0011170283457955081 ;
	setAttr ".rst" -type "double3" -6.376241140268128 11.53572158930838 -0.18987656071704173 ;
	setAttr ".rsrr" -type "double3" -3.9908798545555496e-16 5.0000000000000053 89.999999999891699 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "nurbsCircle15_Grp_scaleConstraint1" -p "R_Finger_1_03_Ctrl_Grp";
	rename -uid "ADC0FE87-4728-6017-DF48-1C9350470F10";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Finger_1_02_CtrlW0" -dv 1 -min 
		0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "R_Thumb_01_Ctrl_Grp" -p "R_Hand_Ctrl";
	rename -uid "640E058E-4170-EAE5-9B37-E88DE4D83D51";
createNode transform -n "R_Thumb_01_Ctrl" -p "R_Thumb_01_Ctrl_Grp";
	rename -uid "772FC562-406A-7171-9069-64A905FB6963";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr ".rp" -type "double3" 0 -1.7763568394002505e-15 -8.8817841970012523e-16 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 -8.8817841970012523e-16 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "R_Thumb_01_CtrlShape" -p "R_Thumb_01_Ctrl";
	rename -uid "8BF58BDC-4C23-694F-9803-73A2C2A2CC87";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-7.1973560114827051e-17 -0.39180581244561186 0.39180581244561313
		-6.785732323110906e-17 -0.55409709377719329 9.2210708131567981e-16
		-2.3991186704942286e-17 -0.39180581244561169 -0.3918058124456113
		3.3928661615554629e-17 4.1536471866243846e-16 -0.55409709377719318
		7.1973560114827149e-17 0.39180581244561263 -0.3918058124456113
		6.785732323110922e-17 0.55409709377719463 8.3267413485210911e-16
		2.3991186704942387e-17 0.39180581244561258 0.39180581244561313
		-3.3928661615554518e-17 5.1965123488906057e-16 0.55409709377719485
		-7.1973560114827051e-17 -0.39180581244561186 0.39180581244561313
		-6.785732323110906e-17 -0.55409709377719329 9.2210708131567981e-16
		-2.3991186704942286e-17 -0.39180581244561169 -0.3918058124456113
		;
createNode parentConstraint -n "R_Thumb_01_Ctrl_Grp_parentConstraint1" -p "R_Thumb_01_Ctrl_Grp";
	rename -uid "5464BE6D-4C32-B75A-8A7E-3C9676F4C469";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Hand_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -1.2729703626475573 -0.79519455234446346 -0.16328559992343994 ;
	setAttr ".tg[0].tor" -type "double3" 167.50216674654345 -32.58932827999319 28.91871995142791 ;
	setAttr ".lr" -type "double3" 97.411218737951955 28.043679939793037 127.60869821715404 ;
	setAttr ".rst" -type "double3" -6.0935191335705881 13.956891232906326 -0.020492667657812769 ;
	setAttr ".rsrr" -type "double3" 97.411218737951955 28.043679939793037 127.60869821715404 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Thumb_01_Ctrl_Grp_parentConstraint2" -p "R_Thumb_01_Ctrl_Grp";
	rename -uid "B9A15806-4E4A-E7C0-03AB-E2BCB80A7E48";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Hand_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -1.2729703626475573 -0.79519455234446323 -0.16328559992343994 ;
	setAttr ".tg[0].tor" -type "double3" 167.50216674654345 -32.58932827999319 28.91871995142791 ;
	setAttr ".lr" -type "double3" 167.50216674654345 -32.589328279993197 28.918719951427903 ;
	setAttr ".rst" -type "double3" -6.0935191335705881 13.956891232906326 -0.020492667657812991 ;
	setAttr ".rsrr" -type "double3" 97.411218737951955 28.043679939793037 127.60869821715404 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Thumb_01_Ctrl_Grp_scaleConstraint1" -p "R_Thumb_01_Ctrl_Grp";
	rename -uid "A5AF7E4D-4F4C-C2B6-837C-569CECE89FEB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Hand_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "R_Thumb_02_Ctrl_Grp" -p "R_Hand_Ctrl";
	rename -uid "F69605FD-4A70-18B5-08D9-C0A37ADA50DD";
createNode transform -n "R_Thumb_02_Ctrl" -p "R_Thumb_02_Ctrl_Grp";
	rename -uid "865CBD4C-4186-AB9D-228A-EEBFDFCB2435";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr ".rp" -type "double3" 3.5527136788005009e-15 0 -8.8817841970012523e-16 ;
	setAttr ".sp" -type "double3" 3.5527136788005009e-15 0 -8.8817841970012523e-16 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "R_Thumb_02_CtrlShape" -p "R_Thumb_02_Ctrl";
	rename -uid "1AD9528F-4C08-5133-C8F3-F88B11E6D328";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.3520458341983003e-11 -0.39180581244561247 0.3918058124456133
		4.7405856523950811e-11 -0.55409709377719407 9.2210708131568021e-16
		3.3520506324356407e-11 -0.3918058124456123 -0.39180581244561147
		-1.7424281777822384e-15 -2.8724491336703437e-17 -0.55409709377719341
		-3.3524011055661797e-11 0.39180581244561236 -0.39180581244561147
		-4.7409409237629638e-11 0.5540970937771944 8.3267413485210951e-16
		-3.3524059038035207e-11 0.3918058124456123 0.3918058124456133
		-1.8102855010222704e-15 7.556202488411295e-17 0.55409709377719507
		3.3520458341983003e-11 -0.39180581244561247 0.3918058124456133
		4.7405856523950811e-11 -0.55409709377719407 9.2210708131568021e-16
		3.3520506324356407e-11 -0.3918058124456123 -0.39180581244561147
		;
createNode parentConstraint -n "R_Thumb_02_Ctrl_Grp_parentConstraint1" -p "R_Thumb_02_Ctrl_Grp";
	rename -uid "DF1E8C59-49CF-3049-B286-AAB8B35F9828";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Thumb_01_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -0.51208700000000107 8.8817841970012523e-16 
		0 ;
	setAttr ".tg[0].tor" -type "double3" 3.493611468012038 -0.60360330455906164 -0.16931820389670924 ;
	setAttr ".lr" -type "double3" 100.59478863042553 28.287882356941697 126.95376085240414 ;
	setAttr ".rst" -type "double3" -5.8177019962975178 13.598847834932446 0.22026224407361736 ;
	setAttr ".rsrr" -type "double3" 100.59478863042553 28.287882356941697 126.95376085240414 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Thumb_02_Ctrl_Grp_parentConstraint2" -p "R_Thumb_02_Ctrl_Grp";
	rename -uid "E65E729C-477B-2002-43F6-6B953F7C5908";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Thumb_01_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -0.51208700000000285 0 0 ;
	setAttr ".tg[0].tor" -type "double3" 3.493611468012038 -0.60360330455906164 -0.16931820389670924 ;
	setAttr ".lr" -type "double3" 170.97305868182107 -31.963380801633086 28.959594826715616 ;
	setAttr ".rst" -type "double3" -5.8177019962975169 13.598847834932444 0.22026224407361741 ;
	setAttr ".rsrr" -type "double3" 100.59478863042553 28.287882356941697 126.95376085240414 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Thumb_02_Ctrl_Grp_scaleConstraint1" -p "R_Thumb_02_Ctrl_Grp";
	rename -uid "9E57B316-421D-F55E-48C0-C5B8285BDFD7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Thumb_01_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "R_Thumb_03_Ctrl_Grp" -p "R_Hand_Ctrl";
	rename -uid "AC3E5340-4570-04C3-146D-25B0A28F1638";
createNode transform -n "R_Thumb_03_Ctrl" -p "R_Thumb_03_Ctrl_Grp";
	rename -uid "8ED621A4-4A00-70D6-F5BA-CABE0D291407";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr ".rp" -type "double3" 1.7763568394002505e-15 -8.8817841970012523e-16 8.8817841970012523e-16 ;
	setAttr ".sp" -type "double3" 1.7763568394002505e-15 -8.8817841970012523e-16 8.8817841970012523e-16 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "R_Thumb_03_CtrlShape" -p "R_Thumb_03_Ctrl";
	rename -uid "9C3748C7-46F8-03E6-FF6B-BFBE4BC378FD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.3522234698822404e-11 -0.39180581244561247 0.39180581244561236
		4.7407632880790211e-11 -0.55409709377719407 3.3928661615554573e-17
		3.3522282681195807e-11 -0.3918058124456123 -0.39180581244561236
		3.3928661618012189e-17 -2.8724491184721279e-17 -0.55409709377719429
		-3.3522234698822397e-11 0.39180581244561236 -0.39180581244561236
		-4.7407632880790237e-11 0.5540970937771944 -5.5504284848016148e-17
		-3.3522282681195807e-11 0.3918058124456123 0.39180581244561236
		-3.3928661622019529e-17 7.5562025036095102e-17 0.55409709377719429
		3.3522234698822404e-11 -0.39180581244561247 0.39180581244561236
		4.7407632880790211e-11 -0.55409709377719407 3.3928661615554573e-17
		3.3522282681195807e-11 -0.3918058124456123 -0.39180581244561236
		;
createNode parentConstraint -n "R_Thumb_03_Ctrl_Grp_parentConstraint1" -p "R_Thumb_03_Ctrl_Grp";
	rename -uid "2EC044D3-475E-A3C2-C80A-F4B4BFE68C01";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Thumb_02_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -0.68048700000000295 8.8817841970012523e-16 
		1.3322676295501878e-15 ;
	setAttr ".tg[0].tor" -type "double3" 2.4148365140260741e-06 -3.8961794847928094e-14 
		0 ;
	setAttr ".lr" -type "double3" 100.59479104526201 28.287882356941701 126.95376085240414 ;
	setAttr ".rst" -type "double3" -5.457467756785241 13.119997305266658 0.54274638335926573 ;
	setAttr ".rsrr" -type "double3" 100.59479104526201 28.287882356941701 126.95376085240414 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Thumb_03_Ctrl_Grp_parentConstraint2" -p "R_Thumb_03_Ctrl_Grp";
	rename -uid "17384E1E-436B-2113-A7A2-349CE948E980";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Thumb_02_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -0.68048700000000295 1.7763568394002505e-15 
		1.7763568394002505e-15 ;
	setAttr ".tg[0].tor" -type "double3" 2.4148365140260741e-06 -3.8961794847928094e-14 
		0 ;
	setAttr ".lr" -type "double3" 170.97306109665757 -31.9633808016331 28.959594826715634 ;
	setAttr ".rst" -type "double3" -5.4574677567852401 13.119997305266658 0.5427463833592665 ;
	setAttr ".rsrr" -type "double3" 100.59479104526201 28.287882356941701 126.95376085240414 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Thumb_03_Ctrl_Grp_scaleConstraint1" -p "R_Thumb_03_Ctrl_Grp";
	rename -uid "93EE9338-49D0-B888-2FDC-7FA75C2BEBB5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Thumb_02_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Hand_Ctrl_Grp_parentConstraint1" -p "R_Hand_Ctrl_Grp";
	rename -uid "AF070916-448B-0A96-97BA-D7B46866FEB1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_RK_Arm_03_JntW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 2.2436573310358199e-07 8.0537069790942439e-08 
		3.3268666488339704e-07 ;
	setAttr ".tg[0].tor" -type "double3" -2.3654372932548191e-07 -2.7043070618476743e-06 
		-2.4331243313195932e-13 ;
	setAttr ".lr" -type "double3" -90.000005294965021 4.9988829716544521 90.000000000000014 ;
	setAttr ".rst" -type "double3" -6.2568049999999991 15.155729000000003 -0.92358499999999988 ;
	setAttr ".rsrr" -type "double3" -90.000005294965021 4.9988829716544521 90.000000000000014 ;
	setAttr -k on ".w0";
createNode transform -n "L_Clav_Ctrl_Grp" -p "Transform_Ctrl";
	rename -uid "A1CF4866-4EA4-0458-831D-0B8E4DC749FB";
createNode transform -n "L_Clav_Ctrl" -p "L_Clav_Ctrl_Grp";
	rename -uid "DE38BAFA-428C-9B8E-880A-C5BF5A266C34";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr ".t" -type "double3" -4.4408920985006262e-16 2.2204460492503131e-16 0 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "L_Clav_CtrlShape" -p "L_Clav_Ctrl";
	rename -uid "BAB75D75-45F7-3105-C165-F19F0479C202";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 0.44139683413826253 1.927054866786273 
		-1.9270548667862877 0.44139683413826258 2.7252671280462253 -7.5929845494412369e-15 
		0.44139683413826253 1.9270548667862715 1.9270548667862628 0.44139683413826253 1.2168968918420092e-16 
		2.7252671280462151 0.44139683413826253 -1.9270548667862726 1.9270548667862628 0.44139683413826258 
		-2.7252671280462253 -7.1531181940701358e-15 0.44139683413826253 -1.9270548667862715 
		-1.9270548667862877 0.44139683413826253 -3.912323560000946e-16 -2.7252671280462351 
		0 0 0 0 0 0 0 0 0;
createNode parentConstraint -n "L_Clav_Ctrl_Grp_parentConstraint1" -p "L_Clav_Ctrl_Grp";
	rename -uid "C115E223-4D07-9DCC-C8A0-958105496455";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine_04_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 4.011713159333997 -0.3757107534693982 3.7234814167022594 ;
	setAttr ".tg[0].tor" -type "double3" 2.0035338016716292e-05 -89.999992375086535 
		0 ;
	setAttr ".lr" -type "double3" 89.999999999999261 -8.5281515854748883e-13 7.6249134802995331e-06 ;
	setAttr ".rst" -type "double3" 3.7234814167022807 30.112640380859382 -1.802073001861344 ;
	setAttr ".rsrr" -type "double3" 89.999999999999261 -8.5281515854748883e-13 7.6249134802995331e-06 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Clav_Ctrl_Grp_parentConstraint2" -p "L_Clav_Ctrl_Grp";
	rename -uid "FC326CF8-4AE0-AABC-EE98-9F8D7C7F2B72";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine_04_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 4.011713159333997 -0.37571075346939797 3.7234814167022594 ;
	setAttr ".tg[0].tor" -type "double3" 2.0035338016716292e-05 -89.999992375086535 
		0 ;
	setAttr ".lr" -type "double3" 89.999999999999261 -8.5281515854748883e-13 7.6249134802995331e-06 ;
	setAttr ".rst" -type "double3" 3.7234814167022807 30.112640380859382 -1.8020730018613436 ;
	setAttr ".rsrr" -type "double3" 89.999999999999261 -8.5281515854748883e-13 7.6249134802995331e-06 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Clav_Ctrl_Grp_scaleConstraint1" -p "L_Clav_Ctrl_Grp";
	rename -uid "537F7F92-4332-7A40-4E95-52B2349D5FA8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine_04_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "R_Clav_Ctrl_Grp" -p "Transform_Ctrl";
	rename -uid "5F49FF80-4D1B-61D5-F0A8-FFBFC8D1D4AF";
createNode transform -n "R_Clav_Ctrl" -p "R_Clav_Ctrl_Grp";
	rename -uid "77CA14A6-4BBD-0F8D-3B6F-EA9357C1005C";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr ".rp" -type "double3" -4.1670224604217765e-07 -3.1539349865106203e-07 4.1836659647742636e-07 ;
	setAttr ".sp" -type "double3" -4.1670224604217765e-07 -3.1539349865106203e-07 4.1836659647742636e-07 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "R_Clav_CtrlShape" -p "R_Clav_Ctrl";
	rename -uid "66F8DFD2-45C9-641B-41EB-58940832C90E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.44139725084050874 -2.7106668070709965 2.7106669100441119
		-0.44139725084050863 -3.8334616309941127 4.1836660769098193e-07
		-0.44139725084050863 -2.7106668070709947 -2.7106660733108869
		-0.44139725084050896 -3.1539349888425624e-07 -3.8334608972340027
		-0.44139725084050929 2.7106661762839988 -2.7106660733108869
		-0.44139725084050951 3.8334610002071159 4.1836660707224967e-07
		-0.4413972508405094 2.7106661762839979 2.7106669100441119
		-0.44139725084050907 -3.1539349816276114e-07 3.8334617339672228
		-0.44139725084050874 -2.7106668070709965 2.7106669100441119
		-0.44139725084050863 -3.8334616309941127 4.1836660769098193e-07
		-0.44139725084050863 -2.7106668070709947 -2.7106660733108869
		;
createNode parentConstraint -n "R_Clav_Ctrl_Grp_parentConstraint1" -p "R_Clav_Ctrl_Grp";
	rename -uid "151E207C-494D-218B-9334-9982DC2C54AF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine_04_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 4.0117127409675604 -0.37571106886258643 -3.7234809999999992 ;
	setAttr ".tg[0].tor" -type "double3" -179.99997996466288 -89.999992375086109 0 ;
	setAttr ".lr" -type "double3" -90.000000000001634 -8.5461676820097896e-13 7.6249138941686013e-06 ;
	setAttr ".rst" -type "double3" -3.7234809999999778 30.112639962492832 -1.8020733172548422 ;
	setAttr ".rsrr" -type "double3" -90.000000000001634 -8.5461676820097896e-13 7.6249138941686013e-06 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Clav_Ctrl_Grp_parentConstraint2" -p "R_Clav_Ctrl_Grp";
	rename -uid "BD6C2A20-4BB7-3366-C98C-E7935F6DA266";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine_04_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 4.0117127409675568 -0.37571106886258598 -3.7234809999999992 ;
	setAttr ".tg[0].tor" -type "double3" -179.99997996466288 -89.999992375086109 0 ;
	setAttr ".lr" -type "double3" -90.000000000001634 -8.5461676820097896e-13 7.6249138941686013e-06 ;
	setAttr ".rst" -type "double3" -3.7234809999999778 30.112639962492828 -1.8020733172548418 ;
	setAttr ".rsrr" -type "double3" -90.000000000001634 -8.5461676820097896e-13 7.6249138941686013e-06 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Clav_Ctrl_Grp_scaleConstraint1" -p "R_Clav_Ctrl_Grp";
	rename -uid "847C2583-464B-64CE-BA35-BEA365DC6A40";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine_04_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "FK_Ctrls" -p "Transform_Ctrl";
	rename -uid "89CE0030-43D6-8212-8166-72B83E352C26";
createNode transform -n "Right_Side_FK_Ctrls" -p "FK_Ctrls";
	rename -uid "5186D04B-4731-2726-A248-A9A4116D0390";
createNode transform -n "R_FK_Arm" -p "Right_Side_FK_Ctrls";
	rename -uid "0E5907EB-41A7-36AE-76B8-A394CF51FF31";
createNode transform -n "R_FK_Arm_01_Ctrl_Grp" -p "R_FK_Arm";
	rename -uid "30218378-4799-048B-B372-8E89F3D6DC6F";
createNode transform -n "R_FK_Arm_01_Ctrl" -p "R_FK_Arm_01_Ctrl_Grp";
	rename -uid "01CF3705-4916-8D8A-32D2-1CBF79613000";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr ".rp" -type "double3" 7.1054273576010019e-15 -3.235449304028748e-07 -1.0589589649612208e-08 ;
	setAttr ".sp" -type "double3" 7.1054273576010019e-15 -3.235449304028748e-07 -1.0589589649612208e-08 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "R_FK_Arm_01_CtrlShape" -p "R_FK_Arm_01_Ctrl";
	rename -uid "20288644-4F31-700D-C6F1-519BB820AA38";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.8467619904796846 -2.1324573882101596 1.066228521743031
		9.4971805291359695e-16 -3.01575002557282 -1.0589584256011686e-08
		1.8467619904796828 -2.1324573882101596 -1.0662285429221972
		2.6117158534115021 -3.2354493184239633e-07 -1.5078748616035278
		1.8467619904796833 2.132456741120297 -1.0662285429221972
		2.1099025331158382e-15 3.0157493784829592 -1.0589584499387245e-08
		-1.8467619904796841 2.1324567411202979 1.066228521743031
		-2.6117158534115021 -3.2354493063511673e-07 1.5078748404243607
		-1.8467619904796846 -2.1324573882101596 1.066228521743031
		9.4971805291359695e-16 -3.01575002557282 -1.0589584256011686e-08
		1.8467619904796828 -2.1324573882101596 -1.0662285429221972
		;
createNode parentConstraint -n "R_FK_Arm_01_Ctrl_Grp_parentConstraint1" -p "R_FK_Arm_01_Ctrl_Grp";
	rename -uid "0B6FFF26-4EEE-D569-8FD2-AE8B5F8314DF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Clav_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -2.5333225832977559 3.153934928779023e-07 -8.1232727211499878e-08 ;
	setAttr ".tg[0].tor" -type "double3" -89.999621947837639 -88.505867322625662 89.999616565906848 ;
	setAttr ".lr" -type "double3" -90.000005512342582 1.494132677342517 89.999997623630847 ;
	setAttr ".rst" -type "double3" -6.2568040000000007 30.112639962492448 -1.8020733172548364 ;
	setAttr ".rsrr" -type "double3" -90.000005512342582 1.494132677342517 89.999997623630847 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_FK_Arm_01_Ctrl_Grp_parentConstraint2" -p "R_FK_Arm_01_Ctrl_Grp";
	rename -uid "47569D61-40AD-AB3D-64CF-D6BBDAE14AAA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Clav_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -2.5333225832977559 3.1539349309994691e-07 
		-8.1232713000645163e-08 ;
	setAttr ".tg[0].tor" -type "double3" -89.999621947837639 -88.505867322625662 89.999616565906848 ;
	setAttr ".lr" -type "double3" -90.000005512342597 1.4941326773425074 89.999997623630847 ;
	setAttr ".rst" -type "double3" -6.2568040000000007 30.112639962492462 -1.8020733172548367 ;
	setAttr ".rsrr" -type "double3" -90.000005512342582 1.494132677342517 89.999997623630847 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_FK_Arm_01_Ctrl_Grp_scaleConstraint1" -p "R_FK_Arm_01_Ctrl_Grp";
	rename -uid "451681A9-4A2B-FA6D-A600-CD945AD569DC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Clav_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "R_FK_Arm_02_Ctrl_Grp" -p "R_FK_Arm";
	rename -uid "D5F38775-47DE-E4D4-7478-20B3E62D51B3";
createNode transform -n "R_FK_Arm_02_Ctrl" -p "R_FK_Arm_02_Ctrl_Grp";
	rename -uid "1D8F4A0E-4340-3BB8-8E27-96A0DA425792";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr ".rp" -type "double3" -3.5527136788005009e-15 0 -1.0531192806695344e-08 ;
	setAttr ".sp" -type "double3" -3.5527136788005009e-15 0 -1.0531192806695344e-08 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "R_FK_Arm_02_CtrlShape" -p "R_FK_Arm_02_Ctrl";
	rename -uid "A8BF6D1D-4C54-CFD3-803F-66ADE03DA0B9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-2.0298941917384363e-16 -1.2657285829014604 1.2657285723702683
		-2.1921306638277755e-16 -1.7900105282225229 -1.0531191262458725e-08
		-1.0702467235407408e-16 -1.26572858290146 -1.2657285934326521
		6.7857323231109134e-17 -2.6356060748323338e-16 -1.7900105387537149
		2.0298941917384358e-16 1.26572858290146 -1.2657285934326521
		2.1921306638277767e-16 1.7900105282225238 -1.0531191551371837e-08
		1.0702467235407408e-16 1.26572858290146 1.2657285723702683
		-6.7857323231109159e-17 7.3336958112671588e-17 1.790010517691331
		-2.0298941917384363e-16 -1.2657285829014604 1.2657285723702683
		-2.1921306638277755e-16 -1.7900105282225229 -1.0531191262458725e-08
		-1.0702467235407408e-16 -1.26572858290146 -1.2657285934326521
		;
createNode parentConstraint -n "R_FK_Arm_02_Ctrl_Grp_parentConstraint1" -p "R_FK_Arm_02_Ctrl_Grp";
	rename -uid "3A7F3678-4870-9366-1BED-1F8384B9BE9C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_FK_Arm_01_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".tg[0].tot" -type "double3" -7.0036670000000214 3.2354492907060717e-07 
		1.0589591425969047e-08 ;
	setAttr ".tg[0].tor" -type "double3" -9.068432416434135e-14 -4.572779591254819e-14 
		3.5047502943117146 ;
	setAttr ".lr" -type "double3" -90.000005531508037 4.9988829716542131 89.999997285367613 ;
	setAttr ".rst" -type "double3" -6.2568042903815906 23.111354206745194 -1.6194556476287141 ;
	setAttr ".rsrr" -type "double3" -90.000005531508037 4.9988829716542131 89.999997285367613 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_FK_Arm_02_Ctrl_Grp_parentConstraint2" -p "R_FK_Arm_02_Ctrl_Grp";
	rename -uid "7578680D-4645-1C50-BEBF-168F049E717E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_FK_Arm_01_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".tg[0].tot" -type "double3" -7.0036670000000214 3.2354492862651796e-07 
		1.0589591425969047e-08 ;
	setAttr ".tg[0].tor" -type "double3" -9.068432416434135e-14 -4.572779591254819e-14 
		3.5047502943117146 ;
	setAttr ".lr" -type "double3" -90.000005531508052 4.9988829716541989 89.999997285367598 ;
	setAttr ".rst" -type "double3" -6.2568042903815906 23.111354206745194 -1.6194556476287136 ;
	setAttr ".rsrr" -type "double3" -90.000005531508037 4.9988829716542131 89.999997285367613 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_FK_Arm_02_Ctrl_Grp_scaleConstraint1" -p "R_FK_Arm_02_Ctrl_Grp";
	rename -uid "652CDD68-4685-ECC3-EA2A-418518294832";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_FK_Arm_01_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr -k on ".w0";
createNode transform -n "R_FK_Arm_03_Ctrl_Grp" -p "R_FK_Arm";
	rename -uid "6AC75E54-4D21-317A-18B9-62AAE51E2D64";
createNode transform -n "R_FK_Arm_03_Ctrl" -p "R_FK_Arm_03_Ctrl_Grp";
	rename -uid "C2A3E6C9-4935-622A-BCB1-CFBF1DB8D340";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr ".rp" -type "double3" 0 1.1102230246251565e-16 -1.0464684230271359e-08 ;
	setAttr ".sp" -type "double3" 0 1.1102230246251565e-16 -1.0464684230271359e-08 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "R_FK_Arm_03_CtrlShape" -p "R_FK_Arm_03_Ctrl";
	rename -uid "E35CE324-4ABB-8201-B519-E7A764977F46";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.5881224925709601e-16 -0.90499461497286693 0.90499460450818292
		-1.5673711353925244e-16 -1.2798556583692451 -1.0464684014322209e-08
		-6.2847502437326511e-17 -0.90499461497286671 -0.90499462543755138
		6.7857323231109159e-17 -1.0934187875758752e-16 -1.2798556688339304
		1.5881224925709601e-16 0.90499461497286682 -0.90499462543755138
		1.5673711353925252e-16 1.2798556583692458 -1.0464684220894782e-08
		6.2847502437326511e-17 0.90499461497286671 0.90499460450818292
		-6.7857323231109159e-17 1.3153952882100608e-16 1.279855647904562
		-1.5881224925709601e-16 -0.90499461497286693 0.90499460450818292
		-1.5673711353925244e-16 -1.2798556583692451 -1.0464684014322209e-08
		-6.2847502437326511e-17 -0.90499461497286671 -0.90499462543755138
		;
createNode parentConstraint -n "R_FK_Arm_03_Ctrl_Grp_parentConstraint1" -p "R_FK_Arm_03_Ctrl_Grp";
	rename -uid "AB287B1B-4C66-72B5-BC15-5BB08D30AEA9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_FK_Arm_02_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".tg[0].tot" -type "double3" -7.9860009999999964 1.27675647831893e-15 1.0531195471230603e-08 ;
	setAttr ".tg[0].tor" -type "double3" -9.5416639685602147e-14 -5.0888874998204185e-14 
		5.5659706925611543e-15 ;
	setAttr ".lr" -type "double3" -90.000005531508066 4.9988829716542025 89.999997285367627 ;
	setAttr ".rst" -type "double3" -6.2568046673133439 15.155728783505356 -0.92358490021882544 ;
	setAttr ".rsrr" -type "double3" -90.000005531508066 4.9988829716542025 89.999997285367627 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_FK_Arm_03_Ctrl_Grp_parentConstraint2" -p "R_FK_Arm_03_Ctrl_Grp";
	rename -uid "EE6314FB-4186-1BF2-CBC1-9DA0C049B3FA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_FK_Arm_02_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".tg[0].tot" -type "double3" -7.9860009999999981 1.1657341758564144e-15 
		1.0531195471230603e-08 ;
	setAttr ".tg[0].tor" -type "double3" -9.5416639685602147e-14 -5.0888874998204185e-14 
		5.5659706925611543e-15 ;
	setAttr ".lr" -type "double3" -90.000005531508066 4.9988829716541927 89.999997285367598 ;
	setAttr ".rst" -type "double3" -6.2568046673133439 15.155728783505355 -0.92358490021882511 ;
	setAttr ".rsrr" -type "double3" -90.000005531508066 4.9988829716542025 89.999997285367627 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_FK_Arm_03_Ctrl_Grp_scaleConstraint1" -p "R_FK_Arm_03_Ctrl_Grp";
	rename -uid "D702FF97-4806-BF1C-D892-B2BD06BC617B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_FK_Arm_02_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr -k on ".w0";
createNode transform -n "R_FK_Leg" -p "Right_Side_FK_Ctrls";
	rename -uid "4A61583A-4B83-9E4A-9C12-669D21AC1ACD";
createNode transform -n "R_FK_Hip_Ctrl_Grp" -p "R_FK_Leg";
	rename -uid "6B1F4F0D-4A17-305D-D238-3798597BF925";
createNode transform -n "R_FK_Hip_Ctrl" -p "R_FK_Hip_Ctrl_Grp";
	rename -uid "33971BF3-4278-8B11-B40F-E580C3E1F8F1";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr ".rp" -type "double3" 0 1.9575210341571392e-07 2.8350828795709049e-08 ;
	setAttr ".sp" -type "double3" 0 1.9575210341571392e-07 2.8350828795709049e-08 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "R_FK_Hip_CtrlShape" -p "R_FK_Hip_Ctrl";
	rename -uid "4C6D86A4-4404-2659-625C-77A57D81534E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.7227847247927059 -1.8920416554418513 0.76117997168521068
		5.0973469310847607e-15 -2.675751050783886 -0.021018953582763997
		-1.7227847247926953 -1.8920416554418504 -0.8032178788507397
		-2.4363855228510358 1.9575210189869384e-07 -1.1272152821703965
		-1.7227847247926948 1.8920420469460546 -0.8032178788507397
		5.4510919265762605e-15 2.6757514422880906 -0.021018953582763733
		1.7227847247927064 1.8920420469460542 0.76117997168521068
		2.4363855228510518 1.9575210180555415e-07 1.0851773750048674
		1.7227847247927059 -1.8920416554418513 0.76117997168521068
		5.0973469310847607e-15 -2.675751050783886 -0.021018953582763997
		-1.7227847247926953 -1.8920416554418504 -0.8032178788507397
		;
createNode parentConstraint -n "R_FK_Hip_Ctrl_Grp_parentConstraint1" -p "R_FK_Hip_Ctrl_Grp";
	rename -uid "459D39D9-4FF8-F849-30FE-8ABD2C2394C4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Hip_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -3.1503720000000004 -1.6036870000001855 0.015260472288623816 ;
	setAttr ".tg[0].tor" -type "double3" -90 2.3058054096852074 90.000000000000014 ;
	setAttr ".lr" -type "double3" -90 2.3058054096852074 90.000000000000014 ;
	setAttr ".rst" -type "double3" -3.150372 20.260868358886718 -1.4110988918914795 ;
	setAttr ".rsrr" -type "double3" -90 2.3058054096852074 90.000000000000014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_FK_Hip_Ctrl_Grp_parentConstraint2" -p "R_FK_Hip_Ctrl_Grp";
	rename -uid "EA12899A-45AF-CE8C-3D4C-29822B6F7EFA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Hip_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -3.1503720000000004 -1.6036870000001855 0.015260472288623816 ;
	setAttr ".tg[0].tor" -type "double3" -90 2.3058054096852074 90.000000000000014 ;
	setAttr ".lr" -type "double3" -90 2.3058054096852074 90.000000000000014 ;
	setAttr ".rst" -type "double3" -3.150372 20.260868358886718 -1.4110988918914795 ;
	setAttr ".rsrr" -type "double3" -90 2.3058054096852074 90.000000000000014 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_FK_Hip_Ctrl_Grp_scaleConstraint1" -p "R_FK_Hip_Ctrl_Grp";
	rename -uid "2D288E67-4FE5-81B7-7333-C2A5B4544ED3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Hip_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "R_FK_Leg_01_Ctrl_Grp" -p "R_FK_Leg";
	rename -uid "F7CFC432-4FE8-57C4-B06F-39BB6843A647";
createNode transform -n "R_FK_Leg_01_Ctrl" -p "R_FK_Leg_01_Ctrl_Grp";
	rename -uid "0D137A0F-4D17-8F93-E845-ECAF4A32AAC5";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr ".rp" -type "double3" 1.348164531123075e-07 2.2450400294360406e-07 2.8350830127976678e-08 ;
	setAttr ".sp" -type "double3" 1.348164531123075e-07 2.2450400294360406e-07 2.8350830127976678e-08 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "R_FK_Leg_01_CtrlShape" -p "R_FK_Leg_01_Ctrl";
	rename -uid "6762D0F4-4895-18F8-1E23-9E9C89C41BF2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.3481645280717365e-07 -1.6610710457740498 1.661071298628882
		1.3481645282462456e-07 -2.3491092939915226 2.83508302186325e-08
		1.3481645301059621e-07 -1.6610710457740492 -1.6610712419272209
		1.3481645325614897e-07 2.245040018272761e-07 -2.3491094901446949
		1.3481645341744135e-07 1.6610714947820551 -1.6610712419272209
		1.3481645339999043e-07 2.3491097429995293 2.8350829839479123e-08
		1.3481645321401879e-07 1.6610714947820551 1.661071298628882
		1.3481645296846603e-07 2.2450400226940157e-07 2.3491095468463561
		1.3481645280717365e-07 -1.6610710457740498 1.661071298628882
		1.3481645282462456e-07 -2.3491092939915226 2.83508302186325e-08
		1.3481645301059621e-07 -1.6610710457740492 -1.6610712419272209
		;
createNode parentConstraint -n "R_FK_Leg_01_Ctrl_Grp_parentConstraint1" -p "R_FK_Leg_01_Ctrl_Grp";
	rename -uid "3E14B71A-4F01-6259-A9E7-928C8F407BEE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_FK_Hip_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -6.1336039999999983 -1.9575210330469162e-07 
		-2.8350828795709049e-08 ;
	setAttr ".tg[0].tor" -type "double3" 8.3157344457481935e-16 -2.1873375336672534e-16 
		-10.639918758179837 ;
	setAttr ".lr" -type "double3" -90 -8.3341133484946361 90 ;
	setAttr ".rst" -type "double3" -3.1503719999999986 14.132230592733439 -1.164325392309888 ;
	setAttr ".rsrr" -type "double3" -90 -8.3341133484946361 90 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_FK_Leg_01_Ctrl_Grp_parentConstraint2" -p "R_FK_Leg_01_Ctrl_Grp";
	rename -uid "944AA62C-4ED9-6C7E-87E3-8BBC2A7ED453";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_FK_Hip_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -6.1336039999999983 -1.9575210330469162e-07 
		-2.8350829239798259e-08 ;
	setAttr ".tg[0].tor" -type "double3" 8.3157344457481935e-16 -2.1873375336672534e-16 
		-10.639918758179837 ;
	setAttr ".lr" -type "double3" -90 -8.3341133484946361 90 ;
	setAttr ".rst" -type "double3" -3.1503719999999982 14.132230592733439 -1.164325392309888 ;
	setAttr ".rsrr" -type "double3" -90 -8.3341133484946361 90 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_FK_Leg_01_Ctrl_Grp_scaleConstraint1" -p "R_FK_Leg_01_Ctrl_Grp";
	rename -uid "5D060FE6-4C52-B980-4DD9-9389DD734AE1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_FK_Hip_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "R_FK_Leg_02_Ctrl_Grp" -p "R_FK_Leg";
	rename -uid "35ECE3E8-4991-6B79-C0CF-66A0515246FC";
createNode transform -n "R_FK_Leg_02_Ctrl" -p "R_FK_Leg_02_Ctrl_Grp";
	rename -uid "A2376CC5-42FE-24E0-57E2-43A43C144D10";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr ".rp" -type "double3" 4.5340297916141026e-07 9.1004880742318051e-08 2.8350829683887468e-08 ;
	setAttr ".sp" -type "double3" 4.5340297916141026e-07 9.1004880742318051e-08 2.8350829683887468e-08 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "R_FK_Leg_02_CtrlShape" -p "R_FK_Leg_02_Ctrl";
	rename -uid "0B89ECF5-45AF-25BE-584D-49AEA9807AC9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		4.5340297924480573e-07 -1.3619510238044932 1.3619511431602034
		4.5340297939728823e-07 -1.9260896468476911 2.8350830573672829e-08
		4.5340297941159663e-07 -1.361951023804493 -1.3619510864585431
		4.5340297927934922e-07 9.1004879952562133e-08 -1.9260897095017417
		4.5340297907801478e-07 1.3619512058142538 -1.3619510864585431
		4.5340297892553228e-07 1.9260898288574528 2.835083026279612e-08
		4.5340297891122388e-07 1.3619512058142536 1.3619511431602034
		4.5340297904347124e-07 9.1004880315071138e-08 1.926089766203402
		4.5340297924480573e-07 -1.3619510238044932 1.3619511431602034
		4.5340297939728823e-07 -1.9260896468476911 2.8350830573672829e-08
		4.5340297941159663e-07 -1.361951023804493 -1.3619510864585431
		;
createNode parentConstraint -n "R_FK_Leg_02_Ctrl_Grp_parentConstraint1" -p "R_FK_Leg_02_Ctrl_Grp";
	rename -uid "B9DE7EAF-452A-6999-F384-64BB13E4A46D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_FK_Leg_01_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".tg[0].tot" -type "double3" -5.9432351348164509 -2.2450400383178248e-07 
		-2.8350829683887468e-08 ;
	setAttr ".tg[0].tor" -type "double3" -3.180554681463516e-15 -2.5444437451708134e-14 
		17.694000000000038 ;
	setAttr ".lr" -type "double3" -90 9.3598866515053931 90 ;
	setAttr ".rst" -type "double3" -3.1503719999999991 8.2517581428735625 -2.0257695470082187 ;
	setAttr ".rsrr" -type "double3" -90 9.3598866515053931 90 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_FK_Leg_02_Ctrl_Grp_parentConstraint2" -p "R_FK_Leg_02_Ctrl_Grp";
	rename -uid "EFFBA454-4698-253B-9755-9CBF30D4655B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_FK_Leg_01_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".tg[0].tot" -type "double3" -5.9432351348164474 -2.2450400294360406e-07 
		-2.8350830127976678e-08 ;
	setAttr ".tg[0].tor" -type "double3" -3.180554681463516e-15 -2.5444437451708134e-14 
		17.694000000000038 ;
	setAttr ".lr" -type "double3" -90 9.3598866515053931 90 ;
	setAttr ".rst" -type "double3" -3.1503719999999986 8.2517581428735642 -2.0257695470082187 ;
	setAttr ".rsrr" -type "double3" -90 9.3598866515053931 90 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_FK_Leg_02_Ctrl_Grp_scaleConstraint1" -p "R_FK_Leg_02_Ctrl_Grp";
	rename -uid "4E635F95-4348-7ED0-505A-44925FD64568";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_FK_Leg_01_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr -k on ".w0";
createNode transform -n "R_FK_Leg_03_Ctrl_Grp" -p "R_FK_Leg";
	rename -uid "43CDE760-4306-35E4-173A-BCA4C022EC02";
createNode transform -n "R_FK_Leg_03_Ctrl" -p "R_FK_Leg_03_Ctrl_Grp";
	rename -uid "5E86A826-4FCD-463F-AA19-71B6D51EA768";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr ".rp" -type "double3" 4.4408920985006262e-16 0 2.8350829683887468e-08 ;
	setAttr ".sp" -type "double3" 4.4408920985006262e-16 0 2.8350829683887468e-08 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "R_FK_Leg_03_CtrlShape" -p "R_FK_Leg_03_Ctrl";
	rename -uid "745688EE-48D1-FCB9-FA9F-AABA100A6673";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		8.4924972167188483e-17 -1.3869300475258108 1.3869300758766399
		2.4020409484599142e-16 -1.9614152832737639 2.8350829803989517e-08
		2.5477491650156562e-16 -1.3869300475258104 -1.3869300191749805
		1.2010204742299571e-16 -2.7263674231933298e-16 -1.9614152549229342
		-8.4924972167188409e-17 1.3869300475258104 -1.3869300191749805
		-2.4020409484599151e-16 1.9614152832737648 2.8350829487411159e-08
		-2.5477491650156562e-16 1.3869300475258104 1.3869300758766399
		-1.2010204742299568e-16 9.6520881973359161e-17 1.9614153116245936
		8.4924972167188483e-17 -1.3869300475258108 1.3869300758766399
		2.4020409484599142e-16 -1.9614152832737639 2.8350829803989517e-08
		2.5477491650156562e-16 -1.3869300475258104 -1.3869300191749805
		;
createNode parentConstraint -n "R_FK_Leg_03_Ctrl_Grp_parentConstraint1" -p "R_FK_Leg_03_Ctrl_Grp";
	rename -uid "79360068-4597-395B-B45C-BC8822A11E42";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_FK_Leg_02_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".tg[0].tot" -type "double3" -5.9395891715034024 -3.8635686633314847e-06 
		-2.8350829683887468e-08 ;
	setAttr ".tg[0].tor" -type "double3" -3.180554681463516e-15 -2.544443745170814e-14 
		-1.5902773407317588e-15 ;
	setAttr ".lr" -type "double3" -90 9.3598866515053931 90 ;
	setAttr ".rst" -type "double3" -3.1503719999999991 2.3912481428735584 -1.0597795470082181 ;
	setAttr ".rsrr" -type "double3" -90 9.3598866515053931 90 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_FK_Leg_03_Ctrl_Grp_parentConstraint2" -p "R_FK_Leg_03_Ctrl_Grp";
	rename -uid "87AC662D-4A9F-6943-E010-2191A7C610B1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_FK_Leg_02_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".tg[0].tot" -type "double3" -5.9395891715034033 -3.8635686628873955e-06 
		-2.8350830127976678e-08 ;
	setAttr ".tg[0].tor" -type "double3" -3.180554681463516e-15 -2.544443745170814e-14 
		-1.5902773407317588e-15 ;
	setAttr ".lr" -type "double3" -90 9.3598866515053931 90 ;
	setAttr ".rst" -type "double3" -3.1503719999999986 2.3912481428735575 -1.0597795470082183 ;
	setAttr ".rsrr" -type "double3" -90 9.3598866515053931 90 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_FK_Leg_03_Ctrl_Grp_scaleConstraint1" -p "R_FK_Leg_03_Ctrl_Grp";
	rename -uid "B55A109B-4EB6-ED97-0586-55A7D7ACBC95";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_FK_Leg_02_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr -k on ".w0";
createNode transform -n "R_FK_Foot" -p "Right_Side_FK_Ctrls";
	rename -uid "BE29002B-4F8A-FC8C-0122-0BA5BC9DF7D6";
createNode transform -n "R_FK_Ankle_Ctrl_Grp" -p "R_FK_Foot";
	rename -uid "24060FD3-4EB2-ECBF-0E3E-568B8FBC12B5";
	setAttr ".v" no;
createNode transform -n "R_FK_Ankle_Ctrl" -p "R_FK_Ankle_Ctrl_Grp";
	rename -uid "8B5DA37F-4F20-E232-7271-78914A1EF2F0";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr ".rp" -type "double3" 1.004791254644033e-07 -3.7872314440079435e-07 2.835082613117379e-08 ;
	setAttr ".sp" -type "double3" 1.004791254644033e-07 -3.7872314440079435e-07 2.835082613117379e-08 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "R_FK_Ankle_CtrlShape" -p "R_FK_Ankle_Ctrl";
	rename -uid "90C5F3C0-4C4E-46AF-2831-3F93BD2505FB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.3145311981919219 -3.7872314411768878e-07 1.3145311260636194
		1.8590278070257518 -3.78723144406415e-07 2.8350826545889651e-08
		1.3145311981919217 -3.7872314411768878e-07 -1.3145310693619672
		1.0047912600486483e-07 -3.7872314354198929e-07 -1.8590276781957999
		-1.3145309972336656 -3.787231436846992e-07 -1.3145310693619672
		-1.8590276060675004 -3.787231439510845e-07 2.8350826245836957e-08
		-1.3145309972336656 -3.787231436846992e-07 1.3145311260636194
		1.0047912565497756e-07 -3.7872314376965454e-07 1.8590277348974522
		1.3145311981919219 -3.7872314411768878e-07 1.3145311260636194
		1.8590278070257518 -3.78723144406415e-07 2.8350826545889651e-08
		1.3145311981919217 -3.7872314411768878e-07 -1.3145310693619672
		;
createNode parentConstraint -n "R_FK_Ankle_Ctrl_Grp_parentConstraint1" -p "R_FK_Ankle_Ctrl_Grp";
	rename -uid "6CA0DB94-4BDB-2078-C465-B7A5C64C3870";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_FK_Leg_03_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".tg[0].tot" -type "double3" 4.3999767003199963e-06 -1.5468543440255722e-05 
		-2.8350829239798259e-08 ;
	setAttr ".tg[0].tor" -type "double3" 7.016709298534876e-15 0 80.640113348494609 ;
	setAttr ".lr" -type "double3" 180 90 0 ;
	setAttr ".rst" -type "double3" -3.1503719999999995 2.391255 -1.059765 ;
	setAttr ".rsrr" -type "double3" 180 90 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_FK_Ankle_Ctrl_Grp_parentConstraint2" -p "R_FK_Ankle_Ctrl_Grp";
	rename -uid "3517B3C0-4906-D769-1FFA-39BB12E4EEDD";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_FK_Leg_03_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".tg[0].tot" -type "double3" 4.3999767003199963e-06 -1.5468543440255722e-05 
		-2.8350829683887468e-08 ;
	setAttr ".tg[0].tor" -type "double3" 7.016709298534876e-15 0 80.640113348494609 ;
	setAttr ".lr" -type "double3" 180 90 0 ;
	setAttr ".rst" -type "double3" -3.1503719999999991 2.391255 -1.059765 ;
	setAttr ".rsrr" -type "double3" 180 90 0 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_FK_Ankle_Ctrl_Grp_scaleConstraint1" -p "R_FK_Ankle_Ctrl_Grp";
	rename -uid "4C29EA03-440F-C695-0E3C-6ABE7BE0A4AC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_FK_Leg_03_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr -k on ".w0";
createNode transform -n "R_FK_Toe_02_Ctrl_Grp" -p "R_FK_Foot";
	rename -uid "BD301252-4B8F-0D40-B523-F7AB2965B2BA";
createNode transform -n "R_FK_Toe_02_Ctrl" -p "R_FK_Toe_02_Ctrl_Grp";
	rename -uid "5BDA448D-4DCE-5B7F-0FC1-C0AA779C6D18";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr ".rp" -type "double3" 2.0868630312698144e-07 -1.1102230246251565e-16 0 ;
	setAttr ".sp" -type "double3" 2.0868630312698144e-07 -1.1102230246251565e-16 0 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "R_FK_Toe_02_CtrlShape" -p "R_FK_Toe_02_Ctrl";
	rename -uid "3480999C-4282-1627-9E19-F7A4A464E69B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.1786273651702999 -0.7836116248912236 0.39180581244561313
		-0.49999979131369765 -1.1081941875543868 7.4940054162198037e-16
		0.17862778254290534 -0.78361162489122349 -0.39180581244561147
		0.45972452743465947 1.0829563100524565e-16 -0.55409709377719318
		0.17862778254290551 0.78361162489122438 -0.39180581244561147
		-0.49999979131369698 1.1081941875543877 7.4940054162198037e-16
		-1.1786273651702999 0.78361162489122427 0.39180581244561313
		-1.4597241100620542 5.519333264622996e-16 0.55409709377719507
		-1.1786273651702999 -0.7836116248912236 0.39180581244561313
		-0.49999979131369765 -1.1081941875543868 7.4940054162198037e-16
		0.17862778254290534 -0.78361162489122349 -0.39180581244561147
		;
createNode parentConstraint -n "R_FK_Toe_02_Ctrl_Grp_parentConstraint1" -p "R_FK_Toe_02_Ctrl_Grp";
	rename -uid "53095BE8-481B-6BD9-0213-07A14E5BE3ED";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_FK_Ankle_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -0.91741710047912572 0.8094173787231449 -0.55936502835082491 ;
	setAttr ".tg[0].tor" -type "double3" 3.3324402196454953e-14 -0.15650822584598947 
		-47.953935235796081 ;
	setAttr ".lr" -type "double3" -89.858851813032771 42.045871984932731 90.210754800395819 ;
	setAttr ".rst" -type "double3" -2.5910070000000007 1.5818379999999999 -0.14234800000000003 ;
	setAttr ".rsrr" -type "double3" -89.858851813032771 42.045871984932731 90.210754800395819 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_FK_Toe_02_Ctrl_Grp_parentConstraint2" -p "R_FK_Toe_02_Ctrl_Grp";
	rename -uid "916CE48C-4335-1280-133D-6699781CF7FC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_FK_Ankle_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -0.91741710047912572 0.8094173787231449 -0.55936502835082447 ;
	setAttr ".tg[0].tor" -type "double3" 3.3324402196454953e-14 -0.15650822584598947 
		-47.953935235796081 ;
	setAttr ".lr" -type "double3" -89.858851813032771 42.045871984932731 90.210754800395819 ;
	setAttr ".rst" -type "double3" -2.5910070000000012 1.5818379999999999 -0.14234800000000003 ;
	setAttr ".rsrr" -type "double3" -89.858851813032771 42.045871984932731 90.210754800395819 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_FK_Toe_02_Ctrl_Grp_scaleConstraint1" -p "R_FK_Toe_02_Ctrl_Grp";
	rename -uid "9F67695D-4E36-0B30-8094-06AFA8DB219D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_FK_Ankle_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "R_FK_Toe_01_Ctrl_Grp" -p "R_FK_Foot";
	rename -uid "71A2A872-49DF-E3A3-BDAB-C5ADA0A069F6";
createNode transform -n "R_FK_Toe_01_Ctrl" -p "R_FK_Toe_01_Ctrl_Grp";
	rename -uid "4709EC30-420A-079C-D776-1D9D7CF0245C";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr ".rp" -type "double3" -1.7553415876392364e-07 -2.5089226762808892e-07 3.0718485355407665e-07 ;
	setAttr ".sp" -type "double3" -1.7553415876392364e-07 -2.5089226762808892e-07 3.0718485355407665e-07 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "R_FK_Toe_01_CtrlShape" -p "R_FK_Toe_01_Ctrl";
	rename -uid "10BC490A-42D6-A052-B042-67B3FD0EB659";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.17862739832244412 -0.7836118757834919 0.39180611963046608
		-0.50000017553415832 -1.1081944384466553 3.0718485352632108e-07
		-1.1786277493907611 -0.78361187578349245 -0.39180550526075913
		-1.4597244942825156 -2.5089226845703925e-07 -0.55409678659234085
		-1.178627749390762 0.78361137399895631 -0.39180550526075913
		-0.50000017553415965 1.1081939366621207 3.0718485341529878e-07
		0.17862739832244323 0.78361137399895708 0.39180611963046608
		0.45972414321419791 -2.5089226716099514e-07 0.55409740096204818
		0.17862739832244412 -0.7836118757834919 0.39180611963046608
		-0.50000017553415832 -1.1081944384466553 3.0718485352632108e-07
		-1.1786277493907611 -0.78361187578349245 -0.39180550526075913
		;
createNode parentConstraint -n "R_FK_Toe_01_Ctrl_Grp_parentConstraint1" -p "R_FK_Toe_01_Ctrl_Grp";
	rename -uid "9306F87B-44F5-130F-9636-3DB7729B1424";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_FK_Ankle_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -0.91741910047912567 0.8094153787231444 0.55936997164917512 ;
	setAttr ".tg[0].tor" -type "double3" 1.4240995036513906e-14 0.15643131750667735 
		-47.954021257668927 ;
	setAttr ".lr" -type "double3" -90.141078401141868 42.045786153058287 89.78934904958318 ;
	setAttr ".rst" -type "double3" -3.7097420000000008 1.5818400000000001 -0.14234600000000008 ;
	setAttr ".rsrr" -type "double3" -90.141078401141868 42.045786153058287 89.78934904958318 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_FK_Toe_01_Ctrl_Grp_parentConstraint2" -p "R_FK_Toe_01_Ctrl_Grp";
	rename -uid "C25974C3-4011-7C95-2586-C8BDB3345F94";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_FK_Ankle_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -0.91741910047912567 0.8094153787231444 0.55936997164917557 ;
	setAttr ".tg[0].tor" -type "double3" 1.4240995036513906e-14 0.15643131750667735 
		-47.954021257668927 ;
	setAttr ".lr" -type "double3" -90.141078401141868 42.045786153058287 89.78934904958318 ;
	setAttr ".rst" -type "double3" -3.7097420000000012 1.5818400000000001 -0.14234600000000008 ;
	setAttr ".rsrr" -type "double3" -90.141078401141868 42.045786153058287 89.78934904958318 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_FK_Toe_01_Ctrl_Grp_scaleConstraint1" -p "R_FK_Toe_01_Ctrl_Grp";
	rename -uid "EC4C9F20-4020-488C-BEC7-ADBF90821C72";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_FK_Ankle_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "R_FK_Toe_03_Ctrl_Grp" -p "R_FK_Foot";
	rename -uid "3A3E2AD5-4F81-2E55-242C-13A348DDB457";
createNode transform -n "R_FK_Toe_03_Ctrl" -p "R_FK_Toe_03_Ctrl_Grp";
	rename -uid "5D94A6C6-4D5C-80E7-7529-02A195B3FA6D";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr ".rp" -type "double3" 1.9714251875413424e-07 0 -2.8350841230206925e-08 ;
	setAttr ".sp" -type "double3" 1.9714251875413424e-07 0 -2.8350841230206925e-08 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "R_FK_Toe_03_CtrlShape" -p "R_FK_Toe_03_Ctrl";
	rename -uid "D81AAF68-404E-F05D-2B41-D38AD376BE1C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.45870167802061473 -0.78361162489122349 0.78361159654038348
		-0.45870167802061468 -1.1081941875543868 -2.8350841144861549e-08
		-0.45870167802061462 -0.78361162489122327 -0.78361165324206505
		-0.45870167802061451 9.6149732511002167e-16 -1.1081942159052287
		-0.4587016780206144 0.78361162489122549 -0.78361165324206505
		-0.45870167802061446 1.1081941875543895 -2.8350841323727442e-08
		-0.45870167802061451 0.78361162489122549 0.78361159654038348
		-0.45870167802061462 1.1700703575632659e-15 1.1081941592035471
		-0.45870167802061473 -0.78361162489122349 0.78361159654038348
		-0.45870167802061468 -1.1081941875543868 -2.8350841144861549e-08
		-0.45870167802061462 -0.78361162489122327 -0.78361165324206505
		;
createNode parentConstraint -n "R_FK_Toe_03_Ctrl_Grp_parentConstraint1" -p "R_FK_Toe_03_Ctrl_Grp";
	rename -uid "C68CF0D7-4487-C7F2-6362-97A09412C0F5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_FK_Ankle_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0.64067789952087462 0.71594437872314431 -2.835082568708458e-08 ;
	setAttr ".tg[0].tor" -type "double3" 179.99999879258178 1.8600018249500985e-14 -123.10342674146995 ;
	setAttr ".lr" -type "double3" 89.999998792581778 -33.103426741469953 90 ;
	setAttr ".rst" -type "double3" -3.150372 1.6753110000000002 -1.700443 ;
	setAttr ".rsrr" -type "double3" 89.999998792581778 -33.103426741469953 90 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_FK_Toe_03_Ctrl_Grp_parentConstraint2" -p "R_FK_Toe_03_Ctrl_Grp";
	rename -uid "C8EFDF28-401D-E515-5938-F8A99C28DA14";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_FK_Ankle_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0.64067789952087462 0.71594437872314431 -2.835082524299537e-08 ;
	setAttr ".tg[0].tor" -type "double3" 179.99999879258178 1.8600018249500985e-14 -123.10342674146995 ;
	setAttr ".lr" -type "double3" 89.999998792581778 -33.103426741469953 90 ;
	setAttr ".rst" -type "double3" -3.1503720000000004 1.6753110000000002 -1.700443 ;
	setAttr ".rsrr" -type "double3" 89.999998792581778 -33.103426741469953 90 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_FK_Toe_03_Ctrl_Grp_scaleConstraint1" -p "R_FK_Toe_03_Ctrl_Grp";
	rename -uid "F2B92EE6-4B39-21C7-C105-BEA276F87F2A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_FK_Ankle_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "Left_Side_FK_Ctrls" -p "FK_Ctrls";
	rename -uid "97921CB3-465F-6F9C-24B9-849009686B26";
createNode transform -n "L_FK_Leg" -p "Left_Side_FK_Ctrls";
	rename -uid "61F9B2FA-4356-ADC5-E4B8-3898D3B28B2C";
createNode transform -n "L_FK_Hip_Ctrl_Grp" -p "L_FK_Leg";
	rename -uid "16A8456E-41BB-A164-A11E-B7A50D64121E";
createNode transform -n "L_FK_Hip_Ctrl" -p "L_FK_Hip_Ctrl_Grp";
	rename -uid "AAE2F4F5-4765-CED1-986A-19ABEEC17A1B";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr ".t" -type "double3" 0 0 4.4408920985006262e-16 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "L_FK_Hip_CtrlShape" -p "L_FK_Hip_Ctrl";
	rename -uid "5880EA51-490B-543E-2123-A5B974D1385D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -1.7227847247927055 1.1084302263027292 
		0.022431681556843053 -5.4250319510232419e-15 1.5675570589816004 0.021018981933593306 
		1.7227847247926944 1.108430226302729 0.019606282310344447 2.4363855228510349 1.868964570575408e-15 
		0.019021122966837556 1.7227847247926944 -1.1084302263027255 0.019606282310344447 
		-5.1234069066377746e-15 -1.5675570589815975 0.021018981933592862 -1.7227847247927055 
		-1.1084302263027257 0.022431681556843053 -2.4363855228510509 1.5739349331642891e-15 
		0.023016840900349944 0 0 0 0 0 0 0 0 0;
createNode parentConstraint -n "L_FK_Hip_Ctrl_Grp_parentConstraint1" -p "L_FK_Hip_Ctrl_Grp";
	rename -uid "8258FD9C-4A17-1DA2-1A80-B399862CB5B3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Hip_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 3.1503720283508296 -1.6036872863771379 0.015260287909046211 ;
	setAttr ".tg[0].tor" -type "double3" 90 -2.3058054096851888 -90.000000000000014 ;
	setAttr ".lr" -type "double3" 90 -2.3058054096851888 -90.000000000000014 ;
	setAttr ".rst" -type "double3" 3.1503720283508301 20.260868072509766 -1.4110990762710571 ;
	setAttr ".rsrr" -type "double3" 90 -2.3058054096851888 -90.000000000000014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_FK_Hip_Ctrl_Grp_parentConstraint2" -p "L_FK_Hip_Ctrl_Grp";
	rename -uid "5A30A285-4F06-069D-5A85-1C8D4BAE0807";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Hip_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 3.1503720283508296 -1.6036872863771379 0.015260287909046211 ;
	setAttr ".tg[0].tor" -type "double3" 90 -2.3058054096851888 -90.000000000000014 ;
	setAttr ".lr" -type "double3" 90 -2.3058054096851888 -90.000000000000014 ;
	setAttr ".rst" -type "double3" 3.1503720283508301 20.260868072509766 -1.4110990762710571 ;
	setAttr ".rsrr" -type "double3" 90 -2.3058054096851888 -90.000000000000014 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_FK_Hip_Ctrl_Grp_scaleConstraint1" -p "L_FK_Hip_Ctrl_Grp";
	rename -uid "2632FAC3-4E69-0720-F4D5-F6AE759FA2EF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Hip_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "L_FK_Leg_01_Ctrl_Grp" -p "L_FK_Leg";
	rename -uid "D07BB589-42CE-AF0A-FEB6-A0A966B2D876";
createNode transform -n "L_FK_Leg_01_Ctrl" -p "L_FK_Leg_01_Ctrl_Grp";
	rename -uid "B8A001ED-4DE5-1B26-96F4-508DB7868157";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "L_FK_Leg_01_CtrlShape" -p "L_FK_Leg_01_Ctrl";
	rename -uid "BE5BA9B6-4594-4DAB-8CD0-4F987522A8A4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 5.372890730519748e-17 0.87745964538682752 
		-0.87745964538682697 4.6526872675851195e-33 1.2409153309411369 4.2129071000153883e-16 
		-5.372890730519748e-17 0.87745964538682708 0.87745964538682697 -7.5984149402497062e-17 
		1.0588789886932877e-15 1.2409153309411374 -5.372890730519748e-17 -0.87745964538682697 
		0.87745964538682697 -7.6113842135874438e-33 -1.2409153309411372 6.2157819680526565e-16 
		5.372890730519748e-17 -0.87745964538682708 -0.87745964538682697 7.5984149402497062e-17 
		8.2532653326731847e-16 -1.2409153309411374 0 0 0 0 0 0 0 0 0;
createNode parentConstraint -n "L_FK_Leg_01_Ctrl_Grp_parentConstraint1" -p "L_FK_Leg_01_Ctrl_Grp";
	rename -uid "6553A9AD-4B48-102A-4053-56AEB7F6C5BB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_FK_Hip_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 6.1336035473229753 -7.7715611723760958e-16 
		-1.7763568394002505e-15 ;
	setAttr ".tg[0].tor" -type "double3" 1.3553792170428891e-14 -1.29409524792208e-14 
		-10.639918758179817 ;
	setAttr ".lr" -type "double3" 90 8.3341133484946361 -90.000000000000014 ;
	setAttr ".rst" -type "double3" 3.1503720283508301 14.132230758666989 -1.1643255949020386 ;
	setAttr ".rsrr" -type "double3" 90 8.3341133484946361 -90.000000000000014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_FK_Leg_01_Ctrl_Grp_parentConstraint2" -p "L_FK_Leg_01_Ctrl_Grp";
	rename -uid "7DA00954-4621-0412-2C2E-199AB901C28C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_FK_Hip_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 6.1336035473229789 -8.8817841970012523e-16 
		-1.7763568394002505e-15 ;
	setAttr ".tg[0].tor" -type "double3" 1.3553792170428891e-14 -1.29409524792208e-14 
		-10.639918758179817 ;
	setAttr ".lr" -type "double3" 90 8.3341133484946361 -90.000000000000014 ;
	setAttr ".rst" -type "double3" 3.1503720283508301 14.132230758666985 -1.1643255949020386 ;
	setAttr ".rsrr" -type "double3" 90 8.3341133484946361 -90.000000000000014 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_FK_Leg_01_Ctrl_Grp_scaleConstraint1" -p "L_FK_Leg_01_Ctrl_Grp";
	rename -uid "2A06CB03-4F8F-B1DD-E8E6-DFAF06899B24";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_FK_Hip_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "L_FK_Leg_02_Ctrl_Grp" -p "L_FK_Leg";
	rename -uid "CF8C9666-424C-BC5D-16ED-8C97B9F6F27A";
createNode transform -n "L_FK_Leg_02_Ctrl" -p "L_FK_Leg_02_Ctrl_Grp";
	rename -uid "D10CE7B4-4F17-B98C-BAB6-CE86DE7E1A96";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr ".t" -type "double3" 0 1.1102230246251565e-16 4.4408920985006262e-16 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "L_FK_Leg_02_CtrlShape" -p "L_FK_Leg_02_Ctrl";
	rename -uid "9F6BED78-47DF-DA55-7825-D990A0F2DB06";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 3.541308025743866e-17 0.57833948991814865 
		-0.57833948991814876 3.0666171318882611e-33 0.81789555029818328 -3.7783882653429039e-16 
		-3.541308025743866e-17 0.57833948991814865 0.57833948991814876 -5.0081658385476523e-17 
		2.882177258685993e-16 0.81789555029818373 -3.541308025743866e-17 -0.57833948991814876 
		0.57833948991814876 -5.0167139728877325e-33 -0.81789555029818373 -2.458280114910651e-16 
		3.541308025743866e-17 -0.57833948991814865 -0.57833948991814876 5.0081658385476523e-17 
		1.3428174869823119e-16 -0.81789555029818373 0 0 0 0 0 0 0 0 0;
createNode parentConstraint -n "L_FK_Leg_02_Ctrl_Grp_parentConstraint1" -p "L_FK_Leg_02_Ctrl_Grp";
	rename -uid "D4124D6C-41F2-5321-C4A5-E1B700FF16A5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_FK_Leg_01_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".tg[0].tot" -type "double3" 5.9432347305218753 4.4408920985006262e-16 -1.3322676295501878e-15 ;
	setAttr ".tg[0].tor" -type "double3" 1.1064427941589391e-14 1.2485203190384741e-14 
		17.694000000000045 ;
	setAttr ".lr" -type "double3" 89.999999999999986 -9.3598866515054056 -90 ;
	setAttr ".rst" -type "double3" 3.1503720283508301 8.2517585754394531 -2.0257697105407746 ;
	setAttr ".rsrr" -type "double3" 89.999999999999986 -9.3598866515054056 -90 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_FK_Leg_02_Ctrl_Grp_parentConstraint2" -p "L_FK_Leg_02_Ctrl_Grp";
	rename -uid "4BD963F2-43FC-F84B-E593-14A2CA6E24AD";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_FK_Leg_01_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".tg[0].tot" -type "double3" 5.9432347305218753 0 -8.8817841970012523e-16 ;
	setAttr ".tg[0].tor" -type "double3" 1.1064427941589391e-14 1.2485203190384741e-14 
		17.694000000000045 ;
	setAttr ".lr" -type "double3" 89.999999999999986 -9.3598866515054056 -90 ;
	setAttr ".rst" -type "double3" 3.1503720283508296 8.2517585754394531 -2.025769710540775 ;
	setAttr ".rsrr" -type "double3" 89.999999999999986 -9.3598866515054056 -90 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_FK_Leg_02_Ctrl_Grp_scaleConstraint1" -p "L_FK_Leg_02_Ctrl_Grp";
	rename -uid "74EDA9F5-4D69-B766-FF19-5F8AACBE938B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_FK_Leg_01_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr -k on ".w0";
createNode transform -n "L_FK_Leg_03_Ctrl_Grp" -p "L_FK_Leg";
	rename -uid "27C32F0C-4B65-D778-1F53-D6B02A2AF5F7";
createNode transform -n "L_FK_Leg_03_Ctrl" -p "L_FK_Leg_03_Ctrl_Grp";
	rename -uid "D9D85178-4B92-A825-CDE0-BB942525FCF2";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "L_FK_Leg_03_CtrlShape" -p "L_FK_Leg_03_Ctrl";
	rename -uid "F08708BE-47DF-8ADC-942E-378EBDFB92D7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 3.6942598757303856e-17 0.60331842263458602 
		-0.60331842263458568 3.1990667126965117e-33 0.85322109571937577 -5.2244724191886512e-17 
		-3.6942598757303856e-17 0.60331842263458579 0.60331842263458568 -5.2244724191886512e-17 
		2.1518775994408464e-16 0.85322109571937577 -3.6942598757303856e-17 -0.60331842263458568 
		0.60331842263458568 -5.2333897541042645e-33 -0.85322109571937599 8.5467740702836843e-17 
		3.6942598757303856e-17 -0.60331842263458579 -0.60331842263458568 5.2244724191886512e-17 
		5.4603168104636744e-17 -0.85322109571937577 0 0 0 0 0 0 0 0 0;
createNode parentConstraint -n "L_FK_Leg_03_Ctrl_Grp_parentConstraint1" -p "L_FK_Leg_03_Ctrl_Grp";
	rename -uid "9B7CDF1D-497E-C56B-821C-559FB1125B2F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_FK_Leg_02_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".tg[0].tot" -type "double3" 5.9395843815356644 -2.886579864025407e-15 0 ;
	setAttr ".tg[0].tor" -type "double3" 2.2263882770244611e-14 -1.2722218725854062e-14 
		-9.5416640443905487e-15 ;
	setAttr ".lr" -type "double3" 89.999999999999986 -9.3598866515054073 -90 ;
	setAttr ".rst" -type "double3" 3.1503720283508296 2.3912522407166215 -1.0597841381557815 ;
	setAttr ".rsrr" -type "double3" 89.999999999999986 -9.3598866515054073 -90 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_FK_Leg_03_Ctrl_Grp_parentConstraint2" -p "L_FK_Leg_03_Ctrl_Grp";
	rename -uid "906BAD1F-4F12-97A5-0F73-2F9B1478CF93";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_FK_Leg_02_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".tg[0].tot" -type "double3" 5.9395843815356644 -3.3306690738754696e-15 
		-4.4408920985006262e-16 ;
	setAttr ".tg[0].tor" -type "double3" 2.2263882770244611e-14 -1.2722218725854062e-14 
		-9.5416640443905487e-15 ;
	setAttr ".lr" -type "double3" 89.999999999999986 -9.3598866515054073 -90 ;
	setAttr ".rst" -type "double3" 3.1503720283508301 2.3912522407166215 -1.059784138155782 ;
	setAttr ".rsrr" -type "double3" 89.999999999999986 -9.3598866515054073 -90 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_FK_Leg_03_Ctrl_Grp_scaleConstraint1" -p "L_FK_Leg_03_Ctrl_Grp";
	rename -uid "A81AACCD-4410-1323-A59A-50A92848453A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_FK_Leg_02_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr -k on ".w0";
createNode transform -n "L_FK_Arm" -p "Left_Side_FK_Ctrls";
	rename -uid "9C75C611-4E96-AE60-C72A-B6A1E5BFE754";
createNode transform -n "L_FK_Arm_01_Ctrl_Grp" -p "L_FK_Arm";
	rename -uid "02C18DC8-4883-2701-6A47-4286EA295762";
createNode transform -n "L_FK_Arm_01_Ctrl" -p "L_FK_Arm_01_Ctrl_Grp";
	rename -uid "39548A15-4715-A83A-D94F-69A2743DFE88";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 -2.2204460492503131e-16 -8.8817841970012523e-16 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "L_FK_Arm_01_CtrlShape" -p "L_FK_Arm_01_Ctrl";
	rename -uid "E25F16BF-4455-24E2-854A-2A92F2D6EE79";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 1.846761990479683 1.3488454397740033 
		-0.28261690744139523 -1.3190408748754001e-15 1.9075555144734988 -5.3257431994154934e-15 
		-1.8467619904796817 1.3488454397740022 0.28261690744138213 -2.6117158534115004 8.4018499193892235e-16 
		0.39968066345954867 -1.8467619904796817 -1.3488454397740022 0.28261690744138213 -1.7405797111540333e-15 
		-1.9075555144734986 -5.261233531743291e-15 1.846761990479683 -1.3488454397740022 
		-0.28261690744139523 2.6117158534115004 4.811643052263614e-16 -0.39968066345956088 
		0 0 0 0 0 0 0 0 0;
createNode parentConstraint -n "L_FK_Arm_01_Ctrl_Grp_parentConstraint1" -p "L_FK_Arm_01_Ctrl_Grp";
	rename -uid "17DD49D2-4C08-AAEC-1F1E-8A81B1062ACA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Clav_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 2.5333225727081303 -5.225813337617069e-09 2.3841858265427618e-07 ;
	setAttr ".tg[0].tor" -type "double3" -90.000206802080356 -88.505999999999972 90.00020122129861 ;
	setAttr ".lr" -type "double3" 89.999994487644543 -1.4939999999915756 -89.999997623165427 ;
	setAttr ".rst" -type "double3" 6.2568039894104182 30.112640479574974 -1.8020730070871571 ;
	setAttr ".rsrr" -type "double3" 89.999994487644543 -1.4939999999915756 -89.999997623165427 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_FK_Arm_01_Ctrl_Grp_parentConstraint2" -p "L_FK_Arm_01_Ctrl_Grp";
	rename -uid "A476B2CC-46EC-2133-D43F-13B6D791081C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Clav_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 2.5333225727081286 -5.225813337617069e-09 2.3841858620698986e-07 ;
	setAttr ".tg[0].tor" -type "double3" -90.000206802080356 -88.505999999999972 90.00020122129861 ;
	setAttr ".lr" -type "double3" 89.999994487644543 -1.4939999999915756 -89.999997623165427 ;
	setAttr ".rst" -type "double3" 6.2568039894104164 30.112640479574971 -1.8020730070871571 ;
	setAttr ".rsrr" -type "double3" 89.999994487644543 -1.4939999999915756 -89.999997623165427 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_FK_Arm_01_Ctrl_Grp_scaleConstraint1" -p "L_FK_Arm_01_Ctrl_Grp";
	rename -uid "32814B5C-40AF-4469-A728-E4851A32F1A1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Clav_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "L_FK_Arm_02_Ctrl_Grp" -p "L_FK_Arm";
	rename -uid "66E888A2-4146-CB94-6EE9-7EB926152D5E";
createNode transform -n "L_FK_Arm_02_Ctrl" -p "L_FK_Arm_02_Ctrl_Grp";
	rename -uid "0012ADE3-4308-C6B3-47AE-46BE6CDC1484";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr ".t" -type "double3" 0 4.9960036108132044e-16 8.8817841970012523e-16 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "L_FK_Arm_02_CtrlShape" -p "L_FK_Arm_02_Ctrl";
	rename -uid "2171C5F2-4926-0198-46B0-D7A7E1FC3D19";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 0 0.48211695801023557 -0.4821169580102348 
		0 0.68181634066813479 -5.8820087590589731e-16 0 0.48211695801023535 0.4821169580102348 
		0 2.0611162510798501e-16 0.68181634066813368 0 -0.48211695801023524 0.4821169580102348 
		0 -0.68181634066813501 -4.7815365678534302e-16 0 -0.48211695801023535 -0.4821169580102348 
		0 7.7787091965324336e-17 -0.68181634066813368 0 0 0 0 0 0 0 0 0;
createNode parentConstraint -n "L_FK_Arm_02_Ctrl_Grp_parentConstraint1" -p "L_FK_Arm_02_Ctrl_Grp";
	rename -uid "F029B3E6-4271-EFCA-CBEC-27BCDBAF7E01";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_FK_Arm_01_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".tg[0].tot" -type "double3" 7.0036667971622961 -3.7747582837255322e-15 
		3.0198066269804258e-14 ;
	setAttr ".tg[0].tor" -type "double3" 4.4852371687764053e-14 -1.550238441599773e-14 
		3.5047502943116697 ;
	setAttr ".lr" -type "double3" 89.999994468479827 -4.9987502943032291 -89.999997284901468 ;
	setAttr ".rst" -type "double3" 6.2568042798488595 23.111354503735434 -1.6194715553236532 ;
	setAttr ".rsrr" -type "double3" 89.999994468479827 -4.9987502943032291 -89.999997284901468 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_FK_Arm_02_Ctrl_Grp_parentConstraint2" -p "L_FK_Arm_02_Ctrl_Grp";
	rename -uid "AD4A5597-4843-500B-A759-1DBEDD697F8F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_FK_Arm_01_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".tg[0].tot" -type "double3" 7.0036667971623032 -3.3306690738754696e-15 
		3.0198066269804258e-14 ;
	setAttr ".tg[0].tor" -type "double3" 4.4852371687764053e-14 -1.550238441599773e-14 
		3.5047502943116697 ;
	setAttr ".lr" -type "double3" 89.999994468479827 -4.9987502943032291 -89.999997284901468 ;
	setAttr ".rst" -type "double3" 6.2568042798488595 23.111354503735427 -1.6194715553236525 ;
	setAttr ".rsrr" -type "double3" 89.999994468479827 -4.9987502943032291 -89.999997284901468 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_FK_Arm_02_Ctrl_Grp_scaleConstraint1" -p "L_FK_Arm_02_Ctrl_Grp";
	rename -uid "AFBB9C8C-47D7-7A30-F3B5-398DE89D8CFB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_FK_Arm_01_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr -k on ".w0";
createNode transform -n "L_FK_Arm_03_Ctrl_Grp" -p "L_FK_Arm";
	rename -uid "C9487806-465D-D80D-7E8B-80BD8FFCEB08";
createNode transform -n "L_FK_Arm_03_Ctrl" -p "L_FK_Arm_03_Ctrl_Grp";
	rename -uid "B4E4FB87-46A8-D11A-3F66-66A74A9FE7E8";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 5.5511151231257827e-17 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "L_FK_Arm_03_CtrlShape" -p "L_FK_Arm_03_Ctrl";
	rename -uid "90E45491-445F-6837-418F-10BE10B6A427";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 0 0.12138299008164211 -0.12138299008164211 
		0 0.17166147081485716 -1.4809182688940603e-16 0 0.12138299008164211 0.12138299008164211 
		0 5.1892896382339182e-17 0.17166147081485716 0 -0.12138299008164211 0.12138299008164211 
		0 -0.17166147081485716 -1.2038514641470906e-16 0 -0.12138299008164211 -0.12138299008164211 
		0 1.9584521256989839e-17 -0.17166147081485716 0 0 0 0 0 0 0 0 0;
createNode parentConstraint -n "L_FK_Arm_03_Ctrl_Grp_parentConstraint1" -p "L_FK_Arm_03_Ctrl_Grp";
	rename -uid "327B4BBF-4D67-CB2E-3114-38970E5EE251";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_FK_Arm_02_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".tg[0].tot" -type "double3" 7.9860011112408742 1.5154544286133387e-14 -1.7763568394002505e-15 ;
	setAttr ".tg[0].tor" -type "double3" 9.5416617694805653e-15 1.2722219578945313e-14 
		3.9756933518293967e-15 ;
	setAttr ".lr" -type "double3" 89.999994468479869 -4.99875029430323 -89.999997284901497 ;
	setAttr ".rst" -type "double3" 6.2568046568454143 15.155727358301444 -0.92361922071940605 ;
	setAttr ".rsrr" -type "double3" 89.999994468479869 -4.99875029430323 -89.999997284901497 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_FK_Arm_03_Ctrl_Grp_parentConstraint2" -p "L_FK_Arm_03_Ctrl_Grp";
	rename -uid "BB274F65-40FC-2289-A2B5-8C8C74C77791";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_FK_Arm_02_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".tg[0].tot" -type "double3" 7.9860011112408742 1.5376588891058418e-14 -8.8817841970012523e-16 ;
	setAttr ".tg[0].tor" -type "double3" 9.5416617694805653e-15 1.2722219578945313e-14 
		3.9756933518293967e-15 ;
	setAttr ".lr" -type "double3" 89.999994468479869 -4.99875029430323 -89.999997284901497 ;
	setAttr ".rst" -type "double3" 6.2568046568454134 15.155727358301444 -0.92361922071940583 ;
	setAttr ".rsrr" -type "double3" 89.999994468479869 -4.99875029430323 -89.999997284901497 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_FK_Arm_03_Ctrl_Grp_scaleConstraint1" -p "L_FK_Arm_03_Ctrl_Grp";
	rename -uid "5F169B08-40FB-A3D7-072E-7BA18C576B12";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_FK_Arm_02_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr -k on ".w0";
createNode transform -n "L_FK_Foot" -p "Left_Side_FK_Ctrls";
	rename -uid "50C576CF-43E7-0E01-B82F-6E8EFDAF0575";
createNode transform -n "L_FK_Toe_03_Ctrl_Grp" -p "L_FK_Foot";
	rename -uid "4295C77C-460C-E1F4-ED90-86ADAA123142";
createNode transform -n "L_FK_Toe_03_Ctrl" -p "L_FK_Toe_03_Ctrl_Grp";
	rename -uid "FA2BD7BB-41EB-7D19-D4AB-0485BABE0E9B";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr ".t" -type "double3" 1.1102230246251565e-16 0 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "L_FK_Toe_03_CtrlShape" -p "L_FK_Toe_03_Ctrl";
	rename -uid "261E4DA5-43C6-6813-3794-118823503009";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 0.45870187516313343 -9.9920072216264089e-16 
		-4.4408920985006262e-16 0.45870187516313343 -8.8817841970012523e-16 -1.7488051316482209e-17 
		0.45870187516313343 -9.9920072216264089e-16 -4.4408920985006262e-16 0.45870187516313343 
		-9.6277152916712794e-16 -4.4408920985006262e-16 0.45870187516313343 -8.8817841970012523e-16 
		-4.4408920985006262e-16 0.45870187516313343 -1.1102230246251565e-15 -1.7488051316482308e-17 
		0.45870187516313343 -9.9920072216264089e-16 -4.4408920985006262e-16 0.45870187516313343 
		-9.6277152916712794e-16 -4.4408920985006262e-16 0 0 0 0 0 0 0 0 0;
createNode parentConstraint -n "L_FK_Toe_03_Ctrl_Grp_parentConstraint1" -p "L_FK_Toe_03_Ctrl_Grp";
	rename -uid "68A31B01-487E-516F-CB85-A5B16D01D383";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_FK_Ankle_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -0.64067840576172053 -0.71594381332397372 1.3322676295501878e-15 ;
	setAttr ".tg[0].tor" -type "double3" 2.5444437451708134e-14 180.00000000000006 56.896573258530047 ;
	setAttr ".lr" -type "double3" -90.000000000000057 33.103426741469953 -90.000000000000057 ;
	setAttr ".rst" -type "double3" 3.1503720283508252 1.6753115653991717 -1.7004435062408461 ;
	setAttr ".rsrr" -type "double3" -90.000000000000057 33.103426741469953 -90.000000000000057 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_FK_Toe_03_Ctrl_Grp_parentConstraint2" -p "L_FK_Toe_03_Ctrl_Grp";
	rename -uid "CD50D5C6-4B42-39C5-5FEB-B79B2D155A48";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_FK_Ankle_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -0.64067840576172053 -0.71594381332397372 1.7763568394002505e-15 ;
	setAttr ".tg[0].tor" -type "double3" 2.5444437451708134e-14 180.00000000000006 56.896573258530047 ;
	setAttr ".lr" -type "double3" -90.000000000000057 33.103426741469953 -90.000000000000057 ;
	setAttr ".rst" -type "double3" 3.1503720283508247 1.6753115653991717 -1.7004435062408461 ;
	setAttr ".rsrr" -type "double3" -90.000000000000057 33.103426741469953 -90.000000000000057 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_FK_Toe_03_Ctrl_Grp_scaleConstraint1" -p "L_FK_Toe_03_Ctrl_Grp";
	rename -uid "FB29D858-4A23-BF08-F7DF-A588B29DA10C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_FK_Ankle_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "L_FK_Toe_02_Ctrl_Grp" -p "L_FK_Foot";
	rename -uid "556C00B8-477F-82FF-857A-4185C61893E1";
createNode transform -n "L_FK_Toe_02_Ctrl" -p "L_FK_Toe_02_Ctrl_Grp";
	rename -uid "00D553F8-48A4-34D2-6257-D1BA718241C3";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr ".t" -type "double3" -4.4408920985006262e-16 0 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999967 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "L_FK_Toe_02_CtrlShape" -p "L_FK_Toe_02_Ctrl";
	rename -uid "F25E52FB-43A3-5AB5-10FC-4DACCD943D64";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 1.1786275738566028 -3.3306690738754696e-16 
		0.39180581244561119 0.50000000000000044 -2.2204460492503131e-16 -6.8154321839087151e-16 
		-0.17862757385660247 -3.3306690738754696e-16 -0.39180581244561286 -0.45972431874835651 
		-2.2204460492503131e-16 -0.55409709377719474 -0.17862757385660247 -4.4408920985006262e-16 
		-0.39180581244561286 0.5 0 -8.604091113180129e-16 1.1786275738566028 -3.3306690738754696e-16 
		0.39180581244561119 1.4597243187483571 -2.2204460492503131e-16 0.55409709377719285 
		0 0 0 0 0 0 0 0 0;
createNode parentConstraint -n "L_FK_Toe_02_Ctrl_Grp_parentConstraint1" -p "L_FK_Toe_02_Ctrl_Grp";
	rename -uid "4C73F8A5-4A94-1347-4921-5F961B97ADE2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_FK_Ankle_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0.91741719841957103 -0.80941700935363814 0.55936503410339444 ;
	setAttr ".tg[0].tor" -type "double3" 8.2694730233304861e-14 -0.15650822584599469 
		-47.953935235796081 ;
	setAttr ".lr" -type "double3" 90.141148186967257 -42.045871984932731 -90.210754800395819 ;
	setAttr ".rst" -type "double3" 2.5910069942474321 1.5818383693695073 -0.1423479020595545 ;
	setAttr ".rsrr" -type "double3" 90.141148186967257 -42.045871984932731 -90.210754800395819 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_FK_Toe_02_Ctrl_Grp_parentConstraint2" -p "L_FK_Toe_02_Ctrl_Grp";
	rename -uid "F273EF5C-4EA6-3233-EE0E-A689375BD7FD";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_FK_Ankle_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0.91741719841957103 -0.80941700935363814 0.55936503410339489 ;
	setAttr ".tg[0].tor" -type "double3" 8.2694730233304861e-14 -0.15650822584599469 
		-47.953935235796081 ;
	setAttr ".lr" -type "double3" 90.141148186967257 -42.045871984932731 -90.210754800395819 ;
	setAttr ".rst" -type "double3" 2.5910069942474316 1.5818383693695073 -0.1423479020595545 ;
	setAttr ".rsrr" -type "double3" 90.141148186967257 -42.045871984932731 -90.210754800395819 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_FK_Toe_02_Ctrl_Grp_scaleConstraint1" -p "L_FK_Toe_02_Ctrl_Grp";
	rename -uid "09B390DD-46ED-72A3-EDC6-7D85C13AD8DC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_FK_Ankle_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "L_FK_Toe_01_Ctrl_Grp" -p "L_FK_Foot";
	rename -uid "D031F7E0-4E0C-6C3C-937D-1BB1C69CD780";
createNode transform -n "L_FK_Toe_01_Ctrl" -p "L_FK_Toe_01_Ctrl_Grp";
	rename -uid "25D620BA-4ABF-E5FC-0392-F9B7865F6612";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr ".t" -type "double3" 2.2204460492503131e-16 -2.2204460492503131e-16 0 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "L_FK_Toe_01_CtrlShape" -p "L_FK_Toe_01_Ctrl";
	rename -uid "7C4C9B83-43CF-BFCE-F015-12BC1F79AAEF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.1786275738566025 -2.2204460492503131e-16 
		0.39180581244561252 0.50000000000000011 -2.2204460492503131e-16 5.3970210869680069e-16 
		1.1786275738566028 -2.2204460492503131e-16 -0.39180581244561147 1.4597243187483568 
		-5.5511151231258024e-17 -0.55409709377719341 1.1786275738566028 -1.1102230246251565e-16 
		-0.39180581244561147 0.50000000000000022 -2.2204460492503131e-16 4.7185851823217495e-16 
		-0.1786275738566025 -2.2204460492503131e-16 0.39180581244561252 -0.45972431874835673 
		-5.5511151231257827e-17 0.55409709377719407 0 0 0 0 0 0 0 0 0;
createNode parentConstraint -n "L_FK_Toe_01_Ctrl_Grp_parentConstraint1" -p "L_FK_Toe_01_Ctrl_Grp";
	rename -uid "BBC46AB9-4657-61E8-77C9-D39C326FB374";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_FK_Ankle_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0.91741940379142761 -0.80941534042358443 -0.5593702793121329 ;
	setAttr ".tg[0].tor" -type "double3" -9.541699607327167e-15 0.156431317506704 -47.954021257668899 ;
	setAttr ".lr" -type "double3" 89.858921598858089 -42.045786153058309 -89.789349049583123 ;
	setAttr ".rst" -type "double3" 3.7097423076629594 1.581840038299561 -0.14234569668769792 ;
	setAttr ".rsrr" -type "double3" 89.858921598858089 -42.045786153058309 -89.789349049583123 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_FK_Toe_01_Ctrl_Grp_parentConstraint2" -p "L_FK_Toe_01_Ctrl_Grp";
	rename -uid "F5872D6E-4094-9BBB-4A96-24AF6F7E6E26";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_FK_Ankle_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0.91741940379142761 -0.80941534042358443 -0.55937027931213246 ;
	setAttr ".tg[0].tor" -type "double3" -9.541699607327167e-15 0.156431317506704 -47.954021257668899 ;
	setAttr ".lr" -type "double3" 89.858921598858089 -42.045786153058309 -89.789349049583123 ;
	setAttr ".rst" -type "double3" 3.709742307662959 1.581840038299561 -0.14234569668769792 ;
	setAttr ".rsrr" -type "double3" 89.858921598858089 -42.045786153058309 -89.789349049583123 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_FK_Toe_01_Ctrl_Grp_scaleConstraint1" -p "L_FK_Toe_01_Ctrl_Grp";
	rename -uid "6E5901E4-45E1-D021-68C2-4D9E6CD2EB24";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_FK_Ankle_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "L_FK_Ankle_Ctrl_Grp" -p "L_FK_Foot";
	rename -uid "99A1B6BD-47D7-62B1-E0A6-D39160525556";
	setAttr ".v" no;
createNode transform -n "L_FK_Ankle_Ctrl" -p "L_FK_Ankle_Ctrl_Grp";
	rename -uid "6EBC5E5B-4DF6-745E-11A5-88BA975F2D3B";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "L_FK_Ankle_CtrlShape" -p "L_FK_Ankle_Ctrl";
	rename -uid "2099878D-4EE4-1350-A52C-08A746F10F7F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -1.3145310977127964 -0.78361162489122504 
		-0.53091947282156882 -1.8590277065466263 -1.1081941875543879 -3.468585391315696e-16 
		-1.3145310977127962 -0.78361162489122482 0.53091947282156882 -4.7260421120602402e-16 
		-9.162540545879893e-16 0.75083351899223794 1.3145310977127911 0.78361162489122393 
		0.53091947282156882 1.8590277065466259 1.1081941875543881 -2.2567173872924153e-16 
		1.3145310977127911 0.78361162489122382 -0.53091947282156882 -2.58431581120872e-16 
		-4.8001578909988853e-16 -0.75083351899223794 0 0 0 0 0 0 0 0 0;
createNode parentConstraint -n "L_FK_Ankle_Ctrl_Grp_parentConstraint1" -p "L_FK_Ankle_Ctrl_Grp";
	rename -uid "DB00A217-48EE-6225-67BB-EC99B74F0DCF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_FK_Leg_03_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".tg[0].tot" -type "double3" -3.1337155093069669e-11 1.9294564452154717e-05 
		3.1086244689504383e-15 ;
	setAttr ".tg[0].tor" -type "double3" 2.5863509440377373e-15 -1.5691048111543163e-14 
		80.640113348494594 ;
	setAttr ".lr" -type "double3" -4.4979835663949442e-15 -90 0 ;
	setAttr ".rst" -type "double3" 3.1503720283508265 2.3912553787231454 -1.0597651004791255 ;
	setAttr ".rsrr" -type "double3" -4.4979835663949442e-15 -90 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_FK_Ankle_Ctrl_Grp_parentConstraint2" -p "L_FK_Ankle_Ctrl_Grp";
	rename -uid "88FE407A-4C05-3E2C-FA45-1BA96D60A8F6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_FK_Leg_03_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".tg[0].tot" -type "double3" -3.1338043271489369e-11 1.9294564452376761e-05 
		2.6645352591003757e-15 ;
	setAttr ".tg[0].tor" -type "double3" 2.5863509440377373e-15 -1.5691048111543163e-14 
		80.640113348494594 ;
	setAttr ".lr" -type "double3" -4.4979835663949442e-15 -90 0 ;
	setAttr ".rst" -type "double3" 3.150372028350827 2.3912553787231463 -1.0597651004791255 ;
	setAttr ".rsrr" -type "double3" -4.4979835663949442e-15 -90 0 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_FK_Ankle_Ctrl_Grp_scaleConstraint1" -p "L_FK_Ankle_Ctrl_Grp";
	rename -uid "68FA36C4-484E-6B3E-7C59-9FB86BD6742B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_FK_Leg_03_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr -k on ".w0";
createNode transform -n "IK_Ctrls" -p "Transform_Ctrl";
	rename -uid "B0B99F47-45C7-8395-0B2E-659944193CD0";
createNode transform -n "L_Arm_IK_Ctrls" -p "IK_Ctrls";
	rename -uid "68B95752-4FB9-37DE-6DE0-E79F4C40C45A";
createNode transform -n "L_IK_Arm_01_Ctrl_Grp" -p "L_Arm_IK_Ctrls";
	rename -uid "A6439AE9-4547-62A5-63CE-93AD750214EC";
createNode transform -n "L_IK_Arm_01_Ctrl" -p "L_IK_Arm_01_Ctrl_Grp";
	rename -uid "AA42DC90-4653-C1CC-A994-E5B9EE611D42";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 -2.2204460492503131e-16 8.8817841970012523e-16 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000004 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "L_IK_Arm_01_CtrlShape" -p "L_IK_Arm_01_Ctrl";
	rename -uid "04E7BCF8-4A1F-7D6B-CC84-35BF72EB83E3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 1.9429815823354522 1.370435697254023 
		-0.14630365982365068 -1.8537115975728359e-15 1.9380887494168677 -7.6813519825550981e-15 
		-1.9429815823354482 1.3704356972540228 0.14630365982364202 -2.7477909051799272 6.3152171191606577e-16 
		0.20690461994742404 -1.9429815823354482 -1.3704356972540228 0.14630365982364202 -2.2972133586826976e-15 
		-1.9380887494168688 -7.6479569512390617e-15 1.9429815823354522 -1.3704356972540228 
		-0.14630365982365068 2.7477909051799281 2.6675437044365547e-16 -0.20690461994742715 
		0 0 0 0 0 0 0 0 0;
createNode parentConstraint -n "L_IK_Arm_01_Ctrl_Grp_parentConstraint1" -p "L_IK_Arm_01_Ctrl_Grp";
	rename -uid "1073E887-4343-C277-BABC-7497B637DD3C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Clav_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 2.5333225727081303 -5.225813337617069e-09 2.3841858265427618e-07 ;
	setAttr ".tg[0].tor" -type "double3" -90.000206802080598 -88.505999999999958 90.00020122129861 ;
	setAttr ".lr" -type "double3" 89.999994487644287 -1.4939999999915725 -89.999997623165427 ;
	setAttr ".rst" -type "double3" 6.2568039894104182 30.112640479574974 -1.8020730070871571 ;
	setAttr ".rsrr" -type "double3" 89.999994487644287 -1.4939999999915725 -89.999997623165427 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_IK_Arm_01_Ctrl_Grp_parentConstraint2" -p "L_IK_Arm_01_Ctrl_Grp";
	rename -uid "E25981C4-46A5-338D-6223-ABA807EB4EF4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Clav_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 2.5333225727081286 -5.225813337617069e-09 2.3841858620698986e-07 ;
	setAttr ".tg[0].tor" -type "double3" -90.000206802080598 -88.505999999999958 90.00020122129861 ;
	setAttr ".lr" -type "double3" 89.999994487644287 -1.4939999999915725 -89.999997623165427 ;
	setAttr ".rst" -type "double3" 6.2568039894104164 30.112640479574971 -1.8020730070871571 ;
	setAttr ".rsrr" -type "double3" 89.999994487644287 -1.4939999999915725 -89.999997623165427 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_IK_Arm_01_Ctrl_Grp_scaleConstraint1" -p "L_IK_Arm_01_Ctrl_Grp";
	rename -uid "BC249845-4235-50BC-97F2-88840F44D879";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Clav_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "L_IK_Arm_PV_Ctrl_Grp" -p "L_Arm_IK_Ctrls";
	rename -uid "BA2E9424-4332-66F4-D89D-1D9093C04BF6";
	setAttr ".t" -type "double3" 6.2568042798488595 23.111354503735441 -1.6194715553236549 ;
	setAttr ".r" -type "double3" 89.999994468479883 -4.9987502943032132 -89.999997284901468 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "L_IK_Arm_PV_Ctrl_Offset" -p "L_IK_Arm_PV_Ctrl_Grp";
	rename -uid "D96DC5E3-40B4-8ED4-31B4-318C3ED08EA8";
	setAttr ".t" -type "double3" 2.55351295663786e-15 -6.0171765275330085 -1.5826730151316613e-15 ;
createNode transform -n "L_IK_Arm_PV_Ctrl" -p "L_IK_Arm_PV_Ctrl_Offset";
	rename -uid "BD0E86E6-4942-CF1B-2C7E-B49C75E0CCC8";
	setAttr ".t" -type "double3" -6.1556403041935308e-16 -1.48995001246163e-16 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000007 ;
createNode nurbsCurve -n "L_IK_Arm_PV_CtrlShape" -p "L_IK_Arm_PV_Ctrl";
	rename -uid "43863F61-4B31-8A44-9770-72B49CE2D7A0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.0067254150294682397 -0.79033703992069482 
		0.78361162489122449 6.7857323231109146e-17 0 6.7857323231109122e-17 0.0067254150294682397 
		-0.7903370399206946 -0.78361162489122449 -1.1081941875543881 0 -1.1081941875543881 
		0.0067254150294682397 0.79033703992069115 -0.78361162489122449 -1.1100856969603226e-16 
		0 -1.1100856969603226e-16 -0.0067254150294682397 0.79033703992069104 0.78361162489122449 
		1.1081941875543881 0 1.1081941875543881 0 0 0 0 0 0 0 0 0;
createNode transform -n "L_Arm_IK_Ctrl_Grp" -p "L_Arm_IK_Ctrls";
	rename -uid "49AA0D6D-44EA-2B4F-C17E-8495150E8A3C";
	setAttr ".t" -type "double3" 6.2568046568454152 15.155727358301444 -0.92361922071940861 ;
	setAttr ".r" -type "double3" -4.99875 0 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "L_Arm_IK_Ctrl" -p "L_Arm_IK_Ctrl_Grp";
	rename -uid "152F5239-4FD2-EBBE-8663-8DAF0A3A4653";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000004 ;
createNode nurbsCurve -n "L_Arm_IK_CtrlShape" -p "L_Arm_IK_Ctrl";
	rename -uid "F69FD22F-41E8-0FCA-2309-F08315C484B6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.78361162489122471 -0.78361162489122449 
		0 -1.1081941875543877 -1.1081941875543877 0 -0.78361162489122449 -0.78361162489122449 
		0 1.0408340855860829e-17 -1.2530630560635745e-16 0 0.78361162489122449 0.78361162489122449 
		0 1.1081941875543884 1.1081941875543881 0 0.78361162489122449 0.78361162489122449 
		0 8.3266726846886802e-17 2.1898137330910506e-16 0 0 0 0 0 0 0 0 0 0;
createNode ikHandle -n "L_Arm_IK_Handle" -p "L_Arm_IK_Ctrl";
	rename -uid "67794F5F-4B6B-38A7-4497-949130925FB2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.7763568394002505e-15 0 8.3266726846886741e-16 ;
	setAttr ".r" -type "double3" 4.9987499999999976 0 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999967 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "L_Arm_IK_Handle_poleVectorConstraint1" -p "L_Arm_IK_Handle";
	rename -uid "1D1FE265-4681-B24F-C1CD-359DB559FD1E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_IK_Arm_PV_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".rst" -type "double3" -2.6563401522849972e-07 -7.525586721116948 -5.8116893396475557 ;
	setAttr -k on ".w0";
createNode transform -n "R_Arm_IK_Ctrls" -p "IK_Ctrls";
	rename -uid "B03D93D5-481B-59CE-F78A-0FA2FCB673DC";
createNode transform -n "R_IK_Arm_01_Ctrl_Grp" -p "R_Arm_IK_Ctrls";
	rename -uid "895A1480-4EBE-BCB8-BBBF-31AC5B3B72E7";
createNode transform -n "R_IK_Arm_01_Ctrl" -p "R_IK_Arm_01_Ctrl_Grp";
	rename -uid "90AD1891-4311-1FC4-A210-649C422561FD";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr ".t" -type "double3" 0 -3.8719027983802263e-15 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 3.5527136788005017e-15 -2.2204460492503136e-16 8.8817841970012543e-16 ;
	setAttr ".sp" -type "double3" 3.5527136788005009e-15 -2.2204460492503131e-16 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 7.8886090522101216e-31 -4.930380657631326e-32 1.9721522630525304e-31 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "R_IK_Arm_01_CtrlShape" -p "R_IK_Arm_01_Ctrl";
	rename -uid "2DEFE9A5-499F-26F0-98AB-2492F03FC2DC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.9429815823354595 2.1540473221452481 0.92991528471487461
		5.2411468429777071e-15 3.0462829369712563 6.8608321221965456e-15
		-1.9429815823354413 2.1540473221452476 -0.92991528471486773
		-2.7477909051799201 6.8484302527573878e-16 -1.3150988075018135
		-1.9429815823354413 -2.1540473221452476 -0.92991528471486773
		4.8187829159687709e-15 -3.0462829369712581 6.6489687257324438e-15
		1.9429815823354595 -2.1540473221452476 0.92991528471487461
		2.7477909051799352 1.1975798938123517e-16 1.3150988075018148
		1.9429815823354595 2.1540473221452481 0.92991528471487461
		5.2411468429777071e-15 3.0462829369712563 6.8608321221965456e-15
		-1.9429815823354413 2.1540473221452476 -0.92991528471486773
		;
createNode parentConstraint -n "R_IK_Arm_01_Ctrl_Grp_parentConstraint1" -p "R_IK_Arm_01_Ctrl_Grp";
	rename -uid "F5AD7953-4F65-0396-2352-6EB48E1305B1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine_04_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 4.0117132580495927 -0.37571075869456516 -6.2568039894104404 ;
	setAttr ".tg[0].tor" -type "double3" -179.99999454961753 2.3760265657385051e-06 
		178.50602003534718 ;
	setAttr ".lr" -type "double3" 90.000005512355443 -1.493999999991579 -90.000002376834644 ;
	setAttr ".rst" -type "double3" -6.256803989410419 30.112640479574971 -1.8020730070871571 ;
	setAttr ".rsrr" -type "double3" 90.000005512355443 -1.493999999991579 -90.000002376834644 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_IK_Arm_01_Ctrl_Grp_parentConstraint2" -p "R_IK_Arm_01_Ctrl_Grp";
	rename -uid "199F3824-4330-07D3-CD02-5AB0D9BA4F77";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine_04_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 4.0117132580495891 -0.37571075869456494 -6.2568039894104404 ;
	setAttr ".tg[0].tor" -type "double3" -179.99999454961753 2.3760265657385051e-06 
		178.50602003534718 ;
	setAttr ".lr" -type "double3" 90.000005512355443 -1.493999999991579 -90.000002376834644 ;
	setAttr ".rst" -type "double3" -6.256803989410419 30.112640479574971 -1.8020730070871569 ;
	setAttr ".rsrr" -type "double3" 90.000005512355443 -1.493999999991579 -90.000002376834644 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_IK_Arm_01_Ctrl_Grp_scaleConstraint1" -p "R_IK_Arm_01_Ctrl_Grp";
	rename -uid "9E26C6FD-4C96-2D42-E055-7E98C669D067";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine_04_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "R_IK_Arm_PV_Ctrl_Grp" -p "R_Arm_IK_Ctrls";
	rename -uid "22EAF65A-44F9-F765-9272-E2A9B9343009";
	setAttr ".t" -type "double3" -6.2568042903815941 23.111354206745194 -1.6194556476287145 ;
	setAttr ".r" -type "double3" -90.000005531508108 4.9988829716541883 89.999997285367584 ;
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999978 0.99999999999999944 ;
createNode transform -n "R_IK_Arm_PV_Ctrl_Offset" -p "R_IK_Arm_PV_Ctrl_Grp";
	rename -uid "15F79831-490A-2147-98A3-4F91FF923F12";
	setAttr ".t" -type "double3" 0 6.017192348826625 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000009 ;
createNode transform -n "R_IK_Arm_PV_Ctrl" -p "R_IK_Arm_PV_Ctrl_Offset";
	rename -uid "B8B0468E-4035-25F7-7777-9890EECDB8C2";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 -1.7763568394002505e-15 2.6645352591003757e-15 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 0 -8.8817841970012543e-16 0 ;
	setAttr ".sp" -type "double3" 0 -8.8817841970012523e-16 0 ;
	setAttr ".spt" -type "double3" 0 -1.9721522630525304e-31 0 ;
createNode nurbsCurve -n "R_IK_Arm_PV_CtrlShape" -p "R_IK_Arm_PV_Ctrl";
	rename -uid "7AB2A999-4A7C-B898-25CA-28BCC9DE0E71";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.0067254150294681911 -0.0067254150294693282 6.0041703135572695e-20
		8.3236607015842257e-17 1.1081941875543886 1.5510317225640415e-18
		0.0067254150294681911 -0.0067254150294693282 -7.8867522969797985e-20
		-1.1081941875543879 9.9176525342957299e-16 1.1444527682912578e-17
		0.0067254150294681911 0.0067254150294675519 -6.0041703135577666e-20
		-1.2638785348076541e-16 -1.1081941875543875 -1.5510317225640298e-18
		-0.0067254150294681911 0.0067254150294675519 7.8867522969793014e-20
		1.1081941875543879 6.9091651826792989e-16 -1.1444527682912578e-17
		-0.0067254150294681911 -0.0067254150294693282 6.0041703135572695e-20
		8.3236607015842257e-17 1.1081941875543886 1.5510317225640415e-18
		0.0067254150294681911 -0.0067254150294693282 -7.8867522969797985e-20
		;
createNode transform -n "R_Arm_IK_Ctrl_Grp" -p "R_Arm_IK_Ctrls";
	rename -uid "D788CA61-4547-F10D-CE95-9EBF801E306B";
	setAttr ".t" -type "double3" -6.2568046568454161 15.155727358301442 -0.92361922071940827 ;
	setAttr ".r" -type "double3" -4.99875 0 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "R_Arm_IK_Ctrl" -p "R_Arm_IK_Ctrl_Grp";
	rename -uid "0E89E0AE-4556-9357-B02A-92A5CCC4EEF3";
	setAttr ".t" -type "double3" 0 0 -5.5511151231257669e-16 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 1.7763568394002509e-15 1.1102230246251568e-16 1.7763568394002509e-15 ;
	setAttr ".sp" -type "double3" 1.7763568394002505e-15 1.1102230246251565e-16 1.7763568394002505e-15 ;
	setAttr ".spt" -type "double3" 3.9443045261050608e-31 2.465190328815663e-32 3.9443045261050608e-31 ;
createNode nurbsCurve -n "R_Arm_IK_CtrlShape" -p "R_Arm_IK_Ctrl";
	rename -uid "DC75D4EF-4ACE-9E18-F715-A6AB15A50037";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.78361162489122937 -1.6190970449819112e-15 0.78361162489122138
		1.1081941875543924 -7.5867420089741467e-16 -2.5966569916389536e-15
		0.78361162489122915 -1.7580711296920748e-16 -0.78361162489122671
		4.5776289349006252e-15 1.2190995992751389e-16 -1.1081941875543901
		-0.78361162489122005 -1.4805153735357857e-16 -0.78361162489122671
		-1.1081941875543841 -7.5867420089741467e-16 -2.7755647730267209e-15
		-0.78361162489122005 -1.5635858937506532e-15 0.78361162489122138
		4.3215024968603952e-15 -1.8982667993277645e-15 1.1081941875543848
		0.78361162489122937 -1.6190970449819112e-15 0.78361162489122138
		1.1081941875543924 -7.5867420089741467e-16 -2.5966569916389536e-15
		0.78361162489122915 -1.7580711296920748e-16 -0.78361162489122671
		;
createNode ikHandle -n "R_Arm_IK_Handle" -p "R_Arm_IK_Ctrl";
	rename -uid "FAADACC6-4843-F2D7-5186-0DAA1F38B61E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.0467936739644301e-08 -1.5706995153408343e-06 3.4314149696845764e-05 ;
	setAttr ".r" -type "double3" 4.9987499999999994 0 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "ikHandle1_poleVectorConstraint1" -p "R_Arm_IK_Handle";
	rename -uid "7B3D052C-41A9-A45F-5675-F8A8B1514337";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_IK_Arm_PV_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".rst" -type "double3" 2.6569466893278104e-07 -7.525601760351698 -5.8116876687840708 ;
	setAttr -k on ".w0";
createNode transform -n "L_IK_Leg_Ctrls" -p "IK_Ctrls";
	rename -uid "3E41763B-4ACE-C475-0E36-39B46D23F7A2";
createNode transform -n "L_IK_Leg_01_Ctrl_Grp" -p "L_IK_Leg_Ctrls";
	rename -uid "0D485A28-4207-53F7-AC35-719E05734666";
createNode transform -n "L_IK_Leg_01_Ctrl" -p "L_IK_Leg_01_Ctrl_Grp";
	rename -uid "FD3F759A-4085-D60F-9588-949133467178";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr ".t" -type "double3" 0 4.7184478546569153e-16 1.2674603301988401e-15 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "L_IK_Leg_01_CtrlShape" -p "L_IK_Leg_01_Ctrl";
	rename -uid "4AD0F304-4094-A8A5-98DF-E6920567D055";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -1.5757559589376287 1.0769017973577695 
		-0.20558165866927913 -1.4881047563444014e-15 1.5229691271673222 2.940325797802376e-16 
		1.575755958937628 1.0769017973577695 0.20558165866927913 2.2284554481198184 6.6486485465541109e-16 
		0.29073636986525031 1.575755958937628 -1.0769017973577695 0.20558165866927913 -1.1284253084166512e-15 
		-1.5229691271673234 3.4095830903090847e-16 -1.5757559589376287 -1.0769017973577695 
		-0.20558165866927913 -2.2284554481198184 3.7822710402168627e-16 -0.29073636986525031 
		0 0 0 0 0 0 0 0 0;
createNode parentConstraint -n "L_IK_Leg_01_Ctrl_Grp_parentConstraint1" -p "L_IK_Leg_01_Ctrl_Grp";
	rename -uid "8D8900DF-4674-5A8A-1F8E-04842847288E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Hip_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 3.1503720283508296 -1.6036872863771379 0.015260287909046211 ;
	setAttr ".tg[0].tor" -type "double3" 90 -2.3058054096851888 -90.000000000000014 ;
	setAttr ".lr" -type "double3" 90 -2.3058054096851888 -90.000000000000014 ;
	setAttr ".rst" -type "double3" 3.1503720283508301 20.260868072509766 -1.4110990762710571 ;
	setAttr ".rsrr" -type "double3" 90 -2.3058054096851888 -90.000000000000014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_IK_Leg_01_Ctrl_Grp_parentConstraint2" -p "L_IK_Leg_01_Ctrl_Grp";
	rename -uid "67257E53-4DE3-DDC2-174B-DFB8AF8F9A41";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Hip_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 3.1503720283508296 -1.6036872863771379 0.015260287909046211 ;
	setAttr ".tg[0].tor" -type "double3" 90 -2.3058054096851888 -90.000000000000014 ;
	setAttr ".lr" -type "double3" 90 -2.3058054096851888 -90.000000000000014 ;
	setAttr ".rst" -type "double3" 3.1503720283508301 20.260868072509766 -1.4110990762710571 ;
	setAttr ".rsrr" -type "double3" 90 -2.3058054096851888 -90.000000000000014 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_IK_Leg_01_Ctrl_Grp_scaleConstraint1" -p "L_IK_Leg_01_Ctrl_Grp";
	rename -uid "4DB4EB0D-4143-1CE8-1362-9292CA8B5E8B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Hip_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "L_IK_Leg_PV_01_Ctrl_Grp" -p "L_IK_Leg_Ctrls";
	rename -uid "AD22B8C0-4695-8AD8-441B-D5BF3B9839D4";
	setAttr ".t" -type "double3" 3.1503720283508301 14.132230758666992 -1.1643255949020386 ;
createNode transform -n "L_IK_Leg_PV_01_Ctrl_Offset" -p "L_IK_Leg_PV_01_Ctrl_Grp";
	rename -uid "4F54DE2D-4030-5A0B-D425-C1B996EC5FDE";
createNode transform -n "L_IK_Leg_PV_01_Ctrl" -p "L_IK_Leg_PV_01_Ctrl_Offset";
	rename -uid "8B571DD0-48FD-9F19-3425-E4A51E09959B";
	addAttr -ci true -sn "TwistorFollow" -ln "TwistorFollow" -nn "Twist or Follow" 
		-min -1 -max 1 -at "double";
	setAttr ".t" -type "double3" 0 3.5527122448873728e-15 -3.1919529310425963e-18 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr -k on ".TwistorFollow" -1;
createNode nurbsCurve -n "L_IK_Leg_PV_01_CtrlShape" -p "L_IK_Leg_PV_01_Ctrl";
	rename -uid "A6D55517-4AEF-6426-A12D-9A9A3442B4E8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.0842021724855044e-18 -0.0067254150294702164 -0.0067254150294681911
		-1.2325951644078309e-32 1.1081941875543877 6.7857323231109159e-17
		-1.0842021724855044e-18 -0.0067254150294702164 0.0067254150294681911
		1.1102230246251565e-16 5.7448982375248304e-17 -1.1081941875543881
		-1.0842021724855044e-18 0.0067254150294666637 0.0067254150294681911
		3.0814879110195774e-32 -1.1081941875543884 -1.1100856969603228e-16
		1.0842021724855044e-18 0.0067254150294666637 -0.0067254150294681911
		-1.1102230246251565e-16 -1.511240500779959e-16 1.1081941875543881
		1.0842021724855044e-18 -0.0067254150294702164 -0.0067254150294681911
		-1.2325951644078309e-32 1.1081941875543877 6.7857323231109159e-17
		-1.0842021724855044e-18 -0.0067254150294702164 0.0067254150294681911
		;
createNode parentConstraint -n "L_IK_Leg_PV_01_Ctrl_Offset_parentConstraint1" -p "L_IK_Leg_PV_01_Ctrl_Offset";
	rename -uid "74FC0D8C-4F87-ED4A-1AAF-BD803CD3D67D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_IK_Leg_Handle_Arc_BaseW0" -dv 1 
		-min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -8.8817841970012523e-16 -6.2668424400032414 
		6.9695580746026708 ;
	setAttr ".tg[0].tor" -type "double3" 1.1262844527055651 0 0 ;
	setAttr ".rst" -type "double3" -8.8817841970012523e-16 0 6.8446197948820666 ;
	setAttr -k on ".w0";
createNode transform -n "L_IK_Leg_PV_02_Ctrl_Grp" -p "L_IK_Leg_Ctrls";
	rename -uid "E3B89E48-4B79-B94E-D3A6-699673A5E0C8";
	setAttr ".t" -type "double3" 3.1503720283508305 8.2517585754394531 -2.0257697105407741 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 1 ;
createNode transform -n "L_IK_Leg_PV_02_Ctrl_Offset" -p "L_IK_Leg_PV_02_Ctrl_Grp";
	rename -uid "B0A111B8-4027-DD4E-104C-4F9A9AC36E39";
createNode transform -n "L_IK_Leg_PV_02_Ctrl_Offset_02" -p "L_IK_Leg_PV_02_Ctrl_Offset";
	rename -uid "0F369A07-4FEE-0C6F-396A-3CA71FA39C81";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "L_IK_Leg_PV_02_Ctrl" -p "L_IK_Leg_PV_02_Ctrl_Offset_02";
	rename -uid "B63A4C81-48D8-3E5E-4A36-ABB6ECEABAA9";
	setAttr ".t" -type "double3" -4.4408920985006262e-16 0 0 ;
createNode nurbsCurve -n "L_IK_Leg_PV_02_CtrlShape" -p "L_IK_Leg_PV_02_Ctrl";
	rename -uid "465B2926-4D5E-9ABA-C76F-42863E776A8B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.0842021724855044e-18 -0.0067254150294702164 -0.0067254150294681911
		-1.2325951644078309e-32 1.1081941875543877 6.7857323231109159e-17
		-1.0842021724855044e-18 -0.0067254150294702164 0.0067254150294681911
		1.1102230246251565e-16 5.7448982375248304e-17 -1.1081941875543881
		-1.0842021724855044e-18 0.0067254150294666637 0.0067254150294681911
		3.0814879110195774e-32 -1.1081941875543884 -1.1100856969603228e-16
		1.0842021724855044e-18 0.0067254150294666637 -0.0067254150294681911
		-1.1102230246251565e-16 -1.511240500779959e-16 1.1081941875543881
		1.0842021724855044e-18 -0.0067254150294702164 -0.0067254150294681911
		-1.2325951644078309e-32 1.1081941875543877 6.7857323231109159e-17
		-1.0842021724855044e-18 -0.0067254150294702164 0.0067254150294681911
		;
createNode pointConstraint -n "L_IK_Leg_PV_02_Ctrl_Offset_02_pointConstraint1" -p
		 "L_IK_Leg_PV_02_Ctrl_Offset_02";
	rename -uid "0A7BA79D-4151-09AD-3173-FD864519D72A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Leg_IK_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" -2.2204460492503131e-15 5.8605063347228334 -7.1813406978534378 ;
	setAttr ".rst" -type "double3" 8.8817841970012523e-16 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_IK_Leg_PV_02_Ctrl_Offset_parentConstraint1" -p "L_IK_Leg_PV_02_Ctrl_Offset";
	rename -uid "B5B72B8F-4799-2A8E-6C11-378A13F0C33B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_IK_Leg_Handle_Arc_BaseW0" -dv 1 
		-min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -8.8817841970012523e-16 -11.872537627377636 
		-7.064758529335128 ;
	setAttr ".tg[0].tor" -type "double3" 1.1262844527055651 0 0 ;
	setAttr ".lr" -type "double3" 1.987846675914698e-16 0 0 ;
	setAttr ".rst" -type "double3" -8.8817841970012523e-16 0 -6.215355125468446 ;
	setAttr ".rsrr" -type "double3" 1.987846675914698e-16 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "L_Leg_IK_Ctrl_Grp" -p "L_IK_Leg_Ctrls";
	rename -uid "7CAAAC0F-4F17-94EA-8843-86AB37684FBA";
	setAttr ".t" -type "double3" 3.1503720283508292 2.3912522407166215 -1.059784138155782 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 1 ;
createNode transform -n "L_Leg_IK_Ctrl" -p "L_Leg_IK_Ctrl_Grp";
	rename -uid "B23A60AF-4D9D-FA5F-1914-0E9B77C6C331";
	setAttr ".t" -type "double3" 4.4408920985006271e-16 0 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode nurbsCurve -n "L_Leg_IK_CtrlShape" -p "L_Leg_IK_Ctrl";
	rename -uid "9A2B209B-4619-F8E8-52D0-0485A3CB2935";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.96617236422097819 -3.1748638656078456 
		-1.9543757109554174 -1.7391365213699055 -3.4994464282710087 -1.6924034830613945e-16 
		-2.7379873358466451 -3.1748638656078447 2.7894877130502338 -8.1480088341762192e-17 
		-2.3912522407166219 2.5266651026748423 2.7379873358466402 -1.6076406158253966 2.7894877130502338 
		1.739136521369903 -1.283058053162232 2.7686221774969609e-16 0.96617236422097041 -1.6076406158253969 
		-1.9543757109554174 -3.7660611823740186e-16 -2.391252240716621 -1.698735526334203 
		0 0 0 0 0 0 0 0 0;
createNode transform -n "L_Foot_IK_Out_Ctrl_Grp" -p "L_Leg_IK_Ctrl";
	rename -uid "19E443E7-42CE-EC3B-DEFB-3F8CF8FF4B9A";
	setAttr ".t" -type "double3" 0.75418734550476163 -2.3912522407166215 -0.26198486094394946 ;
	setAttr ".r" -type "double3" 0 8.4654987565028748 0 ;
createNode transform -n "L_Foot_IK_Out_Ctrl" -p "L_Foot_IK_Out_Ctrl_Grp";
	rename -uid "5A3F26A4-4FB6-1755-D9B4-61A4A2AA0C1C";
createNode nurbsCurve -n "L_Foot_IK_Out_CtrlShape" -p "L_Foot_IK_Out_Ctrl";
	rename -uid "9DCA024F-4A0C-5474-341F-E0B811DD5331";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.49999976158142184 -2.2204460492503131e-16 -1.10819411277771
		0.39180581244561097 2.2204460492503131e-16 -6.7857323231109122e-17
		0.49999976158142173 -4.4408920985006262e-16 1.1081942319869995
		0.499999999999999 -4.0092423061865602e-16 1.1081941875543881
		1.2836116248912237 -3.3306690738754696e-16 0.78361162489122449
		1.6081941875543877 -2.2204460492503131e-16 1.1100856969603225e-16
		1.2836116248912235 -4.4408920985006262e-16 -0.78361162489122449
		0.49999999999999989 -2.6520958415643775e-16 -1.1081941875543881
		0.49999976158142184 -2.2204460492503131e-16 -1.10819411277771
		0.39180581244561097 2.2204460492503131e-16 -6.7857323231109122e-17
		0.49999976158142173 -4.4408920985006262e-16 1.1081942319869995
		;
createNode transform -n "L_Foot_IK_In_Ctrl_Grp" -p "L_Foot_IK_Out_Ctrl";
	rename -uid "E3DCD2EC-485C-4B46-F520-85BD4677D335";
	setAttr ".t" -type "double3" -1.491939353201698 0 -0.22205309860979705 ;
	setAttr ".r" -type "double3" 0 -16.93096104853587 0 ;
createNode transform -n "L_Foot_IK_In_Ctrl" -p "L_Foot_IK_In_Ctrl_Grp";
	rename -uid "491A5A8D-4FD3-CC0C-51EB-D9B38289A445";
createNode nurbsCurve -n "L_Foot_IK_In_CtrlShape" -p "L_Foot_IK_In_Ctrl";
	rename -uid "CF8D291A-4068-7A84-B9C2-269026257F87";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.2836116248912257 -4.4408920985006262e-16 -0.78361162489122449
		-1.6081941875543884 0 -6.7857323231109122e-17
		-1.2836116248912255 -4.4408920985006262e-16 0.78361162489122449
		-0.50000000000000089 -4.0092423061865602e-16 1.1081941875543881
		-0.49999999999999978 -4.0092422556952626e-16 1.1081942319869995
		-0.39180581244561319 -2.2204460492503131e-16 1.1100856969603225e-16
		-0.49999999999999978 -2.6520958920556767e-16 -1.1081942319869995
		-0.50000000000000067 -2.6520958415643775e-16 -1.1081941875543881
		-1.2836116248912257 -4.4408920985006262e-16 -0.78361162489122449
		-1.6081941875543884 0 -6.7857323231109122e-17
		-1.2836116248912255 -4.4408920985006262e-16 0.78361162489122449
		;
createNode transform -n "L_Foot_IK_Heel_Tip_Ctrl_Grp" -p "L_Foot_IK_In_Ctrl";
	rename -uid "5D4BA74E-42E0-1BA5-FF9A-B18C8CBC4DC4";
	setAttr ".t" -type "double3" 0.42550385172020844 -4.4408920985006262e-16 -2.2641871701054761 ;
	setAttr ".r" -type "double3" 0 8.4654622920329956 0 ;
createNode transform -n "L_Foot_IK_Heel_Tip_Ctrl" -p "L_Foot_IK_Heel_Tip_Ctrl_Grp";
	rename -uid "58ADF7A3-4198-233A-B38F-D48A4A2BBCA2";
createNode nurbsCurve -n "L_Foot_IK_Heel_Tip_CtrlShape" -p "L_Foot_IK_Heel_Tip_Ctrl";
	rename -uid "9419AC17-4FB3-1950-D2AE-229C784C182E";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.78361162489122482 -4.4408920985006262e-16 -0.79390962427838119
		-1.1081941875543875 0 -0.010297999387156587
		-1.1081943511962886 0 -0.010297931240020652
		5.3573320087267338e-17 0.0075686696483523858 -0.0093554328319278568
		1.1081943511962895 -2.2204460492503131e-16 -0.010297931240020652
		1.1081941875543886 -2.2204460492503131e-16 -0.010297999387156476
		0.78361162489122438 -4.4408920985006262e-16 -0.79390962427838119
		2.621463525405116e-16 -2.6520958415643775e-16 -1.1184921869415447
		-0.78361162489122482 -4.4408920985006262e-16 -0.79390962427838119
		-1.1081941875543875 0 -0.010297999387156587
		-1.1081943511962886 0 -0.010297931240020652
		;
createNode transform -n "L_Foot_IK_Heel_Tap_Grp" -p "L_Foot_IK_Heel_Tip_Ctrl";
	rename -uid "47906D82-4CF5-3791-D70F-FFBA5A95210F";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 1.6753115653991704 1.7982037067413343 ;
createNode transform -n "L_Foot_IK_Heel_Tap" -p "L_Foot_IK_Heel_Tap_Grp";
	rename -uid "80C95582-4575-63B9-737B-C0B039410586";
createNode nurbsCurve -n "L_Foot_IK_Heel_TapShape" -p "L_Foot_IK_Heel_Tap";
	rename -uid "4B770C58-4CAE-8CBF-0535-FF988FF32B66";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-3.8857805861880479e-16 -0.21130218657582908 -1.0915058090668444
		-9.4368957093138306e-16 -0.21130224543742768 -1.0915058348209026
		-7.7715611723760958e-16 -0.26063569850906709 -1.6802220560940935
		-1.1102230246251565e-15 -0.2606357103759106 -1.6802219966355714
		-1.1657341758564144e-15 -0.59581476385429544 -1.8986842413750682
		-8.3266726846886741e-16 -0.5958147142465352 -1.8986842762348999
		-6.6613381477509392e-16 -1.1543437793488756 -1.7061593110535942
		-1.27675647831893e-15 -1.1543438266730783 -1.7061593545090772
		-3.8857805861880479e-16 -0.21130218657582908 -1.0915058090668444
		-9.4368957093138306e-16 -0.21130224543742768 -1.0915058348209026
		-7.7715611723760958e-16 -0.26063569850906709 -1.6802220560940935
		;
createNode ikHandle -n "L_Foot_IK_Heel_02_Handle" -p "L_Foot_IK_Heel_Tap";
	rename -uid "735A8418-4080-CB22-EF2C-83912DAC3314";
	setAttr ".t" -type "double3" 0 -1.6753115653991706 -1.0922646522521988 ;
	setAttr ".r" -type "double3" -90.000000000000014 33.103426741469946 -90.000000000000043 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999978 ;
	setAttr ".pv" -type "double3" -2.7755575615628901e-17 0 0.99999999999999978 ;
	setAttr ".roc" yes;
createNode transform -n "L_Foot_IK_Heel_Ctrl_Grp" -p "L_Foot_IK_Heel_Tip_Ctrl";
	rename -uid "7AF8464A-44A3-544A-8DB9-AEBBC4B348B7";
	setAttr ".t" -type "double3" 0 1.6753115653991704 1.7982037067413341 ;
createNode transform -n "L_Foot_IK_Heel_Ctrl" -p "L_Foot_IK_Heel_Ctrl_Grp";
	rename -uid "AFA4C9AE-428D-795D-B9B0-379FB91AD89A";
createNode nurbsCurve -n "L_Foot_IK_Heel_CtrlShape" -p "L_Foot_IK_Heel_Ctrl";
	rename -uid "5CE108CE-4785-9E51-274B-DB8FEF812499";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.1081943511962888 0 -0.65293717384338379
		-1.1081941875543879 0 -0.6529371355628083
		-1.1081943511962891 0 -0.65293717384338379
		-3.9051588976279528e-16 -4.0092423061865602e-16 -0.96768295156460082
		1.1081943511962891 0 -0.65293717384338379
		1.1081941875543881 -2.2204460492503131e-16 -0.65293713556280819
		1.1081943511962893 0 -0.65293717384338379
		-1.8194285730955101e-16 -2.6520958415643775e-16 -2.4470027078810368
		-1.1081943511962888 0 -0.65293717384338379
		-1.1081941875543879 0 -0.6529371355628083
		-1.1081943511962891 0 -0.65293717384338379
		;
createNode ikHandle -n "L_Foot_IK_Heel_01_Handle" -p "L_Foot_IK_Heel_Ctrl";
	rename -uid "D5857AB3-470B-01B2-0A22-B3A38617E54E";
	setAttr ".t" -type "double3" -4.4408920985006262e-15 1.5543122344752192e-15 -1.7763568394002505e-15 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999978 ;
	setAttr ".pv" -type "double3" -2.7755575615628901e-17 0 0.99999999999999978 ;
	setAttr ".roc" yes;
createNode transform -n "L_Foot_IK_Toe_Tip_Ctrl_Grp" -p "L_Foot_IK_Heel_Ctrl";
	rename -uid "7B0558D5-4FA9-772D-BB77-71B3C7FA32A4";
	setAttr ".t" -type "double3" -4.4408920985006262e-16 -1.6753115653991706 3.690507769584654 ;
createNode transform -n "L_Foot_IK_Toe_Tip_Ctrl" -p "L_Foot_IK_Toe_Tip_Ctrl_Grp";
	rename -uid "2B1A82DB-49A3-EF70-7BCA-1697E51D3521";
createNode nurbsCurve -n "L_Foot_IK_Toe_Tip_CtrlShape" -p "L_Foot_IK_Toe_Tip_Ctrl";
	rename -uid "E3DC7080-45ED-ADC5-EA6E-8F8944A93703";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.1081943511962888 0 0.00090359351281998901
		-1.1081941875543879 0 0.0009035041728151505
		-0.78361162489122504 -4.4408920985006262e-16 0.78451512906403975
		-3.9051588976279528e-16 -4.0092423061865602e-16 1.1090976917272033
		0.78361162489122416 -3.3306690738754696e-16 0.78451512906403975
		1.1081941875543881 -2.2204460492503131e-16 0.00090350417281526152
		1.1081943511962893 -2.2204460492503131e-16 0.00090359351281998901
		-1.8194285730955101e-16 -2.6520958415643775e-16 0.013104307717413111
		-1.1081943511962888 0 0.00090359351281998901
		-1.1081941875543879 0 0.0009035041728151505
		-0.78361162489122504 -4.4408920985006262e-16 0.78451512906403975
		;
createNode transform -n "L_Foot_IK_Toe_Tap_Grp" -p "L_Foot_IK_Toe_Tip_Ctrl";
	rename -uid "6CE7E4BC-44D5-7828-9B0C-60956D41ED12";
	setAttr ".t" -type "double3" 1.9073486323684108e-06 1.5818389654159553 -2.1324114203453042 ;
createNode transform -n "L_Foot_IK_Toe_Tap" -p "L_Foot_IK_Toe_Tap_Grp";
	rename -uid "369C0D62-4E47-CBEB-50BD-8D92381C1B4B";
createNode nurbsCurve -n "L_Foot_IK_Toe_TapShape" -p "L_Foot_IK_Toe_Tap";
	rename -uid "52C7EFDB-467F-5D59-4079-26808C99B9B8";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-6.5129165039301778e-16 -0.27743269711492979 1.4706285940655894
		-5.2922726842949501e-16 -0.27743275397735556 1.4706286239758517
		-7.5809798461110025e-16 -0.28440633300119939 2.0613671007807359
		-4.7582410132045421e-16 -0.28440634910284834 2.061367042326697
		-3.6138874322965213e-16 -0.60305000103814443 2.3033111956940053
		-6.0551750715669698e-16 -0.60304994905745279 2.3033112269053082
		-7.7335603235654065e-16 -1.1739511824822724 2.1513495197018924
		-5.2922726842949501e-16 -1.1739512265671797 2.1513495664403144
		-6.5129165039301778e-16 -0.27743269711492979 1.4706285940655894
		-5.2922726842949501e-16 -0.27743275397735556 1.4706286239758517
		-7.5809798461110025e-16 -0.28440633300119939 2.0613671007807359
		;
createNode ikHandle -n "L_Foot_IK_Toe_02_Handle" -p "L_Foot_IK_Toe_Tap";
	rename -uid "24A9F7A6-4DC5-F6B3-5CD7-0BA5A25C16A0";
	setAttr ".t" -type "double3" 0.0058138370513907134 -1.5818389654159553 1.4265968203544603 ;
	setAttr ".r" -type "double3" 89.858921598858089 -42.045786153058273 -89.789349049583123 ;
	setAttr ".s" -type "double3" 0.99999999999999967 1 0.99999999999999978 ;
	setAttr ".pv" -type "double3" -2.7755575615628901e-17 0 0.99999999999999978 ;
	setAttr ".roc" yes;
createNode transform -n "L_Foot_IK_Ball_Ctrl_Grp" -p "L_Foot_IK_Toe_Tip_Ctrl";
	rename -uid "D6BE442F-43BD-FD4D-A0DB-4D8973EDA026";
	setAttr ".t" -type "double3" 1.9073486323684108e-06 1.5818389654159553 -2.1324114203453042 ;
createNode transform -n "L_Foot_IK_Ball_Ctrl" -p "L_Foot_IK_Ball_Ctrl_Grp";
	rename -uid "CBA9D1EF-4A38-E8A0-0775-B18BDE01DD27";
createNode nurbsCurve -n "L_Foot_IK_Ball_CtrlShape" -p "L_Foot_IK_Ball_Ctrl";
	rename -uid "0BDB4CD7-45DC-46E4-EF98-E8AC8402D226";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.0238380432128906 0 0.84720866478478829
		-1.0238379279294729 0 0.84720864556676823
		-0.36389594372872419 -4.4408920985006262e-16 1.6953837564074792
		-0.36389598470314677 4.163336342344337e-17 1.6953836540082685
		0.36389598470314677 2.2204460492503131e-16 1.6953836540082685
		0.36389594372872419 -2.2204460492503131e-16 1.695383756407479
		1.0238379279294727 -4.4408920985006262e-16 0.84720864556676767
		1.0238380432128904 -4.3165010750315959e-17 0.84720866478478829
		-1.0238380432128906 0 0.84720866478478829
		-1.0238379279294729 0 0.84720864556676823
		-0.36389594372872419 -4.4408920985006262e-16 1.6953837564074792
		;
createNode ikHandle -n "L_Foot_IK_Toe_01_Handle" -p "L_Foot_IK_Ball_Ctrl";
	rename -uid "BAF84A02-4B42-2A7F-6866-5EAA43E1674C";
	setAttr ".t" -type "double3" -1.9073486359211245e-06 1.0728836061790759e-06 1.4603137958868473e-06 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999978 ;
	setAttr ".pv" -type "double3" -2.7755575615628901e-17 0 0.99999999999999978 ;
	setAttr ".roc" yes;
createNode ikHandle -n "L_Knee_1_to_Ankle_IK_Handle" -p "L_Foot_IK_Ball_Ctrl";
	rename -uid "8378588C-44B3-51DF-6E47-E68E8B5AD4CC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0.80941327530066576 -0.91743698115428807 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999978 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "ikHandle3_poleVectorConstraint1" -p "L_Knee_1_to_Ankle_IK_Handle";
	rename -uid "AE6C365B-479A-6CBD-197B-46B86DB5845F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_IK_Leg_PV_02_CtrlW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".rst" -type "double3" 4.4408920985006262e-16 -5.8804721832275391 -7.0767992411071816 ;
	setAttr -k on ".w0";
createNode transform -n "R_IK_Leg_Ctrls" -p "IK_Ctrls";
	rename -uid "3C878891-4BB5-6944-1594-C5B094BDEAEB";
createNode transform -n "R_IK_Leg_01_Ctrl_Grp" -p "R_IK_Leg_Ctrls";
	rename -uid "F8AA4232-4742-F1F6-F121-B0B9B7815B94";
	setAttr ".rp" -type "double3" 0 -1.1102230246251565e-16 -4.4408920985006262e-16 ;
	setAttr ".rpt" -type "double3" 4.4408920985006257e-16 1.0655553836912463e-16 3.3315679951560579e-16 ;
	setAttr ".sp" -type "double3" 0 -1.1102230246251565e-16 -4.4408920985006262e-16 ;
createNode transform -n "R_IK_Leg_01_Ctrl" -p "R_IK_Leg_01_Ctrl_Grp";
	rename -uid "618D4524-4698-59D8-DC15-5AAF8B4C5190";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -min 0 -max 1 -at "double";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 -2.2204460492503131e-16 -8.8817841970012523e-16 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr ".rp" -type "double3" 0 -1.1102230246251568e-16 -4.4408920985006262e-16 ;
	setAttr ".sp" -type "double3" 0 -1.1102230246251565e-16 -4.4408920985006262e-16 ;
	setAttr ".spt" -type "double3" 0 -2.465190328815663e-32 0 ;
	setAttr -k on ".FollowTranslate" 1;
	setAttr -k on ".FollowRotate" 1;
createNode nurbsCurve -n "R_IK_Leg_01_CtrlShape" -p "R_IK_Leg_01_Ctrl";
	rename -uid "AC1FBBA0-47EB-CE3F-F3FC-53907D54AD07";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.5757559589376244 1.8605134222489941 0.98919328356050407
		2.0646089224560995e-15 2.6311633147217095 2.1650926135463261e-16
		1.5757559589376309 1.8605134222489936 -0.98919328356050318
		2.2284554481198211 8.7379392654938162e-16 -1.398930557419638
		1.5757559589376309 -1.8605134222489936 -0.98919328356050318
		2.4242883703838496e-15 -2.6311633147217113 -6.4729769305765732e-18
		-1.5757559589376244 -1.8605134222489936 0.98919328356050407
		-2.228455448119814 2.9766756934999928e-16 1.3989305574196389
		-1.5757559589376244 1.8605134222489941 0.98919328356050407
		2.0646089224560995e-15 2.6311633147217095 2.1650926135463261e-16
		1.5757559589376309 1.8605134222489936 -0.98919328356050318
		;
createNode parentConstraint -n "R_IK_Leg_01_Ctrl_Grp_parentConstraint1" -p "R_IK_Leg_01_Ctrl_Grp";
	rename -uid "41BC5C29-4B18-FED1-1F12-DA9A36F8E0A7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Hip_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -3.1503720283508296 -1.6036872863771379 0.0152602879090461 ;
	setAttr ".tg[0].tor" -type "double3" 90 -2.305805409685195 -89.999999999999972 ;
	setAttr ".lr" -type "double3" 90 -2.305805409685195 -89.999999999999972 ;
	setAttr ".rst" -type "double3" -3.1503720283508296 20.260868072509766 -1.4110990762710571 ;
	setAttr ".rsrr" -type "double3" 90 -2.305805409685195 -89.999999999999972 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_IK_Leg_01_Ctrl_Grp_parentConstraint2" -p "R_IK_Leg_01_Ctrl_Grp";
	rename -uid "74EFD974-44E9-2B23-87DA-A68FA6CA2E7F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Hip_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -3.1503720283508296 -1.6036872863771379 0.0152602879090461 ;
	setAttr ".tg[0].tor" -type "double3" 90 -2.305805409685195 -89.999999999999972 ;
	setAttr ".lr" -type "double3" 90 -2.305805409685195 -89.999999999999972 ;
	setAttr ".rst" -type "double3" -3.1503720283508296 20.260868072509766 -1.4110990762710571 ;
	setAttr ".rsrr" -type "double3" 90 -2.305805409685195 -89.999999999999972 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_IK_Leg_01_Ctrl_Grp_scaleConstraint1" -p "R_IK_Leg_01_Ctrl_Grp";
	rename -uid "D3C70DA2-47BE-F46B-0C52-3F9EC270EFD0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Hip_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "R_IK_Leg_PV_01_Ctrl_Grp" -p "R_IK_Leg_Ctrls";
	rename -uid "BC29E501-4D3E-4885-34C6-51A555AAAD0F";
	setAttr ".t" -type "double3" -3.1503720283508301 14.132230758666992 -1.1643253564834595 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "R_IK_Leg_PV_01_Ctrl_Offset" -p "R_IK_Leg_PV_01_Ctrl_Grp";
	rename -uid "D782AD18-44FD-EEC8-9750-B58E7106225E";
createNode transform -n "R_IK_Leg_PV_01_Ctrl" -p "R_IK_Leg_PV_01_Ctrl_Offset";
	rename -uid "318EDCA1-443D-A4C6-182D-9BA3363B114E";
	addAttr -ci true -sn "TwistorFollow" -ln "TwistorFollow" -dv -1 -min -1 -max 1 
		-at "double";
	setAttr ".t" -type "double3" 0 5.3290690842876229e-15 -3.1919529310425963e-18 ;
	setAttr -k on ".TwistorFollow";
createNode nurbsCurve -n "R_IK_Leg_PV_01_CtrlShape" -p "R_IK_Leg_PV_01_Ctrl";
	rename -uid "CE966A60-46DD-ECF5-AB5B-2FA0E07C7C99";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.0842021724855044e-18 -0.0067254150294702164 -0.0067254150294681911
		-1.2325951644078309e-32 1.1081941875543877 6.7857323231109159e-17
		-1.0842021724855044e-18 -0.0067254150294702164 0.0067254150294681911
		1.1102230246251565e-16 5.7448982375248304e-17 -1.1081941875543881
		-1.0842021724855044e-18 0.0067254150294666637 0.0067254150294681911
		3.0814879110195774e-32 -1.1081941875543884 -1.1100856969603228e-16
		1.0842021724855044e-18 0.0067254150294666637 -0.0067254150294681911
		-1.1102230246251565e-16 -1.511240500779959e-16 1.1081941875543881
		1.0842021724855044e-18 -0.0067254150294702164 -0.0067254150294681911
		-1.2325951644078309e-32 1.1081941875543877 6.7857323231109159e-17
		-1.0842021724855044e-18 -0.0067254150294702164 0.0067254150294681911
		;
createNode parentConstraint -n "R_IK_Leg_PV_01_Ctrl_Offset_parentConstraint1" -p "R_IK_Leg_PV_01_Ctrl_Offset";
	rename -uid "D198394A-4AEE-C23D-837D-3E80956282EF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_IK_Leg_Handle_Arc_BaseW0" -dv 1 
		-min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -2.8350831904333518e-08 -6.3353485553163278 
		6.9073448951765268 ;
	setAttr ".tg[0].tor" -type "double3" 1.1262844527055651 0 0 ;
	setAttr ".rst" -type "double3" -1.7763568394002505e-15 -0.069715462413752149 6.7837651444665257 ;
	setAttr -k on ".w0";
createNode transform -n "R_IK_Leg_PV_02_Ctrl_Grp" -p "R_IK_Leg_Ctrls";
	rename -uid "A5B5FB84-4327-3847-EF84-79BBA71C90A9";
	setAttr ".t" -type "double3" -3.1503720283508301 8.2517585754394531 -2.0257694721221924 ;
createNode transform -n "R_IK_Leg_PV_02_Ctrl_Offset" -p "R_IK_Leg_PV_02_Ctrl_Grp";
	rename -uid "7D68035C-451B-8FA9-4F3D-D1819782C370";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "R_IK_Leg_PV_02_Ctrl_Offset_02" -p "R_IK_Leg_PV_02_Ctrl_Offset";
	rename -uid "2D23F714-4836-54AD-64D2-9B8537FA2866";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999967 1 ;
createNode transform -n "R_IK_Leg_PV_02_Ctrl" -p "R_IK_Leg_PV_02_Ctrl_Offset_02";
	rename -uid "E63F70DD-4D13-A4FD-3F75-14B1A7F23115";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 0 1.7763568394002505e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000007 1.0000000000000004 ;
createNode nurbsCurve -n "R_IK_Leg_PV_02_CtrlShape" -p "R_IK_Leg_PV_02_Ctrl";
	rename -uid "FB56C1A6-4B12-4648-9419-1995AD62197E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.0842021724855044e-18 -0.0067254150294702164 -0.0067254150294681911
		-1.2325951644078309e-32 1.1081941875543877 6.7857323231109159e-17
		-1.0842021724855044e-18 -0.0067254150294702164 0.0067254150294681911
		1.1102230246251565e-16 5.7448982375248304e-17 -1.1081941875543881
		-1.0842021724855044e-18 0.0067254150294666637 0.0067254150294681911
		3.0814879110195774e-32 -1.1081941875543884 -1.1100856969603228e-16
		1.0842021724855044e-18 0.0067254150294666637 -0.0067254150294681911
		-1.1102230246251565e-16 -1.511240500779959e-16 1.1081941875543881
		1.0842021724855044e-18 -0.0067254150294702164 -0.0067254150294681911
		-1.2325951644078309e-32 1.1081941875543877 6.7857323231109159e-17
		-1.0842021724855044e-18 -0.0067254150294702164 0.0067254150294681911
		;
createNode pointConstraint -n "R_IK_Leg_PV_02_Ctrl_Offset_02_pointConstraint1" -p
		 "R_IK_Leg_PV_02_Ctrl_Offset_02";
	rename -uid "AF133A58-45A9-B06C-0AA6-5193AD7BF3EC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Leg_IK_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" 3.1086244689504383e-15 5.9285253296587843 -7.2995751812629042 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_IK_Leg_PV_02_Ctrl_Offset_parentConstraint1" -p "R_IK_Leg_PV_02_Ctrl_Offset";
	rename -uid "373078E6-4E0A-ADCA-F035-9B8519CC24FC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_IK_Leg_Handle_Arc_BaseW0" -dv 1 
		-min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -2.8350829683887468e-08 -11.872537917227676 
		-7.0647583554914135 ;
	setAttr ".tg[0].tor" -type "double3" 1.1262844527055651 0 0 ;
	setAttr ".rst" -type "double3" 4.4408920985006262e-16 1.7763568394002505e-15 -6.2153549999999989 ;
	setAttr -k on ".w0";
createNode transform -n "R_Leg_IK_Ctrl_Grp" -p "R_IK_Leg_Ctrls";
	rename -uid "C73D16FF-468C-5D35-1B03-69B6E9A042F7";
	setAttr ".t" -type "double3" -3.1503720283508332 2.3912522407166215 -1.059784138155782 ;
createNode transform -n "R_Leg_IK_Ctrl" -p "R_Leg_IK_Ctrl_Grp";
	rename -uid "209F1E05-4FDF-4DFC-7DF2-8683F2E49049";
	setAttr ".t" -type "double3" 4.4408920985006262e-16 0 0 ;
createNode nurbsCurve -n "R_Leg_IK_CtrlShape" -p "R_Leg_IK_Ctrl";
	rename -uid "04C39DBC-4B82-E1EA-3197-37A1E851F03A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.96617236422097863 -2.3912522407166232 -2.7379873358466442
		1.7391365213699055 -2.3912522407166228 -1.9484826536495099e-15
		2.7379873358466451 -2.3912522407166223 3.5730993379414571
		1.4933741157287313e-16 -2.3912522407166241 3.6348592902292287
		-2.7379873358466402 -2.3912522407166228 3.5730993379414571
		-1.739136521369903 -2.3912522407166223 -1.3336141628986089e-15
		-0.96617236422097086 -2.3912522407166237 -2.7379873358466442
		3.0874879500629398e-16 -2.3912522407166232 -2.8069297138885934
		0.96617236422097863 -2.3912522407166232 -2.7379873358466442
		1.7391365213699055 -2.3912522407166228 -1.9484826536495099e-15
		2.7379873358466451 -2.3912522407166223 3.5730993379414571
		;
createNode transform -n "R_Foot_IK_Out_Ctrl_Grp" -p "R_Leg_IK_Ctrl";
	rename -uid "614A149C-45DD-5C75-389B-CD962C850F06";
	setAttr ".t" -type "double3" -0.75418734550475763 -2.3912522407166215 -0.26198486094394946 ;
	setAttr ".r" -type "double3" 0 -8.4654989999999977 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "R_Foot_IK_Out_Ctrl" -p "R_Foot_IK_Out_Ctrl_Grp";
	rename -uid "3580DC79-4D3C-0043-04E6-E0B334555599";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode nurbsCurve -n "R_Foot_IK_Out_CtrlShape" -p "R_Foot_IK_Out_Ctrl";
	rename -uid "88E75927-4ABD-36C9-04F7-83A2AE695171";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.49999976158141807 -2.2204460492503131e-16 1.1081941127777104
		-0.39180581244560719 2.2204460492503131e-16 4.49890931792597e-16
		-0.49999976158141801 -4.4408920985006262e-16 -1.1081942319869995
		-0.49999999999999523 -4.0092423061865602e-16 -1.1081941875543881
		-1.2836116248912204 -3.3306690738754696e-16 -0.78361162489122449
		-1.6081941875543846 -2.2204460492503131e-16 5.007375330426924e-16
		-1.2836116248912202 -4.4408920985006262e-16 0.78361162489122538
		-0.49999999999999617 -2.6520958415643775e-16 1.1081941875543886
		-0.49999976158141807 -2.2204460492503131e-16 1.1081941127777104
		-0.39180581244560719 2.2204460492503131e-16 4.49890931792597e-16
		-0.49999976158141801 -4.4408920985006262e-16 -1.1081942319869995
		;
createNode transform -n "R_Foot_IK_In_Ctrl_Grp" -p "R_Foot_IK_Out_Ctrl";
	rename -uid "8E741217-4301-510D-625A-6A90077E8314";
	setAttr ".t" -type "double3" 1.4919393522580102 0 -0.22205310495028008 ;
	setAttr ".r" -type "double3" 0 16.930960999999996 0 ;
	setAttr ".s" -type "double3" 0.99999999999999967 1 0.99999999999999967 ;
createNode transform -n "R_Foot_IK_In_Ctrl" -p "R_Foot_IK_In_Ctrl_Grp";
	rename -uid "E8F1B5BF-43FB-734E-BAAC-A8889E5E6C93";
createNode nurbsCurve -n "R_Foot_IK_In_CtrlShape" -p "R_Foot_IK_In_Ctrl";
	rename -uid "337A3455-45A5-4A8C-380A-37BA67E6429C";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.2836116248912286 -4.4408920985006281e-16 -0.78361162489122582
		1.6081941875543921 0 -1.1962275439374736e-16
		1.2836116248912284 -4.4408920985006281e-16 0.78361162489122516
		0.50000000000000233 -4.0092423061865602e-16 1.1081941875543877
		0.50000000000000111 -4.0092422556952626e-16 1.1081942319869991
		0.39180581244561469 -2.2204460492503131e-16 -4.2854986401492218e-16
		0.50000000000000133 -2.6520958920556767e-16 -1.1081942319870004
		0.50000000000000233 -2.6520958415643775e-16 -1.108194187554389
		1.2836116248912286 -4.4408920985006281e-16 -0.78361162489122582
		1.6081941875543921 0 -1.1962275439374736e-16
		1.2836116248912284 -4.4408920985006281e-16 0.78361162489122516
		;
createNode transform -n "R_Foot_IK_Heel_Tip_Ctrl_Grp" -p "R_Foot_IK_In_Ctrl";
	rename -uid "0379BFA4-431A-A510-6A76-F8ACA7E9C877";
	setAttr ".t" -type "double3" -0.42550386326062783 -4.4408920985006262e-16 -2.2641871679367096 ;
	setAttr ".r" -type "double3" 0 -8.4654620000000058 0 ;
	setAttr ".rp" -type "double3" -4.4408920985006262e-16 0 0 ;
	setAttr ".rpt" -type "double3" 4.8384481093808224e-18 0 -6.5375795333469939e-17 ;
	setAttr ".sp" -type "double3" -4.4408920985006262e-16 0 0 ;
createNode transform -n "R_Foot_IK_Heel_Tip_Ctrl" -p "R_Foot_IK_Heel_Tip_Ctrl_Grp";
	rename -uid "E112F09A-451E-E47F-B684-3EABA6FABC92";
	setAttr ".rp" -type "double3" -4.4408920985006262e-16 0 0 ;
	setAttr ".sp" -type "double3" -4.4408920985006262e-16 0 0 ;
createNode nurbsCurve -n "R_Foot_IK_Heel_Tip_CtrlShape" -p "R_Foot_IK_Heel_Tip_Ctrl";
	rename -uid "ED08D7BA-459C-5F99-263D-2DBB58EA12B4";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.7836116248912226 -4.4408920985006257e-16 -0.79390962427838141
		1.1081941875543853 4.9557671861266918e-32 -0.01029799938715676
		1.1081943511962864 4.9557670181310314e-32 -0.010297931240020826
		-2.7189331440937941e-15 0.0075686696483523858 -0.0093554328319283009
		-1.1081943511962926 -2.2204460492503126e-16 -0.010297931240021367
		-1.1081941875543917 -2.2204460492503126e-16 -0.01029799938715719
		-0.78361162489122771 -4.4408920985006257e-16 -0.79390962427838185
		-3.0252627699607854e-15 -2.6520958415643766e-16 -1.1184921869415452
		0.7836116248912226 -4.4408920985006257e-16 -0.79390962427838141
		1.1081941875543853 4.9557671861266918e-32 -0.01029799938715676
		1.1081943511962864 4.9557670181310314e-32 -0.010297931240020826
		;
createNode transform -n "R_Foot_IK_Heel_Tap_Grp" -p "R_Foot_IK_Heel_Tip_Ctrl";
	rename -uid "B539F5DA-4643-D11E-9EA0-E9A5310C515A";
	setAttr ".t" -type "double3" 4.4408920985006262e-16 1.6753115653991704 1.7982037067413348 ;
createNode transform -n "R_Foot_IK_Heel_Tap" -p "R_Foot_IK_Heel_Tap_Grp";
	rename -uid "F86CB58B-4EB9-1DCD-00BB-829C68B1C321";
createNode nurbsCurve -n "R_Foot_IK_Heel_TapShape" -p "R_Foot_IK_Heel_Tap";
	rename -uid "B1B05139-40D7-C969-EB4C-9584F57C62C6";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.2224896815125008e-16 -0.21130218657582908 -1.0915058090668452
		1.0773604836177906e-15 -0.21130224543742768 -1.0915058348209035
		9.8292397352285093e-16 -0.26063569850906709 -1.6802220560940946
		1.3159908736288291e-15 -0.2606357103759106 -1.6802219966355725
		1.3982559337355638e-15 -0.59581476385429544 -1.8986842413750693
		1.0651890306171153e-15 -0.5958147142465352 -1.898684276234901
		8.7507806868681753e-16 -1.1543437793488756 -1.7061593110535953
		1.4857007375524152e-15 -1.1543438266730783 -1.7061593545090783
		5.2224896815125008e-16 -0.21130218657582908 -1.0915058090668452
		1.0773604836177906e-15 -0.21130224543742768 -1.0915058348209035
		9.8292397352285093e-16 -0.26063569850906709 -1.6802220560940946
		;
createNode ikHandle -n "R_Foot_IK_Heel_02_Handle" -p "R_Foot_IK_Heel_Tap";
	rename -uid "ADFAAC1A-4C7B-3F3F-8420-9FAFAA4E584C";
	setAttr ".t" -type "double3" 2.8350829683887468e-08 -1.6753105653991698 -1.0922694937591573 ;
	setAttr ".r" -type "double3" 89.999998792581806 -33.103426741469974 90 ;
	setAttr ".pv" -type "double3" 1.9428902930940244e-16 0 1 ;
	setAttr ".roc" yes;
createNode transform -n "R_Foot_IK_Heel_Ctrl_Grp" -p "R_Foot_IK_Heel_Tip_Ctrl";
	rename -uid "718DCF97-4022-F23E-A878-AF8EFA87AB24";
	setAttr ".t" -type "double3" -4.4408920985006262e-16 1.6753115653991704 1.7982037067413348 ;
	setAttr ".rp" -type "double3" 0 0 4.4408920985006262e-16 ;
	setAttr ".sp" -type "double3" 0 0 4.4408920985006262e-16 ;
createNode transform -n "R_Foot_IK_Heel_Ctrl" -p "R_Foot_IK_Heel_Ctrl_Grp";
	rename -uid "15074EE5-427B-730B-8E1D-9F967EB4C54F";
	setAttr ".rp" -type "double3" 0 0 4.4408920985006262e-16 ;
	setAttr ".sp" -type "double3" 0 0 4.4408920985006262e-16 ;
createNode nurbsCurve -n "R_Foot_IK_Heel_CtrlShape" -p "R_Foot_IK_Heel_Ctrl";
	rename -uid "141F75A9-4B84-C3DE-A877-29B0640B122B";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.1081943511962891 0 -0.65293717384338235
		1.1081941875543881 0 -0.65293713556280686
		1.1081943511962893 0 -0.65293717384338235
		5.090228726851005e-16 -4.0092423061865602e-16 -0.96768295156459927
		-1.1081943511962893 0 -0.6529371738433819
		-1.1081941875543884 -2.2204460492503131e-16 -0.6529371355628063
		-1.1081943511962895 0 -0.6529371738433819
		4.8161426068069276e-16 -2.6520958415643775e-16 -2.4470027078810359
		1.1081943511962891 0 -0.65293717384338235
		1.1081941875543881 0 -0.65293713556280686
		1.1081943511962893 0 -0.65293717384338235
		;
createNode transform -n "R_Foot_IK_Toe_Tip_Ctrl_Grp" -p "R_Foot_IK_Heel_Ctrl";
	rename -uid "7B8ECA66-4768-737F-9F67-AAA1EBA6C2D3";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 -1.6753115653991706 3.6905077695846549 ;
	setAttr ".rp" -type "double3" 0 0 -2.2204460492503131e-16 ;
	setAttr ".sp" -type "double3" 0 0 -2.2204460492503131e-16 ;
createNode transform -n "R_Foot_IK_Toe_Tip_Ctrl" -p "R_Foot_IK_Toe_Tip_Ctrl_Grp";
	rename -uid "8E79D7F8-4AF4-8D32-D221-11B21C493F67";
	setAttr ".rp" -type "double3" 0 0 -2.2204460492503131e-16 ;
	setAttr ".sp" -type "double3" 0 0 -2.2204460492503131e-16 ;
createNode nurbsCurve -n "R_Foot_IK_Toe_Tip_CtrlShape" -p "R_Foot_IK_Toe_Tip_Ctrl";
	rename -uid "7CCE1488-4D8F-6E0E-1F51-9BA30321748F";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.1081943511962893 -2.7319099970172406e-32 0.00090359351281902797
		1.1081941875543884 -2.731909593608809e-32 0.00090350417281418946
		0.78361162489122516 -4.4408920985006262e-16 0.78451512906403886
		6.9877980580131418e-16 -4.0092423061865602e-16 1.1090976917272022
		-0.7836116248912236 -3.3306690738754696e-16 0.78451512906403864
		-1.1081941875543875 -2.2204460492503128e-16 0.00090350417281400298
		-1.1081943511962886 -2.2204460492503128e-16 0.00090359351281873047
		6.2442725230949638e-16 -2.6520958415643775e-16 0.013104307717412002
		1.1081943511962893 -2.7319099970172406e-32 0.00090359351281902797
		1.1081941875543884 -2.731909593608809e-32 0.00090350417281418946
		0.78361162489122516 -4.4408920985006262e-16 0.78451512906403886
		;
createNode transform -n "R_Foot_IK_Toe_Tap_Grp" -p "R_Foot_IK_Toe_Tip_Ctrl";
	rename -uid "A2CB74EB-4B20-A8D2-42DC-1483C0B228D4";
	setAttr ".t" -type "double3" -1.9073486328125e-06 1.5818389654159553 -2.1324114203453046 ;
	setAttr ".rp" -type "double3" 0 2.2204460492503131e-16 0 ;
	setAttr ".sp" -type "double3" 0 2.2204460492503131e-16 0 ;
createNode transform -n "R_Foot_IK_Toe_Tap" -p "R_Foot_IK_Toe_Tap_Grp";
	rename -uid "08A0A3A1-4078-B202-C493-40BC68631A16";
	setAttr ".rp" -type "double3" 0 2.2204460492503131e-16 0 ;
	setAttr ".sp" -type "double3" 0 2.2204460492503131e-16 0 ;
createNode nurbsCurve -n "R_Foot_IK_Toe_TapShape" -p "R_Foot_IK_Toe_Tap";
	rename -uid "93E23BD9-415C-A3C6-2B8C-30AD17C4C0FF";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		4.7119159034731818e-16 -0.27743269711492891 1.4706285940655897
		3.4912720472084478e-16 -0.27743275397735467 1.4706286239758519
		5.056533224272216e-16 -0.2844063330011985 2.0613671007807364
		2.2337944629513068e-16 -0.28440634910284746 2.0613670423266974
		7.9314474904959514e-17 -0.60305000103814355 2.3033111956940058
		3.2344323500972216e-16 -0.60304994905745191 2.3033112269053087
		5.0989170204152891e-16 -1.1739511824822715 2.1513495197018928
		2.6576293239067736e-16 -1.1739512265671788 2.1513495664403148
		4.7119159034731818e-16 -0.27743269711492891 1.4706285940655897
		3.4912720472084478e-16 -0.27743275397735467 1.4706286239758519
		5.056533224272216e-16 -0.2844063330011985 2.0613671007807364
		;
createNode ikHandle -n "R_Foot_IK_Toe_02_Handle" -p "R_Foot_IK_Toe_Tap";
	rename -uid "CC2A3ECB-4716-BD84-D1E7-BFA88E17A777";
	setAttr ".t" -type "double3" 0.0058219356994624327 -1.5818409654159544 1.4265971570014926 ;
	setAttr ".r" -type "double3" -89.858851813032757 42.045871984932752 90.210754800395819 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 0.99999999999999989 ;
	setAttr ".pv" -type "double3" 1.9428902930940244e-16 0 1 ;
	setAttr ".roc" yes;
createNode transform -n "R_Foot_IK_Ball_Ctrl_Grp" -p "R_Foot_IK_Toe_Tip_Ctrl";
	rename -uid "5184C50F-4E15-331F-3B22-DA8408407E41";
	setAttr ".t" -type "double3" -1.9073486328125e-06 1.5818389654159553 -2.1324114203453046 ;
	setAttr ".rp" -type "double3" 0 2.2204460492503131e-16 0 ;
	setAttr ".sp" -type "double3" 0 2.2204460492503131e-16 0 ;
createNode transform -n "R_Foot_IK_Ball_Ctrl" -p "R_Foot_IK_Ball_Ctrl_Grp";
	rename -uid "9A54C718-4370-285A-E482-D585A9B6C743";
	setAttr ".rp" -type "double3" 0 2.2204460492503131e-16 0 ;
	setAttr ".sp" -type "double3" 0 2.2204460492503131e-16 0 ;
createNode nurbsCurve -n "R_Foot_IK_Ball_CtrlShape" -p "R_Foot_IK_Ball_Ctrl";
	rename -uid "4412564C-4075-8B2F-0791-FE8BCFA4E17C";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.0238380432128913 8.8817841970012563e-16 0.84720866478478918
		1.0238379279294736 8.8817841970012563e-16 0.84720864556676911
		0.36389594372872403 4.4408920985006262e-16 1.6953837564074796
		0.3638959847031466 9.298117831235686e-16 1.695383654008269
		-0.36389598470314705 1.1102230246251565e-15 1.695383654008269
		-0.36389594372872447 6.6613381477509392e-16 1.6953837564074794
		-1.0238379279294729 4.4408920985006262e-16 0.84720864556676778
		-1.0238380432128906 8.4501340894980927e-16 0.8472086647847884
		1.0238380432128913 8.8817841970012563e-16 0.84720866478478918
		1.0238379279294736 8.8817841970012563e-16 0.84720864556676911
		0.36389594372872403 4.4408920985006262e-16 1.6953837564074796
		;
createNode ikHandle -n "R_Foot_IK_Toe_01_Handle" -p "R_Foot_IK_Ball_Ctrl";
	rename -uid "37007D4E-4054-5F5E-4BD4-2DA7D7A3ED30";
	setAttr ".t" -type "double3" 1.9356994624963875e-06 -9.6541595451249407e-07 -8.4299850711122559e-07 ;
	setAttr ".r" -type "double3" -180 89.999999999999986 0 ;
	setAttr ".pv" -type "double3" 1.9428902930940244e-16 0 1 ;
	setAttr ".roc" yes;
createNode ikHandle -n "R_Knee_1_to_Ankle_IK_Handle" -p "R_Foot_IK_Ball_Ctrl";
	rename -uid "36765F83-4D18-A676-5D24-77B2CB315739";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.878997795579096e-06 0.80940917745760466 -0.91744157230185674 ;
	setAttr ".rp" -type "double3" 5.6701667361380714e-08 0 9.1822951353570659e-06 ;
	setAttr ".sp" -type "double3" 5.6701667361380714e-08 0 9.1822951353570659e-06 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "R_Knee_1_to_Ankle_IK_Handle_poleVectorConstraint1" 
		-p "R_Knee_1_to_Ankle_IK_Handle";
	rename -uid "D29DF8DC-46AF-52AB-DD48-73885C93E84C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_IK_Leg_PV_02_CtrlW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".rp" -type "double3" 5.6701667361380714e-08 0 9.1822951353570659e-06 ;
	setAttr ".sp" -type "double3" 5.6701667361380714e-08 0 9.1822951353570659e-06 ;
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 2.8350831460244308e-08 -5.8804720172939859 -7.0767994436993327 ;
	setAttr -k on ".w0";
createNode ikHandle -n "R_Foot_IK_Heel_01_Handle" -p "R_Foot_IK_Heel_Ctrl";
	rename -uid "169BB301-43D7-ADF7-D4C2-6A8BD5885599";
	setAttr ".t" -type "double3" 2.8350830572065888e-08 -5.6539916970521631e-07 5.0624084346750919e-07 ;
	setAttr ".r" -type "double3" -180 89.999999999999986 0 ;
	setAttr ".pv" -type "double3" 1.9428902930940244e-16 0 1 ;
	setAttr ".roc" yes;
createNode transform -n "L_IK_Leg_Point" -p "IK_Ctrls";
	rename -uid "4F1FC068-4403-1B9F-529E-939E19E3B1DD";
	setAttr ".v" no;
createNode transform -n "L_IK_Leg_Handle_Arc_Base" -p "L_IK_Leg_Point";
	rename -uid "8C6F9836-43EB-A150-A1A1-B5853E624A9E";
createNode locator -n "L_IK_Leg_Handle_Arc_BaseShape" -p "L_IK_Leg_Handle_Arc_Base";
	rename -uid "E913D7DC-4622-3035-D266-C390298D85E5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
createNode aimConstraint -n "L_IK_Leg_Handle_Arc_Base_aimConstraint1" -p "L_IK_Leg_Handle_Arc_Base";
	rename -uid "4E2AF0E0-44AE-D29F-2CD8-BB8149E52B80";
	addAttr -dcb 0 -ci true -sn "w0" -ln "L_IK_Leg_Handle_Arc_TrgtW0" -dv 1 -at "double";
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
	setAttr ".a" -type "double3" 0 -1 0 ;
	setAttr ".u" -type "double3" 0 0 1 ;
	setAttr ".wut" 1;
	setAttr -k on ".w0";
createNode transform -n "L_IK_Leg_Handle_Arc_Trgt" -p "L_IK_Leg_Point";
	rename -uid "73CF615E-4413-DC69-2B47-E1BC9F9124EE";
createNode locator -n "L_IK_Leg_Handle_Arc_TrgtShape" -p "L_IK_Leg_Handle_Arc_Trgt";
	rename -uid "14A67CDA-4841-C732-FEAD-2DB65127B22B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
createNode pointConstraint -n "L_IK_Leg_Handle_Arc_Trgt_pointConstraint1" -p "L_IK_Leg_Handle_Arc_Trgt";
	rename -uid "2EB828E4-4F8E-1FC1-E2B7-D4809FB7A04D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Foot_IK_Ball_CtrlW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".o" -type "double3" -1.9073486359211245e-06 0.82728603087606345 -0.90134981921843127 ;
	setAttr ".rst" -type "double3" -4.8849813083506888e-15 -17.873073011658466 4.4408920985006262e-16 ;
	setAttr -k on ".w0";
createNode transform -n "L_IK_Leg_Handle_Arc_Up" -p "L_IK_Leg_Point";
	rename -uid "86641985-4AEE-8DDF-AB9A-12924C1CEC7B";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 1.2628786905111156e-15 5 ;
createNode locator -n "L_IK_Leg_Handle_Arc_UpShape" -p "L_IK_Leg_Handle_Arc_Up";
	rename -uid "E7B36557-4FA0-B4A9-2DC8-7F83DA96208A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
createNode parentConstraint -n "L_IK_Leg_Point_parentConstraint1" -p "L_IK_Leg_Point";
	rename -uid "6815C106-48D1-FCEA-BECB-F9A966DEE186";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Hip_JntW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 3.1503720283508301 -1.6036872863769531 0.015260815620422363 ;
	setAttr ".tg[0].tor" -type "double3" -1.1262844527055651 0 0 ;
	setAttr ".lr" -type "double3" -1.1262844527055651 0 0 ;
	setAttr ".rst" -type "double3" 3.1503720283508301 20.260868072509766 -1.4110990762710571 ;
	setAttr ".rsrr" -type "double3" -1.1262844527055651 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "R_IK_Leg_Point" -p "IK_Ctrls";
	rename -uid "F6F29260-4267-AB78-015D-F38060AA71A8";
	setAttr ".v" no;
createNode transform -n "R_IK_Leg_Handle_Arc_Base" -p "R_IK_Leg_Point";
	rename -uid "4D4BAFF7-44D8-9A9C-7665-EB8C6E3C39FE";
createNode locator -n "R_IK_Leg_Handle_Arc_BaseShape" -p "R_IK_Leg_Handle_Arc_Base";
	rename -uid "F119694A-4D36-8CD3-D03B-3EB2232C61D7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
createNode aimConstraint -n "R_IK_Leg_Handle_Arc_Base_aimConstraint1" -p "R_IK_Leg_Handle_Arc_Base";
	rename -uid "AADA4E0F-48C9-798A-2EF0-ED93374813E3";
	addAttr -dcb 0 -ci true -sn "w0" -ln "R_IK_Leg_Handle_Arc_TrgtW0" -dv 1 -at "double";
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
	setAttr ".a" -type "double3" 0 -1 0 ;
	setAttr ".u" -type "double3" 0 0 1 ;
	setAttr ".wut" 1;
	setAttr -k on ".w0";
createNode transform -n "R_IK_Leg_Handle_Arc_Trgt" -p "R_IK_Leg_Point";
	rename -uid "204518D7-4B55-BFE5-7A86-A49D3F221962";
createNode locator -n "R_IK_Leg_Handle_Arc_TrgtShape" -p "R_IK_Leg_Handle_Arc_Trgt";
	rename -uid "1F038513-4E84-46E2-C421-B5AE1B8F3900";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
createNode pointConstraint -n "R_IK_Leg_Handle_Arc_Trgt_pointConstraint1" -p "R_IK_Leg_Handle_Arc_Trgt";
	rename -uid "9F7E3B7F-4A49-156F-C445-6AAB0705ADA0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Foot_IK_Ball_CtrlW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".o" -type "double3" 1.9356994611641198e-06 0.82728631357349869 -0.90134962924542039 ;
	setAttr ".rst" -type "double3" -8.8817841970012523e-16 -17.873073011658466 1.1102230246251565e-15 ;
	setAttr -k on ".w0";
createNode transform -n "R_IK_Leg_Handle_Arc_Up" -p "R_IK_Leg_Point";
	rename -uid "3F462604-4698-0AA1-FB71-74A6E4191AAD";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 1.2628786905111156e-15 5 ;
createNode locator -n "R_IK_Leg_Handle_Arc_UpShape" -p "R_IK_Leg_Handle_Arc_Up";
	rename -uid "7B589176-412A-7DEC-E15B-63B2F8954E91";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
createNode parentConstraint -n "R_IK_Leg_Point_parentConstraint1" -p "R_IK_Leg_Point";
	rename -uid "8BE38F89-4B80-8BCC-08D2-9CB908634081";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Hip_JntW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -3.150372 -1.6036870000000008 0.015260999999999969 ;
	setAttr ".tg[0].tor" -type "double3" -1.1262844527055651 0 0 ;
	setAttr ".lr" -type "double3" -1.1262844527055651 0 0 ;
	setAttr ".rst" -type "double3" -3.150372 20.260868358886718 -1.4110988918914795 ;
	setAttr ".rsrr" -type "double3" -1.1262844527055651 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "L_Hip_to_Knee_2_IK_Handle_Grp" -p "IK_Ctrls";
	rename -uid "918D1A5A-4021-DB8D-1B96-73AF2611286E";
createNode transform -n "L_Hip_to_Knee_2_IK_Handle_Offset_Grp" -p "L_Hip_to_Knee_2_IK_Handle_Grp";
	rename -uid "BF730529-4A3A-2A19-3E1B-0795A4CABFA0";
createNode ikHandle -n "L_Hip_to_Knee_2_IK_Handle" -p "L_Hip_to_Knee_2_IK_Handle_Offset_Grp";
	rename -uid "D1543B83-410A-0AEF-0E3D-DDBA2B1BC8D9";
	setAttr ".v" no;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "ikHandle2_poleVectorConstraint1" -p "L_Hip_to_Knee_2_IK_Handle";
	rename -uid "CD5FD724-47BE-5591-C5D6-6783BBDD9EF5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_IK_Leg_PV_01_CtrlW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".rst" -type "double3" -8.8817841970012523e-16 -6.1286373138427734 7.0913932762510843 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "ikHandle2_Offset_Grp_pointConstraint1" -p "L_Hip_to_Knee_2_IK_Handle_Offset_Grp";
	rename -uid "176B3848-44A0-FC70-0244-298AB1E02FB1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_IK_Leg_Handle_Arc_BaseW0" -dv 1 
		-min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "L_IK_Leg_Handle_Arc_TrgtW1" -dv 1 
		-min 0 -at "double";
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
	setAttr -s 2 ".tg";
	setAttr ".o" -type "double3" 1.7763568394002505e-15 -3.074299529342337 -0.79032814366615112 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "ikHandle2_Grp_parentConstraint1" -p "L_Hip_to_Knee_2_IK_Handle_Grp";
	rename -uid "88966088-4731-6D71-C7B0-1DBFBEBF5D06";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_IK_Leg_Handle_Arc_BaseW0" -dv 1 
		-min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -4.4408920985006262e-16 -11.994707306944434 
		-0.85060420995413688 ;
	setAttr ".tg[0].tor" -type "double3" 1.1262844527055651 0 0 ;
	setAttr ".rst" -type "double3" 3.1503720283508296 8.2517585754394531 -2.0257697105407737 ;
	setAttr -k on ".w0";
createNode transform -n "R_Hip_to_Knee_2_IK_Handle_Grp" -p "IK_Ctrls";
	rename -uid "1AAD873A-4343-F6EF-4290-C9BC9B8E81D5";
createNode transform -n "R_Hip_to_Knee_2_IK_Handle_Offset_Grp" -p "R_Hip_to_Knee_2_IK_Handle_Grp";
	rename -uid "388026B7-4A97-23FA-F0A3-5FBE579EE0CA";
createNode ikHandle -n "R_Hip_to_Knee_2_IK_Handle" -p "R_Hip_to_Knee_2_IK_Handle_Offset_Grp";
	rename -uid "0711D4D0-4245-F109-9855-BC99818CB460";
	setAttr ".v" no;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "R_Hip_to_Knee_2_IK_Handle_poleVectorConstraint1" 
		-p "R_Hip_to_Knee_2_IK_Handle";
	rename -uid "E61305C0-49F6-13C9-2BA6-28A106C1BE1C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_IK_Leg_PV_01_CtrlW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".rst" -type "double3" -2.8350831016155098e-08 -6.1286376002197276 7.0913930918715069 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "R_Hip_to_Knee_2_IK_Handle_Offset_Grp_pointConstraint1" 
		-p "R_Hip_to_Knee_2_IK_Handle_Offset_Grp";
	rename -uid "4D8B7656-4B8E-F50D-09DC-7C99AD366CD6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_IK_Leg_Handle_Arc_BaseW0" -dv 1 
		-min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "R_IK_Leg_Handle_Arc_TrgtW1" -dv 1 
		-min 0 -at "double";
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
	setAttr -s 2 ".tg";
	setAttr ".o" -type "double3" 8.8817841970012523e-16 -3.0743002482851818 -0.79032816451317345 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "R_Hip_to_Knee_2_IK_Handle_Grp_parentConstraint1" 
		-p "R_Hip_to_Knee_2_IK_Handle_Grp";
	rename -uid "49C743DF-42A9-6109-3B58-2E8A66EB4D32";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_IK_Leg_Handle_Arc_BaseW0" -dv 1 
		-min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 4.4408920985006262e-16 -11.994708025338609 
		-0.85060424492874853 ;
	setAttr ".tg[0].tor" -type "double3" 1.1262844527055651 0 0 ;
	setAttr ".rst" -type "double3" -3.1503719999999995 8.2517581428735607 -2.0257695470082187 ;
	setAttr -k on ".w0";
createNode transform -n "Spine_Ctrls" -p "Transform_Ctrl";
	rename -uid "104EF1A0-44B7-AD71-905C-7B94F250F8DD";
createNode transform -n "Head" -p "Spine_Ctrls";
	rename -uid "ED9214C9-4DBA-4145-E897-FEB1E5E3A9E6";
	setAttr ".t" -type "double3" 3.9443045261050599e-31 -3.5527136788005009e-15 2.2204460492503131e-16 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
createNode transform -n "Neck_01_Ctrl_Grp" -p "Head";
	rename -uid "2B116C7F-4BEF-C72D-C4E1-6A8D835DE6CE";
createNode transform -n "Neck_01_Ctrl" -p "Neck_01_Ctrl_Grp";
	rename -uid "D69BAE7C-42DC-CEB5-F807-64AFAE4F659F";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr ".t" -type "double3" -2.2204460492503131e-16 -3.5527136788005009e-15 6.6174449004242214e-24 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "Neck_01_CtrlShape" -p "Neck_01_Ctrl";
	rename -uid "5DC8B667-4EC2-41E6-6155-E9B9D885A492";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -1.8517209270228685 -0.43714145776391983 
		-0.87032159092196937 -2.5181174464319458 -0.9206341693929857 -9.688244089114976e-16 
		-1.8517209270228681 -0.43714145776391933 0.87032159092196781 -0.24289741194723152 
		0.7301132039595204 1.2308205975079782 1.3659261031284071 1.897367865682962 0.87032159092196781 
		2.0323226225374897 2.3808605773120197 -7.701662426092341e-16 1.3659261031284067 1.8973678656829593 
		-0.87032159092196937 -0.24289741194723133 0.73011320395952062 -1.2308205975079796 
		0 0 0 0 0 0 0 0 0;
createNode parentConstraint -n "Neck_01_Ctrl_Grp_parentConstraint1" -p "Neck_01_Ctrl_Grp";
	rename -uid "832A9424-42A0-D0C4-5261-9FBD37962114";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine_04_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 5.7851505593120542 -0.089674118772244737 3.9687097628504281e-08 ;
	setAttr ".tg[0].tor" -type "double3" 1.2723448802153529e-14 -4.4489530473948814e-21 
		-89.99997996466125 ;
	setAttr ".lr" -type "double3" -8.9959671327898932e-15 89.99999999999649 0 ;
	setAttr ".rst" -type "double3" 3.9687100941097791e-08 31.886077880859368 -1.5160369873046871 ;
	setAttr ".rsrr" -type "double3" -8.9959671327898932e-15 89.99999999999649 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Neck_01_Ctrl_Grp_parentConstraint2" -p "Neck_01_Ctrl_Grp";
	rename -uid "B409403E-423A-14E5-940C-C6BE211893F4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine_04_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 5.7851505593120507 -0.089674118772244515 3.9687097628504281e-08 ;
	setAttr ".tg[0].tor" -type "double3" 1.2723448802153529e-14 -4.4489530473948814e-21 
		-89.99997996466125 ;
	setAttr ".lr" -type "double3" -8.9959671327898932e-15 89.99999999999649 0 ;
	setAttr ".rst" -type "double3" 3.9687100941097791e-08 31.886077880859368 -1.5160369873046868 ;
	setAttr ".rsrr" -type "double3" -8.9959671327898932e-15 89.99999999999649 0 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Neck_01_Ctrl_Grp_scaleConstraint1" -p "Neck_01_Ctrl_Grp";
	rename -uid "FED7B93C-4DCC-7330-A9A9-7DA9EBC71DF7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine_04_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "Neck_02_Ctrl_Grp" -p "Head";
	rename -uid "8114A53E-4145-321D-5D1F-299CC038365F";
createNode transform -n "Neck_02_Ctrl" -p "Neck_02_Ctrl_Grp";
	rename -uid "239DF017-416E-2628-E1C1-A5A26839C600";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr ".t" -type "double3" 0 0 6.6174449004242214e-24 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "Neck_02_CtrlShape" -p "Neck_02_Ctrl";
	rename -uid "0126A89A-42BC-7C09-9906-099D3DB973FA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -1.0802754601325428 -1.0801994443214822 
		-0.29666383524131812 -1.5277402068182777 -1.4047820069846451 -1.4004296965072184e-18 
		-1.0802754601325426 -1.080199444321482 0.29666383524131812 -2.4845753347274182e-16 
		-0.29658781943025758 0.41954601926389024 1.0802754601325426 0.48702380546096702 0.29666383524131812 
		1.5277402068182786 0.81160636812413078 6.6315566473144574e-17 1.0802754601325426 
		0.48702380546096691 -0.29666383524131812 -9.6636465242180728e-17 -0.29658781943025719 
		-0.41954601926389024 0 0 0 0 0 0 0 0 0;
createNode parentConstraint -n "Neck_02_Ctrl_Grp_parentConstraint1" -p "Neck_02_Ctrl_Grp";
	rename -uid "7839EDB5-433C-8F4D-9B13-699E45D1F360";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Neck_01_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -0.86484992504119729 2.5895462036132812 -5.7505029731403008e-16 ;
	setAttr ".lr" -type "double3" 0 89.99999999999649 0 ;
	setAttr ".rst" -type "double3" 3.9687047268298131e-08 34.475624084472642 -0.65118706226348988 ;
	setAttr ".rsrr" -type "double3" 0 89.99999999999649 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Neck_02_Ctrl_Grp_parentConstraint2" -p "Neck_02_Ctrl_Grp";
	rename -uid "61334BF7-4DCD-302C-5DD8-4B959D292C1D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Neck_01_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -0.86484992504119729 2.5895462036132741 -5.7505029731403008e-16 ;
	setAttr ".lr" -type "double3" 0 89.99999999999649 0 ;
	setAttr ".rst" -type "double3" 3.9687047268298131e-08 34.475624084472635 -0.65118706226348988 ;
	setAttr ".rsrr" -type "double3" 0 89.99999999999649 0 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Neck_02_Ctrl_Grp_scaleConstraint1" -p "Neck_02_Ctrl_Grp";
	rename -uid "20087481-4D57-73D5-40FC-36BA446B4A02";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Neck_01_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "Eye_FK_Ctrl_Grp" -p "Head";
	rename -uid "8237876D-4128-9936-43E3-CFB99F10BEB5";
createNode transform -n "Eye_Point_Up" -p "Eye_FK_Ctrl_Grp";
	rename -uid "91D715F8-43DB-5FB9-EB16-3EA864C9D66D";
	setAttr ".t" -type "double3" -6.6058269965196814e-15 3.3538633149649186 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000007 0.99999999999999967 ;
createNode locator -n "Eye_Point_UpShape" -p "Eye_Point_Up";
	rename -uid "E8D675E9-4D77-21F5-831D-64A11DF3F744";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
createNode transform -n "Eye_FK_Ctrl" -p "Eye_FK_Ctrl_Grp";
	rename -uid "C45D8AB3-4C65-B555-7F12-62B2302BDEBA";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr ".t" -type "double3" 0 0 6.6174449004242214e-24 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "Eye_FK_CtrlShape" -p "Eye_FK_Ctrl";
	rename -uid "49496CFF-40C6-EE88-08E2-BAB77F001538";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -3.9533968175416088 0.40132863302454291 
		-0.51115611959259144 -3.9533968175416088 0.081188942354037286 -8.8393291351462332e-17 
		-3.9533968175416088 0.40132863302454291 0.51115611959259144 -3.9533968175416088 2.9422638502217186e-17 
		0.72288391681784536 -3.9533968175416088 -0.40132863302454302 0.51115611959259144 
		-3.9533968175416088 -0.081188942354037508 2.8282358743433763e-17 -3.9533968175416088 
		-0.40132863302454291 -0.51115611959259144 -3.9533968175416088 -7.7398556259746326e-17 
		-0.72288391681784536 0 0 0 0 0 0 0 0 0;
createNode parentConstraint -n "Eye_FK_Ctrl_Grp_parentConstraint1" -p "Eye_FK_Ctrl_Grp";
	rename -uid "20FBD60A-4F0E-425C-F202-168033F26B75";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Neck_02_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -0.94321244955062189 1.6809921264648224 -3.7329125135556751e-16 ;
	setAttr ".lr" -type "double3" 0 89.99999999999649 0 ;
	setAttr ".rst" -type "double3" 3.968698898616421e-08 36.156616210937464 0.29202538728713145 ;
	setAttr ".rsrr" -type "double3" 0 89.99999999999649 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Eye_FK_Ctrl_Grp_parentConstraint2" -p "Eye_FK_Ctrl_Grp";
	rename -uid "1BDE7BAE-48E6-8A87-2468-69BA34FA6744";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Neck_02_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -0.943212449550622 1.6809921264648224 -3.732912447381226e-16 ;
	setAttr ".lr" -type "double3" 0 89.99999999999649 0 ;
	setAttr ".rst" -type "double3" 3.9686988986164216e-08 36.156616210937464 0.29202538728713157 ;
	setAttr ".rsrr" -type "double3" 0 89.99999999999649 0 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Eye_FK_Ctrl_Grp_scaleConstraint1" -p "Eye_FK_Ctrl_Grp";
	rename -uid "0ED7F9CA-492D-E98B-A59C-D1AA4AA4A4D1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Neck_02_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "Eye_Point_Ctrl_Grp" -p "Head";
	rename -uid "61BFA388-457D-E929-E20E-8FAF47F33F36";
	setAttr ".t" -type "double3" 3.9688974790949623e-08 36.156616210937472 0.29202538728712302 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
	setAttr ".s" -type "double3" 1.0000000000000007 0.99999999999999978 1.0000000000000002 ;
createNode transform -n "Eye_Point_Offset_Grp" -p "Eye_Point_Ctrl_Grp";
	rename -uid "D10C29E3-4E2F-FC76-9427-BDAC99AE90A3";
	setAttr ".t" -type "double3" -4.5038449098756823 0 -2.8644864754895714e-24 ;
createNode transform -n "Eye_Point" -p "Eye_Point_Offset_Grp";
	rename -uid "BA39022A-463D-6CD6-AE82-65A6C6AB36AF";
	setAttr ".t" -type "double3" -1.9446739353299973e-15 0 0 ;
createNode nurbsCurve -n "Eye_PointShape" -p "Eye_Point";
	rename -uid "A63B39DD-4FED-0E82-BF0C-D3A47E30B35D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".tw" yes;
createNode transform -n "Spine_04_Ctrl_Grp" -p "Spine_Ctrls";
	rename -uid "B92F17E4-4883-4DF7-AC10-21A6C842692D";
createNode transform -n "Spine_04_Ctrl" -p "Spine_04_Ctrl_Grp";
	rename -uid "5F39952C-4722-1D0C-973F-0092AFA7213C";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr ".t" -type "double3" 0 2.2204460492503131e-16 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "Spine_04_CtrlShape" -p "Spine_04_Ctrl";
	rename -uid "4E04797A-4C44-E942-9ACA-CBB86063D69B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		4.7982373409884725e-17 2.9896677422997273 -2.9896677422997286
		4.1550626846842558e-33 4.2280286681496202 -2.5889208875759867e-16
		-4.7982373409884725e-17 2.9896677422997255 2.9896677422997286
		-6.7857323231109146e-17 1.4694002116927485e-15 4.2280286681496273
		-4.7982373409884725e-17 -2.9896677422997273 2.9896677422997286
		-6.7973144778085889e-33 -4.2280286681496237 4.2352452336979562e-16
		4.7982373409884725e-17 -2.9896677422997255 -2.9896677422997286
		6.7857323231109146e-17 6.7364368226956995e-16 -4.2280286681496273
		4.7982373409884725e-17 2.9896677422997273 -2.9896677422997286
		4.1550626846842558e-33 4.2280286681496202 -2.5889208875759867e-16
		-4.7982373409884725e-17 2.9896677422997255 2.9896677422997286
		;
createNode parentConstraint -n "Spine_04_Ctrl_Grp_parentConstraint1" -p "Spine_04_Ctrl_Grp";
	rename -uid "26594547-4338-12DE-81E3-4581CB1A817A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine_03_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 1.3636283874511328 -4.4408920985006262e-16 
		-1.5142238591476938e-16 ;
	setAttr ".tg[0].tor" -type "double3" 0 4.4570108517420546e-31 0 ;
	setAttr ".lr" -type "double3" 89.99999999999649 2.0035338760965796e-05 90.000000000000014 ;
	setAttr ".rst" -type "double3" -9.0841742494185597e-16 26.100927352905153 -1.4263608455657963 ;
	setAttr ".rsrr" -type "double3" 89.99999999999649 2.0035338760965796e-05 90.000000000000014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Spine_04_Ctrl_Grp_parentConstraint2" -p "Spine_04_Ctrl_Grp";
	rename -uid "395A977F-411E-A280-7D8F-EFB078DEF507";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine_03_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 1.3636283874511363 -6.6613381477509392e-16 
		-1.5142238591478201e-16 ;
	setAttr ".tg[0].tor" -type "double3" 0 4.4570108517420546e-31 0 ;
	setAttr ".lr" -type "double3" 89.99999999999649 2.0035338760965796e-05 90.000000000000014 ;
	setAttr ".rst" -type "double3" -9.0841742494185577e-16 26.100927352905153 -1.4263608455657966 ;
	setAttr ".rsrr" -type "double3" 89.99999999999649 2.0035338760965796e-05 90.000000000000014 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Spine_04_Ctrl_Grp_scaleConstraint1" -p "Spine_04_Ctrl_Grp";
	rename -uid "905C7268-4C5A-963F-FEC4-88A5024A3AF1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine_03_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "Spine_03_Ctrl_Grp" -p "Spine_Ctrls";
	rename -uid "CF29EBB6-4A25-775D-3581-519003E9F153";
createNode transform -n "Spine_03_Ctrl" -p "Spine_03_Ctrl_Grp";
	rename -uid "F48FDDF0-4BF0-89A0-1C1E-0486692802F0";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr ".t" -type "double3" 0 2.2204460492503131e-16 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "Spine_03_CtrlShape" -p "Spine_03_Ctrl";
	rename -uid "35E1D109-43BD-AD04-73DA-2CAE9BDC492A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		4.7982373409884725e-17 2.9896677422997273 -2.9896677422997286
		4.1550626846842558e-33 4.2280286681496202 -2.5889208875759867e-16
		-4.7982373409884725e-17 2.9896677422997255 2.9896677422997286
		-6.7857323231109146e-17 1.4694002116927485e-15 4.2280286681496273
		-4.7982373409884725e-17 -2.9896677422997273 2.9896677422997286
		-6.7973144778085889e-33 -4.2280286681496237 4.2352452336979562e-16
		4.7982373409884725e-17 -2.9896677422997255 -2.9896677422997286
		6.7857323231109146e-17 6.7364368226956995e-16 -4.2280286681496273
		4.7982373409884725e-17 2.9896677422997273 -2.9896677422997286
		4.1550626846842558e-33 4.2280286681496202 -2.5889208875759867e-16
		-4.7982373409884725e-17 2.9896677422997255 2.9896677422997286
		;
createNode parentConstraint -n "Spine_03_Ctrl_Grp_parentConstraint1" -p "Spine_03_Ctrl_Grp";
	rename -uid "A1063FDF-4499-2B82-61D5-90BBA5B6A6D4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine_02_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 1.3636283874512536 -2.2204460492503131e-16 
		-1.5142238591475676e-16 ;
	setAttr ".tg[0].tor" -type "double3" 0 4.4570108517420546e-31 0 ;
	setAttr ".lr" -type "double3" 89.99999999999649 2.0035338760965796e-05 90.000000000000014 ;
	setAttr ".rst" -type "double3" -4.5420871247095599e-16 24.737298965454102 -1.4263603687286377 ;
	setAttr ".rsrr" -type "double3" 89.99999999999649 2.0035338760965796e-05 90.000000000000014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Spine_03_Ctrl_Grp_parentConstraint2" -p "Spine_03_Ctrl_Grp";
	rename -uid "41378F7B-4CF3-38BE-85D0-E58916976FAB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine_02_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 1.3636283874512536 -2.2204460492503131e-16 
		-1.5142238591475676e-16 ;
	setAttr ".tg[0].tor" -type "double3" 0 4.4570108517420546e-31 0 ;
	setAttr ".lr" -type "double3" 89.99999999999649 2.0035338760965796e-05 90.000000000000014 ;
	setAttr ".rst" -type "double3" -4.5420871247095599e-16 24.737298965454102 -1.4263603687286377 ;
	setAttr ".rsrr" -type "double3" 89.99999999999649 2.0035338760965796e-05 90.000000000000014 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Spine_03_Ctrl_Grp_scaleConstraint1" -p "Spine_03_Ctrl_Grp";
	rename -uid "8E5949F4-4BA8-2A0C-B035-7BAC50B4D016";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine_02_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "Spine_02_Ctrl_Grp" -p "Spine_Ctrls";
	rename -uid "59B77721-4C50-FF5F-BEE9-209D1CB87E32";
createNode transform -n "Spine_02_Ctrl" -p "Spine_02_Ctrl_Grp";
	rename -uid "EEF6BB83-480A-DD55-D914-488D40B84FA1";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr ".t" -type "double3" 0 2.2204460492503131e-16 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "Spine_02_CtrlShape" -p "Spine_02_Ctrl";
	rename -uid "6FDD8B38-425E-7C77-2F22-3AA85F38BBA5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 0 2.2060561174085027 -2.206056117408504 
		0 3.1198344805952325 -1.9103476552648954e-16 0 2.2060561174085014 2.206056117408504 
		0 1.4119512293175002e-15 3.1198344805952392 0 -2.2060561174085027 2.206056117408504 
		0 -3.1198344805952352 3.1251595367376338e-16 0 -2.2060561174085014 -2.206056117408504 
		0 8.2476773234756585e-16 -3.1198344805952392 0 0 0 0 0 0 0 0 0;
createNode parentConstraint -n "Spine_02_Ctrl_Grp_parentConstraint1" -p "Spine_02_Ctrl_Grp";
	rename -uid "DCBFF9AF-4323-4AA1-A3B3-14B4B96BA886";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine_01_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 1.5091152191161186 -2.2204460492503131e-16 
		-1.6757778673557668e-16 ;
	setAttr ".tg[0].tor" -type "double3" 0 4.4570108517420546e-31 0 ;
	setAttr ".lr" -type "double3" 89.99999999999649 2.0035338760965796e-05 90.000000000000014 ;
	setAttr ".rst" -type "double3" -2.8201777361651172e-29 23.37367057800293 -1.4263598918914793 ;
	setAttr ".rsrr" -type "double3" 89.99999999999649 2.0035338760965796e-05 90.000000000000014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Spine_02_Ctrl_Grp_parentConstraint2" -p "Spine_02_Ctrl_Grp";
	rename -uid "6F515D50-4EB8-8FA2-1C46-F2BA39B1D088";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine_01_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 1.5091152191161186 0 -1.675777867355893e-16 ;
	setAttr ".tg[0].tor" -type "double3" 0 4.4570108517420546e-31 0 ;
	setAttr ".lr" -type "double3" 89.99999999999649 2.0035338760965796e-05 90.000000000000014 ;
	setAttr ".rst" -type "double3" -5.4431402460249815e-29 23.37367057800293 -1.426359891891479 ;
	setAttr ".rsrr" -type "double3" 89.99999999999649 2.0035338760965796e-05 90.000000000000014 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Spine_02_Ctrl_Grp_scaleConstraint1" -p "Spine_02_Ctrl_Grp";
	rename -uid "37994922-4E70-E181-322C-D38C59F0B6CD";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine_01_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "Spine_01_Ctrl_Grp" -p "Spine_Ctrls";
	rename -uid "365E5050-4932-9B55-4BEF-89B14DA2C520";
	setAttr ".rp" -type "double3" 0 2.2204460492503131e-16 0 ;
	setAttr ".rpt" -type "double3" -1.3607845848013155e-29 -2.2204452727989033e-16 2.2204460492501775e-16 ;
	setAttr ".sp" -type "double3" 0 2.2204460492503131e-16 0 ;
createNode transform -n "Spine_01_Ctrl" -p "Spine_01_Ctrl_Grp";
	rename -uid "679304EC-4903-88CE-9437-6CB8BBA31610";
	addAttr -ci true -sn "FollowTranslate" -ln "FollowTranslate" -dv 1 -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "FollowRotate" -ln "FollowRotate" -dv 1 -min 0 -max 1 -at "double";
	setAttr ".t" -type "double3" 0 2.2204460492503131e-16 0 ;
	setAttr ".rp" -type "double3" 0 2.2204460492503131e-16 0 ;
	setAttr ".sp" -type "double3" 0 2.2204460492503131e-16 0 ;
	setAttr -k on ".FollowTranslate";
	setAttr -k on ".FollowRotate";
createNode nurbsCurve -n "Spine_01_CtrlShape" -p "Spine_01_Ctrl";
	rename -uid "57D1AAC1-4D64-8940-1EFB-DD9084D3323C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.16198844156312045 3.7673764396095768 -3.767376439609579
		0.16198844156312039 5.3278748554607178 -3.8376333105976105e-16
		0.16198844156312034 3.7673764396095741 3.767376439609579
		0.16198844156312034 2.3734095759991934e-15 5.3278748554607294
		0.16198844156312034 -3.7673764396095759 3.767376439609579
		0.16198844156312039 -5.3278748554607267 4.7617178151196777e-16
		0.16198844156312045 -3.7673764396095732 -3.767376439609579
		0.16198844156312045 1.3706511897753301e-15 -5.3278748554607294
		0.16198844156312045 3.7673764396095768 -3.767376439609579
		0.16198844156312039 5.3278748554607178 -3.8376333105976105e-16
		0.16198844156312034 3.7673764396095741 3.767376439609579
		;
createNode parentConstraint -n "Spine_01_Ctrl_Grp_parentConstraint1" -p "Spine_01_Ctrl_Grp";
	rename -uid "1CD75DF0-49EF-9E96-8889-FDBD2393D32E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Cog_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 5.0266867935053918e-16 1.8474111137527119e-13 
		5.2771137615259534e-07 ;
	setAttr ".tg[0].tor" -type "double3" 89.99999999999649 2.0035338760965796e-05 90.000000000000014 ;
	setAttr ".lr" -type "double3" 89.99999999999649 2.0035338760965796e-05 90.000000000000014 ;
	setAttr ".rst" -type "double3" 5.0266867935055279e-16 21.864555358886903 -1.4263593641801036 ;
	setAttr ".rsrr" -type "double3" 89.99999999999649 2.0035338760965796e-05 90.000000000000014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Spine_01_Ctrl_Grp_parentConstraint2" -p "Spine_01_Ctrl_Grp";
	rename -uid "282A4433-4B44-2EC7-155E-0086E40521AA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Cog_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 5.0266867935053918e-16 1.8474111137527119e-13 
		5.2771137615259534e-07 ;
	setAttr ".tg[0].tor" -type "double3" 89.99999999999649 2.0035338760965796e-05 90.000000000000014 ;
	setAttr ".lr" -type "double3" 89.99999999999649 2.0035338760965796e-05 90.000000000000014 ;
	setAttr ".rst" -type "double3" 5.0266867935055279e-16 21.864555358886903 -1.4263593641801036 ;
	setAttr ".rsrr" -type "double3" 89.99999999999649 2.0035338760965796e-05 90.000000000000014 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Spine_01_Ctrl_Grp_scaleConstraint1" -p "Spine_01_Ctrl_Grp";
	rename -uid "5AD7104E-4B15-DD80-3B27-BF96B2B20CC9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Cog_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode fosterParent -n "bot_bodyRNfosterParent1";
	rename -uid "2CC9B3D2-4D27-CAD3-9824-608EAA70C297";
createNode mesh -n "pCylinderShape8Deformed" -p "bot_bodyRNfosterParent1";
	rename -uid "76CB03B0-45EA-6E2A-3686-6480655C0801";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape14Deformed" -p "bot_bodyRNfosterParent1";
	rename -uid "AC36D362-4910-28DB-32D4-80959C3FF78B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape14Tag" -p "bot_bodyRNfosterParent1";
	rename -uid "E59878CA-48BA-B881-4EE4-A882100BEEEB";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 4 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "cluster2";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[5]" "f[8]";
	setAttr ".gtag[1].gtagnm" -type "string" "cluster2_1";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 2 "f[5]" "f[8]";
	setAttr ".gtag[2].gtagnm" -type "string" "cluster2_2";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[3]";
	setAttr ".gtag[3].gtagnm" -type "string" "cluster1";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[3]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "pCylinderShape7Deformed" -p "bot_bodyRNfosterParent1";
	rename -uid "C3A9EB0E-486A-E7E7-C973-749B1A96F687";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape16Deformed" -p "bot_bodyRNfosterParent1";
	rename -uid "8EC984F6-4306-6483-7F2F-75BA410D65D5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape16Tag" -p "bot_bodyRNfosterParent1";
	rename -uid "84696584-4BC4-9EC7-7EA8-2F852EBB5E6B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[5]" "f[8]";
	setAttr ".gtag[1].gtagnm" -type "string" "cluster2";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 2 "f[5]" "f[8]";
	setAttr ".gtag[2].gtagnm" -type "string" "cluster2_1";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[3]";
	setAttr ".gtag[3].gtagnm" -type "string" "cluster1_1";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[3]";
	setAttr ".gtag[4].gtagnm" -type "string" "cluster2_2";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[3]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape17Deformed" -p "bot_bodyRNfosterParent1";
	rename -uid "5DB43312-4724-C268-FCF4-C89ED29DC00E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.64945134520530701 0.47554866038262844 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape17Tag" -p "bot_bodyRNfosterParent1";
	rename -uid "F191D20C-4A56-D815-B20E-3AA93459F989";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "cluster3";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[5]" "f[8]";
	setAttr ".gtag[1].gtagnm" -type "string" "cluster1";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "vtx[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "cluster2";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[6]";
	setAttr ".gtag[3].gtagnm" -type "string" "cluster1_1";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[10]";
	setAttr ".gtag[4].gtagnm" -type "string" "cluster1_2";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[6]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "pCylinder29ShapeTag" -p "bot_bodyRNfosterParent1";
	rename -uid "E5CC6728-4369-8CA8-E19C-B38577591698";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "cluster7";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[60:69]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "pCylinder29ShapeDeformed" -p "bot_bodyRNfosterParent1";
	rename -uid "D5C0937D-4490-6F31-30B7-7DB97DFCB180";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "pCylinder28ShapeTag" -p "bot_bodyRNfosterParent1";
	rename -uid "47CD37EF-45A4-3C3C-624D-47B80AD69A18";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "cluster5";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[60:69]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "pCylinder28ShapeDeformed" -p "bot_bodyRNfosterParent1";
	rename -uid "BFC9D9D7-4C00-A869-8576-C39426226771";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "pCylinder27ShapeTag" -p "bot_bodyRNfosterParent1";
	rename -uid "B099CA7B-4325-32AC-776C-9C8261A62311";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "cluster3";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[60:69]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "pCylinder27ShapeDeformed" -p "bot_bodyRNfosterParent1";
	rename -uid "C8839ED5-4597-0E03-4E86-DDA90608F0C6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "pCylinder26ShapeTag" -p "bot_bodyRNfosterParent1";
	rename -uid "886DCF17-4F9F-52C7-E950-5B9C62450EC5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[60:69]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "pCylinder26ShapeDeformed" -p "bot_bodyRNfosterParent1";
	rename -uid "995C3642-4717-5856-CFB7-87A4F805A4C2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "pCylinder25ShapeTag" -p "bot_bodyRNfosterParent1";
	rename -uid "A8AEB5CD-4F4E-FB46-56D8-1EACA30A2A9C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "cluster2";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[50:59]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "pCylinder25ShapeDeformed" -p "bot_bodyRNfosterParent1";
	rename -uid "0002177C-4E11-EDD1-E186-37A0F6C0BD16";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "pCylinder24ShapeTag" -p "bot_bodyRNfosterParent1";
	rename -uid "A43AA5D9-48DB-31FA-2D0C-BCAFE1FE02B7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "cluster4";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[50:59]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "pCylinder24ShapeDeformed" -p "bot_bodyRNfosterParent1";
	rename -uid "68044E48-473E-F201-E99B-E9A243350E69";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "pCylinder23ShapeTag" -p "bot_bodyRNfosterParent1";
	rename -uid "591F04A6-403C-EC40-C7C8-0194441A5FF3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "cluster6";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[50:59]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "pCylinder23ShapeDeformed" -p "bot_bodyRNfosterParent1";
	rename -uid "FE6638A7-44F3-860B-5E56-FCA0429F7C6C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "pCylinder22ShapeTag" -p "bot_bodyRNfosterParent1";
	rename -uid "57208B7E-43E5-00DC-F62F-FCB2971FEA51";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "cluster8";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[50:59]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "pCylinder22ShapeDeformed" -p "bot_bodyRNfosterParent1";
	rename -uid "525A66BE-4F26-CA19-EE16-BEAB2506808B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "pPlane50ShapeTag" -p "bot_bodyRNfosterParent1";
	rename -uid "D594CA94-4F5F-E78F-CA12-23BF951F039E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[3225:3240]";
	setAttr ".gtag[1].gtagnm" -type "string" "cluster3";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 5 "e[360:371]" "e[373]" "e[376]" "e[379]" "e[382]";
	setAttr ".gtag[2].gtagnm" -type "string" "cluster4";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[1317:1332]";
	setAttr ".gtag[3].gtagnm" -type "string" "cluster2";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "e[369]";
	setAttr ".gtag[4].gtagnm" -type "string" "cluster3_1";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "e[2708]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "pPlane50ShapeDeformed" -p "bot_bodyRNfosterParent1";
	rename -uid "A533CD0B-4914-0CA9-8643-0180FDC48AF6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50003057718276978 0.29053211212158203 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 32 ".pt[1894:1925]" -type "float3"  0 6.7055225e-08 -1.7881393e-07 
		1.1920929e-07 2.9802322e-08 5.2154064e-08 4.4703484e-08 0 -1.4901161e-08 2.2351742e-08 
		2.2351742e-08 -1.2665987e-07 7.4505806e-08 1.1920929e-07 5.9604645e-08 1.1920929e-07 
		-2.9802322e-08 2.9802322e-08 -1.1920929e-07 -2.9802322e-08 -1.4901161e-07 5.9604645e-08 
		0 -2.9802322e-08 -5.9604645e-08 -5.9604645e-08 2.9802322e-08 -8.9406967e-08 0 1.7881393e-07 
		-5.9604645e-08 1.4901161e-08 -2.9802322e-08 8.9406967e-08 -7.4505806e-08 -8.9406967e-08 
		1.4901161e-08 -5.5879354e-09 -1.3411045e-07 7.4505806e-09 -7.4505806e-09 -1.1920929e-07 
		3.7252903e-09 4.4703484e-08 2.2351742e-08 3.7252903e-09 -2.9802322e-08 7.4505806e-09 
		-8.1490725e-09 -1.4901161e-08 -2.0675361e-07 -5.4948032e-08 -2.2351742e-08 1.5646219e-07 
		3.7252903e-08 2.9802322e-08 1.4901161e-08 2.9802322e-08 -1.2665987e-07 1.4901161e-08 
		1.4901161e-08 0 -1.0430813e-07 1.6391277e-07 4.4703484e-08 7.4505806e-08 -1.3411045e-07 
		8.9406967e-08 -8.9406967e-08 1.4901161e-08 -2.9802322e-08 2.9802322e-08 -1.4901161e-07 
		8.9406967e-08 8.9406967e-08 -5.9604645e-08 -2.5331974e-07 1.7881393e-07 -7.4505806e-08 
		5.9604645e-08 -2.9802322e-08 1.4901161e-08 -7.4505806e-09 2.9802322e-08 -4.4703484e-08 
		0 -2.0861626e-07 -7.4505806e-08 2.6077032e-08 1.1920929e-07 -3.3527613e-08 -9.3132257e-09 
		1.7136335e-07 2.2351742e-08 7.0780516e-08 7.4505806e-08;
createNode fosterParent -n "fosterParent1" -p "bot_bodyRNfosterParent1";
	rename -uid "A5F8CF73-444E-3B5B-B384-B185C29F3A9A";
createNode mesh -n "pCylinder29ShapeTag" -p "fosterParent1";
	rename -uid "2172CE74-4DC1-D3E8-4FEC-E39CD82B16CC";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "cluster8";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[60:69]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode fosterParent -n "fosterParent2" -p "bot_bodyRNfosterParent1";
	rename -uid "872A5545-4B9F-AE36-A17C-0DB2C88C5CF7";
createNode mesh -n "pCylinder29ShapeDeformed" -p "fosterParent2";
	rename -uid "ED36E93E-42C8-A7EB-422B-589FA5A5FF2F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode fosterParent -n "fosterParent3" -p "bot_bodyRNfosterParent1";
	rename -uid "2326D43B-4FAF-40B1-480A-B983B6E446AA";
createNode mesh -n "pCylinder28ShapeTag" -p "fosterParent3";
	rename -uid "7E881151-4AFA-9932-9B02-97BC56C86969";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "cluster6";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[60:69]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode fosterParent -n "fosterParent4" -p "bot_bodyRNfosterParent1";
	rename -uid "D88994E5-4322-1D98-77A8-BDB502119C95";
createNode mesh -n "pCylinder28ShapeDeformed" -p "fosterParent4";
	rename -uid "AD451C2B-45BE-437D-D3E7-15894BF9E602";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode fosterParent -n "fosterParent5" -p "bot_bodyRNfosterParent1";
	rename -uid "44517626-433F-90E5-72B9-D8AD67BD0749";
createNode mesh -n "pCylinder27ShapeTag" -p "fosterParent5";
	rename -uid "2ED0808C-40E7-E209-63A7-7EBB38F06381";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[60:69]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode fosterParent -n "fosterParent6" -p "bot_bodyRNfosterParent1";
	rename -uid "8681B02C-4BBC-2B01-7A50-0B9936E6FA04";
createNode mesh -n "pCylinder27ShapeDeformed" -p "fosterParent6";
	rename -uid "F8E63EC4-4A0D-3184-E076-939CCB45FEB0";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode fosterParent -n "fosterParent7" -p "bot_bodyRNfosterParent1";
	rename -uid "C9F76767-4485-AE85-D97E-EFB5081A7189";
createNode mesh -n "pCylinder26ShapeTag" -p "fosterParent7";
	rename -uid "8B577D1C-41CD-E21A-D449-BAA1C339A2D6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "cluster3";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[60:69]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode fosterParent -n "fosterParent8" -p "bot_bodyRNfosterParent1";
	rename -uid "43D49FF6-42FA-66BB-42C6-38B1DD6A1F92";
createNode mesh -n "pCylinder26ShapeDeformed" -p "fosterParent8";
	rename -uid "62257B2D-492C-6316-E362-04AC3BBC8B17";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode fosterParent -n "fosterParent9" -p "bot_bodyRNfosterParent1";
	rename -uid "DE3355E6-4880-37B6-A980-95A9D420E8CE";
createNode mesh -n "pCylinder25ShapeTag" -p "fosterParent9";
	rename -uid "7459C65A-4FE5-3E42-1E78-2B8B82097C61";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "cluster4";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[50:59]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode fosterParent -n "fosterParent10" -p "bot_bodyRNfosterParent1";
	rename -uid "E4F64E00-40FB-AF6D-215F-648918D64C1E";
createNode mesh -n "pCylinder25ShapeDeformed" -p "fosterParent10";
	rename -uid "905A705A-40E6-9266-DA3D-60971493E062";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode fosterParent -n "fosterParent11" -p "bot_bodyRNfosterParent1";
	rename -uid "A0ADD75C-4D83-A2C2-625B-9AA6F7C8982F";
createNode mesh -n "pCylinder24ShapeTag" -p "fosterParent11";
	rename -uid "C661EE7A-43A0-FC4F-5CC3-BD95181353B0";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "cluster2";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[50:59]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode fosterParent -n "fosterParent12" -p "bot_bodyRNfosterParent1";
	rename -uid "D6717DB1-448D-882E-65E4-8180B9BC07E8";
createNode mesh -n "pCylinder24ShapeDeformed" -p "fosterParent12";
	rename -uid "8A354839-4AE7-9C87-62C9-8B87093D699B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode fosterParent -n "fosterParent13" -p "bot_bodyRNfosterParent1";
	rename -uid "C4E3848A-4EFD-68EB-FD3E-89A709B0E979";
createNode mesh -n "pCylinder23ShapeTag" -p "fosterParent13";
	rename -uid "8024739A-4A33-9590-27F0-10874A9D3361";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "cluster5";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[50:59]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode fosterParent -n "fosterParent14" -p "bot_bodyRNfosterParent1";
	rename -uid "F46548AE-419E-240E-0809-208D9DFE44C8";
createNode mesh -n "pCylinder23ShapeDeformed" -p "fosterParent14";
	rename -uid "74C74927-4A38-95D7-ACA4-3385158C3ABA";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode fosterParent -n "fosterParent15" -p "bot_bodyRNfosterParent1";
	rename -uid "239FCB27-498A-D682-B635-4E8BA2994EB2";
createNode mesh -n "pCylinder22ShapeTag" -p "fosterParent15";
	rename -uid "DA8BA160-4647-EDD6-8206-3589C9AEE95B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "cluster7";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[50:59]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode fosterParent -n "fosterParent16" -p "bot_bodyRNfosterParent1";
	rename -uid "20CD42CE-4A4F-9125-7AF8-CF985B8824ED";
createNode mesh -n "pCylinder22ShapeDeformed" -p "fosterParent16";
	rename -uid "0ECD9278-4CE3-8A96-40F9-EFAA5B771E74";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "pCube4ShapeTag" -p "bot_bodyRNfosterParent1";
	rename -uid "C07EBC39-494A-8654-C4A8-5F8B6D8B295E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 4 "e[0]" "e[18]" "e[293]" "e[343]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "pCube4ShapeDeformed" -p "bot_bodyRNfosterParent1";
	rename -uid "F730D5FA-40DB-26FE-BD10-C99B091EF265";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "EyeShapeTag" -p "bot_bodyRNfosterParent1";
	rename -uid "8AB5F68F-4980-60ED-6F08-C995570A2B77";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[360:399]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "EyeShapeDeformed" -p "bot_bodyRNfosterParent1";
	rename -uid "0880354A-4FC1-4376-E271-5887124F02F5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "536B0764-4132-7E23-3B03-349A661B2FF7";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "512A6AF6-45F3-0830-27F2-A689D2C4354D";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "8AB98413-4D1D-7570-705D-4C890EC0A50A";
createNode displayLayerManager -n "layerManager";
	rename -uid "D3CC3ADB-40AC-43D0-68AD-C7A0F26EF73C";
	setAttr ".cdl" 1;
	setAttr -s 2 ".dli[1]"  1;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "FBC8BE84-4E73-02C5-3D67-B79948BE29C3";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "48F970E5-49F0-CA49-8C30-6A95521A45E1";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "0B768C97-4A60-2A48-5D17-E88B49930A33";
	setAttr ".g" yes;
createNode script -n "bot_body:uiConfigurationScriptNode";
	rename -uid "30B9CDF0-436B-C069-F1FB-5C95B52F9EC4";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 1\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 799\n            -height 727\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 1\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 589\n            -height 341\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 1\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 590\n            -height 341\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 1\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1186\n            -height 690\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n"
		+ "            -expandAttribute 0\n            -ufeFilter \"USD\" \"InactivePrims\" -ufeFilterValue 1\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n"
		+ "            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -ufeFilter \"USD\" \"InactivePrims\" -ufeFilterValue 1\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n"
		+ "                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -selectionOrder \"display\" \n                -expandAttribute 1\n                -ufeFilter \"USD\" \"InactivePrims\" -ufeFilterValue 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n"
		+ "            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n"
		+ "                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n"
		+ "                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n"
		+ "\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n"
		+ "                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n"
		+ "                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n"
		+ "                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n"
		+ "                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n"
		+ "                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Top View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"|persp\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 1\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 799\\n    -height 727\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"|persp\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 1\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 799\\n    -height 727\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "bot_body:sceneConfigurationScriptNode";
	rename -uid "A617192F-403F-1CDA-30E7-F3AB184252F4";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 122 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode groupId -n "bot_body:groupId13";
	rename -uid "B849F70B-4228-3D97-F195-D08272ACE1F8";
	setAttr ".ihi" 0;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "9362FD78-47C8-0C25-2513-5CB8CB49B79E";
	addAttr -ci true -sn "ARV_options" -ln "ARV_options" -dt "string";
	setAttr ".version" -type "string" "5.1.2";
createNode polyBevel3 -n "bot_body:polyBevel2";
	rename -uid "AD9A47F3-4ADD-C3E9-CCAA-29B4552FD226";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[24]" "e[27]" "e[32]" "e[35]";
	setAttr ".ix" -type "matrix" 0.031924355438352189 -0.027887914358736225 0.017455335463081357 0
		 0.032900220415810463 0.027060721149295804 -0.016937586635477373 0 3.3636391396702805e-16 0.039205292913939774 0.062637229373539771 0
		 0.83549997210502625 3.5291583215413684 -0.60132500529289246 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 1;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode reference -n "bot_bodyRN";
	rename -uid "EB84F371-465E-3E2D-A07D-688513769661";
	setAttr -s 16 ".fs";
	setAttr -s 24 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"bot_bodyRN"
		"bot_bodyRN" 0
		"bot_bodyRN" 128
		0 "|bot_bodyRNfosterParent1|EyeShapeDeformed" "|bot_body1:Bot_Geo|bot_body1:Head|bot_body1:Eye" 
		"-s -r "
		0 "|bot_bodyRNfosterParent1|EyeShapeTag" "|bot_body1:Bot_Geo|bot_body1:Head|bot_body1:Eye" 
		"-s -r "
		0 "|bot_bodyRNfosterParent1|pCube4ShapeDeformed" "|bot_body1:Bot_Geo|bot_body1:Torso|bot_body1:pCube4" 
		"-s -r "
		0 "|bot_bodyRNfosterParent1|pCube4ShapeTag" "|bot_body1:Bot_Geo|bot_body1:Torso|bot_body1:pCube4" 
		"-s -r "
		0 "|bot_bodyRNfosterParent1|fosterParent16|pCylinder22ShapeDeformed" "|bot_body1:Bot_Geo|bot_body1:L_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder22" 
		"-s -r "
		0 "|bot_bodyRNfosterParent1|fosterParent15|pCylinder22ShapeTag" "|bot_body1:Bot_Geo|bot_body1:L_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder22" 
		"-s -r "
		0 "|bot_bodyRNfosterParent1|fosterParent14|pCylinder23ShapeDeformed" "|bot_body1:Bot_Geo|bot_body1:L_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder23" 
		"-s -r "
		0 "|bot_bodyRNfosterParent1|fosterParent13|pCylinder23ShapeTag" "|bot_body1:Bot_Geo|bot_body1:L_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder23" 
		"-s -r "
		0 "|bot_bodyRNfosterParent1|fosterParent12|pCylinder24ShapeDeformed" "|bot_body1:Bot_Geo|bot_body1:L_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder24" 
		"-s -r "
		0 "|bot_bodyRNfosterParent1|fosterParent11|pCylinder24ShapeTag" "|bot_body1:Bot_Geo|bot_body1:L_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder24" 
		"-s -r "
		0 "|bot_bodyRNfosterParent1|fosterParent10|pCylinder25ShapeDeformed" "|bot_body1:Bot_Geo|bot_body1:L_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder25" 
		"-s -r "
		0 "|bot_bodyRNfosterParent1|fosterParent9|pCylinder25ShapeTag" "|bot_body1:Bot_Geo|bot_body1:L_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder25" 
		"-s -r "
		0 "|bot_bodyRNfosterParent1|fosterParent8|pCylinder26ShapeDeformed" "|bot_body1:Bot_Geo|bot_body1:L_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder26" 
		"-s -r "
		0 "|bot_bodyRNfosterParent1|fosterParent7|pCylinder26ShapeTag" "|bot_body1:Bot_Geo|bot_body1:L_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder26" 
		"-s -r "
		0 "|bot_bodyRNfosterParent1|fosterParent6|pCylinder27ShapeDeformed" "|bot_body1:Bot_Geo|bot_body1:L_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder27" 
		"-s -r "
		0 "|bot_bodyRNfosterParent1|fosterParent5|pCylinder27ShapeTag" "|bot_body1:Bot_Geo|bot_body1:L_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder27" 
		"-s -r "
		0 "|bot_bodyRNfosterParent1|fosterParent4|pCylinder28ShapeDeformed" "|bot_body1:Bot_Geo|bot_body1:L_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder28" 
		"-s -r "
		0 "|bot_bodyRNfosterParent1|fosterParent3|pCylinder28ShapeTag" "|bot_body1:Bot_Geo|bot_body1:L_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder28" 
		"-s -r "
		0 "|bot_bodyRNfosterParent1|fosterParent2|pCylinder29ShapeDeformed" "|bot_body1:Bot_Geo|bot_body1:L_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder29" 
		"-s -r "
		0 "|bot_bodyRNfosterParent1|fosterParent1|pCylinder29ShapeTag" "|bot_body1:Bot_Geo|bot_body1:L_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder29" 
		"-s -r "
		0 "|bot_bodyRNfosterParent1|pPlane50ShapeDeformed" "|bot_body1:Bot_Geo|bot_body1:L_Arm|bot_body1:pPlane50" 
		"-s -r "
		0 "|bot_bodyRNfosterParent1|pPlane50ShapeTag" "|bot_body1:Bot_Geo|bot_body1:L_Arm|bot_body1:pPlane50" 
		"-s -r "
		0 "|bot_bodyRNfosterParent1|pCylinder22ShapeDeformed" "|bot_body1:Bot_Geo|bot_body1:R_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder22" 
		"-s -r "
		0 "|bot_bodyRNfosterParent1|pCylinder22ShapeTag" "|bot_body1:Bot_Geo|bot_body1:R_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder22" 
		"-s -r "
		0 "|bot_bodyRNfosterParent1|pCylinder23ShapeDeformed" "|bot_body1:Bot_Geo|bot_body1:R_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder23" 
		"-s -r "
		0 "|bot_bodyRNfosterParent1|pCylinder23ShapeTag" "|bot_body1:Bot_Geo|bot_body1:R_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder23" 
		"-s -r "
		0 "|bot_bodyRNfosterParent1|pCylinder24ShapeDeformed" "|bot_body1:Bot_Geo|bot_body1:R_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder24" 
		"-s -r "
		0 "|bot_bodyRNfosterParent1|pCylinder24ShapeTag" "|bot_body1:Bot_Geo|bot_body1:R_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder24" 
		"-s -r "
		0 "|bot_bodyRNfosterParent1|pCylinder25ShapeDeformed" "|bot_body1:Bot_Geo|bot_body1:R_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder25" 
		"-s -r "
		0 "|bot_bodyRNfosterParent1|pCylinder25ShapeTag" "|bot_body1:Bot_Geo|bot_body1:R_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder25" 
		"-s -r "
		0 "|bot_bodyRNfosterParent1|pCylinder26ShapeDeformed" "|bot_body1:Bot_Geo|bot_body1:R_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder26" 
		"-s -r "
		0 "|bot_bodyRNfosterParent1|pCylinder26ShapeTag" "|bot_body1:Bot_Geo|bot_body1:R_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder26" 
		"-s -r "
		0 "|bot_bodyRNfosterParent1|pCylinder27ShapeDeformed" "|bot_body1:Bot_Geo|bot_body1:R_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder27" 
		"-s -r "
		0 "|bot_bodyRNfosterParent1|pCylinder27ShapeTag" "|bot_body1:Bot_Geo|bot_body1:R_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder27" 
		"-s -r "
		0 "|bot_bodyRNfosterParent1|pCylinder28ShapeDeformed" "|bot_body1:Bot_Geo|bot_body1:R_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder28" 
		"-s -r "
		0 "|bot_bodyRNfosterParent1|pCylinder28ShapeTag" "|bot_body1:Bot_Geo|bot_body1:R_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder28" 
		"-s -r "
		0 "|bot_bodyRNfosterParent1|pCylinder29ShapeDeformed" "|bot_body1:Bot_Geo|bot_body1:R_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder29" 
		"-s -r "
		0 "|bot_bodyRNfosterParent1|pCylinder29ShapeTag" "|bot_body1:Bot_Geo|bot_body1:R_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder29" 
		"-s -r "
		0 "|bot_bodyRNfosterParent1|polySurfaceShape17Tag" "|bot_body1:Bot_Geo|bot_body1:L_Leg|bot_body1:polySurface9" 
		"-s -r "
		0 "|bot_bodyRNfosterParent1|polySurfaceShape17Deformed" "|bot_body1:Bot_Geo|bot_body1:L_Leg|bot_body1:polySurface9" 
		"-s -r "
		0 "|bot_bodyRNfosterParent1|polySurfaceShape16Tag" "|bot_body1:Bot_Geo|bot_body1:L_Leg|bot_body1:polySurface8" 
		"-s -r "
		0 "|bot_bodyRNfosterParent1|polySurfaceShape16Deformed" "|bot_body1:Bot_Geo|bot_body1:L_Leg|bot_body1:polySurface8" 
		"-s -r "
		0 "|bot_bodyRNfosterParent1|pCylinderShape7Deformed" "|bot_body1:Bot_Geo|bot_body1:L_Leg|bot_body1:pCylinder7" 
		"-s -r "
		0 "|bot_bodyRNfosterParent1|polySurfaceShape14Tag" "|bot_body1:Bot_Geo|bot_body1:L_Leg|bot_body1:polySurface6" 
		"-s -r "
		0 "|bot_bodyRNfosterParent1|polySurfaceShape14Deformed" "|bot_body1:Bot_Geo|bot_body1:L_Leg|bot_body1:polySurface6" 
		"-s -r "
		0 "|bot_bodyRNfosterParent1|pCylinderShape8Deformed" "|bot_body1:Bot_Geo|bot_body1:L_Leg|bot_body1:pCylinder8" 
		"-s -r "
		2 "|bot_body1:Bot_Geo|bot_body1:Head|bot_body1:Lens" "visibility" " 1"
		2 "|bot_body1:Bot_Geo|bot_body1:Head|bot_body1:Head" "visibility" " 1"
		2 "|bot_body1:Bot_Geo|bot_body1:Head|bot_body1:Eye|bot_body1:EyeShape" "intermediateObject" 
		" 1"
		2 "|bot_body1:Bot_Geo|bot_body1:Head|bot_body1:Eye|bot_body1:EyeShape" "uvPivot" 
		" -type \"double2\" 0.49999979138374329 0.50000005960464478"
		2 "|bot_body1:Bot_Geo|bot_body1:Torso" "visibility" " 1"
		2 "|bot_body1:Bot_Geo|bot_body1:Torso|bot_body1:pCube4|bot_body1:pCube4Shape" 
		"intermediateObject" " 1"
		2 "|bot_body1:Bot_Geo|bot_body1:Torso|bot_body1:pCube4|bot_body1:pCube4Shape" 
		"uvPivot" " -type \"double2\" 0.5 0.375"
		2 "|bot_body1:Bot_Geo|bot_body1:Torso|bot_body1:Hip_Armor" "visibility" " 1"
		
		2 "|bot_body1:Bot_Geo|bot_body1:L_Arm" "visibility" " 1"
		2 "|bot_body1:Bot_Geo|bot_body1:L_Arm|bot_body1:Should_Pistons|bot_body1:L_Shold_Pist_Base" 
		"visibility" " 1"
		2 "|bot_body1:Bot_Geo|bot_body1:L_Arm|bot_body1:Should_Pistons|bot_body1:L_Clav_Pist_Base" 
		"visibility" " 1"
		2 "|bot_body1:Bot_Geo|bot_body1:L_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder22|bot_body1:pCylinder22Shape" 
		"intermediateObject" " 1"
		2 "|bot_body1:Bot_Geo|bot_body1:L_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder22|bot_body1:pCylinder22Shape" 
		"uvPivot" " -type \"double2\" 0.50000005960464478 0.5"
		2 "|bot_body1:Bot_Geo|bot_body1:L_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder23|bot_body1:pCylinder23Shape" 
		"intermediateObject" " 1"
		2 "|bot_body1:Bot_Geo|bot_body1:L_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder23|bot_body1:pCylinder23Shape" 
		"uvPivot" " -type \"double2\" 0.50000005960464478 0.5"
		2 "|bot_body1:Bot_Geo|bot_body1:L_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder24|bot_body1:pCylinder24Shape" 
		"intermediateObject" " 1"
		2 "|bot_body1:Bot_Geo|bot_body1:L_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder25|bot_body1:pCylinder25Shape" 
		"intermediateObject" " 1"
		2 "|bot_body1:Bot_Geo|bot_body1:L_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder25|bot_body1:pCylinder25Shape" 
		"uvPivot" " -type \"double2\" 0.50000005960464478 0.5"
		2 "|bot_body1:Bot_Geo|bot_body1:L_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder26|bot_body1:pCylinder26Shape" 
		"intermediateObject" " 1"
		2 "|bot_body1:Bot_Geo|bot_body1:L_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder26|bot_body1:pCylinder26Shape" 
		"uvPivot" " -type \"double2\" 0.50000005960464478 0.5"
		2 "|bot_body1:Bot_Geo|bot_body1:L_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder27|bot_body1:pCylinder27Shape" 
		"intermediateObject" " 1"
		2 "|bot_body1:Bot_Geo|bot_body1:L_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder28|bot_body1:pCylinder28Shape" 
		"intermediateObject" " 1"
		2 "|bot_body1:Bot_Geo|bot_body1:L_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder28|bot_body1:pCylinder28Shape" 
		"uvPivot" " -type \"double2\" 0.50000005960464478 0.5"
		2 "|bot_body1:Bot_Geo|bot_body1:L_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder29|bot_body1:pCylinder29Shape" 
		"intermediateObject" " 1"
		2 "|bot_body1:Bot_Geo|bot_body1:L_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder29|bot_body1:pCylinder29Shape" 
		"uvPivot" " -type \"double2\" 0.50000005960464478 0.5"
		2 "|bot_body1:Bot_Geo|bot_body1:L_Arm|bot_body1:pPlane50|bot_body1:pPlane50Shape" 
		"intermediateObject" " 1"
		2 "|bot_body1:Bot_Geo|bot_body1:L_Arm|bot_body1:pPlane50|bot_body1:pPlane50Shape" 
		"uvPivot" " -type \"double2\" 0.50016581267118454 0.42667506472207606"
		2 "|bot_body1:Bot_Geo|bot_body1:L_Arm|bot_body1:pPlane41" "visibility" " 1"
		
		2 "|bot_body1:Bot_Geo|bot_body1:R_Arm" "visibility" " 1"
		2 "|bot_body1:Bot_Geo|bot_body1:R_Arm|bot_body1:Should_Pistons" "visibility" 
		" 1"
		2 "|bot_body1:Bot_Geo|bot_body1:R_Arm|bot_body1:Should_Pistons|bot_body1:L_Shold_Pist_Base" 
		"visibility" " 1"
		2 "|bot_body1:Bot_Geo|bot_body1:R_Arm|bot_body1:Should_Pistons|bot_body1:L_Clav_Pist_Base" 
		"visibility" " 1"
		2 "|bot_body1:Bot_Geo|bot_body1:R_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder22|bot_body1:pCylinder22Shape" 
		"intermediateObject" " 1"
		2 "|bot_body1:Bot_Geo|bot_body1:R_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder22|bot_body1:pCylinder22Shape" 
		"uvPivot" " -type \"double2\" 0.50000005960464478 0.5"
		2 "|bot_body1:Bot_Geo|bot_body1:R_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder23|bot_body1:pCylinder23Shape" 
		"intermediateObject" " 1"
		2 "|bot_body1:Bot_Geo|bot_body1:R_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder23|bot_body1:pCylinder23Shape" 
		"uvPivot" " -type \"double2\" 0.50000005960464478 0.5"
		2 "|bot_body1:Bot_Geo|bot_body1:R_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder24|bot_body1:pCylinder24Shape" 
		"intermediateObject" " 1"
		2 "|bot_body1:Bot_Geo|bot_body1:R_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder24|bot_body1:pCylinder24Shape" 
		"uvPivot" " -type \"double2\" 0.50000005960464478 0.5"
		2 "|bot_body1:Bot_Geo|bot_body1:R_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder25|bot_body1:pCylinder25Shape" 
		"intermediateObject" " 1"
		2 "|bot_body1:Bot_Geo|bot_body1:R_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder25|bot_body1:pCylinder25Shape" 
		"uvPivot" " -type \"double2\" 0.50000005960464478 0.5"
		2 "|bot_body1:Bot_Geo|bot_body1:R_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder26|bot_body1:pCylinder26Shape" 
		"intermediateObject" " 1"
		2 "|bot_body1:Bot_Geo|bot_body1:R_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder26|bot_body1:pCylinder26Shape" 
		"uvPivot" " -type \"double2\" 0.50000005960464478 0.5"
		2 "|bot_body1:Bot_Geo|bot_body1:R_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder27|bot_body1:pCylinder27Shape" 
		"intermediateObject" " 1"
		2 "|bot_body1:Bot_Geo|bot_body1:R_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder27|bot_body1:pCylinder27Shape" 
		"uvPivot" " -type \"double2\" 0.50000005960464478 0.5"
		2 "|bot_body1:Bot_Geo|bot_body1:R_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder28|bot_body1:pCylinder28Shape" 
		"intermediateObject" " 1"
		2 "|bot_body1:Bot_Geo|bot_body1:R_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder28|bot_body1:pCylinder28Shape" 
		"uvPivot" " -type \"double2\" 0.50000005960464478 0.5"
		2 "|bot_body1:Bot_Geo|bot_body1:R_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder29|bot_body1:pCylinder29Shape" 
		"intermediateObject" " 1"
		2 "|bot_body1:Bot_Geo|bot_body1:R_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder29|bot_body1:pCylinder29Shape" 
		"uvPivot" " -type \"double2\" 0.50000005960464478 0.5"
		2 "|bot_body1:Bot_Geo|bot_body1:R_Arm|bot_body1:pPlane41" "visibility" " 1"
		
		2 "|bot_body1:Bot_Geo|bot_body1:R_Arm|bot_body1:Shoulder_clav" "visibility" 
		" 1"
		2 "|bot_body1:Bot_Geo|bot_body1:L_Leg|bot_body1:polySurface9|bot_body1:polySurfaceShape17" 
		"intermediateObject" " 1"
		2 "|bot_body1:Bot_Geo|bot_body1:L_Leg|bot_body1:polySurface8|bot_body1:polySurfaceShape16" 
		"intermediateObject" " 1"
		2 "|bot_body1:Bot_Geo|bot_body1:L_Leg|bot_body1:pCylinder7|bot_body1:pCylinderShape7" 
		"intermediateObject" " 1"
		2 "|bot_body1:Bot_Geo|bot_body1:L_Leg|bot_body1:polySurface6|bot_body1:polySurfaceShape14" 
		"intermediateObject" " 1"
		2 "|bot_body1:Bot_Geo|bot_body1:L_Leg|bot_body1:pCylinder8|bot_body1:pCylinderShape8" 
		"intermediateObject" " 1"
		2 "|bot_body1:Bot_Geo|bot_body1:L_Leg|bot_body1:pPlane45" "rotate" " -type \"double3\" 0 0 0"
		
		2 "bot_body1:Geo_Layer" "displayType" " 2"
		2 "bot_body1:Geo_Layer" "visibility" " 0"
		5 3 "bot_bodyRN" "|bot_body1:Bot_Geo|bot_body1:Head|bot_body1:Eye|bot_body1:EyeShape.worldMesh" 
		"bot_bodyRN.placeHolderList[1]" ""
		5 3 "bot_bodyRN" "|bot_body1:Bot_Geo|bot_body1:Torso|bot_body1:pCube4|bot_body1:pCube4Shape.worldMesh" 
		"bot_bodyRN.placeHolderList[2]" ""
		5 3 "bot_bodyRN" "|bot_body1:Bot_Geo|bot_body1:L_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder22|bot_body1:pCylinder22Shape.worldMesh" 
		"bot_bodyRN.placeHolderList[3]" ""
		5 3 "bot_bodyRN" "|bot_body1:Bot_Geo|bot_body1:L_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder23|bot_body1:pCylinder23Shape.worldMesh" 
		"bot_bodyRN.placeHolderList[4]" ""
		5 3 "bot_bodyRN" "|bot_body1:Bot_Geo|bot_body1:L_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder24|bot_body1:pCylinder24Shape.worldMesh" 
		"bot_bodyRN.placeHolderList[5]" ""
		5 3 "bot_bodyRN" "|bot_body1:Bot_Geo|bot_body1:L_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder25|bot_body1:pCylinder25Shape.worldMesh" 
		"bot_bodyRN.placeHolderList[6]" ""
		5 3 "bot_bodyRN" "|bot_body1:Bot_Geo|bot_body1:L_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder26|bot_body1:pCylinder26Shape.worldMesh" 
		"bot_bodyRN.placeHolderList[7]" ""
		5 3 "bot_bodyRN" "|bot_body1:Bot_Geo|bot_body1:L_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder27|bot_body1:pCylinder27Shape.worldMesh" 
		"bot_bodyRN.placeHolderList[8]" ""
		5 3 "bot_bodyRN" "|bot_body1:Bot_Geo|bot_body1:L_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder28|bot_body1:pCylinder28Shape.worldMesh" 
		"bot_bodyRN.placeHolderList[9]" ""
		5 3 "bot_bodyRN" "|bot_body1:Bot_Geo|bot_body1:L_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder29|bot_body1:pCylinder29Shape.worldMesh" 
		"bot_bodyRN.placeHolderList[10]" ""
		5 3 "bot_bodyRN" "|bot_body1:Bot_Geo|bot_body1:L_Arm|bot_body1:pPlane50|bot_body1:pPlane50Shape.worldMesh" 
		"bot_bodyRN.placeHolderList[11]" ""
		5 3 "bot_bodyRN" "|bot_body1:Bot_Geo|bot_body1:R_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder22|bot_body1:pCylinder22Shape.worldMesh" 
		"bot_bodyRN.placeHolderList[12]" ""
		5 3 "bot_bodyRN" "|bot_body1:Bot_Geo|bot_body1:R_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder23|bot_body1:pCylinder23Shape.worldMesh" 
		"bot_bodyRN.placeHolderList[13]" ""
		5 3 "bot_bodyRN" "|bot_body1:Bot_Geo|bot_body1:R_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder24|bot_body1:pCylinder24Shape.worldMesh" 
		"bot_bodyRN.placeHolderList[14]" ""
		5 3 "bot_bodyRN" "|bot_body1:Bot_Geo|bot_body1:R_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder25|bot_body1:pCylinder25Shape.worldMesh" 
		"bot_bodyRN.placeHolderList[15]" ""
		5 3 "bot_bodyRN" "|bot_body1:Bot_Geo|bot_body1:R_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder26|bot_body1:pCylinder26Shape.worldMesh" 
		"bot_bodyRN.placeHolderList[16]" ""
		5 3 "bot_bodyRN" "|bot_body1:Bot_Geo|bot_body1:R_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder27|bot_body1:pCylinder27Shape.worldMesh" 
		"bot_bodyRN.placeHolderList[17]" ""
		5 3 "bot_bodyRN" "|bot_body1:Bot_Geo|bot_body1:R_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder28|bot_body1:pCylinder28Shape.worldMesh" 
		"bot_bodyRN.placeHolderList[18]" ""
		5 3 "bot_bodyRN" "|bot_body1:Bot_Geo|bot_body1:R_Arm|bot_body1:Should_Pistons|bot_body1:pCylinder29|bot_body1:pCylinder29Shape.worldMesh" 
		"bot_bodyRN.placeHolderList[19]" ""
		5 3 "bot_bodyRN" "|bot_body1:Bot_Geo|bot_body1:L_Leg|bot_body1:polySurface9|bot_body1:polySurfaceShape17.worldMesh" 
		"bot_bodyRN.placeHolderList[20]" ""
		5 3 "bot_bodyRN" "|bot_body1:Bot_Geo|bot_body1:L_Leg|bot_body1:polySurface8|bot_body1:polySurfaceShape16.worldMesh" 
		"bot_bodyRN.placeHolderList[21]" ""
		5 3 "bot_bodyRN" "|bot_body1:Bot_Geo|bot_body1:L_Leg|bot_body1:pCylinder7|bot_body1:pCylinderShape7.worldMesh" 
		"bot_bodyRN.placeHolderList[22]" ""
		5 3 "bot_bodyRN" "|bot_body1:Bot_Geo|bot_body1:L_Leg|bot_body1:polySurface6|bot_body1:polySurfaceShape14.worldMesh" 
		"bot_bodyRN.placeHolderList[23]" ""
		5 3 "bot_bodyRN" "|bot_body1:Bot_Geo|bot_body1:L_Leg|bot_body1:pCylinder8|bot_body1:pCylinderShape8.worldMesh" 
		"bot_bodyRN.placeHolderList[24]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "09A30609-46BF-1B3B-A44D-71B019C09CB5";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "A4A64720-43DD-1D65-4C99-49A8BDA784B0";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "02A0CD6B-44CE-0509-229C-A3BBCCF718BA";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode tweak -n "tweak1";
	rename -uid "7DD9072A-409F-27E8-BCA2-24AC0D3E17BB";
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "5012D47C-428D-19E0-AB85-FDA776312622";
	setAttr ".nr" -type "double3" 1 0 0 ;
createNode displayLayer -n "Bones_Layer";
	rename -uid "0B9A9831-4EB8-D374-2F1B-3797932D7254";
	setAttr ".do" 1;
createNode makeNurbCircle -n "makeNurbCircle2";
	rename -uid "8B8AA07C-4CCA-F4AB-7DD6-1BB4F97DF9B4";
	setAttr ".nr" -type "double3" 1 0 0 ;
createNode makeNurbCircle -n "makeNurbCircle3";
	rename -uid "95494E5C-46C3-F690-A261-F293FEE05730";
	setAttr ".nr" -type "double3" 1 0 0 ;
createNode makeNurbCircle -n "makeNurbCircle4";
	rename -uid "522C738F-4579-B3F1-CBB1-C5B022774EBC";
	setAttr ".nr" -type "double3" 1 0 0 ;
createNode makeNurbCircle -n "makeNurbCircle5";
	rename -uid "02167DFB-4F68-415B-5382-CA82CE4C9EA2";
	setAttr ".nr" -type "double3" 1 0 0 ;
createNode makeNurbCircle -n "makeNurbCircle6";
	rename -uid "C5B75E12-4B99-0294-9053-6591B7C52B54";
	setAttr ".nr" -type "double3" 1 0 0 ;
createNode makeNurbCircle -n "makeNurbCircle7";
	rename -uid "2E4D77DD-44A7-9677-7E17-DF8AEBEEF9A8";
	setAttr ".nr" -type "double3" 1 0 0 ;
createNode makeNurbCircle -n "makeNurbCircle8";
	rename -uid "C5642056-4FD0-DD9C-D50B-DD8F77FD37E7";
	setAttr ".nr" -type "double3" 1 0 0 ;
createNode makeNurbCircle -n "makeNurbCircle9";
	rename -uid "AFCA7AE4-4EE9-46F1-9E6C-CE9ABEEA9E30";
	setAttr ".nr" -type "double3" 1 0 0 ;
createNode makeNurbCircle -n "makeNurbCircle10";
	rename -uid "E4B980BD-42C4-C462-1525-85A94579EF21";
	setAttr ".nr" -type "double3" 1 0 0 ;
createNode makeNurbCircle -n "makeNurbCircle11";
	rename -uid "0E72E5BD-413D-B42B-3800-00943A6CF4A6";
	setAttr ".nr" -type "double3" 1 0 0 ;
createNode makeNurbCircle -n "makeNurbCircle12";
	rename -uid "B29EDCCD-460D-94D7-EFD8-ED85E871579B";
	setAttr ".nr" -type "double3" 1 0 0 ;
createNode makeNurbCircle -n "makeNurbCircle13";
	rename -uid "CB2E6930-4813-1F08-5595-9C853A3FD369";
	setAttr ".nr" -type "double3" 1 0 0 ;
createNode makeNurbCircle -n "makeNurbCircle14";
	rename -uid "46BC4465-4E87-5E59-54FF-2F946283FB4F";
	setAttr ".nr" -type "double3" 1 0 0 ;
createNode makeNurbCircle -n "makeNurbCircle15";
	rename -uid "B763E203-43F3-E0AF-4C86-52AA666B97B8";
	setAttr ".nr" -type "double3" 1 0 0 ;
createNode makeNurbCircle -n "makeNurbCircle16";
	rename -uid "D1B7B411-4E9C-DFA2-504F-5EA6FCAC1D01";
	setAttr ".nr" -type "double3" 1 0 0 ;
createNode makeNurbCircle -n "makeNurbCircle17";
	rename -uid "71CCE66C-4D6A-5D4B-C540-5CBDB2AA0BEC";
	setAttr ".nr" -type "double3" 1 0 0 ;
createNode makeNurbCircle -n "makeNurbCircle18";
	rename -uid "90C982A5-407E-CE9D-DFA6-0F914A3A889B";
	setAttr ".nr" -type "double3" 1 0 0 ;
createNode makeNurbCircle -n "makeNurbCircle19";
	rename -uid "4CDE1CD6-4DAE-DF89-877F-92BA91678D40";
	setAttr ".nr" -type "double3" 1 0 0 ;
createNode makeNurbCircle -n "makeNurbCircle20";
	rename -uid "B14A9064-4D91-DC1D-DF8D-CFB298B1649E";
	setAttr ".nr" -type "double3" 1 0 0 ;
createNode makeNurbCircle -n "makeNurbCircle21";
	rename -uid "20FA9772-4DDD-EFA0-75EC-459EEC117C0B";
	setAttr ".nr" -type "double3" 1 0 0 ;
createNode makeNurbCircle -n "makeNurbCircle22";
	rename -uid "B67541D6-4AF9-ACC8-5F8D-0D9AD47306C6";
	setAttr ".nr" -type "double3" 1 0 0 ;
createNode makeNurbCircle -n "makeNurbCircle23";
	rename -uid "261327AA-435D-B8E5-76F7-728087F11982";
	setAttr ".nr" -type "double3" 1 0 0 ;
createNode makeNurbCircle -n "makeNurbCircle24";
	rename -uid "5A9D48CE-453E-0CFA-4309-1792AB40EDA5";
	setAttr ".nr" -type "double3" 1 0 0 ;
createNode makeNurbCircle -n "makeNurbCircle25";
	rename -uid "1BE38C31-4368-7C13-EE21-7A9507803C59";
	setAttr ".nr" -type "double3" 1 0 0 ;
createNode makeNurbCircle -n "makeNurbCircle26";
	rename -uid "DD52511A-4072-7761-4885-D388DC3B8C4A";
	setAttr ".nr" -type "double3" 1 0 0 ;
createNode makeNurbCircle -n "makeNurbCircle27";
	rename -uid "811C4DA6-4D42-A2B8-CC27-44A113A90053";
	setAttr ".nr" -type "double3" 1 0 0 ;
createNode makeNurbCircle -n "makeNurbCircle28";
	rename -uid "E8489756-4A12-9EA9-C01D-21B6E3EEF6D5";
	setAttr ".nr" -type "double3" 1 0 0 ;
createNode makeNurbCircle -n "makeNurbCircle29";
	rename -uid "63962D08-431A-1E1B-843F-7AB636089A83";
	setAttr ".nr" -type "double3" 1 0 0 ;
createNode reverse -n "L_Pist_Rot_Rev";
	rename -uid "95F41021-44FE-21DF-7AE2-6FA6035B43F9";
createNode unitConversion -n "unitConversion2";
	rename -uid "F8E92689-4818-235B-DAFA-BC8BD8160E76";
	setAttr ".cf" 0.017453292519943295;
createNode reverse -n "R_Pist_Rot_Rev";
	rename -uid "1690F547-4C6D-F603-EB07-92B1AAA97C1A";
createNode unitConversion -n "unitConversion4";
	rename -uid "89D72171-40A9-56CF-FB55-3F9BE9E5D711";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion5";
	rename -uid "F6468DFF-46DB-8DAD-A850-B4A2215C6C15";
	setAttr ".cf" 57.295779513082323;
createNode ikRPsolver -n "ikRPsolver";
	rename -uid "46375290-452F-EE4B-B454-BFAB989DCCDF";
createNode unitConversion -n "unitConversion6";
	rename -uid "B37DEE0B-40FE-449C-DA0B-0A8B654AA69A";
	setAttr ".cf" 57.295779513082323;
createNode makeNurbCircle -n "makeNurbCircle30";
	rename -uid "4586E54C-460F-0645-E65A-739F5C575A73";
	setAttr ".nr" -type "double3" 1 0 0 ;
createNode makeNurbCircle -n "makeNurbCircle31";
	rename -uid "6E882CE3-4B33-314F-FA17-E0A62078F46E";
	setAttr ".nr" -type "double3" 1 0 0 ;
createNode makeNurbCircle -n "makeNurbCircle32";
	rename -uid "CDC8543F-46BB-86C6-191D-928004183CB2";
	setAttr ".nr" -type "double3" 1 0 0 ;
createNode animCurveTU -n "group1_scaleX";
	rename -uid "203B2268-4A63-3345-9FFD-12A6A0C426D6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "group1_scaleY";
	rename -uid "8F31A968-47D0-8667-178B-6BBBE880D92F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "group1_scaleZ";
	rename -uid "9010E5A0-41F6-491A-8E35-DEAA3DB17CA3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode makeNurbCircle -n "makeNurbCircle33";
	rename -uid "EB8FF272-4128-6B40-DB94-90B9E2B0278B";
	setAttr ".nr" -type "double3" 1 0 0 ;
createNode makeNurbCircle -n "makeNurbCircle36";
	rename -uid "AB43706B-49C4-1FBD-EA11-D0938E8DD9C2";
	setAttr ".nr" -type "double3" 1 0 0 ;
createNode plusMinusAverage -n "L_IK_Total_Len_PMA";
	rename -uid "9BA8228E-47E8-82D4-0544-F581114837DC";
	setAttr -s 3 ".i1[0:2]"  0 0 0;
createNode plusMinusAverage -n "L_IK_Trgt_Len_PMA";
	rename -uid "9CBF43AA-47EA-285A-A34B-7AAC8D9908EE";
	setAttr -s 2 ".i1[0:1]"  0 0;
createNode multiplyDivide -n "L_IK_Len_Ratio_MD";
	rename -uid "D5F17881-4AB8-3B23-F3EF-838B1E702882";
	setAttr ".op" 2;
createNode multiplyDivide -n "L_IK_Leg_PV_02_Follow_Twist_MD";
	rename -uid "9932AE36-4825-A1BA-23A0-4FA0845FA255";
createNode multiplyDivide -n "R_IK_Leg_PV_02_Follow_Twist_MD";
	rename -uid "61220907-4D08-8454-22ED-53B2761D31B3";
createNode reverse -n "L_Arm_IKFKRev";
	rename -uid "2C0E65A2-4F6B-E74F-EE1C-658DB5D6C3DA";
createNode reverse -n "R_Arm_IKFKRev";
	rename -uid "809DA1CB-4E85-1170-CC31-E2A4A031D774";
createNode reverse -n "L_Leg_IKFKRev";
	rename -uid "6D79D45E-4C81-D49C-6877-ACA0134A4886";
createNode reverse -n "R_Leg_IKFKRev";
	rename -uid "64376CAC-4BC3-5DEA-FB52-E6998F39F71E";
createNode animCurveTU -n "group2_scaleX";
	rename -uid "BEA5E163-449D-FAEB-D3F9-C18D1C6C0898";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "group2_scaleY";
	rename -uid "50514ED6-4006-7EC4-B697-4DAA53C45896";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "group2_scaleZ";
	rename -uid "5496B131-4923-8279-04BC-6DA24E4DE144";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "5F7B5428-4C44-71EC-1171-75945915A7EF";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" 2465.888771549478 -2609.0943361401646 ;
	setAttr ".tgi[0].vh" -type "double2" 4569.5367841920897 -1672.6603051958793 ;
	setAttr -s 8 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 3371.159423828125;
	setAttr ".tgi[0].ni[0].y" -868.4100341796875;
	setAttr ".tgi[0].ni[0].nvs" 18306;
	setAttr ".tgi[0].ni[1].x" 3726.139892578125;
	setAttr ".tgi[0].ni[1].y" -1557.67529296875;
	setAttr ".tgi[0].ni[1].nvs" 18306;
	setAttr ".tgi[0].ni[2].x" 4060.41943359375;
	setAttr ".tgi[0].ni[2].y" -1129.0155029296875;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" 4172.5078125;
	setAttr ".tgi[0].ni[3].y" -1808.096923828125;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 2586.2109375;
	setAttr ".tgi[0].ni[4].y" -1862.7802734375;
	setAttr ".tgi[0].ni[4].nvs" 18306;
	setAttr ".tgi[0].ni[5].x" 3113.490478515625;
	setAttr ".tgi[0].ni[5].y" -1565.409912109375;
	setAttr ".tgi[0].ni[5].nvs" 18306;
	setAttr ".tgi[0].ni[6].x" 2727.241943359375;
	setAttr ".tgi[0].ni[6].y" -826.06158447265625;
	setAttr ".tgi[0].ni[6].nvs" 18306;
	setAttr ".tgi[0].ni[7].x" 3729.1826171875;
	setAttr ".tgi[0].ni[7].y" -679.7379150390625;
	setAttr ".tgi[0].ni[7].nvs" 18306;
createNode ikSCsolver -n "ikSCsolver";
	rename -uid "9D9213F4-4E07-2015-FAAA-78B4A8FBFD82";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 11 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :initialShadingGroup;
	setAttr -s 117 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 48 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "bot_bodyRN.phl[1]" "EyeShapeTag.i";
connectAttr "bot_bodyRN.phl[2]" "pCube4ShapeTag.i";
connectAttr "bot_bodyRN.phl[3]" "|bot_bodyRNfosterParent1|fosterParent15|pCylinder22ShapeTag.i"
		;
connectAttr "bot_bodyRN.phl[4]" "|bot_bodyRNfosterParent1|fosterParent13|pCylinder23ShapeTag.i"
		;
connectAttr "bot_bodyRN.phl[5]" "|bot_bodyRNfosterParent1|fosterParent11|pCylinder24ShapeTag.i"
		;
connectAttr "bot_bodyRN.phl[6]" "|bot_bodyRNfosterParent1|fosterParent9|pCylinder25ShapeTag.i"
		;
connectAttr "bot_bodyRN.phl[7]" "|bot_bodyRNfosterParent1|fosterParent7|pCylinder26ShapeTag.i"
		;
connectAttr "bot_bodyRN.phl[8]" "|bot_bodyRNfosterParent1|fosterParent5|pCylinder27ShapeTag.i"
		;
connectAttr "bot_bodyRN.phl[9]" "|bot_bodyRNfosterParent1|fosterParent3|pCylinder28ShapeTag.i"
		;
connectAttr "bot_bodyRN.phl[10]" "|bot_bodyRNfosterParent1|fosterParent1|pCylinder29ShapeTag.i"
		;
connectAttr "bot_bodyRN.phl[11]" "pPlane50ShapeTag.i";
connectAttr "bot_bodyRN.phl[12]" "|bot_bodyRNfosterParent1|pCylinder22ShapeTag.i"
		;
connectAttr "bot_bodyRN.phl[13]" "|bot_bodyRNfosterParent1|pCylinder23ShapeTag.i"
		;
connectAttr "bot_bodyRN.phl[14]" "|bot_bodyRNfosterParent1|pCylinder24ShapeTag.i"
		;
connectAttr "bot_bodyRN.phl[15]" "|bot_bodyRNfosterParent1|pCylinder25ShapeTag.i"
		;
connectAttr "bot_bodyRN.phl[16]" "|bot_bodyRNfosterParent1|pCylinder26ShapeTag.i"
		;
connectAttr "bot_bodyRN.phl[17]" "|bot_bodyRNfosterParent1|pCylinder27ShapeTag.i"
		;
connectAttr "bot_bodyRN.phl[18]" "|bot_bodyRNfosterParent1|pCylinder28ShapeTag.i"
		;
connectAttr "bot_bodyRN.phl[19]" "|bot_bodyRNfosterParent1|pCylinder29ShapeTag.i"
		;
connectAttr "bot_bodyRN.phl[20]" "polySurfaceShape17Tag.i";
connectAttr "bot_bodyRN.phl[21]" "polySurfaceShape16Tag.i";
connectAttr "bot_bodyRN.phl[22]" "pCylinderShape7Deformed.i";
connectAttr "bot_bodyRN.phl[23]" "polySurfaceShape14Tag.i";
connectAttr "bot_bodyRN.phl[24]" "pCylinderShape8Deformed.i";
connectAttr "Bones_Layer.di" "ROOT.do";
connectAttr "ROOT.s" "Cog_Jnt.is";
connectAttr "Bones_Layer.di" "Cog_Jnt.do";
connectAttr "Cog_Jnt_scaleConstraint1.csx" "Cog_Jnt.sx";
connectAttr "Cog_Jnt_scaleConstraint1.csy" "Cog_Jnt.sy";
connectAttr "Cog_Jnt_scaleConstraint1.csz" "Cog_Jnt.sz";
connectAttr "Cog_Jnt_parentConstraint1.ctx" "Cog_Jnt.tx";
connectAttr "Cog_Jnt_parentConstraint1.cty" "Cog_Jnt.ty";
connectAttr "Cog_Jnt_parentConstraint1.ctz" "Cog_Jnt.tz";
connectAttr "Cog_Jnt_parentConstraint1.crx" "Cog_Jnt.rx";
connectAttr "Cog_Jnt_parentConstraint1.cry" "Cog_Jnt.ry";
connectAttr "Cog_Jnt_parentConstraint1.crz" "Cog_Jnt.rz";
connectAttr "Cog_Jnt.s" "Hip_Jnt.is";
connectAttr "Bones_Layer.di" "Hip_Jnt.do";
connectAttr "Hip_Jnt_scaleConstraint1.csx" "Hip_Jnt.sx";
connectAttr "Hip_Jnt_scaleConstraint1.csy" "Hip_Jnt.sy";
connectAttr "Hip_Jnt_scaleConstraint1.csz" "Hip_Jnt.sz";
connectAttr "Hip_Jnt_parentConstraint1.ctx" "Hip_Jnt.tx";
connectAttr "Hip_Jnt_parentConstraint1.cty" "Hip_Jnt.ty";
connectAttr "Hip_Jnt_parentConstraint1.ctz" "Hip_Jnt.tz";
connectAttr "Hip_Jnt_parentConstraint1.crx" "Hip_Jnt.rx";
connectAttr "Hip_Jnt_parentConstraint1.cry" "Hip_Jnt.ry";
connectAttr "Hip_Jnt_parentConstraint1.crz" "Hip_Jnt.rz";
connectAttr "Hip_Jnt.s" "L_FK_Leg_01_Jnt.is";
connectAttr "L_FK_Leg_01_Jnt_scaleConstraint1.csx" "L_FK_Leg_01_Jnt.sx";
connectAttr "L_FK_Leg_01_Jnt_scaleConstraint1.csy" "L_FK_Leg_01_Jnt.sy";
connectAttr "L_FK_Leg_01_Jnt_scaleConstraint1.csz" "L_FK_Leg_01_Jnt.sz";
connectAttr "L_FK_Leg_01_Jnt_parentConstraint1.ctx" "L_FK_Leg_01_Jnt.tx";
connectAttr "L_FK_Leg_01_Jnt_parentConstraint1.cty" "L_FK_Leg_01_Jnt.ty";
connectAttr "L_FK_Leg_01_Jnt_parentConstraint1.ctz" "L_FK_Leg_01_Jnt.tz";
connectAttr "L_FK_Leg_01_Jnt_parentConstraint1.crx" "L_FK_Leg_01_Jnt.rx";
connectAttr "L_FK_Leg_01_Jnt_parentConstraint1.cry" "L_FK_Leg_01_Jnt.ry";
connectAttr "L_FK_Leg_01_Jnt_parentConstraint1.crz" "L_FK_Leg_01_Jnt.rz";
connectAttr "L_FK_Leg_01_Jnt.s" "L_FK_Leg_02_Jnt.is";
connectAttr "L_FK_Leg_02_Jnt_scaleConstraint1.csx" "L_FK_Leg_02_Jnt.sx";
connectAttr "L_FK_Leg_02_Jnt_scaleConstraint1.csy" "L_FK_Leg_02_Jnt.sy";
connectAttr "L_FK_Leg_02_Jnt_scaleConstraint1.csz" "L_FK_Leg_02_Jnt.sz";
connectAttr "L_FK_Leg_02_Jnt_parentConstraint1.ctx" "L_FK_Leg_02_Jnt.tx";
connectAttr "L_FK_Leg_02_Jnt_parentConstraint1.cty" "L_FK_Leg_02_Jnt.ty";
connectAttr "L_FK_Leg_02_Jnt_parentConstraint1.ctz" "L_FK_Leg_02_Jnt.tz";
connectAttr "L_FK_Leg_02_Jnt_parentConstraint1.crx" "L_FK_Leg_02_Jnt.rx";
connectAttr "L_FK_Leg_02_Jnt_parentConstraint1.cry" "L_FK_Leg_02_Jnt.ry";
connectAttr "L_FK_Leg_02_Jnt_parentConstraint1.crz" "L_FK_Leg_02_Jnt.rz";
connectAttr "L_FK_Leg_02_Jnt.s" "L_FK_Leg_03_Jnt.is";
connectAttr "L_FK_Leg_03_Jnt_scaleConstraint1.csx" "L_FK_Leg_03_Jnt.sx";
connectAttr "L_FK_Leg_03_Jnt_scaleConstraint1.csy" "L_FK_Leg_03_Jnt.sy";
connectAttr "L_FK_Leg_03_Jnt_scaleConstraint1.csz" "L_FK_Leg_03_Jnt.sz";
connectAttr "L_FK_Leg_03_Jnt_parentConstraint1.ctx" "L_FK_Leg_03_Jnt.tx";
connectAttr "L_FK_Leg_03_Jnt_parentConstraint1.cty" "L_FK_Leg_03_Jnt.ty";
connectAttr "L_FK_Leg_03_Jnt_parentConstraint1.ctz" "L_FK_Leg_03_Jnt.tz";
connectAttr "L_FK_Leg_03_Jnt_parentConstraint1.crx" "L_FK_Leg_03_Jnt.rx";
connectAttr "L_FK_Leg_03_Jnt_parentConstraint1.cry" "L_FK_Leg_03_Jnt.ry";
connectAttr "L_FK_Leg_03_Jnt_parentConstraint1.crz" "L_FK_Leg_03_Jnt.rz";
connectAttr "L_FK_Leg_03_Jnt.s" "L_FK_Leg_04_Jnt.is";
connectAttr "L_FK_Leg_04_Jnt_parentConstraint1.ctx" "L_FK_Leg_04_Jnt.tx";
connectAttr "L_FK_Leg_04_Jnt_parentConstraint1.cty" "L_FK_Leg_04_Jnt.ty";
connectAttr "L_FK_Leg_04_Jnt_parentConstraint1.ctz" "L_FK_Leg_04_Jnt.tz";
connectAttr "L_FK_Leg_04_Jnt_parentConstraint1.crx" "L_FK_Leg_04_Jnt.rx";
connectAttr "L_FK_Leg_04_Jnt_parentConstraint1.cry" "L_FK_Leg_04_Jnt.ry";
connectAttr "L_FK_Leg_04_Jnt_parentConstraint1.crz" "L_FK_Leg_04_Jnt.rz";
connectAttr "L_FK_Leg_04_Jnt_scaleConstraint1.csx" "L_FK_Leg_04_Jnt.sx";
connectAttr "L_FK_Leg_04_Jnt_scaleConstraint1.csy" "L_FK_Leg_04_Jnt.sy";
connectAttr "L_FK_Leg_04_Jnt_scaleConstraint1.csz" "L_FK_Leg_04_Jnt.sz";
connectAttr "L_FK_Ankle_scaleConstraint1.csx" "L_FK_Ankle.sx";
connectAttr "L_FK_Ankle_scaleConstraint1.csy" "L_FK_Ankle.sy";
connectAttr "L_FK_Ankle_scaleConstraint1.csz" "L_FK_Ankle.sz";
connectAttr "L_FK_Leg_04_Jnt.s" "L_FK_Ankle.is";
connectAttr "L_FK_Ankle_parentConstraint1.ctx" "L_FK_Ankle.tx";
connectAttr "L_FK_Ankle_parentConstraint1.cty" "L_FK_Ankle.ty";
connectAttr "L_FK_Ankle_parentConstraint1.ctz" "L_FK_Ankle.tz";
connectAttr "L_FK_Ankle_parentConstraint1.crx" "L_FK_Ankle.rx";
connectAttr "L_FK_Ankle_parentConstraint1.cry" "L_FK_Ankle.ry";
connectAttr "L_FK_Ankle_parentConstraint1.crz" "L_FK_Ankle.rz";
connectAttr "L_FK_Ankle.s" "L_FK_Toe_1_Jnt.is";
connectAttr "L_FK_Toe_1_Jnt_scaleConstraint1.csx" "L_FK_Toe_1_Jnt.sx";
connectAttr "L_FK_Toe_1_Jnt_scaleConstraint1.csy" "L_FK_Toe_1_Jnt.sy";
connectAttr "L_FK_Toe_1_Jnt_scaleConstraint1.csz" "L_FK_Toe_1_Jnt.sz";
connectAttr "L_FK_Toe_1_Jnt_parentConstraint1.ctx" "L_FK_Toe_1_Jnt.tx";
connectAttr "L_FK_Toe_1_Jnt_parentConstraint1.cty" "L_FK_Toe_1_Jnt.ty";
connectAttr "L_FK_Toe_1_Jnt_parentConstraint1.ctz" "L_FK_Toe_1_Jnt.tz";
connectAttr "L_FK_Toe_1_Jnt_parentConstraint1.crx" "L_FK_Toe_1_Jnt.rx";
connectAttr "L_FK_Toe_1_Jnt_parentConstraint1.cry" "L_FK_Toe_1_Jnt.ry";
connectAttr "L_FK_Toe_1_Jnt_parentConstraint1.crz" "L_FK_Toe_1_Jnt.rz";
connectAttr "L_FK_Toe_1_Jnt.s" "L_FK_Toe_1_Point.is";
connectAttr "L_FK_Toe_1_Jnt.ro" "L_FK_Toe_1_Jnt_parentConstraint1.cro";
connectAttr "L_FK_Toe_1_Jnt.pim" "L_FK_Toe_1_Jnt_parentConstraint1.cpim";
connectAttr "L_FK_Toe_1_Jnt.rp" "L_FK_Toe_1_Jnt_parentConstraint1.crp";
connectAttr "L_FK_Toe_1_Jnt.rpt" "L_FK_Toe_1_Jnt_parentConstraint1.crt";
connectAttr "L_FK_Toe_1_Jnt.jo" "L_FK_Toe_1_Jnt_parentConstraint1.cjo";
connectAttr "L_FK_Toe_02_Ctrl.t" "L_FK_Toe_1_Jnt_parentConstraint1.tg[0].tt";
connectAttr "L_FK_Toe_02_Ctrl.rp" "L_FK_Toe_1_Jnt_parentConstraint1.tg[0].trp";
connectAttr "L_FK_Toe_02_Ctrl.rpt" "L_FK_Toe_1_Jnt_parentConstraint1.tg[0].trt";
connectAttr "L_FK_Toe_02_Ctrl.r" "L_FK_Toe_1_Jnt_parentConstraint1.tg[0].tr";
connectAttr "L_FK_Toe_02_Ctrl.ro" "L_FK_Toe_1_Jnt_parentConstraint1.tg[0].tro";
connectAttr "L_FK_Toe_02_Ctrl.s" "L_FK_Toe_1_Jnt_parentConstraint1.tg[0].ts";
connectAttr "L_FK_Toe_02_Ctrl.pm" "L_FK_Toe_1_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "L_FK_Toe_1_Jnt_parentConstraint1.w0" "L_FK_Toe_1_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_FK_Toe_1_Jnt.ssc" "L_FK_Toe_1_Jnt_scaleConstraint1.tsc";
connectAttr "L_FK_Toe_1_Jnt.pim" "L_FK_Toe_1_Jnt_scaleConstraint1.cpim";
connectAttr "L_FK_Toe_02_Ctrl.s" "L_FK_Toe_1_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "L_FK_Toe_02_Ctrl.pm" "L_FK_Toe_1_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "L_FK_Toe_1_Jnt_scaleConstraint1.w0" "L_FK_Toe_1_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_FK_Ankle.s" "L_FK_Toe_2_Jnt.is";
connectAttr "L_FK_Toe_2_Jnt_scaleConstraint1.csx" "L_FK_Toe_2_Jnt.sx";
connectAttr "L_FK_Toe_2_Jnt_scaleConstraint1.csy" "L_FK_Toe_2_Jnt.sy";
connectAttr "L_FK_Toe_2_Jnt_scaleConstraint1.csz" "L_FK_Toe_2_Jnt.sz";
connectAttr "L_FK_Toe_2_Jnt_parentConstraint1.ctx" "L_FK_Toe_2_Jnt.tx";
connectAttr "L_FK_Toe_2_Jnt_parentConstraint1.cty" "L_FK_Toe_2_Jnt.ty";
connectAttr "L_FK_Toe_2_Jnt_parentConstraint1.ctz" "L_FK_Toe_2_Jnt.tz";
connectAttr "L_FK_Toe_2_Jnt_parentConstraint1.crx" "L_FK_Toe_2_Jnt.rx";
connectAttr "L_FK_Toe_2_Jnt_parentConstraint1.cry" "L_FK_Toe_2_Jnt.ry";
connectAttr "L_FK_Toe_2_Jnt_parentConstraint1.crz" "L_FK_Toe_2_Jnt.rz";
connectAttr "L_FK_Toe_2_Jnt.s" "L_FK_Toe_2_Point.is";
connectAttr "L_FK_Toe_2_Jnt.ro" "L_FK_Toe_2_Jnt_parentConstraint1.cro";
connectAttr "L_FK_Toe_2_Jnt.pim" "L_FK_Toe_2_Jnt_parentConstraint1.cpim";
connectAttr "L_FK_Toe_2_Jnt.rp" "L_FK_Toe_2_Jnt_parentConstraint1.crp";
connectAttr "L_FK_Toe_2_Jnt.rpt" "L_FK_Toe_2_Jnt_parentConstraint1.crt";
connectAttr "L_FK_Toe_2_Jnt.jo" "L_FK_Toe_2_Jnt_parentConstraint1.cjo";
connectAttr "L_FK_Toe_01_Ctrl.t" "L_FK_Toe_2_Jnt_parentConstraint1.tg[0].tt";
connectAttr "L_FK_Toe_01_Ctrl.rp" "L_FK_Toe_2_Jnt_parentConstraint1.tg[0].trp";
connectAttr "L_FK_Toe_01_Ctrl.rpt" "L_FK_Toe_2_Jnt_parentConstraint1.tg[0].trt";
connectAttr "L_FK_Toe_01_Ctrl.r" "L_FK_Toe_2_Jnt_parentConstraint1.tg[0].tr";
connectAttr "L_FK_Toe_01_Ctrl.ro" "L_FK_Toe_2_Jnt_parentConstraint1.tg[0].tro";
connectAttr "L_FK_Toe_01_Ctrl.s" "L_FK_Toe_2_Jnt_parentConstraint1.tg[0].ts";
connectAttr "L_FK_Toe_01_Ctrl.pm" "L_FK_Toe_2_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "L_FK_Toe_2_Jnt_parentConstraint1.w0" "L_FK_Toe_2_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_FK_Toe_2_Jnt.ssc" "L_FK_Toe_2_Jnt_scaleConstraint1.tsc";
connectAttr "L_FK_Toe_2_Jnt.pim" "L_FK_Toe_2_Jnt_scaleConstraint1.cpim";
connectAttr "L_FK_Toe_01_Ctrl.s" "L_FK_Toe_2_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "L_FK_Toe_01_Ctrl.pm" "L_FK_Toe_2_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "L_FK_Toe_2_Jnt_scaleConstraint1.w0" "L_FK_Toe_2_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_FK_Ankle.s" "L_FK_Heel_Jnt.is";
connectAttr "L_FK_Heel_Jnt_scaleConstraint1.csx" "L_FK_Heel_Jnt.sx";
connectAttr "L_FK_Heel_Jnt_scaleConstraint1.csy" "L_FK_Heel_Jnt.sy";
connectAttr "L_FK_Heel_Jnt_scaleConstraint1.csz" "L_FK_Heel_Jnt.sz";
connectAttr "L_FK_Heel_Jnt_parentConstraint1.ctx" "L_FK_Heel_Jnt.tx";
connectAttr "L_FK_Heel_Jnt_parentConstraint1.cty" "L_FK_Heel_Jnt.ty";
connectAttr "L_FK_Heel_Jnt_parentConstraint1.ctz" "L_FK_Heel_Jnt.tz";
connectAttr "L_FK_Heel_Jnt_parentConstraint1.crx" "L_FK_Heel_Jnt.rx";
connectAttr "L_FK_Heel_Jnt_parentConstraint1.cry" "L_FK_Heel_Jnt.ry";
connectAttr "L_FK_Heel_Jnt_parentConstraint1.crz" "L_FK_Heel_Jnt.rz";
connectAttr "L_FK_Heel_Jnt.s" "L_FK_Heel_Point.is";
connectAttr "L_FK_Heel_Jnt.ro" "L_FK_Heel_Jnt_parentConstraint1.cro";
connectAttr "L_FK_Heel_Jnt.pim" "L_FK_Heel_Jnt_parentConstraint1.cpim";
connectAttr "L_FK_Heel_Jnt.rp" "L_FK_Heel_Jnt_parentConstraint1.crp";
connectAttr "L_FK_Heel_Jnt.rpt" "L_FK_Heel_Jnt_parentConstraint1.crt";
connectAttr "L_FK_Heel_Jnt.jo" "L_FK_Heel_Jnt_parentConstraint1.cjo";
connectAttr "L_FK_Toe_03_Ctrl.t" "L_FK_Heel_Jnt_parentConstraint1.tg[0].tt";
connectAttr "L_FK_Toe_03_Ctrl.rp" "L_FK_Heel_Jnt_parentConstraint1.tg[0].trp";
connectAttr "L_FK_Toe_03_Ctrl.rpt" "L_FK_Heel_Jnt_parentConstraint1.tg[0].trt";
connectAttr "L_FK_Toe_03_Ctrl.r" "L_FK_Heel_Jnt_parentConstraint1.tg[0].tr";
connectAttr "L_FK_Toe_03_Ctrl.ro" "L_FK_Heel_Jnt_parentConstraint1.tg[0].tro";
connectAttr "L_FK_Toe_03_Ctrl.s" "L_FK_Heel_Jnt_parentConstraint1.tg[0].ts";
connectAttr "L_FK_Toe_03_Ctrl.pm" "L_FK_Heel_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "L_FK_Heel_Jnt_parentConstraint1.w0" "L_FK_Heel_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_FK_Heel_Jnt.ssc" "L_FK_Heel_Jnt_scaleConstraint1.tsc";
connectAttr "L_FK_Heel_Jnt.pim" "L_FK_Heel_Jnt_scaleConstraint1.cpim";
connectAttr "L_FK_Toe_03_Ctrl.s" "L_FK_Heel_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "L_FK_Toe_03_Ctrl.pm" "L_FK_Heel_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "L_FK_Heel_Jnt_scaleConstraint1.w0" "L_FK_Heel_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_FK_Ankle.ro" "L_FK_Ankle_parentConstraint1.cro";
connectAttr "L_FK_Ankle.pim" "L_FK_Ankle_parentConstraint1.cpim";
connectAttr "L_FK_Ankle.rp" "L_FK_Ankle_parentConstraint1.crp";
connectAttr "L_FK_Ankle.rpt" "L_FK_Ankle_parentConstraint1.crt";
connectAttr "L_FK_Ankle.jo" "L_FK_Ankle_parentConstraint1.cjo";
connectAttr "L_FK_Ankle_Ctrl.t" "L_FK_Ankle_parentConstraint1.tg[0].tt";
connectAttr "L_FK_Ankle_Ctrl.rp" "L_FK_Ankle_parentConstraint1.tg[0].trp";
connectAttr "L_FK_Ankle_Ctrl.rpt" "L_FK_Ankle_parentConstraint1.tg[0].trt";
connectAttr "L_FK_Ankle_Ctrl.r" "L_FK_Ankle_parentConstraint1.tg[0].tr";
connectAttr "L_FK_Ankle_Ctrl.ro" "L_FK_Ankle_parentConstraint1.tg[0].tro";
connectAttr "L_FK_Ankle_Ctrl.s" "L_FK_Ankle_parentConstraint1.tg[0].ts";
connectAttr "L_FK_Ankle_Ctrl.pm" "L_FK_Ankle_parentConstraint1.tg[0].tpm";
connectAttr "L_FK_Ankle_parentConstraint1.w0" "L_FK_Ankle_parentConstraint1.tg[0].tw"
		;
connectAttr "L_FK_Ankle.ssc" "L_FK_Ankle_scaleConstraint1.tsc";
connectAttr "L_FK_Ankle.pim" "L_FK_Ankle_scaleConstraint1.cpim";
connectAttr "L_FK_Ankle_Ctrl.s" "L_FK_Ankle_scaleConstraint1.tg[0].ts";
connectAttr "L_FK_Ankle_Ctrl.pm" "L_FK_Ankle_scaleConstraint1.tg[0].tpm";
connectAttr "L_FK_Ankle_scaleConstraint1.w0" "L_FK_Ankle_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_FK_Leg_04_Jnt.ro" "L_FK_Leg_04_Jnt_parentConstraint1.cro";
connectAttr "L_FK_Leg_04_Jnt.pim" "L_FK_Leg_04_Jnt_parentConstraint1.cpim";
connectAttr "L_FK_Leg_04_Jnt.rp" "L_FK_Leg_04_Jnt_parentConstraint1.crp";
connectAttr "L_FK_Leg_04_Jnt.rpt" "L_FK_Leg_04_Jnt_parentConstraint1.crt";
connectAttr "L_FK_Leg_04_Jnt.jo" "L_FK_Leg_04_Jnt_parentConstraint1.cjo";
connectAttr "L_FK_Leg_03_Ctrl.t" "L_FK_Leg_04_Jnt_parentConstraint1.tg[0].tt";
connectAttr "L_FK_Leg_03_Ctrl.rp" "L_FK_Leg_04_Jnt_parentConstraint1.tg[0].trp";
connectAttr "L_FK_Leg_03_Ctrl.rpt" "L_FK_Leg_04_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "L_FK_Leg_03_Ctrl.r" "L_FK_Leg_04_Jnt_parentConstraint1.tg[0].tr";
connectAttr "L_FK_Leg_03_Ctrl.ro" "L_FK_Leg_04_Jnt_parentConstraint1.tg[0].tro";
connectAttr "L_FK_Leg_03_Ctrl.s" "L_FK_Leg_04_Jnt_parentConstraint1.tg[0].ts";
connectAttr "L_FK_Leg_03_Ctrl.pm" "L_FK_Leg_04_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "L_FK_Leg_04_Jnt_parentConstraint1.w0" "L_FK_Leg_04_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_FK_Leg_04_Jnt.ssc" "L_FK_Leg_04_Jnt_scaleConstraint1.tsc";
connectAttr "L_FK_Leg_04_Jnt.pim" "L_FK_Leg_04_Jnt_scaleConstraint1.cpim";
connectAttr "L_FK_Leg_03_Ctrl.s" "L_FK_Leg_04_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "L_FK_Leg_03_Ctrl.pm" "L_FK_Leg_04_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "L_FK_Leg_04_Jnt_scaleConstraint1.w0" "L_FK_Leg_04_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_FK_Leg_03_Jnt.ro" "L_FK_Leg_03_Jnt_parentConstraint1.cro";
connectAttr "L_FK_Leg_03_Jnt.pim" "L_FK_Leg_03_Jnt_parentConstraint1.cpim";
connectAttr "L_FK_Leg_03_Jnt.rp" "L_FK_Leg_03_Jnt_parentConstraint1.crp";
connectAttr "L_FK_Leg_03_Jnt.rpt" "L_FK_Leg_03_Jnt_parentConstraint1.crt";
connectAttr "L_FK_Leg_03_Jnt.jo" "L_FK_Leg_03_Jnt_parentConstraint1.cjo";
connectAttr "L_FK_Leg_02_Ctrl.t" "L_FK_Leg_03_Jnt_parentConstraint1.tg[0].tt";
connectAttr "L_FK_Leg_02_Ctrl.rp" "L_FK_Leg_03_Jnt_parentConstraint1.tg[0].trp";
connectAttr "L_FK_Leg_02_Ctrl.rpt" "L_FK_Leg_03_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "L_FK_Leg_02_Ctrl.r" "L_FK_Leg_03_Jnt_parentConstraint1.tg[0].tr";
connectAttr "L_FK_Leg_02_Ctrl.ro" "L_FK_Leg_03_Jnt_parentConstraint1.tg[0].tro";
connectAttr "L_FK_Leg_02_Ctrl.s" "L_FK_Leg_03_Jnt_parentConstraint1.tg[0].ts";
connectAttr "L_FK_Leg_02_Ctrl.pm" "L_FK_Leg_03_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "L_FK_Leg_03_Jnt_parentConstraint1.w0" "L_FK_Leg_03_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_FK_Leg_03_Jnt.ssc" "L_FK_Leg_03_Jnt_scaleConstraint1.tsc";
connectAttr "L_FK_Leg_03_Jnt.pim" "L_FK_Leg_03_Jnt_scaleConstraint1.cpim";
connectAttr "L_FK_Leg_02_Ctrl.s" "L_FK_Leg_03_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "L_FK_Leg_02_Ctrl.pm" "L_FK_Leg_03_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "L_FK_Leg_03_Jnt_scaleConstraint1.w0" "L_FK_Leg_03_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_FK_Leg_02_Jnt.ro" "L_FK_Leg_02_Jnt_parentConstraint1.cro";
connectAttr "L_FK_Leg_02_Jnt.pim" "L_FK_Leg_02_Jnt_parentConstraint1.cpim";
connectAttr "L_FK_Leg_02_Jnt.rp" "L_FK_Leg_02_Jnt_parentConstraint1.crp";
connectAttr "L_FK_Leg_02_Jnt.rpt" "L_FK_Leg_02_Jnt_parentConstraint1.crt";
connectAttr "L_FK_Leg_02_Jnt.jo" "L_FK_Leg_02_Jnt_parentConstraint1.cjo";
connectAttr "L_FK_Leg_01_Ctrl.t" "L_FK_Leg_02_Jnt_parentConstraint1.tg[0].tt";
connectAttr "L_FK_Leg_01_Ctrl.rp" "L_FK_Leg_02_Jnt_parentConstraint1.tg[0].trp";
connectAttr "L_FK_Leg_01_Ctrl.rpt" "L_FK_Leg_02_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "L_FK_Leg_01_Ctrl.r" "L_FK_Leg_02_Jnt_parentConstraint1.tg[0].tr";
connectAttr "L_FK_Leg_01_Ctrl.ro" "L_FK_Leg_02_Jnt_parentConstraint1.tg[0].tro";
connectAttr "L_FK_Leg_01_Ctrl.s" "L_FK_Leg_02_Jnt_parentConstraint1.tg[0].ts";
connectAttr "L_FK_Leg_01_Ctrl.pm" "L_FK_Leg_02_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "L_FK_Leg_02_Jnt_parentConstraint1.w0" "L_FK_Leg_02_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_FK_Leg_02_Jnt.ssc" "L_FK_Leg_02_Jnt_scaleConstraint1.tsc";
connectAttr "L_FK_Leg_02_Jnt.pim" "L_FK_Leg_02_Jnt_scaleConstraint1.cpim";
connectAttr "L_FK_Leg_01_Ctrl.s" "L_FK_Leg_02_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "L_FK_Leg_01_Ctrl.pm" "L_FK_Leg_02_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "L_FK_Leg_02_Jnt_scaleConstraint1.w0" "L_FK_Leg_02_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_FK_Leg_01_Jnt.ro" "L_FK_Leg_01_Jnt_parentConstraint1.cro";
connectAttr "L_FK_Leg_01_Jnt.pim" "L_FK_Leg_01_Jnt_parentConstraint1.cpim";
connectAttr "L_FK_Leg_01_Jnt.rp" "L_FK_Leg_01_Jnt_parentConstraint1.crp";
connectAttr "L_FK_Leg_01_Jnt.rpt" "L_FK_Leg_01_Jnt_parentConstraint1.crt";
connectAttr "L_FK_Leg_01_Jnt.jo" "L_FK_Leg_01_Jnt_parentConstraint1.cjo";
connectAttr "L_FK_Hip_Ctrl.t" "L_FK_Leg_01_Jnt_parentConstraint1.tg[0].tt";
connectAttr "L_FK_Hip_Ctrl.rp" "L_FK_Leg_01_Jnt_parentConstraint1.tg[0].trp";
connectAttr "L_FK_Hip_Ctrl.rpt" "L_FK_Leg_01_Jnt_parentConstraint1.tg[0].trt";
connectAttr "L_FK_Hip_Ctrl.r" "L_FK_Leg_01_Jnt_parentConstraint1.tg[0].tr";
connectAttr "L_FK_Hip_Ctrl.ro" "L_FK_Leg_01_Jnt_parentConstraint1.tg[0].tro";
connectAttr "L_FK_Hip_Ctrl.s" "L_FK_Leg_01_Jnt_parentConstraint1.tg[0].ts";
connectAttr "L_FK_Hip_Ctrl.pm" "L_FK_Leg_01_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "L_FK_Leg_01_Jnt_parentConstraint1.w0" "L_FK_Leg_01_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_FK_Leg_01_Jnt.ssc" "L_FK_Leg_01_Jnt_scaleConstraint1.tsc";
connectAttr "L_FK_Leg_01_Jnt.pim" "L_FK_Leg_01_Jnt_scaleConstraint1.cpim";
connectAttr "L_FK_Hip_Ctrl.s" "L_FK_Leg_01_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "L_FK_Hip_Ctrl.pm" "L_FK_Leg_01_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "L_FK_Leg_01_Jnt_scaleConstraint1.w0" "L_FK_Leg_01_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "Hip_Jnt.s" "L_IK_Leg_01_Jnt.is";
connectAttr "L_IK_Leg_01_Jnt_pointConstraint1.ctx" "L_IK_Leg_01_Jnt.tx";
connectAttr "L_IK_Leg_01_Jnt_pointConstraint1.cty" "L_IK_Leg_01_Jnt.ty";
connectAttr "L_IK_Leg_01_Jnt_pointConstraint1.ctz" "L_IK_Leg_01_Jnt.tz";
connectAttr "L_IK_Leg_01_Jnt.s" "L_IK_Leg_02_Jnt.is";
connectAttr "L_IK_Leg_02_Jnt.s" "L_IK_Leg_03_Jnt.is";
connectAttr "L_IK_Leg_03_Jnt.s" "L_IK_Leg_04_Jnt.is";
connectAttr "L_IK_Leg_04_Jnt_orientConstraint1.crx" "L_IK_Leg_04_Jnt.rx";
connectAttr "L_IK_Leg_04_Jnt_orientConstraint1.cry" "L_IK_Leg_04_Jnt.ry";
connectAttr "L_IK_Leg_04_Jnt_orientConstraint1.crz" "L_IK_Leg_04_Jnt.rz";
connectAttr "Bones_Layer.di" "L_IK_Ankle.do";
connectAttr "L_IK_Leg_04_Jnt.s" "L_IK_Ankle.is";
connectAttr "L_IK_Ankle.s" "L_IK_Toe_1_Jnt.is";
connectAttr "L_IK_Toe_1_Jnt.s" "L_IK_Toe_1_Point.is";
connectAttr "L_IK_Ankle.s" "L_IK_Toe_2_Jnt.is";
connectAttr "L_IK_Toe_2_Jnt.s" "L_IK_Toe_2_Point.is";
connectAttr "L_IK_Ankle.s" "L_IK_Heel_Jnt.is";
connectAttr "L_IK_Heel_Jnt.s" "L_IK_Heel_Point.is";
connectAttr "L_IK_Heel_Point.tx" "effector12.tx";
connectAttr "L_IK_Heel_Point.ty" "effector12.ty";
connectAttr "L_IK_Heel_Point.tz" "effector12.tz";
connectAttr "L_IK_Heel_Point.opm" "effector12.opm";
connectAttr "L_IK_Ankle.s" "L_IK_Toe_1_Rev_IK_Driver.is";
connectAttr "L_IK_Toe_1_Rev_IK_Driver.s" "L_IK_Toe_2_Rev_IK_Driver.is";
connectAttr "L_IK_Toe_2_Rev_IK_Driver.tx" "effector14.tx";
connectAttr "L_IK_Toe_2_Rev_IK_Driver.ty" "effector14.ty";
connectAttr "L_IK_Toe_2_Rev_IK_Driver.tz" "effector14.tz";
connectAttr "L_IK_Toe_2_Rev_IK_Driver.opm" "effector14.opm";
connectAttr "L_IK_Heel_Jnt.tx" "effector11.tx";
connectAttr "L_IK_Heel_Jnt.ty" "effector11.ty";
connectAttr "L_IK_Heel_Jnt.tz" "effector11.tz";
connectAttr "L_IK_Heel_Jnt.opm" "effector11.opm";
connectAttr "L_IK_Toe_1_Rev_IK_Driver.tx" "effector13.tx";
connectAttr "L_IK_Toe_1_Rev_IK_Driver.ty" "effector13.ty";
connectAttr "L_IK_Toe_1_Rev_IK_Driver.tz" "effector13.tz";
connectAttr "L_IK_Toe_1_Rev_IK_Driver.opm" "effector13.opm";
connectAttr "L_IK_Leg_04_Jnt.ro" "L_IK_Leg_04_Jnt_orientConstraint1.cro";
connectAttr "L_IK_Leg_04_Jnt.pim" "L_IK_Leg_04_Jnt_orientConstraint1.cpim";
connectAttr "L_IK_Leg_04_Jnt.jo" "L_IK_Leg_04_Jnt_orientConstraint1.cjo";
connectAttr "L_IK_Leg_04_Jnt.is" "L_IK_Leg_04_Jnt_orientConstraint1.is";
connectAttr "L_Leg_IK_Ctrl.r" "L_IK_Leg_04_Jnt_orientConstraint1.tg[0].tr";
connectAttr "L_Leg_IK_Ctrl.ro" "L_IK_Leg_04_Jnt_orientConstraint1.tg[0].tro";
connectAttr "L_Leg_IK_Ctrl.pm" "L_IK_Leg_04_Jnt_orientConstraint1.tg[0].tpm";
connectAttr "L_IK_Leg_04_Jnt_orientConstraint1.w0" "L_IK_Leg_04_Jnt_orientConstraint1.tg[0].tw"
		;
connectAttr "L_IK_Leg_04_Jnt.tx" "effector4.tx";
connectAttr "L_IK_Leg_04_Jnt.ty" "effector4.ty";
connectAttr "L_IK_Leg_04_Jnt.tz" "effector4.tz";
connectAttr "L_IK_Leg_04_Jnt.opm" "effector4.opm";
connectAttr "L_IK_Leg_03_Jnt.tx" "effector3.tx";
connectAttr "L_IK_Leg_03_Jnt.ty" "effector3.ty";
connectAttr "L_IK_Leg_03_Jnt.tz" "effector3.tz";
connectAttr "L_IK_Leg_03_Jnt.opm" "effector3.opm";
connectAttr "L_IK_Leg_01_Jnt.pim" "L_IK_Leg_01_Jnt_pointConstraint1.cpim";
connectAttr "L_IK_Leg_01_Jnt.rp" "L_IK_Leg_01_Jnt_pointConstraint1.crp";
connectAttr "L_IK_Leg_01_Jnt.rpt" "L_IK_Leg_01_Jnt_pointConstraint1.crt";
connectAttr "L_IK_Leg_01_Ctrl.t" "L_IK_Leg_01_Jnt_pointConstraint1.tg[0].tt";
connectAttr "L_IK_Leg_01_Ctrl.rp" "L_IK_Leg_01_Jnt_pointConstraint1.tg[0].trp";
connectAttr "L_IK_Leg_01_Ctrl.rpt" "L_IK_Leg_01_Jnt_pointConstraint1.tg[0].trt";
connectAttr "L_IK_Leg_01_Ctrl.pm" "L_IK_Leg_01_Jnt_pointConstraint1.tg[0].tpm";
connectAttr "L_IK_Leg_01_Jnt_pointConstraint1.w0" "L_IK_Leg_01_Jnt_pointConstraint1.tg[0].tw"
		;
connectAttr "Hip_Jnt.s" "L_RK_Leg_01_Jnt.is";
connectAttr "L_RK_Leg_01_Jnt_parentConstraint1.ctx" "L_RK_Leg_01_Jnt.tx";
connectAttr "L_RK_Leg_01_Jnt_parentConstraint1.cty" "L_RK_Leg_01_Jnt.ty";
connectAttr "L_RK_Leg_01_Jnt_parentConstraint1.ctz" "L_RK_Leg_01_Jnt.tz";
connectAttr "L_RK_Leg_01_Jnt_parentConstraint1.crx" "L_RK_Leg_01_Jnt.rx";
connectAttr "L_RK_Leg_01_Jnt_parentConstraint1.cry" "L_RK_Leg_01_Jnt.ry";
connectAttr "L_RK_Leg_01_Jnt_parentConstraint1.crz" "L_RK_Leg_01_Jnt.rz";
connectAttr "L_RK_Leg_01_Jnt.s" "L_RK_Leg_02_Jnt.is";
connectAttr "L_RK_Leg_02_Jnt_parentConstraint1.ctx" "L_RK_Leg_02_Jnt.tx";
connectAttr "L_RK_Leg_02_Jnt_parentConstraint1.cty" "L_RK_Leg_02_Jnt.ty";
connectAttr "L_RK_Leg_02_Jnt_parentConstraint1.ctz" "L_RK_Leg_02_Jnt.tz";
connectAttr "L_RK_Leg_02_Jnt_parentConstraint1.crx" "L_RK_Leg_02_Jnt.rx";
connectAttr "L_RK_Leg_02_Jnt_parentConstraint1.cry" "L_RK_Leg_02_Jnt.ry";
connectAttr "L_RK_Leg_02_Jnt_parentConstraint1.crz" "L_RK_Leg_02_Jnt.rz";
connectAttr "L_RK_Leg_02_Jnt.s" "L_RK_Leg_03_Jnt.is";
connectAttr "L_RK_Leg_03_Jnt_parentConstraint1.ctx" "L_RK_Leg_03_Jnt.tx";
connectAttr "L_RK_Leg_03_Jnt_parentConstraint1.cty" "L_RK_Leg_03_Jnt.ty";
connectAttr "L_RK_Leg_03_Jnt_parentConstraint1.ctz" "L_RK_Leg_03_Jnt.tz";
connectAttr "L_RK_Leg_03_Jnt_parentConstraint1.crx" "L_RK_Leg_03_Jnt.rx";
connectAttr "L_RK_Leg_03_Jnt_parentConstraint1.cry" "L_RK_Leg_03_Jnt.ry";
connectAttr "L_RK_Leg_03_Jnt_parentConstraint1.crz" "L_RK_Leg_03_Jnt.rz";
connectAttr "L_RK_Leg_03_Jnt.s" "L_RK_Leg_04_Jnt.is";
connectAttr "L_RK_Leg_04_Jnt_parentConstraint1.ctx" "L_RK_Leg_04_Jnt.tx";
connectAttr "L_RK_Leg_04_Jnt_parentConstraint1.cty" "L_RK_Leg_04_Jnt.ty";
connectAttr "L_RK_Leg_04_Jnt_parentConstraint1.ctz" "L_RK_Leg_04_Jnt.tz";
connectAttr "L_RK_Leg_04_Jnt_parentConstraint1.crx" "L_RK_Leg_04_Jnt.rx";
connectAttr "L_RK_Leg_04_Jnt_parentConstraint1.cry" "L_RK_Leg_04_Jnt.ry";
connectAttr "L_RK_Leg_04_Jnt_parentConstraint1.crz" "L_RK_Leg_04_Jnt.rz";
connectAttr "L_RK_Leg_04_Jnt.ro" "L_RK_Leg_04_Jnt_parentConstraint1.cro";
connectAttr "L_RK_Leg_04_Jnt.pim" "L_RK_Leg_04_Jnt_parentConstraint1.cpim";
connectAttr "L_RK_Leg_04_Jnt.rp" "L_RK_Leg_04_Jnt_parentConstraint1.crp";
connectAttr "L_RK_Leg_04_Jnt.rpt" "L_RK_Leg_04_Jnt_parentConstraint1.crt";
connectAttr "L_RK_Leg_04_Jnt.jo" "L_RK_Leg_04_Jnt_parentConstraint1.cjo";
connectAttr "L_FK_Leg_04_Jnt.t" "L_RK_Leg_04_Jnt_parentConstraint1.tg[0].tt";
connectAttr "L_FK_Leg_04_Jnt.rp" "L_RK_Leg_04_Jnt_parentConstraint1.tg[0].trp";
connectAttr "L_FK_Leg_04_Jnt.rpt" "L_RK_Leg_04_Jnt_parentConstraint1.tg[0].trt";
connectAttr "L_FK_Leg_04_Jnt.r" "L_RK_Leg_04_Jnt_parentConstraint1.tg[0].tr";
connectAttr "L_FK_Leg_04_Jnt.ro" "L_RK_Leg_04_Jnt_parentConstraint1.tg[0].tro";
connectAttr "L_FK_Leg_04_Jnt.s" "L_RK_Leg_04_Jnt_parentConstraint1.tg[0].ts";
connectAttr "L_FK_Leg_04_Jnt.pm" "L_RK_Leg_04_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "L_FK_Leg_04_Jnt.jo" "L_RK_Leg_04_Jnt_parentConstraint1.tg[0].tjo";
connectAttr "L_FK_Leg_04_Jnt.ssc" "L_RK_Leg_04_Jnt_parentConstraint1.tg[0].tsc";
connectAttr "L_FK_Leg_04_Jnt.is" "L_RK_Leg_04_Jnt_parentConstraint1.tg[0].tis";
connectAttr "L_RK_Leg_04_Jnt_parentConstraint1.w0" "L_RK_Leg_04_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_IK_Leg_04_Jnt.t" "L_RK_Leg_04_Jnt_parentConstraint1.tg[1].tt";
connectAttr "L_IK_Leg_04_Jnt.rp" "L_RK_Leg_04_Jnt_parentConstraint1.tg[1].trp";
connectAttr "L_IK_Leg_04_Jnt.rpt" "L_RK_Leg_04_Jnt_parentConstraint1.tg[1].trt";
connectAttr "L_IK_Leg_04_Jnt.r" "L_RK_Leg_04_Jnt_parentConstraint1.tg[1].tr";
connectAttr "L_IK_Leg_04_Jnt.ro" "L_RK_Leg_04_Jnt_parentConstraint1.tg[1].tro";
connectAttr "L_IK_Leg_04_Jnt.s" "L_RK_Leg_04_Jnt_parentConstraint1.tg[1].ts";
connectAttr "L_IK_Leg_04_Jnt.pm" "L_RK_Leg_04_Jnt_parentConstraint1.tg[1].tpm";
connectAttr "L_IK_Leg_04_Jnt.jo" "L_RK_Leg_04_Jnt_parentConstraint1.tg[1].tjo";
connectAttr "L_IK_Leg_04_Jnt.ssc" "L_RK_Leg_04_Jnt_parentConstraint1.tg[1].tsc";
connectAttr "L_IK_Leg_04_Jnt.is" "L_RK_Leg_04_Jnt_parentConstraint1.tg[1].tis";
connectAttr "L_RK_Leg_04_Jnt_parentConstraint1.w1" "L_RK_Leg_04_Jnt_parentConstraint1.tg[1].tw"
		;
connectAttr "Transform_Ctrl.L_Leg_IKFK" "L_RK_Leg_04_Jnt_parentConstraint1.w0";
connectAttr "L_Leg_IKFKRev.ox" "L_RK_Leg_04_Jnt_parentConstraint1.w1";
connectAttr "L_RK_Leg_03_Jnt.ro" "L_RK_Leg_03_Jnt_parentConstraint1.cro";
connectAttr "L_RK_Leg_03_Jnt.pim" "L_RK_Leg_03_Jnt_parentConstraint1.cpim";
connectAttr "L_RK_Leg_03_Jnt.rp" "L_RK_Leg_03_Jnt_parentConstraint1.crp";
connectAttr "L_RK_Leg_03_Jnt.rpt" "L_RK_Leg_03_Jnt_parentConstraint1.crt";
connectAttr "L_RK_Leg_03_Jnt.jo" "L_RK_Leg_03_Jnt_parentConstraint1.cjo";
connectAttr "L_FK_Leg_03_Jnt.t" "L_RK_Leg_03_Jnt_parentConstraint1.tg[0].tt";
connectAttr "L_FK_Leg_03_Jnt.rp" "L_RK_Leg_03_Jnt_parentConstraint1.tg[0].trp";
connectAttr "L_FK_Leg_03_Jnt.rpt" "L_RK_Leg_03_Jnt_parentConstraint1.tg[0].trt";
connectAttr "L_FK_Leg_03_Jnt.r" "L_RK_Leg_03_Jnt_parentConstraint1.tg[0].tr";
connectAttr "L_FK_Leg_03_Jnt.ro" "L_RK_Leg_03_Jnt_parentConstraint1.tg[0].tro";
connectAttr "L_FK_Leg_03_Jnt.s" "L_RK_Leg_03_Jnt_parentConstraint1.tg[0].ts";
connectAttr "L_FK_Leg_03_Jnt.pm" "L_RK_Leg_03_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "L_FK_Leg_03_Jnt.jo" "L_RK_Leg_03_Jnt_parentConstraint1.tg[0].tjo";
connectAttr "L_FK_Leg_03_Jnt.ssc" "L_RK_Leg_03_Jnt_parentConstraint1.tg[0].tsc";
connectAttr "L_FK_Leg_03_Jnt.is" "L_RK_Leg_03_Jnt_parentConstraint1.tg[0].tis";
connectAttr "L_RK_Leg_03_Jnt_parentConstraint1.w0" "L_RK_Leg_03_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_IK_Leg_03_Jnt.t" "L_RK_Leg_03_Jnt_parentConstraint1.tg[1].tt";
connectAttr "L_IK_Leg_03_Jnt.rp" "L_RK_Leg_03_Jnt_parentConstraint1.tg[1].trp";
connectAttr "L_IK_Leg_03_Jnt.rpt" "L_RK_Leg_03_Jnt_parentConstraint1.tg[1].trt";
connectAttr "L_IK_Leg_03_Jnt.r" "L_RK_Leg_03_Jnt_parentConstraint1.tg[1].tr";
connectAttr "L_IK_Leg_03_Jnt.ro" "L_RK_Leg_03_Jnt_parentConstraint1.tg[1].tro";
connectAttr "L_IK_Leg_03_Jnt.s" "L_RK_Leg_03_Jnt_parentConstraint1.tg[1].ts";
connectAttr "L_IK_Leg_03_Jnt.pm" "L_RK_Leg_03_Jnt_parentConstraint1.tg[1].tpm";
connectAttr "L_IK_Leg_03_Jnt.jo" "L_RK_Leg_03_Jnt_parentConstraint1.tg[1].tjo";
connectAttr "L_IK_Leg_03_Jnt.ssc" "L_RK_Leg_03_Jnt_parentConstraint1.tg[1].tsc";
connectAttr "L_IK_Leg_03_Jnt.is" "L_RK_Leg_03_Jnt_parentConstraint1.tg[1].tis";
connectAttr "L_RK_Leg_03_Jnt_parentConstraint1.w1" "L_RK_Leg_03_Jnt_parentConstraint1.tg[1].tw"
		;
connectAttr "Transform_Ctrl.L_Leg_IKFK" "L_RK_Leg_03_Jnt_parentConstraint1.w0";
connectAttr "L_Leg_IKFKRev.ox" "L_RK_Leg_03_Jnt_parentConstraint1.w1";
connectAttr "L_RK_Leg_02_Jnt.ro" "L_RK_Leg_02_Jnt_parentConstraint1.cro";
connectAttr "L_RK_Leg_02_Jnt.pim" "L_RK_Leg_02_Jnt_parentConstraint1.cpim";
connectAttr "L_RK_Leg_02_Jnt.rp" "L_RK_Leg_02_Jnt_parentConstraint1.crp";
connectAttr "L_RK_Leg_02_Jnt.rpt" "L_RK_Leg_02_Jnt_parentConstraint1.crt";
connectAttr "L_RK_Leg_02_Jnt.jo" "L_RK_Leg_02_Jnt_parentConstraint1.cjo";
connectAttr "L_FK_Leg_02_Jnt.t" "L_RK_Leg_02_Jnt_parentConstraint1.tg[0].tt";
connectAttr "L_FK_Leg_02_Jnt.rp" "L_RK_Leg_02_Jnt_parentConstraint1.tg[0].trp";
connectAttr "L_FK_Leg_02_Jnt.rpt" "L_RK_Leg_02_Jnt_parentConstraint1.tg[0].trt";
connectAttr "L_FK_Leg_02_Jnt.r" "L_RK_Leg_02_Jnt_parentConstraint1.tg[0].tr";
connectAttr "L_FK_Leg_02_Jnt.ro" "L_RK_Leg_02_Jnt_parentConstraint1.tg[0].tro";
connectAttr "L_FK_Leg_02_Jnt.s" "L_RK_Leg_02_Jnt_parentConstraint1.tg[0].ts";
connectAttr "L_FK_Leg_02_Jnt.pm" "L_RK_Leg_02_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "L_FK_Leg_02_Jnt.jo" "L_RK_Leg_02_Jnt_parentConstraint1.tg[0].tjo";
connectAttr "L_FK_Leg_02_Jnt.ssc" "L_RK_Leg_02_Jnt_parentConstraint1.tg[0].tsc";
connectAttr "L_FK_Leg_02_Jnt.is" "L_RK_Leg_02_Jnt_parentConstraint1.tg[0].tis";
connectAttr "L_RK_Leg_02_Jnt_parentConstraint1.w0" "L_RK_Leg_02_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_IK_Leg_02_Jnt.t" "L_RK_Leg_02_Jnt_parentConstraint1.tg[1].tt";
connectAttr "L_IK_Leg_02_Jnt.rp" "L_RK_Leg_02_Jnt_parentConstraint1.tg[1].trp";
connectAttr "L_IK_Leg_02_Jnt.rpt" "L_RK_Leg_02_Jnt_parentConstraint1.tg[1].trt";
connectAttr "L_IK_Leg_02_Jnt.r" "L_RK_Leg_02_Jnt_parentConstraint1.tg[1].tr";
connectAttr "L_IK_Leg_02_Jnt.ro" "L_RK_Leg_02_Jnt_parentConstraint1.tg[1].tro";
connectAttr "L_IK_Leg_02_Jnt.s" "L_RK_Leg_02_Jnt_parentConstraint1.tg[1].ts";
connectAttr "L_IK_Leg_02_Jnt.pm" "L_RK_Leg_02_Jnt_parentConstraint1.tg[1].tpm";
connectAttr "L_IK_Leg_02_Jnt.jo" "L_RK_Leg_02_Jnt_parentConstraint1.tg[1].tjo";
connectAttr "L_IK_Leg_02_Jnt.ssc" "L_RK_Leg_02_Jnt_parentConstraint1.tg[1].tsc";
connectAttr "L_IK_Leg_02_Jnt.is" "L_RK_Leg_02_Jnt_parentConstraint1.tg[1].tis";
connectAttr "L_RK_Leg_02_Jnt_parentConstraint1.w1" "L_RK_Leg_02_Jnt_parentConstraint1.tg[1].tw"
		;
connectAttr "Transform_Ctrl.L_Leg_IKFK" "L_RK_Leg_02_Jnt_parentConstraint1.w0";
connectAttr "L_Leg_IKFKRev.ox" "L_RK_Leg_02_Jnt_parentConstraint1.w1";
connectAttr "L_RK_Leg_01_Jnt.ro" "L_RK_Leg_01_Jnt_parentConstraint1.cro";
connectAttr "L_RK_Leg_01_Jnt.pim" "L_RK_Leg_01_Jnt_parentConstraint1.cpim";
connectAttr "L_RK_Leg_01_Jnt.rp" "L_RK_Leg_01_Jnt_parentConstraint1.crp";
connectAttr "L_RK_Leg_01_Jnt.rpt" "L_RK_Leg_01_Jnt_parentConstraint1.crt";
connectAttr "L_RK_Leg_01_Jnt.jo" "L_RK_Leg_01_Jnt_parentConstraint1.cjo";
connectAttr "L_FK_Leg_01_Jnt.t" "L_RK_Leg_01_Jnt_parentConstraint1.tg[0].tt";
connectAttr "L_FK_Leg_01_Jnt.rp" "L_RK_Leg_01_Jnt_parentConstraint1.tg[0].trp";
connectAttr "L_FK_Leg_01_Jnt.rpt" "L_RK_Leg_01_Jnt_parentConstraint1.tg[0].trt";
connectAttr "L_FK_Leg_01_Jnt.r" "L_RK_Leg_01_Jnt_parentConstraint1.tg[0].tr";
connectAttr "L_FK_Leg_01_Jnt.ro" "L_RK_Leg_01_Jnt_parentConstraint1.tg[0].tro";
connectAttr "L_FK_Leg_01_Jnt.s" "L_RK_Leg_01_Jnt_parentConstraint1.tg[0].ts";
connectAttr "L_FK_Leg_01_Jnt.pm" "L_RK_Leg_01_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "L_FK_Leg_01_Jnt.jo" "L_RK_Leg_01_Jnt_parentConstraint1.tg[0].tjo";
connectAttr "L_FK_Leg_01_Jnt.ssc" "L_RK_Leg_01_Jnt_parentConstraint1.tg[0].tsc";
connectAttr "L_FK_Leg_01_Jnt.is" "L_RK_Leg_01_Jnt_parentConstraint1.tg[0].tis";
connectAttr "L_RK_Leg_01_Jnt_parentConstraint1.w0" "L_RK_Leg_01_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_IK_Leg_01_Jnt.t" "L_RK_Leg_01_Jnt_parentConstraint1.tg[1].tt";
connectAttr "L_IK_Leg_01_Jnt.rp" "L_RK_Leg_01_Jnt_parentConstraint1.tg[1].trp";
connectAttr "L_IK_Leg_01_Jnt.rpt" "L_RK_Leg_01_Jnt_parentConstraint1.tg[1].trt";
connectAttr "L_IK_Leg_01_Jnt.r" "L_RK_Leg_01_Jnt_parentConstraint1.tg[1].tr";
connectAttr "L_IK_Leg_01_Jnt.ro" "L_RK_Leg_01_Jnt_parentConstraint1.tg[1].tro";
connectAttr "L_IK_Leg_01_Jnt.s" "L_RK_Leg_01_Jnt_parentConstraint1.tg[1].ts";
connectAttr "L_IK_Leg_01_Jnt.pm" "L_RK_Leg_01_Jnt_parentConstraint1.tg[1].tpm";
connectAttr "L_IK_Leg_01_Jnt.jo" "L_RK_Leg_01_Jnt_parentConstraint1.tg[1].tjo";
connectAttr "L_IK_Leg_01_Jnt.ssc" "L_RK_Leg_01_Jnt_parentConstraint1.tg[1].tsc";
connectAttr "L_IK_Leg_01_Jnt.is" "L_RK_Leg_01_Jnt_parentConstraint1.tg[1].tis";
connectAttr "L_RK_Leg_01_Jnt_parentConstraint1.w1" "L_RK_Leg_01_Jnt_parentConstraint1.tg[1].tw"
		;
connectAttr "Transform_Ctrl.L_Leg_IKFK" "L_RK_Leg_01_Jnt_parentConstraint1.w0";
connectAttr "L_Leg_IKFKRev.ox" "L_RK_Leg_01_Jnt_parentConstraint1.w1";
connectAttr "Hip_Jnt.s" "R_FK_Leg_01_Jnt.is";
connectAttr "R_FK_Leg_01_Jnt_scaleConstraint1.csx" "R_FK_Leg_01_Jnt.sx";
connectAttr "R_FK_Leg_01_Jnt_scaleConstraint1.csy" "R_FK_Leg_01_Jnt.sy";
connectAttr "R_FK_Leg_01_Jnt_scaleConstraint1.csz" "R_FK_Leg_01_Jnt.sz";
connectAttr "R_FK_Leg_01_Jnt_parentConstraint1.ctx" "R_FK_Leg_01_Jnt.tx";
connectAttr "R_FK_Leg_01_Jnt_parentConstraint1.cty" "R_FK_Leg_01_Jnt.ty";
connectAttr "R_FK_Leg_01_Jnt_parentConstraint1.ctz" "R_FK_Leg_01_Jnt.tz";
connectAttr "R_FK_Leg_01_Jnt_parentConstraint1.crx" "R_FK_Leg_01_Jnt.rx";
connectAttr "R_FK_Leg_01_Jnt_parentConstraint1.cry" "R_FK_Leg_01_Jnt.ry";
connectAttr "R_FK_Leg_01_Jnt_parentConstraint1.crz" "R_FK_Leg_01_Jnt.rz";
connectAttr "R_FK_Leg_01_Jnt.s" "R_FK_Leg_02_Jnt.is";
connectAttr "R_FK_Leg_02_Jnt_scaleConstraint1.csx" "R_FK_Leg_02_Jnt.sx";
connectAttr "R_FK_Leg_02_Jnt_scaleConstraint1.csy" "R_FK_Leg_02_Jnt.sy";
connectAttr "R_FK_Leg_02_Jnt_scaleConstraint1.csz" "R_FK_Leg_02_Jnt.sz";
connectAttr "R_FK_Leg_02_Jnt_parentConstraint1.ctx" "R_FK_Leg_02_Jnt.tx";
connectAttr "R_FK_Leg_02_Jnt_parentConstraint1.cty" "R_FK_Leg_02_Jnt.ty";
connectAttr "R_FK_Leg_02_Jnt_parentConstraint1.ctz" "R_FK_Leg_02_Jnt.tz";
connectAttr "R_FK_Leg_02_Jnt_parentConstraint1.crx" "R_FK_Leg_02_Jnt.rx";
connectAttr "R_FK_Leg_02_Jnt_parentConstraint1.cry" "R_FK_Leg_02_Jnt.ry";
connectAttr "R_FK_Leg_02_Jnt_parentConstraint1.crz" "R_FK_Leg_02_Jnt.rz";
connectAttr "R_FK_Leg_02_Jnt.s" "R_FK_Leg_03_Jnt.is";
connectAttr "R_FK_Leg_03_Jnt_scaleConstraint1.csx" "R_FK_Leg_03_Jnt.sx";
connectAttr "R_FK_Leg_03_Jnt_scaleConstraint1.csy" "R_FK_Leg_03_Jnt.sy";
connectAttr "R_FK_Leg_03_Jnt_scaleConstraint1.csz" "R_FK_Leg_03_Jnt.sz";
connectAttr "R_FK_Leg_03_Jnt_parentConstraint1.ctx" "R_FK_Leg_03_Jnt.tx";
connectAttr "R_FK_Leg_03_Jnt_parentConstraint1.cty" "R_FK_Leg_03_Jnt.ty";
connectAttr "R_FK_Leg_03_Jnt_parentConstraint1.ctz" "R_FK_Leg_03_Jnt.tz";
connectAttr "R_FK_Leg_03_Jnt_parentConstraint1.crx" "R_FK_Leg_03_Jnt.rx";
connectAttr "R_FK_Leg_03_Jnt_parentConstraint1.cry" "R_FK_Leg_03_Jnt.ry";
connectAttr "R_FK_Leg_03_Jnt_parentConstraint1.crz" "R_FK_Leg_03_Jnt.rz";
connectAttr "R_FK_Leg_03_Jnt.s" "R_FK_Leg_04_Jnt.is";
connectAttr "R_FK_Leg_04_Jnt_parentConstraint1.ctx" "R_FK_Leg_04_Jnt.tx";
connectAttr "R_FK_Leg_04_Jnt_parentConstraint1.cty" "R_FK_Leg_04_Jnt.ty";
connectAttr "R_FK_Leg_04_Jnt_parentConstraint1.ctz" "R_FK_Leg_04_Jnt.tz";
connectAttr "R_FK_Leg_04_Jnt_parentConstraint1.crx" "R_FK_Leg_04_Jnt.rx";
connectAttr "R_FK_Leg_04_Jnt_parentConstraint1.cry" "R_FK_Leg_04_Jnt.ry";
connectAttr "R_FK_Leg_04_Jnt_parentConstraint1.crz" "R_FK_Leg_04_Jnt.rz";
connectAttr "R_FK_Leg_04_Jnt_scaleConstraint1.csx" "R_FK_Leg_04_Jnt.sx";
connectAttr "R_FK_Leg_04_Jnt_scaleConstraint1.csy" "R_FK_Leg_04_Jnt.sy";
connectAttr "R_FK_Leg_04_Jnt_scaleConstraint1.csz" "R_FK_Leg_04_Jnt.sz";
connectAttr "R_FK_Ankle_scaleConstraint1.csx" "R_FK_Ankle.sx";
connectAttr "R_FK_Ankle_scaleConstraint1.csy" "R_FK_Ankle.sy";
connectAttr "R_FK_Ankle_scaleConstraint1.csz" "R_FK_Ankle.sz";
connectAttr "R_FK_Leg_04_Jnt.s" "R_FK_Ankle.is";
connectAttr "R_FK_Ankle_parentConstraint1.ctx" "R_FK_Ankle.tx";
connectAttr "R_FK_Ankle_parentConstraint1.cty" "R_FK_Ankle.ty";
connectAttr "R_FK_Ankle_parentConstraint1.ctz" "R_FK_Ankle.tz";
connectAttr "R_FK_Ankle_parentConstraint1.crx" "R_FK_Ankle.rx";
connectAttr "R_FK_Ankle_parentConstraint1.cry" "R_FK_Ankle.ry";
connectAttr "R_FK_Ankle_parentConstraint1.crz" "R_FK_Ankle.rz";
connectAttr "R_FK_Ankle.s" "R_FK_Toe_1_Jnt.is";
connectAttr "R_FK_Toe_1_Jnt_scaleConstraint1.csx" "R_FK_Toe_1_Jnt.sx";
connectAttr "R_FK_Toe_1_Jnt_scaleConstraint1.csy" "R_FK_Toe_1_Jnt.sy";
connectAttr "R_FK_Toe_1_Jnt_scaleConstraint1.csz" "R_FK_Toe_1_Jnt.sz";
connectAttr "R_FK_Toe_1_Jnt_parentConstraint1.ctx" "R_FK_Toe_1_Jnt.tx";
connectAttr "R_FK_Toe_1_Jnt_parentConstraint1.cty" "R_FK_Toe_1_Jnt.ty";
connectAttr "R_FK_Toe_1_Jnt_parentConstraint1.ctz" "R_FK_Toe_1_Jnt.tz";
connectAttr "R_FK_Toe_1_Jnt_parentConstraint1.crx" "R_FK_Toe_1_Jnt.rx";
connectAttr "R_FK_Toe_1_Jnt_parentConstraint1.cry" "R_FK_Toe_1_Jnt.ry";
connectAttr "R_FK_Toe_1_Jnt_parentConstraint1.crz" "R_FK_Toe_1_Jnt.rz";
connectAttr "R_FK_Toe_1_Jnt.s" "R_FK_Toe_1_Point.is";
connectAttr "R_FK_Toe_1_Jnt.ro" "R_FK_Toe_1_Jnt_parentConstraint1.cro";
connectAttr "R_FK_Toe_1_Jnt.pim" "R_FK_Toe_1_Jnt_parentConstraint1.cpim";
connectAttr "R_FK_Toe_1_Jnt.rp" "R_FK_Toe_1_Jnt_parentConstraint1.crp";
connectAttr "R_FK_Toe_1_Jnt.rpt" "R_FK_Toe_1_Jnt_parentConstraint1.crt";
connectAttr "R_FK_Toe_1_Jnt.jo" "R_FK_Toe_1_Jnt_parentConstraint1.cjo";
connectAttr "R_FK_Toe_02_Ctrl.t" "R_FK_Toe_1_Jnt_parentConstraint1.tg[0].tt";
connectAttr "R_FK_Toe_02_Ctrl.rp" "R_FK_Toe_1_Jnt_parentConstraint1.tg[0].trp";
connectAttr "R_FK_Toe_02_Ctrl.rpt" "R_FK_Toe_1_Jnt_parentConstraint1.tg[0].trt";
connectAttr "R_FK_Toe_02_Ctrl.r" "R_FK_Toe_1_Jnt_parentConstraint1.tg[0].tr";
connectAttr "R_FK_Toe_02_Ctrl.ro" "R_FK_Toe_1_Jnt_parentConstraint1.tg[0].tro";
connectAttr "R_FK_Toe_02_Ctrl.s" "R_FK_Toe_1_Jnt_parentConstraint1.tg[0].ts";
connectAttr "R_FK_Toe_02_Ctrl.pm" "R_FK_Toe_1_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "R_FK_Toe_1_Jnt_parentConstraint1.w0" "R_FK_Toe_1_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_FK_Toe_1_Jnt.ssc" "R_FK_Toe_1_Jnt_scaleConstraint1.tsc";
connectAttr "R_FK_Toe_1_Jnt.pim" "R_FK_Toe_1_Jnt_scaleConstraint1.cpim";
connectAttr "R_FK_Toe_02_Ctrl.s" "R_FK_Toe_1_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "R_FK_Toe_02_Ctrl.pm" "R_FK_Toe_1_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "R_FK_Toe_1_Jnt_scaleConstraint1.w0" "R_FK_Toe_1_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_FK_Ankle.s" "R_FK_Toe_2_Jnt.is";
connectAttr "R_FK_Toe_2_Jnt_scaleConstraint1.csx" "R_FK_Toe_2_Jnt.sx";
connectAttr "R_FK_Toe_2_Jnt_scaleConstraint1.csy" "R_FK_Toe_2_Jnt.sy";
connectAttr "R_FK_Toe_2_Jnt_scaleConstraint1.csz" "R_FK_Toe_2_Jnt.sz";
connectAttr "R_FK_Toe_2_Jnt_parentConstraint1.ctx" "R_FK_Toe_2_Jnt.tx";
connectAttr "R_FK_Toe_2_Jnt_parentConstraint1.cty" "R_FK_Toe_2_Jnt.ty";
connectAttr "R_FK_Toe_2_Jnt_parentConstraint1.ctz" "R_FK_Toe_2_Jnt.tz";
connectAttr "R_FK_Toe_2_Jnt_parentConstraint1.crx" "R_FK_Toe_2_Jnt.rx";
connectAttr "R_FK_Toe_2_Jnt_parentConstraint1.cry" "R_FK_Toe_2_Jnt.ry";
connectAttr "R_FK_Toe_2_Jnt_parentConstraint1.crz" "R_FK_Toe_2_Jnt.rz";
connectAttr "R_FK_Toe_2_Jnt.s" "R_FK_Toe_2_Point.is";
connectAttr "R_FK_Toe_2_Jnt.ro" "R_FK_Toe_2_Jnt_parentConstraint1.cro";
connectAttr "R_FK_Toe_2_Jnt.pim" "R_FK_Toe_2_Jnt_parentConstraint1.cpim";
connectAttr "R_FK_Toe_2_Jnt.rp" "R_FK_Toe_2_Jnt_parentConstraint1.crp";
connectAttr "R_FK_Toe_2_Jnt.rpt" "R_FK_Toe_2_Jnt_parentConstraint1.crt";
connectAttr "R_FK_Toe_2_Jnt.jo" "R_FK_Toe_2_Jnt_parentConstraint1.cjo";
connectAttr "R_FK_Toe_01_Ctrl.t" "R_FK_Toe_2_Jnt_parentConstraint1.tg[0].tt";
connectAttr "R_FK_Toe_01_Ctrl.rp" "R_FK_Toe_2_Jnt_parentConstraint1.tg[0].trp";
connectAttr "R_FK_Toe_01_Ctrl.rpt" "R_FK_Toe_2_Jnt_parentConstraint1.tg[0].trt";
connectAttr "R_FK_Toe_01_Ctrl.r" "R_FK_Toe_2_Jnt_parentConstraint1.tg[0].tr";
connectAttr "R_FK_Toe_01_Ctrl.ro" "R_FK_Toe_2_Jnt_parentConstraint1.tg[0].tro";
connectAttr "R_FK_Toe_01_Ctrl.s" "R_FK_Toe_2_Jnt_parentConstraint1.tg[0].ts";
connectAttr "R_FK_Toe_01_Ctrl.pm" "R_FK_Toe_2_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "R_FK_Toe_2_Jnt_parentConstraint1.w0" "R_FK_Toe_2_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_FK_Toe_2_Jnt.ssc" "R_FK_Toe_2_Jnt_scaleConstraint1.tsc";
connectAttr "R_FK_Toe_2_Jnt.pim" "R_FK_Toe_2_Jnt_scaleConstraint1.cpim";
connectAttr "R_FK_Toe_01_Ctrl.s" "R_FK_Toe_2_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "R_FK_Toe_01_Ctrl.pm" "R_FK_Toe_2_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "R_FK_Toe_2_Jnt_scaleConstraint1.w0" "R_FK_Toe_2_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_FK_Ankle.s" "R_FK_Heel_Jnt.is";
connectAttr "R_FK_Heel_Jnt_scaleConstraint1.csx" "R_FK_Heel_Jnt.sx";
connectAttr "R_FK_Heel_Jnt_scaleConstraint1.csy" "R_FK_Heel_Jnt.sy";
connectAttr "R_FK_Heel_Jnt_scaleConstraint1.csz" "R_FK_Heel_Jnt.sz";
connectAttr "R_FK_Heel_Jnt_parentConstraint1.ctx" "R_FK_Heel_Jnt.tx";
connectAttr "R_FK_Heel_Jnt_parentConstraint1.cty" "R_FK_Heel_Jnt.ty";
connectAttr "R_FK_Heel_Jnt_parentConstraint1.ctz" "R_FK_Heel_Jnt.tz";
connectAttr "R_FK_Heel_Jnt_parentConstraint1.crx" "R_FK_Heel_Jnt.rx";
connectAttr "R_FK_Heel_Jnt_parentConstraint1.cry" "R_FK_Heel_Jnt.ry";
connectAttr "R_FK_Heel_Jnt_parentConstraint1.crz" "R_FK_Heel_Jnt.rz";
connectAttr "R_FK_Heel_Jnt.s" "R_FK_Heel_Point.is";
connectAttr "R_FK_Heel_Jnt.ro" "R_FK_Heel_Jnt_parentConstraint1.cro";
connectAttr "R_FK_Heel_Jnt.pim" "R_FK_Heel_Jnt_parentConstraint1.cpim";
connectAttr "R_FK_Heel_Jnt.rp" "R_FK_Heel_Jnt_parentConstraint1.crp";
connectAttr "R_FK_Heel_Jnt.rpt" "R_FK_Heel_Jnt_parentConstraint1.crt";
connectAttr "R_FK_Heel_Jnt.jo" "R_FK_Heel_Jnt_parentConstraint1.cjo";
connectAttr "R_FK_Toe_03_Ctrl.t" "R_FK_Heel_Jnt_parentConstraint1.tg[0].tt";
connectAttr "R_FK_Toe_03_Ctrl.rp" "R_FK_Heel_Jnt_parentConstraint1.tg[0].trp";
connectAttr "R_FK_Toe_03_Ctrl.rpt" "R_FK_Heel_Jnt_parentConstraint1.tg[0].trt";
connectAttr "R_FK_Toe_03_Ctrl.r" "R_FK_Heel_Jnt_parentConstraint1.tg[0].tr";
connectAttr "R_FK_Toe_03_Ctrl.ro" "R_FK_Heel_Jnt_parentConstraint1.tg[0].tro";
connectAttr "R_FK_Toe_03_Ctrl.s" "R_FK_Heel_Jnt_parentConstraint1.tg[0].ts";
connectAttr "R_FK_Toe_03_Ctrl.pm" "R_FK_Heel_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "R_FK_Heel_Jnt_parentConstraint1.w0" "R_FK_Heel_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_FK_Heel_Jnt.ssc" "R_FK_Heel_Jnt_scaleConstraint1.tsc";
connectAttr "R_FK_Heel_Jnt.pim" "R_FK_Heel_Jnt_scaleConstraint1.cpim";
connectAttr "R_FK_Toe_03_Ctrl.s" "R_FK_Heel_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "R_FK_Toe_03_Ctrl.pm" "R_FK_Heel_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "R_FK_Heel_Jnt_scaleConstraint1.w0" "R_FK_Heel_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_FK_Ankle.ro" "R_FK_Ankle_parentConstraint1.cro";
connectAttr "R_FK_Ankle.pim" "R_FK_Ankle_parentConstraint1.cpim";
connectAttr "R_FK_Ankle.rp" "R_FK_Ankle_parentConstraint1.crp";
connectAttr "R_FK_Ankle.rpt" "R_FK_Ankle_parentConstraint1.crt";
connectAttr "R_FK_Ankle.jo" "R_FK_Ankle_parentConstraint1.cjo";
connectAttr "R_FK_Ankle_Ctrl.t" "R_FK_Ankle_parentConstraint1.tg[0].tt";
connectAttr "R_FK_Ankle_Ctrl.rp" "R_FK_Ankle_parentConstraint1.tg[0].trp";
connectAttr "R_FK_Ankle_Ctrl.rpt" "R_FK_Ankle_parentConstraint1.tg[0].trt";
connectAttr "R_FK_Ankle_Ctrl.r" "R_FK_Ankle_parentConstraint1.tg[0].tr";
connectAttr "R_FK_Ankle_Ctrl.ro" "R_FK_Ankle_parentConstraint1.tg[0].tro";
connectAttr "R_FK_Ankle_Ctrl.s" "R_FK_Ankle_parentConstraint1.tg[0].ts";
connectAttr "R_FK_Ankle_Ctrl.pm" "R_FK_Ankle_parentConstraint1.tg[0].tpm";
connectAttr "R_FK_Ankle_parentConstraint1.w0" "R_FK_Ankle_parentConstraint1.tg[0].tw"
		;
connectAttr "R_FK_Ankle.ssc" "R_FK_Ankle_scaleConstraint1.tsc";
connectAttr "R_FK_Ankle.pim" "R_FK_Ankle_scaleConstraint1.cpim";
connectAttr "R_FK_Ankle_Ctrl.s" "R_FK_Ankle_scaleConstraint1.tg[0].ts";
connectAttr "R_FK_Ankle_Ctrl.pm" "R_FK_Ankle_scaleConstraint1.tg[0].tpm";
connectAttr "R_FK_Ankle_scaleConstraint1.w0" "R_FK_Ankle_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_FK_Leg_04_Jnt.ro" "R_FK_Leg_04_Jnt_parentConstraint1.cro";
connectAttr "R_FK_Leg_04_Jnt.pim" "R_FK_Leg_04_Jnt_parentConstraint1.cpim";
connectAttr "R_FK_Leg_04_Jnt.rp" "R_FK_Leg_04_Jnt_parentConstraint1.crp";
connectAttr "R_FK_Leg_04_Jnt.rpt" "R_FK_Leg_04_Jnt_parentConstraint1.crt";
connectAttr "R_FK_Leg_04_Jnt.jo" "R_FK_Leg_04_Jnt_parentConstraint1.cjo";
connectAttr "R_FK_Leg_03_Ctrl.t" "R_FK_Leg_04_Jnt_parentConstraint1.tg[0].tt";
connectAttr "R_FK_Leg_03_Ctrl.rp" "R_FK_Leg_04_Jnt_parentConstraint1.tg[0].trp";
connectAttr "R_FK_Leg_03_Ctrl.rpt" "R_FK_Leg_04_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "R_FK_Leg_03_Ctrl.r" "R_FK_Leg_04_Jnt_parentConstraint1.tg[0].tr";
connectAttr "R_FK_Leg_03_Ctrl.ro" "R_FK_Leg_04_Jnt_parentConstraint1.tg[0].tro";
connectAttr "R_FK_Leg_03_Ctrl.s" "R_FK_Leg_04_Jnt_parentConstraint1.tg[0].ts";
connectAttr "R_FK_Leg_03_Ctrl.pm" "R_FK_Leg_04_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "R_FK_Leg_04_Jnt_parentConstraint1.w0" "R_FK_Leg_04_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_FK_Leg_04_Jnt.ssc" "R_FK_Leg_04_Jnt_scaleConstraint1.tsc";
connectAttr "R_FK_Leg_04_Jnt.pim" "R_FK_Leg_04_Jnt_scaleConstraint1.cpim";
connectAttr "R_FK_Leg_03_Ctrl.s" "R_FK_Leg_04_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "R_FK_Leg_03_Ctrl.pm" "R_FK_Leg_04_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "R_FK_Leg_04_Jnt_scaleConstraint1.w0" "R_FK_Leg_04_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_FK_Leg_03_Jnt.ro" "R_FK_Leg_03_Jnt_parentConstraint1.cro";
connectAttr "R_FK_Leg_03_Jnt.pim" "R_FK_Leg_03_Jnt_parentConstraint1.cpim";
connectAttr "R_FK_Leg_03_Jnt.rp" "R_FK_Leg_03_Jnt_parentConstraint1.crp";
connectAttr "R_FK_Leg_03_Jnt.rpt" "R_FK_Leg_03_Jnt_parentConstraint1.crt";
connectAttr "R_FK_Leg_03_Jnt.jo" "R_FK_Leg_03_Jnt_parentConstraint1.cjo";
connectAttr "R_FK_Leg_02_Ctrl.t" "R_FK_Leg_03_Jnt_parentConstraint1.tg[0].tt";
connectAttr "R_FK_Leg_02_Ctrl.rp" "R_FK_Leg_03_Jnt_parentConstraint1.tg[0].trp";
connectAttr "R_FK_Leg_02_Ctrl.rpt" "R_FK_Leg_03_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "R_FK_Leg_02_Ctrl.r" "R_FK_Leg_03_Jnt_parentConstraint1.tg[0].tr";
connectAttr "R_FK_Leg_02_Ctrl.ro" "R_FK_Leg_03_Jnt_parentConstraint1.tg[0].tro";
connectAttr "R_FK_Leg_02_Ctrl.s" "R_FK_Leg_03_Jnt_parentConstraint1.tg[0].ts";
connectAttr "R_FK_Leg_02_Ctrl.pm" "R_FK_Leg_03_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "R_FK_Leg_03_Jnt_parentConstraint1.w0" "R_FK_Leg_03_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_FK_Leg_03_Jnt.ssc" "R_FK_Leg_03_Jnt_scaleConstraint1.tsc";
connectAttr "R_FK_Leg_03_Jnt.pim" "R_FK_Leg_03_Jnt_scaleConstraint1.cpim";
connectAttr "R_FK_Leg_02_Ctrl.s" "R_FK_Leg_03_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "R_FK_Leg_02_Ctrl.pm" "R_FK_Leg_03_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "R_FK_Leg_03_Jnt_scaleConstraint1.w0" "R_FK_Leg_03_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_FK_Leg_02_Jnt.ro" "R_FK_Leg_02_Jnt_parentConstraint1.cro";
connectAttr "R_FK_Leg_02_Jnt.pim" "R_FK_Leg_02_Jnt_parentConstraint1.cpim";
connectAttr "R_FK_Leg_02_Jnt.rp" "R_FK_Leg_02_Jnt_parentConstraint1.crp";
connectAttr "R_FK_Leg_02_Jnt.rpt" "R_FK_Leg_02_Jnt_parentConstraint1.crt";
connectAttr "R_FK_Leg_02_Jnt.jo" "R_FK_Leg_02_Jnt_parentConstraint1.cjo";
connectAttr "R_FK_Leg_01_Ctrl.t" "R_FK_Leg_02_Jnt_parentConstraint1.tg[0].tt";
connectAttr "R_FK_Leg_01_Ctrl.rp" "R_FK_Leg_02_Jnt_parentConstraint1.tg[0].trp";
connectAttr "R_FK_Leg_01_Ctrl.rpt" "R_FK_Leg_02_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "R_FK_Leg_01_Ctrl.r" "R_FK_Leg_02_Jnt_parentConstraint1.tg[0].tr";
connectAttr "R_FK_Leg_01_Ctrl.ro" "R_FK_Leg_02_Jnt_parentConstraint1.tg[0].tro";
connectAttr "R_FK_Leg_01_Ctrl.s" "R_FK_Leg_02_Jnt_parentConstraint1.tg[0].ts";
connectAttr "R_FK_Leg_01_Ctrl.pm" "R_FK_Leg_02_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "R_FK_Leg_02_Jnt_parentConstraint1.w0" "R_FK_Leg_02_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_FK_Leg_02_Jnt.ssc" "R_FK_Leg_02_Jnt_scaleConstraint1.tsc";
connectAttr "R_FK_Leg_02_Jnt.pim" "R_FK_Leg_02_Jnt_scaleConstraint1.cpim";
connectAttr "R_FK_Leg_01_Ctrl.s" "R_FK_Leg_02_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "R_FK_Leg_01_Ctrl.pm" "R_FK_Leg_02_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "R_FK_Leg_02_Jnt_scaleConstraint1.w0" "R_FK_Leg_02_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_FK_Leg_01_Jnt.ro" "R_FK_Leg_01_Jnt_parentConstraint1.cro";
connectAttr "R_FK_Leg_01_Jnt.pim" "R_FK_Leg_01_Jnt_parentConstraint1.cpim";
connectAttr "R_FK_Leg_01_Jnt.rp" "R_FK_Leg_01_Jnt_parentConstraint1.crp";
connectAttr "R_FK_Leg_01_Jnt.rpt" "R_FK_Leg_01_Jnt_parentConstraint1.crt";
connectAttr "R_FK_Leg_01_Jnt.jo" "R_FK_Leg_01_Jnt_parentConstraint1.cjo";
connectAttr "R_FK_Hip_Ctrl.t" "R_FK_Leg_01_Jnt_parentConstraint1.tg[0].tt";
connectAttr "R_FK_Hip_Ctrl.rp" "R_FK_Leg_01_Jnt_parentConstraint1.tg[0].trp";
connectAttr "R_FK_Hip_Ctrl.rpt" "R_FK_Leg_01_Jnt_parentConstraint1.tg[0].trt";
connectAttr "R_FK_Hip_Ctrl.r" "R_FK_Leg_01_Jnt_parentConstraint1.tg[0].tr";
connectAttr "R_FK_Hip_Ctrl.ro" "R_FK_Leg_01_Jnt_parentConstraint1.tg[0].tro";
connectAttr "R_FK_Hip_Ctrl.s" "R_FK_Leg_01_Jnt_parentConstraint1.tg[0].ts";
connectAttr "R_FK_Hip_Ctrl.pm" "R_FK_Leg_01_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "R_FK_Leg_01_Jnt_parentConstraint1.w0" "R_FK_Leg_01_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_FK_Leg_01_Jnt.ssc" "R_FK_Leg_01_Jnt_scaleConstraint1.tsc";
connectAttr "R_FK_Leg_01_Jnt.pim" "R_FK_Leg_01_Jnt_scaleConstraint1.cpim";
connectAttr "R_FK_Hip_Ctrl.s" "R_FK_Leg_01_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "R_FK_Hip_Ctrl.pm" "R_FK_Leg_01_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "R_FK_Leg_01_Jnt_scaleConstraint1.w0" "R_FK_Leg_01_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "Hip_Jnt.s" "R_IK_Leg_01_Jnt.is";
connectAttr "R_IK_Leg_01_Jnt_pointConstraint1.ctx" "R_IK_Leg_01_Jnt.tx";
connectAttr "R_IK_Leg_01_Jnt_pointConstraint1.cty" "R_IK_Leg_01_Jnt.ty";
connectAttr "R_IK_Leg_01_Jnt_pointConstraint1.ctz" "R_IK_Leg_01_Jnt.tz";
connectAttr "R_IK_Leg_01_Jnt.s" "R_IK_Leg_02_Jnt.is";
connectAttr "R_IK_Leg_02_Jnt.s" "R_IK_Leg_03_Jnt.is";
connectAttr "R_IK_Leg_03_Jnt.s" "R_IK_Leg_04_Jnt.is";
connectAttr "Bones_Layer.di" "R_IK_Ankle.do";
connectAttr "R_IK_Leg_04_Jnt.s" "R_IK_Ankle.is";
connectAttr "R_IK_Ankle.s" "R_IK_Toe_1_Jnt.is";
connectAttr "R_IK_Toe_1_Jnt.s" "R_IK_Toe_1_Point.is";
connectAttr "R_IK_Ankle.s" "R_IK_Toe_2_Jnt.is";
connectAttr "R_IK_Toe_2_Jnt.s" "R_IK_Toe_2_Point.is";
connectAttr "R_IK_Ankle.s" "R_IK_Heel_Jnt.is";
connectAttr "R_IK_Heel_Jnt.s" "R_IK_Heel_Point.is";
connectAttr "R_IK_Heel_Point.tx" "effector18.tx";
connectAttr "R_IK_Heel_Point.ty" "effector18.ty";
connectAttr "R_IK_Heel_Point.tz" "effector18.tz";
connectAttr "R_IK_Heel_Point.opm" "effector18.opm";
connectAttr "R_IK_Ankle.s" "|ROOT|Cog_Jnt|Hip_Jnt|R_IK_Leg_01_Jnt|R_IK_Leg_02_Jnt|R_IK_Leg_03_Jnt|R_IK_Leg_04_Jnt|R_IK_Ankle|R_IK_Toe_1_Rev_IK_Driver.is"
		;
connectAttr "|ROOT|Cog_Jnt|Hip_Jnt|R_IK_Leg_01_Jnt|R_IK_Leg_02_Jnt|R_IK_Leg_03_Jnt|R_IK_Leg_04_Jnt|R_IK_Ankle|R_IK_Toe_1_Rev_IK_Driver.s" "|ROOT|Cog_Jnt|Hip_Jnt|R_IK_Leg_01_Jnt|R_IK_Leg_02_Jnt|R_IK_Leg_03_Jnt|R_IK_Leg_04_Jnt|R_IK_Ankle|R_IK_Toe_1_Rev_IK_Driver|R_IK_Toe_1_Rev_IK_Driver.is"
		;
connectAttr "|ROOT|Cog_Jnt|Hip_Jnt|R_IK_Leg_01_Jnt|R_IK_Leg_02_Jnt|R_IK_Leg_03_Jnt|R_IK_Leg_04_Jnt|R_IK_Ankle|R_IK_Toe_1_Rev_IK_Driver|R_IK_Toe_1_Rev_IK_Driver.tx" "effector16.tx"
		;
connectAttr "|ROOT|Cog_Jnt|Hip_Jnt|R_IK_Leg_01_Jnt|R_IK_Leg_02_Jnt|R_IK_Leg_03_Jnt|R_IK_Leg_04_Jnt|R_IK_Ankle|R_IK_Toe_1_Rev_IK_Driver|R_IK_Toe_1_Rev_IK_Driver.ty" "effector16.ty"
		;
connectAttr "|ROOT|Cog_Jnt|Hip_Jnt|R_IK_Leg_01_Jnt|R_IK_Leg_02_Jnt|R_IK_Leg_03_Jnt|R_IK_Leg_04_Jnt|R_IK_Ankle|R_IK_Toe_1_Rev_IK_Driver|R_IK_Toe_1_Rev_IK_Driver.tz" "effector16.tz"
		;
connectAttr "|ROOT|Cog_Jnt|Hip_Jnt|R_IK_Leg_01_Jnt|R_IK_Leg_02_Jnt|R_IK_Leg_03_Jnt|R_IK_Leg_04_Jnt|R_IK_Ankle|R_IK_Toe_1_Rev_IK_Driver|R_IK_Toe_1_Rev_IK_Driver.opm" "effector16.opm"
		;
connectAttr "|ROOT|Cog_Jnt|Hip_Jnt|R_IK_Leg_01_Jnt|R_IK_Leg_02_Jnt|R_IK_Leg_03_Jnt|R_IK_Leg_04_Jnt|R_IK_Ankle|R_IK_Toe_1_Rev_IK_Driver.tx" "effector15.tx"
		;
connectAttr "|ROOT|Cog_Jnt|Hip_Jnt|R_IK_Leg_01_Jnt|R_IK_Leg_02_Jnt|R_IK_Leg_03_Jnt|R_IK_Leg_04_Jnt|R_IK_Ankle|R_IK_Toe_1_Rev_IK_Driver.ty" "effector15.ty"
		;
connectAttr "|ROOT|Cog_Jnt|Hip_Jnt|R_IK_Leg_01_Jnt|R_IK_Leg_02_Jnt|R_IK_Leg_03_Jnt|R_IK_Leg_04_Jnt|R_IK_Ankle|R_IK_Toe_1_Rev_IK_Driver.tz" "effector15.tz"
		;
connectAttr "|ROOT|Cog_Jnt|Hip_Jnt|R_IK_Leg_01_Jnt|R_IK_Leg_02_Jnt|R_IK_Leg_03_Jnt|R_IK_Leg_04_Jnt|R_IK_Ankle|R_IK_Toe_1_Rev_IK_Driver.opm" "effector15.opm"
		;
connectAttr "R_IK_Heel_Jnt.tx" "effector17.tx";
connectAttr "R_IK_Heel_Jnt.ty" "effector17.ty";
connectAttr "R_IK_Heel_Jnt.tz" "effector17.tz";
connectAttr "R_IK_Heel_Jnt.opm" "effector17.opm";
connectAttr "R_IK_Leg_04_Jnt.tx" "effector6.tx";
connectAttr "R_IK_Leg_04_Jnt.ty" "effector6.ty";
connectAttr "R_IK_Leg_04_Jnt.tz" "effector6.tz";
connectAttr "R_IK_Leg_04_Jnt.opm" "effector6.opm";
connectAttr "R_IK_Leg_03_Jnt.tx" "effector5.tx";
connectAttr "R_IK_Leg_03_Jnt.ty" "effector5.ty";
connectAttr "R_IK_Leg_03_Jnt.tz" "effector5.tz";
connectAttr "R_IK_Leg_03_Jnt.opm" "effector5.opm";
connectAttr "R_IK_Leg_01_Jnt.pim" "R_IK_Leg_01_Jnt_pointConstraint1.cpim";
connectAttr "R_IK_Leg_01_Jnt.rp" "R_IK_Leg_01_Jnt_pointConstraint1.crp";
connectAttr "R_IK_Leg_01_Jnt.rpt" "R_IK_Leg_01_Jnt_pointConstraint1.crt";
connectAttr "R_IK_Leg_01_Ctrl.t" "R_IK_Leg_01_Jnt_pointConstraint1.tg[0].tt";
connectAttr "R_IK_Leg_01_Ctrl.rp" "R_IK_Leg_01_Jnt_pointConstraint1.tg[0].trp";
connectAttr "R_IK_Leg_01_Ctrl.rpt" "R_IK_Leg_01_Jnt_pointConstraint1.tg[0].trt";
connectAttr "R_IK_Leg_01_Ctrl.pm" "R_IK_Leg_01_Jnt_pointConstraint1.tg[0].tpm";
connectAttr "R_IK_Leg_01_Jnt_pointConstraint1.w0" "R_IK_Leg_01_Jnt_pointConstraint1.tg[0].tw"
		;
connectAttr "Hip_Jnt.s" "R_RK_Leg_01_Jnt.is";
connectAttr "R_RK_Leg_01_Jnt_parentConstraint1.ctx" "R_RK_Leg_01_Jnt.tx";
connectAttr "R_RK_Leg_01_Jnt_parentConstraint1.cty" "R_RK_Leg_01_Jnt.ty";
connectAttr "R_RK_Leg_01_Jnt_parentConstraint1.ctz" "R_RK_Leg_01_Jnt.tz";
connectAttr "R_RK_Leg_01_Jnt_parentConstraint1.crx" "R_RK_Leg_01_Jnt.rx";
connectAttr "R_RK_Leg_01_Jnt_parentConstraint1.cry" "R_RK_Leg_01_Jnt.ry";
connectAttr "R_RK_Leg_01_Jnt_parentConstraint1.crz" "R_RK_Leg_01_Jnt.rz";
connectAttr "R_RK_Leg_01_Jnt.s" "R_RK_Leg_02_Jnt.is";
connectAttr "R_RK_Leg_02_Jnt_parentConstraint1.ctx" "R_RK_Leg_02_Jnt.tx";
connectAttr "R_RK_Leg_02_Jnt_parentConstraint1.cty" "R_RK_Leg_02_Jnt.ty";
connectAttr "R_RK_Leg_02_Jnt_parentConstraint1.ctz" "R_RK_Leg_02_Jnt.tz";
connectAttr "R_RK_Leg_02_Jnt_parentConstraint1.crx" "R_RK_Leg_02_Jnt.rx";
connectAttr "R_RK_Leg_02_Jnt_parentConstraint1.cry" "R_RK_Leg_02_Jnt.ry";
connectAttr "R_RK_Leg_02_Jnt_parentConstraint1.crz" "R_RK_Leg_02_Jnt.rz";
connectAttr "R_RK_Leg_02_Jnt.s" "R_RK_Leg_03_Jnt.is";
connectAttr "R_RK_Leg_03_Jnt_parentConstraint1.ctx" "R_RK_Leg_03_Jnt.tx";
connectAttr "R_RK_Leg_03_Jnt_parentConstraint1.cty" "R_RK_Leg_03_Jnt.ty";
connectAttr "R_RK_Leg_03_Jnt_parentConstraint1.ctz" "R_RK_Leg_03_Jnt.tz";
connectAttr "R_RK_Leg_03_Jnt_parentConstraint1.crx" "R_RK_Leg_03_Jnt.rx";
connectAttr "R_RK_Leg_03_Jnt_parentConstraint1.cry" "R_RK_Leg_03_Jnt.ry";
connectAttr "R_RK_Leg_03_Jnt_parentConstraint1.crz" "R_RK_Leg_03_Jnt.rz";
connectAttr "R_RK_Leg_03_Jnt.s" "R_RK_Leg_04_Jnt.is";
connectAttr "R_RK_Leg_04_Jnt_parentConstraint1.ctx" "R_RK_Leg_04_Jnt.tx";
connectAttr "R_RK_Leg_04_Jnt_parentConstraint1.cty" "R_RK_Leg_04_Jnt.ty";
connectAttr "R_RK_Leg_04_Jnt_parentConstraint1.ctz" "R_RK_Leg_04_Jnt.tz";
connectAttr "R_RK_Leg_04_Jnt_parentConstraint1.crx" "R_RK_Leg_04_Jnt.rx";
connectAttr "R_RK_Leg_04_Jnt_parentConstraint1.cry" "R_RK_Leg_04_Jnt.ry";
connectAttr "R_RK_Leg_04_Jnt_parentConstraint1.crz" "R_RK_Leg_04_Jnt.rz";
connectAttr "R_RK_Leg_04_Jnt.ro" "R_RK_Leg_04_Jnt_parentConstraint1.cro";
connectAttr "R_RK_Leg_04_Jnt.pim" "R_RK_Leg_04_Jnt_parentConstraint1.cpim";
connectAttr "R_RK_Leg_04_Jnt.rp" "R_RK_Leg_04_Jnt_parentConstraint1.crp";
connectAttr "R_RK_Leg_04_Jnt.rpt" "R_RK_Leg_04_Jnt_parentConstraint1.crt";
connectAttr "R_RK_Leg_04_Jnt.jo" "R_RK_Leg_04_Jnt_parentConstraint1.cjo";
connectAttr "R_FK_Leg_04_Jnt.t" "R_RK_Leg_04_Jnt_parentConstraint1.tg[0].tt";
connectAttr "R_FK_Leg_04_Jnt.rp" "R_RK_Leg_04_Jnt_parentConstraint1.tg[0].trp";
connectAttr "R_FK_Leg_04_Jnt.rpt" "R_RK_Leg_04_Jnt_parentConstraint1.tg[0].trt";
connectAttr "R_FK_Leg_04_Jnt.r" "R_RK_Leg_04_Jnt_parentConstraint1.tg[0].tr";
connectAttr "R_FK_Leg_04_Jnt.ro" "R_RK_Leg_04_Jnt_parentConstraint1.tg[0].tro";
connectAttr "R_FK_Leg_04_Jnt.s" "R_RK_Leg_04_Jnt_parentConstraint1.tg[0].ts";
connectAttr "R_FK_Leg_04_Jnt.pm" "R_RK_Leg_04_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "R_FK_Leg_04_Jnt.jo" "R_RK_Leg_04_Jnt_parentConstraint1.tg[0].tjo";
connectAttr "R_FK_Leg_04_Jnt.ssc" "R_RK_Leg_04_Jnt_parentConstraint1.tg[0].tsc";
connectAttr "R_FK_Leg_04_Jnt.is" "R_RK_Leg_04_Jnt_parentConstraint1.tg[0].tis";
connectAttr "R_RK_Leg_04_Jnt_parentConstraint1.w0" "R_RK_Leg_04_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_IK_Leg_04_Jnt.t" "R_RK_Leg_04_Jnt_parentConstraint1.tg[1].tt";
connectAttr "R_IK_Leg_04_Jnt.rp" "R_RK_Leg_04_Jnt_parentConstraint1.tg[1].trp";
connectAttr "R_IK_Leg_04_Jnt.rpt" "R_RK_Leg_04_Jnt_parentConstraint1.tg[1].trt";
connectAttr "R_IK_Leg_04_Jnt.r" "R_RK_Leg_04_Jnt_parentConstraint1.tg[1].tr";
connectAttr "R_IK_Leg_04_Jnt.ro" "R_RK_Leg_04_Jnt_parentConstraint1.tg[1].tro";
connectAttr "R_IK_Leg_04_Jnt.s" "R_RK_Leg_04_Jnt_parentConstraint1.tg[1].ts";
connectAttr "R_IK_Leg_04_Jnt.pm" "R_RK_Leg_04_Jnt_parentConstraint1.tg[1].tpm";
connectAttr "R_IK_Leg_04_Jnt.jo" "R_RK_Leg_04_Jnt_parentConstraint1.tg[1].tjo";
connectAttr "R_IK_Leg_04_Jnt.ssc" "R_RK_Leg_04_Jnt_parentConstraint1.tg[1].tsc";
connectAttr "R_IK_Leg_04_Jnt.is" "R_RK_Leg_04_Jnt_parentConstraint1.tg[1].tis";
connectAttr "R_RK_Leg_04_Jnt_parentConstraint1.w1" "R_RK_Leg_04_Jnt_parentConstraint1.tg[1].tw"
		;
connectAttr "Transform_Ctrl.R_Leg_IKFK" "R_RK_Leg_04_Jnt_parentConstraint1.w0";
connectAttr "R_Leg_IKFKRev.ox" "R_RK_Leg_04_Jnt_parentConstraint1.w1";
connectAttr "R_RK_Leg_03_Jnt.ro" "R_RK_Leg_03_Jnt_parentConstraint1.cro";
connectAttr "R_RK_Leg_03_Jnt.pim" "R_RK_Leg_03_Jnt_parentConstraint1.cpim";
connectAttr "R_RK_Leg_03_Jnt.rp" "R_RK_Leg_03_Jnt_parentConstraint1.crp";
connectAttr "R_RK_Leg_03_Jnt.rpt" "R_RK_Leg_03_Jnt_parentConstraint1.crt";
connectAttr "R_RK_Leg_03_Jnt.jo" "R_RK_Leg_03_Jnt_parentConstraint1.cjo";
connectAttr "R_FK_Leg_03_Jnt.t" "R_RK_Leg_03_Jnt_parentConstraint1.tg[0].tt";
connectAttr "R_FK_Leg_03_Jnt.rp" "R_RK_Leg_03_Jnt_parentConstraint1.tg[0].trp";
connectAttr "R_FK_Leg_03_Jnt.rpt" "R_RK_Leg_03_Jnt_parentConstraint1.tg[0].trt";
connectAttr "R_FK_Leg_03_Jnt.r" "R_RK_Leg_03_Jnt_parentConstraint1.tg[0].tr";
connectAttr "R_FK_Leg_03_Jnt.ro" "R_RK_Leg_03_Jnt_parentConstraint1.tg[0].tro";
connectAttr "R_FK_Leg_03_Jnt.s" "R_RK_Leg_03_Jnt_parentConstraint1.tg[0].ts";
connectAttr "R_FK_Leg_03_Jnt.pm" "R_RK_Leg_03_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "R_FK_Leg_03_Jnt.jo" "R_RK_Leg_03_Jnt_parentConstraint1.tg[0].tjo";
connectAttr "R_FK_Leg_03_Jnt.ssc" "R_RK_Leg_03_Jnt_parentConstraint1.tg[0].tsc";
connectAttr "R_FK_Leg_03_Jnt.is" "R_RK_Leg_03_Jnt_parentConstraint1.tg[0].tis";
connectAttr "R_RK_Leg_03_Jnt_parentConstraint1.w0" "R_RK_Leg_03_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_IK_Leg_03_Jnt.t" "R_RK_Leg_03_Jnt_parentConstraint1.tg[1].tt";
connectAttr "R_IK_Leg_03_Jnt.rp" "R_RK_Leg_03_Jnt_parentConstraint1.tg[1].trp";
connectAttr "R_IK_Leg_03_Jnt.rpt" "R_RK_Leg_03_Jnt_parentConstraint1.tg[1].trt";
connectAttr "R_IK_Leg_03_Jnt.r" "R_RK_Leg_03_Jnt_parentConstraint1.tg[1].tr";
connectAttr "R_IK_Leg_03_Jnt.ro" "R_RK_Leg_03_Jnt_parentConstraint1.tg[1].tro";
connectAttr "R_IK_Leg_03_Jnt.s" "R_RK_Leg_03_Jnt_parentConstraint1.tg[1].ts";
connectAttr "R_IK_Leg_03_Jnt.pm" "R_RK_Leg_03_Jnt_parentConstraint1.tg[1].tpm";
connectAttr "R_IK_Leg_03_Jnt.jo" "R_RK_Leg_03_Jnt_parentConstraint1.tg[1].tjo";
connectAttr "R_IK_Leg_03_Jnt.ssc" "R_RK_Leg_03_Jnt_parentConstraint1.tg[1].tsc";
connectAttr "R_IK_Leg_03_Jnt.is" "R_RK_Leg_03_Jnt_parentConstraint1.tg[1].tis";
connectAttr "R_RK_Leg_03_Jnt_parentConstraint1.w1" "R_RK_Leg_03_Jnt_parentConstraint1.tg[1].tw"
		;
connectAttr "Transform_Ctrl.R_Leg_IKFK" "R_RK_Leg_03_Jnt_parentConstraint1.w0";
connectAttr "R_Leg_IKFKRev.ox" "R_RK_Leg_03_Jnt_parentConstraint1.w1";
connectAttr "R_RK_Leg_02_Jnt.ro" "R_RK_Leg_02_Jnt_parentConstraint1.cro";
connectAttr "R_RK_Leg_02_Jnt.pim" "R_RK_Leg_02_Jnt_parentConstraint1.cpim";
connectAttr "R_RK_Leg_02_Jnt.rp" "R_RK_Leg_02_Jnt_parentConstraint1.crp";
connectAttr "R_RK_Leg_02_Jnt.rpt" "R_RK_Leg_02_Jnt_parentConstraint1.crt";
connectAttr "R_RK_Leg_02_Jnt.jo" "R_RK_Leg_02_Jnt_parentConstraint1.cjo";
connectAttr "R_FK_Leg_02_Jnt.t" "R_RK_Leg_02_Jnt_parentConstraint1.tg[0].tt";
connectAttr "R_FK_Leg_02_Jnt.rp" "R_RK_Leg_02_Jnt_parentConstraint1.tg[0].trp";
connectAttr "R_FK_Leg_02_Jnt.rpt" "R_RK_Leg_02_Jnt_parentConstraint1.tg[0].trt";
connectAttr "R_FK_Leg_02_Jnt.r" "R_RK_Leg_02_Jnt_parentConstraint1.tg[0].tr";
connectAttr "R_FK_Leg_02_Jnt.ro" "R_RK_Leg_02_Jnt_parentConstraint1.tg[0].tro";
connectAttr "R_FK_Leg_02_Jnt.s" "R_RK_Leg_02_Jnt_parentConstraint1.tg[0].ts";
connectAttr "R_FK_Leg_02_Jnt.pm" "R_RK_Leg_02_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "R_FK_Leg_02_Jnt.jo" "R_RK_Leg_02_Jnt_parentConstraint1.tg[0].tjo";
connectAttr "R_FK_Leg_02_Jnt.ssc" "R_RK_Leg_02_Jnt_parentConstraint1.tg[0].tsc";
connectAttr "R_FK_Leg_02_Jnt.is" "R_RK_Leg_02_Jnt_parentConstraint1.tg[0].tis";
connectAttr "R_RK_Leg_02_Jnt_parentConstraint1.w0" "R_RK_Leg_02_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_IK_Leg_02_Jnt.t" "R_RK_Leg_02_Jnt_parentConstraint1.tg[1].tt";
connectAttr "R_IK_Leg_02_Jnt.rp" "R_RK_Leg_02_Jnt_parentConstraint1.tg[1].trp";
connectAttr "R_IK_Leg_02_Jnt.rpt" "R_RK_Leg_02_Jnt_parentConstraint1.tg[1].trt";
connectAttr "R_IK_Leg_02_Jnt.r" "R_RK_Leg_02_Jnt_parentConstraint1.tg[1].tr";
connectAttr "R_IK_Leg_02_Jnt.ro" "R_RK_Leg_02_Jnt_parentConstraint1.tg[1].tro";
connectAttr "R_IK_Leg_02_Jnt.s" "R_RK_Leg_02_Jnt_parentConstraint1.tg[1].ts";
connectAttr "R_IK_Leg_02_Jnt.pm" "R_RK_Leg_02_Jnt_parentConstraint1.tg[1].tpm";
connectAttr "R_IK_Leg_02_Jnt.jo" "R_RK_Leg_02_Jnt_parentConstraint1.tg[1].tjo";
connectAttr "R_IK_Leg_02_Jnt.ssc" "R_RK_Leg_02_Jnt_parentConstraint1.tg[1].tsc";
connectAttr "R_IK_Leg_02_Jnt.is" "R_RK_Leg_02_Jnt_parentConstraint1.tg[1].tis";
connectAttr "R_RK_Leg_02_Jnt_parentConstraint1.w1" "R_RK_Leg_02_Jnt_parentConstraint1.tg[1].tw"
		;
connectAttr "Transform_Ctrl.R_Leg_IKFK" "R_RK_Leg_02_Jnt_parentConstraint1.w0";
connectAttr "R_Leg_IKFKRev.ox" "R_RK_Leg_02_Jnt_parentConstraint1.w1";
connectAttr "R_RK_Leg_01_Jnt.ro" "R_RK_Leg_01_Jnt_parentConstraint1.cro";
connectAttr "R_RK_Leg_01_Jnt.pim" "R_RK_Leg_01_Jnt_parentConstraint1.cpim";
connectAttr "R_RK_Leg_01_Jnt.rp" "R_RK_Leg_01_Jnt_parentConstraint1.crp";
connectAttr "R_RK_Leg_01_Jnt.rpt" "R_RK_Leg_01_Jnt_parentConstraint1.crt";
connectAttr "R_RK_Leg_01_Jnt.jo" "R_RK_Leg_01_Jnt_parentConstraint1.cjo";
connectAttr "R_FK_Leg_01_Jnt.t" "R_RK_Leg_01_Jnt_parentConstraint1.tg[0].tt";
connectAttr "R_FK_Leg_01_Jnt.rp" "R_RK_Leg_01_Jnt_parentConstraint1.tg[0].trp";
connectAttr "R_FK_Leg_01_Jnt.rpt" "R_RK_Leg_01_Jnt_parentConstraint1.tg[0].trt";
connectAttr "R_FK_Leg_01_Jnt.r" "R_RK_Leg_01_Jnt_parentConstraint1.tg[0].tr";
connectAttr "R_FK_Leg_01_Jnt.ro" "R_RK_Leg_01_Jnt_parentConstraint1.tg[0].tro";
connectAttr "R_FK_Leg_01_Jnt.s" "R_RK_Leg_01_Jnt_parentConstraint1.tg[0].ts";
connectAttr "R_FK_Leg_01_Jnt.pm" "R_RK_Leg_01_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "R_FK_Leg_01_Jnt.jo" "R_RK_Leg_01_Jnt_parentConstraint1.tg[0].tjo";
connectAttr "R_FK_Leg_01_Jnt.ssc" "R_RK_Leg_01_Jnt_parentConstraint1.tg[0].tsc";
connectAttr "R_FK_Leg_01_Jnt.is" "R_RK_Leg_01_Jnt_parentConstraint1.tg[0].tis";
connectAttr "R_RK_Leg_01_Jnt_parentConstraint1.w0" "R_RK_Leg_01_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_IK_Leg_01_Jnt.t" "R_RK_Leg_01_Jnt_parentConstraint1.tg[1].tt";
connectAttr "R_IK_Leg_01_Jnt.rp" "R_RK_Leg_01_Jnt_parentConstraint1.tg[1].trp";
connectAttr "R_IK_Leg_01_Jnt.rpt" "R_RK_Leg_01_Jnt_parentConstraint1.tg[1].trt";
connectAttr "R_IK_Leg_01_Jnt.r" "R_RK_Leg_01_Jnt_parentConstraint1.tg[1].tr";
connectAttr "R_IK_Leg_01_Jnt.ro" "R_RK_Leg_01_Jnt_parentConstraint1.tg[1].tro";
connectAttr "R_IK_Leg_01_Jnt.s" "R_RK_Leg_01_Jnt_parentConstraint1.tg[1].ts";
connectAttr "R_IK_Leg_01_Jnt.pm" "R_RK_Leg_01_Jnt_parentConstraint1.tg[1].tpm";
connectAttr "R_IK_Leg_01_Jnt.jo" "R_RK_Leg_01_Jnt_parentConstraint1.tg[1].tjo";
connectAttr "R_IK_Leg_01_Jnt.ssc" "R_RK_Leg_01_Jnt_parentConstraint1.tg[1].tsc";
connectAttr "R_IK_Leg_01_Jnt.is" "R_RK_Leg_01_Jnt_parentConstraint1.tg[1].tis";
connectAttr "R_RK_Leg_01_Jnt_parentConstraint1.w1" "R_RK_Leg_01_Jnt_parentConstraint1.tg[1].tw"
		;
connectAttr "Transform_Ctrl.R_Leg_IKFK" "R_RK_Leg_01_Jnt_parentConstraint1.w0";
connectAttr "R_Leg_IKFKRev.ox" "R_RK_Leg_01_Jnt_parentConstraint1.w1";
connectAttr "Hip_Jnt.ro" "Hip_Jnt_parentConstraint1.cro";
connectAttr "Hip_Jnt.pim" "Hip_Jnt_parentConstraint1.cpim";
connectAttr "Hip_Jnt.rp" "Hip_Jnt_parentConstraint1.crp";
connectAttr "Hip_Jnt.rpt" "Hip_Jnt_parentConstraint1.crt";
connectAttr "Hip_Jnt.jo" "Hip_Jnt_parentConstraint1.cjo";
connectAttr "Hip_Ctrl.t" "Hip_Jnt_parentConstraint1.tg[0].tt";
connectAttr "Hip_Ctrl.rp" "Hip_Jnt_parentConstraint1.tg[0].trp";
connectAttr "Hip_Ctrl.rpt" "Hip_Jnt_parentConstraint1.tg[0].trt";
connectAttr "Hip_Ctrl.r" "Hip_Jnt_parentConstraint1.tg[0].tr";
connectAttr "Hip_Ctrl.ro" "Hip_Jnt_parentConstraint1.tg[0].tro";
connectAttr "Hip_Ctrl.s" "Hip_Jnt_parentConstraint1.tg[0].ts";
connectAttr "Hip_Ctrl.pm" "Hip_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "Hip_Jnt_parentConstraint1.w0" "Hip_Jnt_parentConstraint1.tg[0].tw";
connectAttr "Hip_Jnt.ssc" "Hip_Jnt_scaleConstraint1.tsc";
connectAttr "Hip_Jnt.pim" "Hip_Jnt_scaleConstraint1.cpim";
connectAttr "Hip_Ctrl.s" "Hip_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "Hip_Ctrl.pm" "Hip_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "Hip_Jnt_scaleConstraint1.w0" "Hip_Jnt_scaleConstraint1.tg[0].tw";
connectAttr "Cog_Jnt.s" "Spine_00_Jnt.is";
connectAttr "Bones_Layer.di" "Spine_00_Jnt.do";
connectAttr "Spine_00_Jnt_scaleConstraint1.csx" "Spine_00_Jnt.sx";
connectAttr "Spine_00_Jnt_scaleConstraint1.csy" "Spine_00_Jnt.sy";
connectAttr "Spine_00_Jnt_scaleConstraint1.csz" "Spine_00_Jnt.sz";
connectAttr "Spine_00_Jnt_parentConstraint1.ctx" "Spine_00_Jnt.tx";
connectAttr "Spine_00_Jnt_parentConstraint1.cty" "Spine_00_Jnt.ty";
connectAttr "Spine_00_Jnt_parentConstraint1.ctz" "Spine_00_Jnt.tz";
connectAttr "Spine_00_Jnt_parentConstraint1.crx" "Spine_00_Jnt.rx";
connectAttr "Spine_00_Jnt_parentConstraint1.cry" "Spine_00_Jnt.ry";
connectAttr "Spine_00_Jnt_parentConstraint1.crz" "Spine_00_Jnt.rz";
connectAttr "Spine_00_Jnt.s" "Spine_01_Jnt.is";
connectAttr "Spine_01_Jnt_scaleConstraint1.csx" "Spine_01_Jnt.sx";
connectAttr "Spine_01_Jnt_scaleConstraint1.csy" "Spine_01_Jnt.sy";
connectAttr "Spine_01_Jnt_scaleConstraint1.csz" "Spine_01_Jnt.sz";
connectAttr "Spine_01_Jnt_parentConstraint1.ctx" "Spine_01_Jnt.tx";
connectAttr "Spine_01_Jnt_parentConstraint1.cty" "Spine_01_Jnt.ty";
connectAttr "Spine_01_Jnt_parentConstraint1.ctz" "Spine_01_Jnt.tz";
connectAttr "Spine_01_Jnt_parentConstraint1.crx" "Spine_01_Jnt.rx";
connectAttr "Spine_01_Jnt_parentConstraint1.cry" "Spine_01_Jnt.ry";
connectAttr "Spine_01_Jnt_parentConstraint1.crz" "Spine_01_Jnt.rz";
connectAttr "Spine_01_Jnt.s" "Spine_02_Jnt.is";
connectAttr "Spine_02_Jnt_scaleConstraint1.csx" "Spine_02_Jnt.sx";
connectAttr "Spine_02_Jnt_scaleConstraint1.csy" "Spine_02_Jnt.sy";
connectAttr "Spine_02_Jnt_scaleConstraint1.csz" "Spine_02_Jnt.sz";
connectAttr "Spine_02_Jnt_parentConstraint1.ctx" "Spine_02_Jnt.tx";
connectAttr "Spine_02_Jnt_parentConstraint1.cty" "Spine_02_Jnt.ty";
connectAttr "Spine_02_Jnt_parentConstraint1.ctz" "Spine_02_Jnt.tz";
connectAttr "Spine_02_Jnt_parentConstraint1.crx" "Spine_02_Jnt.rx";
connectAttr "Spine_02_Jnt_parentConstraint1.cry" "Spine_02_Jnt.ry";
connectAttr "Spine_02_Jnt_parentConstraint1.crz" "Spine_02_Jnt.rz";
connectAttr "Spine_02_Jnt.s" "Spine_03_Jnt.is";
connectAttr "Spine_03_Jnt_scaleConstraint1.csx" "Spine_03_Jnt.sx";
connectAttr "Spine_03_Jnt_scaleConstraint1.csy" "Spine_03_Jnt.sy";
connectAttr "Spine_03_Jnt_scaleConstraint1.csz" "Spine_03_Jnt.sz";
connectAttr "Spine_03_Jnt_parentConstraint1.ctx" "Spine_03_Jnt.tx";
connectAttr "Spine_03_Jnt_parentConstraint1.cty" "Spine_03_Jnt.ty";
connectAttr "Spine_03_Jnt_parentConstraint1.ctz" "Spine_03_Jnt.tz";
connectAttr "Spine_03_Jnt_parentConstraint1.crx" "Spine_03_Jnt.rx";
connectAttr "Spine_03_Jnt_parentConstraint1.cry" "Spine_03_Jnt.ry";
connectAttr "Spine_03_Jnt_parentConstraint1.crz" "Spine_03_Jnt.rz";
connectAttr "Spine_03_Jnt.s" "Neck_00_Jnt.is";
connectAttr "Neck_00_Jnt_scaleConstraint1.csx" "Neck_00_Jnt.sx";
connectAttr "Neck_00_Jnt_scaleConstraint1.csy" "Neck_00_Jnt.sy";
connectAttr "Neck_00_Jnt_scaleConstraint1.csz" "Neck_00_Jnt.sz";
connectAttr "Neck_00_Jnt_parentConstraint1.ctx" "Neck_00_Jnt.tx";
connectAttr "Neck_00_Jnt_parentConstraint1.cty" "Neck_00_Jnt.ty";
connectAttr "Neck_00_Jnt_parentConstraint1.ctz" "Neck_00_Jnt.tz";
connectAttr "Neck_00_Jnt_parentConstraint1.crx" "Neck_00_Jnt.rx";
connectAttr "Neck_00_Jnt_parentConstraint1.cry" "Neck_00_Jnt.ry";
connectAttr "Neck_00_Jnt_parentConstraint1.crz" "Neck_00_Jnt.rz";
connectAttr "Neck_00_Jnt.s" "Neck_01_jnt.is";
connectAttr "Neck_01_jnt_scaleConstraint1.csx" "Neck_01_jnt.sx";
connectAttr "Neck_01_jnt_scaleConstraint1.csy" "Neck_01_jnt.sy";
connectAttr "Neck_01_jnt_scaleConstraint1.csz" "Neck_01_jnt.sz";
connectAttr "Neck_01_jnt_parentConstraint1.ctx" "Neck_01_jnt.tx";
connectAttr "Neck_01_jnt_parentConstraint1.cty" "Neck_01_jnt.ty";
connectAttr "Neck_01_jnt_parentConstraint1.ctz" "Neck_01_jnt.tz";
connectAttr "Neck_01_jnt_parentConstraint1.crx" "Neck_01_jnt.rx";
connectAttr "Neck_01_jnt_parentConstraint1.cry" "Neck_01_jnt.ry";
connectAttr "Neck_01_jnt_parentConstraint1.crz" "Neck_01_jnt.rz";
connectAttr "Neck_01_jnt.s" "Eye.is";
connectAttr "Eye_aimConstraint1.crx" "Eye.rx";
connectAttr "Eye_aimConstraint1.cry" "Eye.ry";
connectAttr "Eye_aimConstraint1.crz" "Eye.rz";
connectAttr "Eye.pim" "Eye_aimConstraint1.cpim";
connectAttr "Eye.t" "Eye_aimConstraint1.ct";
connectAttr "Eye.rp" "Eye_aimConstraint1.crp";
connectAttr "Eye.rpt" "Eye_aimConstraint1.crt";
connectAttr "Eye.ro" "Eye_aimConstraint1.cro";
connectAttr "Eye.jo" "Eye_aimConstraint1.cjo";
connectAttr "Eye.is" "Eye_aimConstraint1.is";
connectAttr "Eye_Point.t" "Eye_aimConstraint1.tg[0].tt";
connectAttr "Eye_Point.rp" "Eye_aimConstraint1.tg[0].trp";
connectAttr "Eye_Point.rpt" "Eye_aimConstraint1.tg[0].trt";
connectAttr "Eye_Point.pm" "Eye_aimConstraint1.tg[0].tpm";
connectAttr "Eye_aimConstraint1.w0" "Eye_aimConstraint1.tg[0].tw";
connectAttr "Eye_Point_Up.wm" "Eye_aimConstraint1.wum";
connectAttr "Neck_01_jnt.ro" "Neck_01_jnt_parentConstraint1.cro";
connectAttr "Neck_01_jnt.pim" "Neck_01_jnt_parentConstraint1.cpim";
connectAttr "Neck_01_jnt.rp" "Neck_01_jnt_parentConstraint1.crp";
connectAttr "Neck_01_jnt.rpt" "Neck_01_jnt_parentConstraint1.crt";
connectAttr "Neck_01_jnt.jo" "Neck_01_jnt_parentConstraint1.cjo";
connectAttr "Neck_02_Ctrl.t" "Neck_01_jnt_parentConstraint1.tg[0].tt";
connectAttr "Neck_02_Ctrl.rp" "Neck_01_jnt_parentConstraint1.tg[0].trp";
connectAttr "Neck_02_Ctrl.rpt" "Neck_01_jnt_parentConstraint1.tg[0].trt";
connectAttr "Neck_02_Ctrl.r" "Neck_01_jnt_parentConstraint1.tg[0].tr";
connectAttr "Neck_02_Ctrl.ro" "Neck_01_jnt_parentConstraint1.tg[0].tro";
connectAttr "Neck_02_Ctrl.s" "Neck_01_jnt_parentConstraint1.tg[0].ts";
connectAttr "Neck_02_Ctrl.pm" "Neck_01_jnt_parentConstraint1.tg[0].tpm";
connectAttr "Neck_01_jnt_parentConstraint1.w0" "Neck_01_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Neck_01_jnt.ssc" "Neck_01_jnt_scaleConstraint1.tsc";
connectAttr "Neck_01_jnt.pim" "Neck_01_jnt_scaleConstraint1.cpim";
connectAttr "Neck_02_Ctrl.s" "Neck_01_jnt_scaleConstraint1.tg[0].ts";
connectAttr "Neck_02_Ctrl.pm" "Neck_01_jnt_scaleConstraint1.tg[0].tpm";
connectAttr "Neck_01_jnt_scaleConstraint1.w0" "Neck_01_jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "Neck_00_Jnt.ro" "Neck_00_Jnt_parentConstraint1.cro";
connectAttr "Neck_00_Jnt.pim" "Neck_00_Jnt_parentConstraint1.cpim";
connectAttr "Neck_00_Jnt.rp" "Neck_00_Jnt_parentConstraint1.crp";
connectAttr "Neck_00_Jnt.rpt" "Neck_00_Jnt_parentConstraint1.crt";
connectAttr "Neck_00_Jnt.jo" "Neck_00_Jnt_parentConstraint1.cjo";
connectAttr "Neck_01_Ctrl.t" "Neck_00_Jnt_parentConstraint1.tg[0].tt";
connectAttr "Neck_01_Ctrl.rp" "Neck_00_Jnt_parentConstraint1.tg[0].trp";
connectAttr "Neck_01_Ctrl.rpt" "Neck_00_Jnt_parentConstraint1.tg[0].trt";
connectAttr "Neck_01_Ctrl.r" "Neck_00_Jnt_parentConstraint1.tg[0].tr";
connectAttr "Neck_01_Ctrl.ro" "Neck_00_Jnt_parentConstraint1.tg[0].tro";
connectAttr "Neck_01_Ctrl.s" "Neck_00_Jnt_parentConstraint1.tg[0].ts";
connectAttr "Neck_01_Ctrl.pm" "Neck_00_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "Neck_00_Jnt_parentConstraint1.w0" "Neck_00_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Neck_00_Jnt.ssc" "Neck_00_Jnt_scaleConstraint1.tsc";
connectAttr "Neck_00_Jnt.pim" "Neck_00_Jnt_scaleConstraint1.cpim";
connectAttr "Neck_01_Ctrl.s" "Neck_00_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "Neck_01_Ctrl.pm" "Neck_00_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "Neck_00_Jnt_scaleConstraint1.w0" "Neck_00_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "Spine_03_Jnt.s" "L_Clav_Jnt.is";
connectAttr "L_Clav_Jnt_scaleConstraint1.csx" "L_Clav_Jnt.sx";
connectAttr "L_Clav_Jnt_scaleConstraint1.csy" "L_Clav_Jnt.sy";
connectAttr "L_Clav_Jnt_scaleConstraint1.csz" "L_Clav_Jnt.sz";
connectAttr "L_Clav_Jnt_parentConstraint1.ctx" "L_Clav_Jnt.tx";
connectAttr "L_Clav_Jnt_parentConstraint1.cty" "L_Clav_Jnt.ty";
connectAttr "L_Clav_Jnt_parentConstraint1.ctz" "L_Clav_Jnt.tz";
connectAttr "L_Clav_Jnt_parentConstraint1.crx" "L_Clav_Jnt.rx";
connectAttr "L_Clav_Jnt_parentConstraint1.cry" "L_Clav_Jnt.ry";
connectAttr "L_Clav_Jnt_parentConstraint1.crz" "L_Clav_Jnt.rz";
connectAttr "L_Clav_Jnt.s" "L_FK_Arm_01_Jnt.is";
connectAttr "L_FK_Arm_01_Jnt_scaleConstraint1.csx" "L_FK_Arm_01_Jnt.sx";
connectAttr "L_FK_Arm_01_Jnt_scaleConstraint1.csy" "L_FK_Arm_01_Jnt.sy";
connectAttr "L_FK_Arm_01_Jnt_scaleConstraint1.csz" "L_FK_Arm_01_Jnt.sz";
connectAttr "L_FK_Arm_01_Jnt_parentConstraint1.crz" "L_FK_Arm_01_Jnt.rz";
connectAttr "L_FK_Arm_01_Jnt_parentConstraint1.crx" "L_FK_Arm_01_Jnt.rx";
connectAttr "L_FK_Arm_01_Jnt_parentConstraint1.cry" "L_FK_Arm_01_Jnt.ry";
connectAttr "L_FK_Arm_01_Jnt_parentConstraint1.ctx" "L_FK_Arm_01_Jnt.tx";
connectAttr "L_FK_Arm_01_Jnt_parentConstraint1.cty" "L_FK_Arm_01_Jnt.ty";
connectAttr "L_FK_Arm_01_Jnt_parentConstraint1.ctz" "L_FK_Arm_01_Jnt.tz";
connectAttr "L_FK_Arm_01_Jnt.s" "L_FK_Arm_02_Jnt.is";
connectAttr "L_FK_Arm_02_Jnt_scaleConstraint1.csx" "L_FK_Arm_02_Jnt.sx";
connectAttr "L_FK_Arm_02_Jnt_scaleConstraint1.csy" "L_FK_Arm_02_Jnt.sy";
connectAttr "L_FK_Arm_02_Jnt_scaleConstraint1.csz" "L_FK_Arm_02_Jnt.sz";
connectAttr "L_FK_Arm_02_Jnt_parentConstraint1.ctx" "L_FK_Arm_02_Jnt.tx";
connectAttr "L_FK_Arm_02_Jnt_parentConstraint1.cty" "L_FK_Arm_02_Jnt.ty";
connectAttr "L_FK_Arm_02_Jnt_parentConstraint1.ctz" "L_FK_Arm_02_Jnt.tz";
connectAttr "L_FK_Arm_02_Jnt_parentConstraint1.crx" "L_FK_Arm_02_Jnt.rx";
connectAttr "L_FK_Arm_02_Jnt_parentConstraint1.cry" "L_FK_Arm_02_Jnt.ry";
connectAttr "L_FK_Arm_02_Jnt_parentConstraint1.crz" "L_FK_Arm_02_Jnt.rz";
connectAttr "L_FK_Arm_02_Jnt.s" "L_FK_Arm_03_Jnt.is";
connectAttr "L_FK_Arm_03_Jnt_parentConstraint1.ctx" "L_FK_Arm_03_Jnt.tx";
connectAttr "L_FK_Arm_03_Jnt_parentConstraint1.cty" "L_FK_Arm_03_Jnt.ty";
connectAttr "L_FK_Arm_03_Jnt_parentConstraint1.ctz" "L_FK_Arm_03_Jnt.tz";
connectAttr "L_FK_Arm_03_Jnt_parentConstraint1.crx" "L_FK_Arm_03_Jnt.rx";
connectAttr "L_FK_Arm_03_Jnt_parentConstraint1.cry" "L_FK_Arm_03_Jnt.ry";
connectAttr "L_FK_Arm_03_Jnt_parentConstraint1.crz" "L_FK_Arm_03_Jnt.rz";
connectAttr "L_FK_Arm_03_Jnt_scaleConstraint1.csx" "L_FK_Arm_03_Jnt.sx";
connectAttr "L_FK_Arm_03_Jnt_scaleConstraint1.csy" "L_FK_Arm_03_Jnt.sy";
connectAttr "L_FK_Arm_03_Jnt_scaleConstraint1.csz" "L_FK_Arm_03_Jnt.sz";
connectAttr "L_FK_Arm_03_Jnt.ro" "L_FK_Arm_03_Jnt_parentConstraint1.cro";
connectAttr "L_FK_Arm_03_Jnt.pim" "L_FK_Arm_03_Jnt_parentConstraint1.cpim";
connectAttr "L_FK_Arm_03_Jnt.rp" "L_FK_Arm_03_Jnt_parentConstraint1.crp";
connectAttr "L_FK_Arm_03_Jnt.rpt" "L_FK_Arm_03_Jnt_parentConstraint1.crt";
connectAttr "L_FK_Arm_03_Jnt.jo" "L_FK_Arm_03_Jnt_parentConstraint1.cjo";
connectAttr "L_FK_Arm_03_Ctrl.t" "L_FK_Arm_03_Jnt_parentConstraint1.tg[0].tt";
connectAttr "L_FK_Arm_03_Ctrl.rp" "L_FK_Arm_03_Jnt_parentConstraint1.tg[0].trp";
connectAttr "L_FK_Arm_03_Ctrl.rpt" "L_FK_Arm_03_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "L_FK_Arm_03_Ctrl.r" "L_FK_Arm_03_Jnt_parentConstraint1.tg[0].tr";
connectAttr "L_FK_Arm_03_Ctrl.ro" "L_FK_Arm_03_Jnt_parentConstraint1.tg[0].tro";
connectAttr "L_FK_Arm_03_Ctrl.s" "L_FK_Arm_03_Jnt_parentConstraint1.tg[0].ts";
connectAttr "L_FK_Arm_03_Ctrl.pm" "L_FK_Arm_03_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "L_FK_Arm_03_Jnt_parentConstraint1.w0" "L_FK_Arm_03_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_FK_Arm_03_Jnt.ssc" "L_FK_Arm_03_Jnt_scaleConstraint1.tsc";
connectAttr "L_FK_Arm_03_Jnt.pim" "L_FK_Arm_03_Jnt_scaleConstraint1.cpim";
connectAttr "L_FK_Arm_03_Ctrl.s" "L_FK_Arm_03_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "L_FK_Arm_03_Ctrl.pm" "L_FK_Arm_03_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "L_FK_Arm_03_Jnt_scaleConstraint1.w0" "L_FK_Arm_03_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_FK_Arm_02_Jnt.ro" "L_FK_Arm_02_Jnt_parentConstraint1.cro";
connectAttr "L_FK_Arm_02_Jnt.pim" "L_FK_Arm_02_Jnt_parentConstraint1.cpim";
connectAttr "L_FK_Arm_02_Jnt.rp" "L_FK_Arm_02_Jnt_parentConstraint1.crp";
connectAttr "L_FK_Arm_02_Jnt.rpt" "L_FK_Arm_02_Jnt_parentConstraint1.crt";
connectAttr "L_FK_Arm_02_Jnt.jo" "L_FK_Arm_02_Jnt_parentConstraint1.cjo";
connectAttr "L_FK_Arm_02_Ctrl.t" "L_FK_Arm_02_Jnt_parentConstraint1.tg[0].tt";
connectAttr "L_FK_Arm_02_Ctrl.rp" "L_FK_Arm_02_Jnt_parentConstraint1.tg[0].trp";
connectAttr "L_FK_Arm_02_Ctrl.rpt" "L_FK_Arm_02_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "L_FK_Arm_02_Ctrl.r" "L_FK_Arm_02_Jnt_parentConstraint1.tg[0].tr";
connectAttr "L_FK_Arm_02_Ctrl.ro" "L_FK_Arm_02_Jnt_parentConstraint1.tg[0].tro";
connectAttr "L_FK_Arm_02_Ctrl.s" "L_FK_Arm_02_Jnt_parentConstraint1.tg[0].ts";
connectAttr "L_FK_Arm_02_Ctrl.pm" "L_FK_Arm_02_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "L_FK_Arm_02_Jnt_parentConstraint1.w0" "L_FK_Arm_02_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_FK_Arm_02_Jnt.ssc" "L_FK_Arm_02_Jnt_scaleConstraint1.tsc";
connectAttr "L_FK_Arm_02_Jnt.pim" "L_FK_Arm_02_Jnt_scaleConstraint1.cpim";
connectAttr "L_FK_Arm_02_Ctrl.s" "L_FK_Arm_02_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "L_FK_Arm_02_Ctrl.pm" "L_FK_Arm_02_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "L_FK_Arm_02_Jnt_scaleConstraint1.w0" "L_FK_Arm_02_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_FK_Arm_01_Jnt.ro" "L_FK_Arm_01_Jnt_parentConstraint1.cro";
connectAttr "L_FK_Arm_01_Jnt.pim" "L_FK_Arm_01_Jnt_parentConstraint1.cpim";
connectAttr "L_FK_Arm_01_Jnt.rp" "L_FK_Arm_01_Jnt_parentConstraint1.crp";
connectAttr "L_FK_Arm_01_Jnt.rpt" "L_FK_Arm_01_Jnt_parentConstraint1.crt";
connectAttr "L_FK_Arm_01_Jnt.jo" "L_FK_Arm_01_Jnt_parentConstraint1.cjo";
connectAttr "L_FK_Arm_01_Ctrl.t" "L_FK_Arm_01_Jnt_parentConstraint1.tg[0].tt";
connectAttr "L_FK_Arm_01_Ctrl.rp" "L_FK_Arm_01_Jnt_parentConstraint1.tg[0].trp";
connectAttr "L_FK_Arm_01_Ctrl.rpt" "L_FK_Arm_01_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "L_FK_Arm_01_Ctrl.r" "L_FK_Arm_01_Jnt_parentConstraint1.tg[0].tr";
connectAttr "L_FK_Arm_01_Ctrl.ro" "L_FK_Arm_01_Jnt_parentConstraint1.tg[0].tro";
connectAttr "L_FK_Arm_01_Ctrl.s" "L_FK_Arm_01_Jnt_parentConstraint1.tg[0].ts";
connectAttr "L_FK_Arm_01_Ctrl.pm" "L_FK_Arm_01_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "L_FK_Arm_01_Jnt_parentConstraint1.w0" "L_FK_Arm_01_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_FK_Arm_01_Jnt.ssc" "L_FK_Arm_01_Jnt_scaleConstraint1.tsc";
connectAttr "L_FK_Arm_01_Jnt.pim" "L_FK_Arm_01_Jnt_scaleConstraint1.cpim";
connectAttr "L_FK_Arm_01_Ctrl.s" "L_FK_Arm_01_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "L_FK_Arm_01_Ctrl.pm" "L_FK_Arm_01_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "L_FK_Arm_01_Jnt_scaleConstraint1.w0" "L_FK_Arm_01_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Clav_Jnt.s" "L_IK_Arm_01_Jnt.is";
connectAttr "L_IK_Arm_01_Jnt_pointConstraint1.ctx" "L_IK_Arm_01_Jnt.tx";
connectAttr "L_IK_Arm_01_Jnt_pointConstraint1.cty" "L_IK_Arm_01_Jnt.ty";
connectAttr "L_IK_Arm_01_Jnt_pointConstraint1.ctz" "L_IK_Arm_01_Jnt.tz";
connectAttr "L_IK_Arm_01_Jnt.s" "L_IK_Arm_02_Jnt.is";
connectAttr "L_IK_Arm_02_Jnt.s" "L_IK_Arm_03_Jnt.is";
connectAttr "L_IK_Arm_03_Jnt_orientConstraint1.crx" "L_IK_Arm_03_Jnt.rx";
connectAttr "L_IK_Arm_03_Jnt_orientConstraint1.cry" "L_IK_Arm_03_Jnt.ry";
connectAttr "L_IK_Arm_03_Jnt_orientConstraint1.crz" "L_IK_Arm_03_Jnt.rz";
connectAttr "L_IK_Arm_03_Jnt.ro" "L_IK_Arm_03_Jnt_orientConstraint1.cro";
connectAttr "L_IK_Arm_03_Jnt.pim" "L_IK_Arm_03_Jnt_orientConstraint1.cpim";
connectAttr "L_IK_Arm_03_Jnt.jo" "L_IK_Arm_03_Jnt_orientConstraint1.cjo";
connectAttr "L_IK_Arm_03_Jnt.is" "L_IK_Arm_03_Jnt_orientConstraint1.is";
connectAttr "L_Arm_IK_Ctrl.r" "L_IK_Arm_03_Jnt_orientConstraint1.tg[0].tr";
connectAttr "L_Arm_IK_Ctrl.ro" "L_IK_Arm_03_Jnt_orientConstraint1.tg[0].tro";
connectAttr "L_Arm_IK_Ctrl.pm" "L_IK_Arm_03_Jnt_orientConstraint1.tg[0].tpm";
connectAttr "L_IK_Arm_03_Jnt_orientConstraint1.w0" "L_IK_Arm_03_Jnt_orientConstraint1.tg[0].tw"
		;
connectAttr "L_IK_Arm_03_Jnt.tx" "effector1.tx";
connectAttr "L_IK_Arm_03_Jnt.ty" "effector1.ty";
connectAttr "L_IK_Arm_03_Jnt.tz" "effector1.tz";
connectAttr "L_IK_Arm_03_Jnt.opm" "effector1.opm";
connectAttr "L_IK_Arm_01_Jnt.pim" "L_IK_Arm_01_Jnt_pointConstraint1.cpim";
connectAttr "L_IK_Arm_01_Jnt.rp" "L_IK_Arm_01_Jnt_pointConstraint1.crp";
connectAttr "L_IK_Arm_01_Jnt.rpt" "L_IK_Arm_01_Jnt_pointConstraint1.crt";
connectAttr "L_IK_Arm_01_Ctrl.t" "L_IK_Arm_01_Jnt_pointConstraint1.tg[0].tt";
connectAttr "L_IK_Arm_01_Ctrl.rp" "L_IK_Arm_01_Jnt_pointConstraint1.tg[0].trp";
connectAttr "L_IK_Arm_01_Ctrl.rpt" "L_IK_Arm_01_Jnt_pointConstraint1.tg[0].trt";
connectAttr "L_IK_Arm_01_Ctrl.pm" "L_IK_Arm_01_Jnt_pointConstraint1.tg[0].tpm";
connectAttr "L_IK_Arm_01_Jnt_pointConstraint1.w0" "L_IK_Arm_01_Jnt_pointConstraint1.tg[0].tw"
		;
connectAttr "L_Clav_Jnt.s" "L_RK_Arm_01_Jnt.is";
connectAttr "L_RK_Arm_01_Jnt_parentConstraint1.crz" "L_RK_Arm_01_Jnt.rz";
connectAttr "L_RK_Arm_01_Jnt_parentConstraint1.crx" "L_RK_Arm_01_Jnt.rx";
connectAttr "L_RK_Arm_01_Jnt_parentConstraint1.cry" "L_RK_Arm_01_Jnt.ry";
connectAttr "L_RK_Arm_01_Jnt_parentConstraint1.ctx" "L_RK_Arm_01_Jnt.tx";
connectAttr "L_RK_Arm_01_Jnt_parentConstraint1.cty" "L_RK_Arm_01_Jnt.ty";
connectAttr "L_RK_Arm_01_Jnt_parentConstraint1.ctz" "L_RK_Arm_01_Jnt.tz";
connectAttr "L_RK_Arm_01_Jnt.s" "L_RK_Arm_02_Jnt.is";
connectAttr "L_RK_Arm_02_Jnt_parentConstraint1.ctx" "L_RK_Arm_02_Jnt.tx";
connectAttr "L_RK_Arm_02_Jnt_parentConstraint1.cty" "L_RK_Arm_02_Jnt.ty";
connectAttr "L_RK_Arm_02_Jnt_parentConstraint1.ctz" "L_RK_Arm_02_Jnt.tz";
connectAttr "L_RK_Arm_02_Jnt_parentConstraint1.crx" "L_RK_Arm_02_Jnt.rx";
connectAttr "L_RK_Arm_02_Jnt_parentConstraint1.cry" "L_RK_Arm_02_Jnt.ry";
connectAttr "L_RK_Arm_02_Jnt_parentConstraint1.crz" "L_RK_Arm_02_Jnt.rz";
connectAttr "L_RK_Arm_02_Jnt.s" "L_RK_Arm_03_Jnt.is";
connectAttr "L_RK_Arm_03_Jnt_parentConstraint1.ctx" "L_RK_Arm_03_Jnt.tx";
connectAttr "L_RK_Arm_03_Jnt_parentConstraint1.cty" "L_RK_Arm_03_Jnt.ty";
connectAttr "L_RK_Arm_03_Jnt_parentConstraint1.ctz" "L_RK_Arm_03_Jnt.tz";
connectAttr "L_RK_Arm_03_Jnt_parentConstraint1.crx" "L_RK_Arm_03_Jnt.rx";
connectAttr "L_RK_Arm_03_Jnt_parentConstraint1.cry" "L_RK_Arm_03_Jnt.ry";
connectAttr "L_RK_Arm_03_Jnt_parentConstraint1.crz" "L_RK_Arm_03_Jnt.rz";
connectAttr "Bones_Layer.di" "L_Hand_0.do";
connectAttr "L_Hand_0_scaleConstraint1.csx" "L_Hand_0.sx";
connectAttr "L_Hand_0_scaleConstraint1.csy" "L_Hand_0.sy";
connectAttr "L_Hand_0_scaleConstraint1.csz" "L_Hand_0.sz";
connectAttr "L_Hand_0_parentConstraint1.ctx" "L_Hand_0.tx";
connectAttr "L_Hand_0_parentConstraint1.cty" "L_Hand_0.ty";
connectAttr "L_Hand_0_parentConstraint1.ctz" "L_Hand_0.tz";
connectAttr "L_Hand_0_parentConstraint1.crx" "L_Hand_0.rx";
connectAttr "L_Hand_0_parentConstraint1.cry" "L_Hand_0.ry";
connectAttr "L_Hand_0_parentConstraint1.crz" "L_Hand_0.rz";
connectAttr "L_RK_Arm_03_Jnt.s" "L_Hand_0.is";
connectAttr "L_Hand_0.s" "L_Fing_2_01_Jnt.is";
connectAttr "L_Fing_2_01_Jnt_scaleConstraint1.csx" "L_Fing_2_01_Jnt.sx";
connectAttr "L_Fing_2_01_Jnt_scaleConstraint1.csy" "L_Fing_2_01_Jnt.sy";
connectAttr "L_Fing_2_01_Jnt_scaleConstraint1.csz" "L_Fing_2_01_Jnt.sz";
connectAttr "L_Fing_2_01_Jnt_parentConstraint1.ctx" "L_Fing_2_01_Jnt.tx";
connectAttr "L_Fing_2_01_Jnt_parentConstraint1.cty" "L_Fing_2_01_Jnt.ty";
connectAttr "L_Fing_2_01_Jnt_parentConstraint1.ctz" "L_Fing_2_01_Jnt.tz";
connectAttr "L_Fing_2_01_Jnt_parentConstraint1.crx" "L_Fing_2_01_Jnt.rx";
connectAttr "L_Fing_2_01_Jnt_parentConstraint1.cry" "L_Fing_2_01_Jnt.ry";
connectAttr "L_Fing_2_01_Jnt_parentConstraint1.crz" "L_Fing_2_01_Jnt.rz";
connectAttr "L_Fing_2_01_Jnt.s" "L_Fing_2_02_Jnt.is";
connectAttr "L_Fing_2_02_Jnt_scaleConstraint1.csx" "L_Fing_2_02_Jnt.sx";
connectAttr "L_Fing_2_02_Jnt_scaleConstraint1.csy" "L_Fing_2_02_Jnt.sy";
connectAttr "L_Fing_2_02_Jnt_scaleConstraint1.csz" "L_Fing_2_02_Jnt.sz";
connectAttr "L_Fing_2_02_Jnt_parentConstraint1.ctx" "L_Fing_2_02_Jnt.tx";
connectAttr "L_Fing_2_02_Jnt_parentConstraint1.cty" "L_Fing_2_02_Jnt.ty";
connectAttr "L_Fing_2_02_Jnt_parentConstraint1.ctz" "L_Fing_2_02_Jnt.tz";
connectAttr "L_Fing_2_02_Jnt_parentConstraint1.crx" "L_Fing_2_02_Jnt.rx";
connectAttr "L_Fing_2_02_Jnt_parentConstraint1.cry" "L_Fing_2_02_Jnt.ry";
connectAttr "L_Fing_2_02_Jnt_parentConstraint1.crz" "L_Fing_2_02_Jnt.rz";
connectAttr "L_Fing_2_02_Jnt.s" "L_Fing_2_03_Jnt.is";
connectAttr "L_Fing_2_03_Jnt_parentConstraint1.ctx" "L_Fing_2_03_Jnt.tx";
connectAttr "L_Fing_2_03_Jnt_parentConstraint1.cty" "L_Fing_2_03_Jnt.ty";
connectAttr "L_Fing_2_03_Jnt_parentConstraint1.ctz" "L_Fing_2_03_Jnt.tz";
connectAttr "L_Fing_2_03_Jnt_parentConstraint1.crx" "L_Fing_2_03_Jnt.rx";
connectAttr "L_Fing_2_03_Jnt_parentConstraint1.cry" "L_Fing_2_03_Jnt.ry";
connectAttr "L_Fing_2_03_Jnt_parentConstraint1.crz" "L_Fing_2_03_Jnt.rz";
connectAttr "L_Fing_2_03_Jnt_scaleConstraint1.csx" "L_Fing_2_03_Jnt.sx";
connectAttr "L_Fing_2_03_Jnt_scaleConstraint1.csy" "L_Fing_2_03_Jnt.sy";
connectAttr "L_Fing_2_03_Jnt_scaleConstraint1.csz" "L_Fing_2_03_Jnt.sz";
connectAttr "L_Fing_2_03_Jnt.ro" "L_Fing_2_03_Jnt_parentConstraint1.cro";
connectAttr "L_Fing_2_03_Jnt.pim" "L_Fing_2_03_Jnt_parentConstraint1.cpim";
connectAttr "L_Fing_2_03_Jnt.rp" "L_Fing_2_03_Jnt_parentConstraint1.crp";
connectAttr "L_Fing_2_03_Jnt.rpt" "L_Fing_2_03_Jnt_parentConstraint1.crt";
connectAttr "L_Fing_2_03_Jnt.jo" "L_Fing_2_03_Jnt_parentConstraint1.cjo";
connectAttr "L_Finger_2_03_Ctrl.t" "L_Fing_2_03_Jnt_parentConstraint1.tg[0].tt";
connectAttr "L_Finger_2_03_Ctrl.rp" "L_Fing_2_03_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "L_Finger_2_03_Ctrl.rpt" "L_Fing_2_03_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Finger_2_03_Ctrl.r" "L_Fing_2_03_Jnt_parentConstraint1.tg[0].tr";
connectAttr "L_Finger_2_03_Ctrl.ro" "L_Fing_2_03_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "L_Finger_2_03_Ctrl.s" "L_Fing_2_03_Jnt_parentConstraint1.tg[0].ts";
connectAttr "L_Finger_2_03_Ctrl.pm" "L_Fing_2_03_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_Fing_2_03_Jnt_parentConstraint1.w0" "L_Fing_2_03_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Fing_2_03_Jnt.ssc" "L_Fing_2_03_Jnt_scaleConstraint1.tsc";
connectAttr "L_Fing_2_03_Jnt.pim" "L_Fing_2_03_Jnt_scaleConstraint1.cpim";
connectAttr "L_Finger_2_03_Ctrl.s" "L_Fing_2_03_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "L_Finger_2_03_Ctrl.pm" "L_Fing_2_03_Jnt_scaleConstraint1.tg[0].tpm"
		;
connectAttr "L_Fing_2_03_Jnt_scaleConstraint1.w0" "L_Fing_2_03_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Fing_2_02_Jnt.ro" "L_Fing_2_02_Jnt_parentConstraint1.cro";
connectAttr "L_Fing_2_02_Jnt.pim" "L_Fing_2_02_Jnt_parentConstraint1.cpim";
connectAttr "L_Fing_2_02_Jnt.rp" "L_Fing_2_02_Jnt_parentConstraint1.crp";
connectAttr "L_Fing_2_02_Jnt.rpt" "L_Fing_2_02_Jnt_parentConstraint1.crt";
connectAttr "L_Fing_2_02_Jnt.jo" "L_Fing_2_02_Jnt_parentConstraint1.cjo";
connectAttr "L_Finger_2_02_Ctrl.t" "L_Fing_2_02_Jnt_parentConstraint1.tg[0].tt";
connectAttr "L_Finger_2_02_Ctrl.rp" "L_Fing_2_02_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "L_Finger_2_02_Ctrl.rpt" "L_Fing_2_02_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Finger_2_02_Ctrl.r" "L_Fing_2_02_Jnt_parentConstraint1.tg[0].tr";
connectAttr "L_Finger_2_02_Ctrl.ro" "L_Fing_2_02_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "L_Finger_2_02_Ctrl.s" "L_Fing_2_02_Jnt_parentConstraint1.tg[0].ts";
connectAttr "L_Finger_2_02_Ctrl.pm" "L_Fing_2_02_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_Fing_2_02_Jnt_parentConstraint1.w0" "L_Fing_2_02_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Fing_2_02_Jnt.ssc" "L_Fing_2_02_Jnt_scaleConstraint1.tsc";
connectAttr "L_Fing_2_02_Jnt.pim" "L_Fing_2_02_Jnt_scaleConstraint1.cpim";
connectAttr "L_Finger_2_02_Ctrl.s" "L_Fing_2_02_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "L_Finger_2_02_Ctrl.pm" "L_Fing_2_02_Jnt_scaleConstraint1.tg[0].tpm"
		;
connectAttr "L_Fing_2_02_Jnt_scaleConstraint1.w0" "L_Fing_2_02_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Fing_2_01_Jnt.ro" "L_Fing_2_01_Jnt_parentConstraint1.cro";
connectAttr "L_Fing_2_01_Jnt.pim" "L_Fing_2_01_Jnt_parentConstraint1.cpim";
connectAttr "L_Fing_2_01_Jnt.rp" "L_Fing_2_01_Jnt_parentConstraint1.crp";
connectAttr "L_Fing_2_01_Jnt.rpt" "L_Fing_2_01_Jnt_parentConstraint1.crt";
connectAttr "L_Fing_2_01_Jnt.jo" "L_Fing_2_01_Jnt_parentConstraint1.cjo";
connectAttr "L_Finger_2_01_Ctrl.t" "L_Fing_2_01_Jnt_parentConstraint1.tg[0].tt";
connectAttr "L_Finger_2_01_Ctrl.rp" "L_Fing_2_01_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "L_Finger_2_01_Ctrl.rpt" "L_Fing_2_01_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Finger_2_01_Ctrl.r" "L_Fing_2_01_Jnt_parentConstraint1.tg[0].tr";
connectAttr "L_Finger_2_01_Ctrl.ro" "L_Fing_2_01_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "L_Finger_2_01_Ctrl.s" "L_Fing_2_01_Jnt_parentConstraint1.tg[0].ts";
connectAttr "L_Finger_2_01_Ctrl.pm" "L_Fing_2_01_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_Fing_2_01_Jnt_parentConstraint1.w0" "L_Fing_2_01_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Fing_2_01_Jnt.ssc" "L_Fing_2_01_Jnt_scaleConstraint1.tsc";
connectAttr "L_Fing_2_01_Jnt.pim" "L_Fing_2_01_Jnt_scaleConstraint1.cpim";
connectAttr "L_Finger_2_01_Ctrl.s" "L_Fing_2_01_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "L_Finger_2_01_Ctrl.pm" "L_Fing_2_01_Jnt_scaleConstraint1.tg[0].tpm"
		;
connectAttr "L_Fing_2_01_Jnt_scaleConstraint1.w0" "L_Fing_2_01_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Hand_0.s" "L_Fing_1_01_Jnt.is";
connectAttr "L_Fing_1_01_Jnt_scaleConstraint1.csx" "L_Fing_1_01_Jnt.sx";
connectAttr "L_Fing_1_01_Jnt_scaleConstraint1.csy" "L_Fing_1_01_Jnt.sy";
connectAttr "L_Fing_1_01_Jnt_scaleConstraint1.csz" "L_Fing_1_01_Jnt.sz";
connectAttr "L_Fing_1_01_Jnt_parentConstraint1.ctx" "L_Fing_1_01_Jnt.tx";
connectAttr "L_Fing_1_01_Jnt_parentConstraint1.cty" "L_Fing_1_01_Jnt.ty";
connectAttr "L_Fing_1_01_Jnt_parentConstraint1.ctz" "L_Fing_1_01_Jnt.tz";
connectAttr "L_Fing_1_01_Jnt_parentConstraint1.crx" "L_Fing_1_01_Jnt.rx";
connectAttr "L_Fing_1_01_Jnt_parentConstraint1.cry" "L_Fing_1_01_Jnt.ry";
connectAttr "L_Fing_1_01_Jnt_parentConstraint1.crz" "L_Fing_1_01_Jnt.rz";
connectAttr "L_Fing_1_01_Jnt.s" "L_Fing_1_02_Jnt.is";
connectAttr "L_Fing_1_02_Jnt_scaleConstraint1.csx" "L_Fing_1_02_Jnt.sx";
connectAttr "L_Fing_1_02_Jnt_scaleConstraint1.csy" "L_Fing_1_02_Jnt.sy";
connectAttr "L_Fing_1_02_Jnt_scaleConstraint1.csz" "L_Fing_1_02_Jnt.sz";
connectAttr "L_Fing_1_02_Jnt_parentConstraint1.ctx" "L_Fing_1_02_Jnt.tx";
connectAttr "L_Fing_1_02_Jnt_parentConstraint1.cty" "L_Fing_1_02_Jnt.ty";
connectAttr "L_Fing_1_02_Jnt_parentConstraint1.ctz" "L_Fing_1_02_Jnt.tz";
connectAttr "L_Fing_1_02_Jnt_parentConstraint1.crx" "L_Fing_1_02_Jnt.rx";
connectAttr "L_Fing_1_02_Jnt_parentConstraint1.cry" "L_Fing_1_02_Jnt.ry";
connectAttr "L_Fing_1_02_Jnt_parentConstraint1.crz" "L_Fing_1_02_Jnt.rz";
connectAttr "L_Fing_1_02_Jnt.s" "L_Fing_1_03_Jnt.is";
connectAttr "L_Fing_1_03_Jnt_parentConstraint1.ctx" "L_Fing_1_03_Jnt.tx";
connectAttr "L_Fing_1_03_Jnt_parentConstraint1.cty" "L_Fing_1_03_Jnt.ty";
connectAttr "L_Fing_1_03_Jnt_parentConstraint1.ctz" "L_Fing_1_03_Jnt.tz";
connectAttr "L_Fing_1_03_Jnt_parentConstraint1.crx" "L_Fing_1_03_Jnt.rx";
connectAttr "L_Fing_1_03_Jnt_parentConstraint1.cry" "L_Fing_1_03_Jnt.ry";
connectAttr "L_Fing_1_03_Jnt_parentConstraint1.crz" "L_Fing_1_03_Jnt.rz";
connectAttr "L_Fing_1_03_Jnt_scaleConstraint1.csx" "L_Fing_1_03_Jnt.sx";
connectAttr "L_Fing_1_03_Jnt_scaleConstraint1.csy" "L_Fing_1_03_Jnt.sy";
connectAttr "L_Fing_1_03_Jnt_scaleConstraint1.csz" "L_Fing_1_03_Jnt.sz";
connectAttr "L_Fing_1_03_Jnt.ro" "L_Fing_1_03_Jnt_parentConstraint1.cro";
connectAttr "L_Fing_1_03_Jnt.pim" "L_Fing_1_03_Jnt_parentConstraint1.cpim";
connectAttr "L_Fing_1_03_Jnt.rp" "L_Fing_1_03_Jnt_parentConstraint1.crp";
connectAttr "L_Fing_1_03_Jnt.rpt" "L_Fing_1_03_Jnt_parentConstraint1.crt";
connectAttr "L_Fing_1_03_Jnt.jo" "L_Fing_1_03_Jnt_parentConstraint1.cjo";
connectAttr "L_Finger_1_03_Ctrl.t" "L_Fing_1_03_Jnt_parentConstraint1.tg[0].tt";
connectAttr "L_Finger_1_03_Ctrl.rp" "L_Fing_1_03_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "L_Finger_1_03_Ctrl.rpt" "L_Fing_1_03_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Finger_1_03_Ctrl.r" "L_Fing_1_03_Jnt_parentConstraint1.tg[0].tr";
connectAttr "L_Finger_1_03_Ctrl.ro" "L_Fing_1_03_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "L_Finger_1_03_Ctrl.s" "L_Fing_1_03_Jnt_parentConstraint1.tg[0].ts";
connectAttr "L_Finger_1_03_Ctrl.pm" "L_Fing_1_03_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_Fing_1_03_Jnt_parentConstraint1.w0" "L_Fing_1_03_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Fing_1_03_Jnt.ssc" "L_Fing_1_03_Jnt_scaleConstraint1.tsc";
connectAttr "L_Fing_1_03_Jnt.pim" "L_Fing_1_03_Jnt_scaleConstraint1.cpim";
connectAttr "L_Finger_1_03_Ctrl.s" "L_Fing_1_03_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "L_Finger_1_03_Ctrl.pm" "L_Fing_1_03_Jnt_scaleConstraint1.tg[0].tpm"
		;
connectAttr "L_Fing_1_03_Jnt_scaleConstraint1.w0" "L_Fing_1_03_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Fing_1_02_Jnt.ro" "L_Fing_1_02_Jnt_parentConstraint1.cro";
connectAttr "L_Fing_1_02_Jnt.pim" "L_Fing_1_02_Jnt_parentConstraint1.cpim";
connectAttr "L_Fing_1_02_Jnt.rp" "L_Fing_1_02_Jnt_parentConstraint1.crp";
connectAttr "L_Fing_1_02_Jnt.rpt" "L_Fing_1_02_Jnt_parentConstraint1.crt";
connectAttr "L_Fing_1_02_Jnt.jo" "L_Fing_1_02_Jnt_parentConstraint1.cjo";
connectAttr "L_Finger_1_02_Ctrl.t" "L_Fing_1_02_Jnt_parentConstraint1.tg[0].tt";
connectAttr "L_Finger_1_02_Ctrl.rp" "L_Fing_1_02_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "L_Finger_1_02_Ctrl.rpt" "L_Fing_1_02_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Finger_1_02_Ctrl.r" "L_Fing_1_02_Jnt_parentConstraint1.tg[0].tr";
connectAttr "L_Finger_1_02_Ctrl.ro" "L_Fing_1_02_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "L_Finger_1_02_Ctrl.s" "L_Fing_1_02_Jnt_parentConstraint1.tg[0].ts";
connectAttr "L_Finger_1_02_Ctrl.pm" "L_Fing_1_02_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_Fing_1_02_Jnt_parentConstraint1.w0" "L_Fing_1_02_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Fing_1_02_Jnt.ssc" "L_Fing_1_02_Jnt_scaleConstraint1.tsc";
connectAttr "L_Fing_1_02_Jnt.pim" "L_Fing_1_02_Jnt_scaleConstraint1.cpim";
connectAttr "L_Finger_1_02_Ctrl.s" "L_Fing_1_02_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "L_Finger_1_02_Ctrl.pm" "L_Fing_1_02_Jnt_scaleConstraint1.tg[0].tpm"
		;
connectAttr "L_Fing_1_02_Jnt_scaleConstraint1.w0" "L_Fing_1_02_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Fing_1_01_Jnt.ro" "L_Fing_1_01_Jnt_parentConstraint1.cro";
connectAttr "L_Fing_1_01_Jnt.pim" "L_Fing_1_01_Jnt_parentConstraint1.cpim";
connectAttr "L_Fing_1_01_Jnt.rp" "L_Fing_1_01_Jnt_parentConstraint1.crp";
connectAttr "L_Fing_1_01_Jnt.rpt" "L_Fing_1_01_Jnt_parentConstraint1.crt";
connectAttr "L_Fing_1_01_Jnt.jo" "L_Fing_1_01_Jnt_parentConstraint1.cjo";
connectAttr "L_Finger_1_01_Ctrl.t" "L_Fing_1_01_Jnt_parentConstraint1.tg[0].tt";
connectAttr "L_Finger_1_01_Ctrl.rp" "L_Fing_1_01_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "L_Finger_1_01_Ctrl.rpt" "L_Fing_1_01_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Finger_1_01_Ctrl.r" "L_Fing_1_01_Jnt_parentConstraint1.tg[0].tr";
connectAttr "L_Finger_1_01_Ctrl.ro" "L_Fing_1_01_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "L_Finger_1_01_Ctrl.s" "L_Fing_1_01_Jnt_parentConstraint1.tg[0].ts";
connectAttr "L_Finger_1_01_Ctrl.pm" "L_Fing_1_01_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_Fing_1_01_Jnt_parentConstraint1.w0" "L_Fing_1_01_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Fing_1_01_Jnt.ssc" "L_Fing_1_01_Jnt_scaleConstraint1.tsc";
connectAttr "L_Fing_1_01_Jnt.pim" "L_Fing_1_01_Jnt_scaleConstraint1.cpim";
connectAttr "L_Finger_1_01_Ctrl.s" "L_Fing_1_01_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "L_Finger_1_01_Ctrl.pm" "L_Fing_1_01_Jnt_scaleConstraint1.tg[0].tpm"
		;
connectAttr "L_Fing_1_01_Jnt_scaleConstraint1.w0" "L_Fing_1_01_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Hand_0.s" "L_Thumb_01_Jnt.is";
connectAttr "L_Thumb_01_Jnt_scaleConstraint1.csx" "L_Thumb_01_Jnt.sx";
connectAttr "L_Thumb_01_Jnt_scaleConstraint1.csy" "L_Thumb_01_Jnt.sy";
connectAttr "L_Thumb_01_Jnt_scaleConstraint1.csz" "L_Thumb_01_Jnt.sz";
connectAttr "L_Thumb_01_Jnt_parentConstraint1.ctx" "L_Thumb_01_Jnt.tx";
connectAttr "L_Thumb_01_Jnt_parentConstraint1.cty" "L_Thumb_01_Jnt.ty";
connectAttr "L_Thumb_01_Jnt_parentConstraint1.ctz" "L_Thumb_01_Jnt.tz";
connectAttr "L_Thumb_01_Jnt_parentConstraint1.crx" "L_Thumb_01_Jnt.rx";
connectAttr "L_Thumb_01_Jnt_parentConstraint1.cry" "L_Thumb_01_Jnt.ry";
connectAttr "L_Thumb_01_Jnt_parentConstraint1.crz" "L_Thumb_01_Jnt.rz";
connectAttr "L_Thumb_01_Jnt.s" "L_Thumb_02_Jnt.is";
connectAttr "L_Thumb_02_Jnt_scaleConstraint1.csx" "L_Thumb_02_Jnt.sx";
connectAttr "L_Thumb_02_Jnt_scaleConstraint1.csy" "L_Thumb_02_Jnt.sy";
connectAttr "L_Thumb_02_Jnt_scaleConstraint1.csz" "L_Thumb_02_Jnt.sz";
connectAttr "L_Thumb_02_Jnt_parentConstraint1.ctx" "L_Thumb_02_Jnt.tx";
connectAttr "L_Thumb_02_Jnt_parentConstraint1.cty" "L_Thumb_02_Jnt.ty";
connectAttr "L_Thumb_02_Jnt_parentConstraint1.ctz" "L_Thumb_02_Jnt.tz";
connectAttr "L_Thumb_02_Jnt_parentConstraint1.crx" "L_Thumb_02_Jnt.rx";
connectAttr "L_Thumb_02_Jnt_parentConstraint1.cry" "L_Thumb_02_Jnt.ry";
connectAttr "L_Thumb_02_Jnt_parentConstraint1.crz" "L_Thumb_02_Jnt.rz";
connectAttr "L_Thumb_02_Jnt.s" "L_Thumb_03_Jnt.is";
connectAttr "L_Thumb_03_Jnt_parentConstraint1.ctx" "L_Thumb_03_Jnt.tx";
connectAttr "L_Thumb_03_Jnt_parentConstraint1.cty" "L_Thumb_03_Jnt.ty";
connectAttr "L_Thumb_03_Jnt_parentConstraint1.ctz" "L_Thumb_03_Jnt.tz";
connectAttr "L_Thumb_03_Jnt_parentConstraint1.crx" "L_Thumb_03_Jnt.rx";
connectAttr "L_Thumb_03_Jnt_parentConstraint1.cry" "L_Thumb_03_Jnt.ry";
connectAttr "L_Thumb_03_Jnt_parentConstraint1.crz" "L_Thumb_03_Jnt.rz";
connectAttr "L_Thumb_03_Jnt_scaleConstraint1.csx" "L_Thumb_03_Jnt.sx";
connectAttr "L_Thumb_03_Jnt_scaleConstraint1.csy" "L_Thumb_03_Jnt.sy";
connectAttr "L_Thumb_03_Jnt_scaleConstraint1.csz" "L_Thumb_03_Jnt.sz";
connectAttr "L_Thumb_03_Jnt.ro" "L_Thumb_03_Jnt_parentConstraint1.cro";
connectAttr "L_Thumb_03_Jnt.pim" "L_Thumb_03_Jnt_parentConstraint1.cpim";
connectAttr "L_Thumb_03_Jnt.rp" "L_Thumb_03_Jnt_parentConstraint1.crp";
connectAttr "L_Thumb_03_Jnt.rpt" "L_Thumb_03_Jnt_parentConstraint1.crt";
connectAttr "L_Thumb_03_Jnt.jo" "L_Thumb_03_Jnt_parentConstraint1.cjo";
connectAttr "L_Thumb_03_Ctrl.t" "L_Thumb_03_Jnt_parentConstraint1.tg[0].tt";
connectAttr "L_Thumb_03_Ctrl.rp" "L_Thumb_03_Jnt_parentConstraint1.tg[0].trp";
connectAttr "L_Thumb_03_Ctrl.rpt" "L_Thumb_03_Jnt_parentConstraint1.tg[0].trt";
connectAttr "L_Thumb_03_Ctrl.r" "L_Thumb_03_Jnt_parentConstraint1.tg[0].tr";
connectAttr "L_Thumb_03_Ctrl.ro" "L_Thumb_03_Jnt_parentConstraint1.tg[0].tro";
connectAttr "L_Thumb_03_Ctrl.s" "L_Thumb_03_Jnt_parentConstraint1.tg[0].ts";
connectAttr "L_Thumb_03_Ctrl.pm" "L_Thumb_03_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "L_Thumb_03_Jnt_parentConstraint1.w0" "L_Thumb_03_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Thumb_03_Jnt.ssc" "L_Thumb_03_Jnt_scaleConstraint1.tsc";
connectAttr "L_Thumb_03_Jnt.pim" "L_Thumb_03_Jnt_scaleConstraint1.cpim";
connectAttr "L_Thumb_03_Ctrl.s" "L_Thumb_03_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "L_Thumb_03_Ctrl.pm" "L_Thumb_03_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "L_Thumb_03_Jnt_scaleConstraint1.w0" "L_Thumb_03_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Thumb_02_Jnt.ro" "L_Thumb_02_Jnt_parentConstraint1.cro";
connectAttr "L_Thumb_02_Jnt.pim" "L_Thumb_02_Jnt_parentConstraint1.cpim";
connectAttr "L_Thumb_02_Jnt.rp" "L_Thumb_02_Jnt_parentConstraint1.crp";
connectAttr "L_Thumb_02_Jnt.rpt" "L_Thumb_02_Jnt_parentConstraint1.crt";
connectAttr "L_Thumb_02_Jnt.jo" "L_Thumb_02_Jnt_parentConstraint1.cjo";
connectAttr "L_Thumb_02_Ctrl.t" "L_Thumb_02_Jnt_parentConstraint1.tg[0].tt";
connectAttr "L_Thumb_02_Ctrl.rp" "L_Thumb_02_Jnt_parentConstraint1.tg[0].trp";
connectAttr "L_Thumb_02_Ctrl.rpt" "L_Thumb_02_Jnt_parentConstraint1.tg[0].trt";
connectAttr "L_Thumb_02_Ctrl.r" "L_Thumb_02_Jnt_parentConstraint1.tg[0].tr";
connectAttr "L_Thumb_02_Ctrl.ro" "L_Thumb_02_Jnt_parentConstraint1.tg[0].tro";
connectAttr "L_Thumb_02_Ctrl.s" "L_Thumb_02_Jnt_parentConstraint1.tg[0].ts";
connectAttr "L_Thumb_02_Ctrl.pm" "L_Thumb_02_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "L_Thumb_02_Jnt_parentConstraint1.w0" "L_Thumb_02_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Thumb_02_Jnt.ssc" "L_Thumb_02_Jnt_scaleConstraint1.tsc";
connectAttr "L_Thumb_02_Jnt.pim" "L_Thumb_02_Jnt_scaleConstraint1.cpim";
connectAttr "L_Thumb_02_Ctrl.s" "L_Thumb_02_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "L_Thumb_02_Ctrl.pm" "L_Thumb_02_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "L_Thumb_02_Jnt_scaleConstraint1.w0" "L_Thumb_02_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Thumb_01_Jnt.ro" "L_Thumb_01_Jnt_parentConstraint1.cro";
connectAttr "L_Thumb_01_Jnt.pim" "L_Thumb_01_Jnt_parentConstraint1.cpim";
connectAttr "L_Thumb_01_Jnt.rp" "L_Thumb_01_Jnt_parentConstraint1.crp";
connectAttr "L_Thumb_01_Jnt.rpt" "L_Thumb_01_Jnt_parentConstraint1.crt";
connectAttr "L_Thumb_01_Jnt.jo" "L_Thumb_01_Jnt_parentConstraint1.cjo";
connectAttr "L_Thumb_01_Ctrl.t" "L_Thumb_01_Jnt_parentConstraint1.tg[0].tt";
connectAttr "L_Thumb_01_Ctrl.rp" "L_Thumb_01_Jnt_parentConstraint1.tg[0].trp";
connectAttr "L_Thumb_01_Ctrl.rpt" "L_Thumb_01_Jnt_parentConstraint1.tg[0].trt";
connectAttr "L_Thumb_01_Ctrl.r" "L_Thumb_01_Jnt_parentConstraint1.tg[0].tr";
connectAttr "L_Thumb_01_Ctrl.ro" "L_Thumb_01_Jnt_parentConstraint1.tg[0].tro";
connectAttr "L_Thumb_01_Ctrl.s" "L_Thumb_01_Jnt_parentConstraint1.tg[0].ts";
connectAttr "L_Thumb_01_Ctrl.pm" "L_Thumb_01_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "L_Thumb_01_Jnt_parentConstraint1.w0" "L_Thumb_01_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Thumb_01_Jnt.ssc" "L_Thumb_01_Jnt_scaleConstraint1.tsc";
connectAttr "L_Thumb_01_Jnt.pim" "L_Thumb_01_Jnt_scaleConstraint1.cpim";
connectAttr "L_Thumb_01_Ctrl.s" "L_Thumb_01_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "L_Thumb_01_Ctrl.pm" "L_Thumb_01_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "L_Thumb_01_Jnt_scaleConstraint1.w0" "L_Thumb_01_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Hand_0.ro" "L_Hand_0_parentConstraint1.cro";
connectAttr "L_Hand_0.pim" "L_Hand_0_parentConstraint1.cpim";
connectAttr "L_Hand_0.rp" "L_Hand_0_parentConstraint1.crp";
connectAttr "L_Hand_0.rpt" "L_Hand_0_parentConstraint1.crt";
connectAttr "L_Hand_0.jo" "L_Hand_0_parentConstraint1.cjo";
connectAttr "L_Hand_Ctrl.t" "L_Hand_0_parentConstraint1.tg[0].tt";
connectAttr "L_Hand_Ctrl.rp" "L_Hand_0_parentConstraint1.tg[0].trp";
connectAttr "L_Hand_Ctrl.rpt" "L_Hand_0_parentConstraint1.tg[0].trt";
connectAttr "L_Hand_Ctrl.r" "L_Hand_0_parentConstraint1.tg[0].tr";
connectAttr "L_Hand_Ctrl.ro" "L_Hand_0_parentConstraint1.tg[0].tro";
connectAttr "L_Hand_Ctrl.s" "L_Hand_0_parentConstraint1.tg[0].ts";
connectAttr "L_Hand_Ctrl.pm" "L_Hand_0_parentConstraint1.tg[0].tpm";
connectAttr "L_Hand_0_parentConstraint1.w0" "L_Hand_0_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Hand_0.pim" "L_Hand_0_scaleConstraint1.cpim";
connectAttr "L_Hand_Ctrl.s" "L_Hand_0_scaleConstraint1.tg[0].ts";
connectAttr "L_Hand_Ctrl.pm" "L_Hand_0_scaleConstraint1.tg[0].tpm";
connectAttr "L_Hand_0_scaleConstraint1.w0" "L_Hand_0_scaleConstraint1.tg[0].tw";
connectAttr "L_RK_Arm_03_Jnt.ro" "L_RK_Arm_03_Jnt_parentConstraint1.cro";
connectAttr "L_RK_Arm_03_Jnt.pim" "L_RK_Arm_03_Jnt_parentConstraint1.cpim";
connectAttr "L_RK_Arm_03_Jnt.rp" "L_RK_Arm_03_Jnt_parentConstraint1.crp";
connectAttr "L_RK_Arm_03_Jnt.rpt" "L_RK_Arm_03_Jnt_parentConstraint1.crt";
connectAttr "L_RK_Arm_03_Jnt.jo" "L_RK_Arm_03_Jnt_parentConstraint1.cjo";
connectAttr "L_FK_Arm_03_Jnt.t" "L_RK_Arm_03_Jnt_parentConstraint1.tg[0].tt";
connectAttr "L_FK_Arm_03_Jnt.rp" "L_RK_Arm_03_Jnt_parentConstraint1.tg[0].trp";
connectAttr "L_FK_Arm_03_Jnt.rpt" "L_RK_Arm_03_Jnt_parentConstraint1.tg[0].trt";
connectAttr "L_FK_Arm_03_Jnt.r" "L_RK_Arm_03_Jnt_parentConstraint1.tg[0].tr";
connectAttr "L_FK_Arm_03_Jnt.ro" "L_RK_Arm_03_Jnt_parentConstraint1.tg[0].tro";
connectAttr "L_FK_Arm_03_Jnt.s" "L_RK_Arm_03_Jnt_parentConstraint1.tg[0].ts";
connectAttr "L_FK_Arm_03_Jnt.pm" "L_RK_Arm_03_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "L_FK_Arm_03_Jnt.jo" "L_RK_Arm_03_Jnt_parentConstraint1.tg[0].tjo";
connectAttr "L_FK_Arm_03_Jnt.ssc" "L_RK_Arm_03_Jnt_parentConstraint1.tg[0].tsc";
connectAttr "L_FK_Arm_03_Jnt.is" "L_RK_Arm_03_Jnt_parentConstraint1.tg[0].tis";
connectAttr "L_RK_Arm_03_Jnt_parentConstraint1.w0" "L_RK_Arm_03_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_IK_Arm_03_Jnt.t" "L_RK_Arm_03_Jnt_parentConstraint1.tg[1].tt";
connectAttr "L_IK_Arm_03_Jnt.rp" "L_RK_Arm_03_Jnt_parentConstraint1.tg[1].trp";
connectAttr "L_IK_Arm_03_Jnt.rpt" "L_RK_Arm_03_Jnt_parentConstraint1.tg[1].trt";
connectAttr "L_IK_Arm_03_Jnt.r" "L_RK_Arm_03_Jnt_parentConstraint1.tg[1].tr";
connectAttr "L_IK_Arm_03_Jnt.ro" "L_RK_Arm_03_Jnt_parentConstraint1.tg[1].tro";
connectAttr "L_IK_Arm_03_Jnt.s" "L_RK_Arm_03_Jnt_parentConstraint1.tg[1].ts";
connectAttr "L_IK_Arm_03_Jnt.pm" "L_RK_Arm_03_Jnt_parentConstraint1.tg[1].tpm";
connectAttr "L_IK_Arm_03_Jnt.jo" "L_RK_Arm_03_Jnt_parentConstraint1.tg[1].tjo";
connectAttr "L_IK_Arm_03_Jnt.ssc" "L_RK_Arm_03_Jnt_parentConstraint1.tg[1].tsc";
connectAttr "L_IK_Arm_03_Jnt.is" "L_RK_Arm_03_Jnt_parentConstraint1.tg[1].tis";
connectAttr "L_RK_Arm_03_Jnt_parentConstraint1.w1" "L_RK_Arm_03_Jnt_parentConstraint1.tg[1].tw"
		;
connectAttr "Transform_Ctrl.L_Arm_IKFK" "L_RK_Arm_03_Jnt_parentConstraint1.w0";
connectAttr "L_Arm_IKFKRev.ox" "L_RK_Arm_03_Jnt_parentConstraint1.w1";
connectAttr "L_RK_Arm_02_Jnt.ro" "L_RK_Arm_02_Jnt_parentConstraint1.cro";
connectAttr "L_RK_Arm_02_Jnt.pim" "L_RK_Arm_02_Jnt_parentConstraint1.cpim";
connectAttr "L_RK_Arm_02_Jnt.rp" "L_RK_Arm_02_Jnt_parentConstraint1.crp";
connectAttr "L_RK_Arm_02_Jnt.rpt" "L_RK_Arm_02_Jnt_parentConstraint1.crt";
connectAttr "L_RK_Arm_02_Jnt.jo" "L_RK_Arm_02_Jnt_parentConstraint1.cjo";
connectAttr "L_FK_Arm_02_Jnt.t" "L_RK_Arm_02_Jnt_parentConstraint1.tg[0].tt";
connectAttr "L_FK_Arm_02_Jnt.rp" "L_RK_Arm_02_Jnt_parentConstraint1.tg[0].trp";
connectAttr "L_FK_Arm_02_Jnt.rpt" "L_RK_Arm_02_Jnt_parentConstraint1.tg[0].trt";
connectAttr "L_FK_Arm_02_Jnt.r" "L_RK_Arm_02_Jnt_parentConstraint1.tg[0].tr";
connectAttr "L_FK_Arm_02_Jnt.ro" "L_RK_Arm_02_Jnt_parentConstraint1.tg[0].tro";
connectAttr "L_FK_Arm_02_Jnt.s" "L_RK_Arm_02_Jnt_parentConstraint1.tg[0].ts";
connectAttr "L_FK_Arm_02_Jnt.pm" "L_RK_Arm_02_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "L_FK_Arm_02_Jnt.jo" "L_RK_Arm_02_Jnt_parentConstraint1.tg[0].tjo";
connectAttr "L_FK_Arm_02_Jnt.ssc" "L_RK_Arm_02_Jnt_parentConstraint1.tg[0].tsc";
connectAttr "L_FK_Arm_02_Jnt.is" "L_RK_Arm_02_Jnt_parentConstraint1.tg[0].tis";
connectAttr "L_RK_Arm_02_Jnt_parentConstraint1.w0" "L_RK_Arm_02_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_IK_Arm_02_Jnt.t" "L_RK_Arm_02_Jnt_parentConstraint1.tg[1].tt";
connectAttr "L_IK_Arm_02_Jnt.rp" "L_RK_Arm_02_Jnt_parentConstraint1.tg[1].trp";
connectAttr "L_IK_Arm_02_Jnt.rpt" "L_RK_Arm_02_Jnt_parentConstraint1.tg[1].trt";
connectAttr "L_IK_Arm_02_Jnt.r" "L_RK_Arm_02_Jnt_parentConstraint1.tg[1].tr";
connectAttr "L_IK_Arm_02_Jnt.ro" "L_RK_Arm_02_Jnt_parentConstraint1.tg[1].tro";
connectAttr "L_IK_Arm_02_Jnt.s" "L_RK_Arm_02_Jnt_parentConstraint1.tg[1].ts";
connectAttr "L_IK_Arm_02_Jnt.pm" "L_RK_Arm_02_Jnt_parentConstraint1.tg[1].tpm";
connectAttr "L_IK_Arm_02_Jnt.jo" "L_RK_Arm_02_Jnt_parentConstraint1.tg[1].tjo";
connectAttr "L_IK_Arm_02_Jnt.ssc" "L_RK_Arm_02_Jnt_parentConstraint1.tg[1].tsc";
connectAttr "L_IK_Arm_02_Jnt.is" "L_RK_Arm_02_Jnt_parentConstraint1.tg[1].tis";
connectAttr "L_RK_Arm_02_Jnt_parentConstraint1.w1" "L_RK_Arm_02_Jnt_parentConstraint1.tg[1].tw"
		;
connectAttr "Transform_Ctrl.L_Arm_IKFK" "L_RK_Arm_02_Jnt_parentConstraint1.w0";
connectAttr "L_Arm_IKFKRev.ox" "L_RK_Arm_02_Jnt_parentConstraint1.w1";
connectAttr "joint32_aimConstraint1.crx" "L_Pist_Shold_1.rx";
connectAttr "joint32_aimConstraint1.crz" "L_Pist_Shold_1.rz";
connectAttr "L_Pist_Shold_1.pim" "joint32_aimConstraint1.cpim";
connectAttr "L_Pist_Shold_1.t" "joint32_aimConstraint1.ct";
connectAttr "L_Pist_Shold_1.rp" "joint32_aimConstraint1.crp";
connectAttr "L_Pist_Shold_1.rpt" "joint32_aimConstraint1.crt";
connectAttr "L_Pist_Shold_1.ro" "joint32_aimConstraint1.cro";
connectAttr "L_Pist_Shold_1.jo" "joint32_aimConstraint1.cjo";
connectAttr "L_Pist_Shold_1.is" "joint32_aimConstraint1.is";
connectAttr "L_Pist_Base_1.t" "joint32_aimConstraint1.tg[0].tt";
connectAttr "L_Pist_Base_1.rp" "joint32_aimConstraint1.tg[0].trp";
connectAttr "L_Pist_Base_1.rpt" "joint32_aimConstraint1.tg[0].trt";
connectAttr "L_Pist_Base_1.pm" "joint32_aimConstraint1.tg[0].tpm";
connectAttr "joint32_aimConstraint1.w0" "joint32_aimConstraint1.tg[0].tw";
connectAttr "joint34_aimConstraint1.crx" "L_Pist_Shold_2.rx";
connectAttr "joint34_aimConstraint1.crz" "L_Pist_Shold_2.rz";
connectAttr "L_Pist_Shold_2.pim" "joint34_aimConstraint1.cpim";
connectAttr "L_Pist_Shold_2.t" "joint34_aimConstraint1.ct";
connectAttr "L_Pist_Shold_2.rp" "joint34_aimConstraint1.crp";
connectAttr "L_Pist_Shold_2.rpt" "joint34_aimConstraint1.crt";
connectAttr "L_Pist_Shold_2.ro" "joint34_aimConstraint1.cro";
connectAttr "L_Pist_Shold_2.jo" "joint34_aimConstraint1.cjo";
connectAttr "L_Pist_Shold_2.is" "joint34_aimConstraint1.is";
connectAttr "L_Pist_Base_2.t" "joint34_aimConstraint1.tg[0].tt";
connectAttr "L_Pist_Base_2.rp" "joint34_aimConstraint1.tg[0].trp";
connectAttr "L_Pist_Base_2.rpt" "joint34_aimConstraint1.tg[0].trt";
connectAttr "L_Pist_Base_2.pm" "joint34_aimConstraint1.tg[0].tpm";
connectAttr "joint34_aimConstraint1.w0" "joint34_aimConstraint1.tg[0].tw";
connectAttr "joint36_aimConstraint1.crx" "L_Pist_Shold_3.rx";
connectAttr "joint36_aimConstraint1.crz" "L_Pist_Shold_3.rz";
connectAttr "L_Pist_Shold_3.pim" "joint36_aimConstraint1.cpim";
connectAttr "L_Pist_Shold_3.t" "joint36_aimConstraint1.ct";
connectAttr "L_Pist_Shold_3.rp" "joint36_aimConstraint1.crp";
connectAttr "L_Pist_Shold_3.rpt" "joint36_aimConstraint1.crt";
connectAttr "L_Pist_Shold_3.ro" "joint36_aimConstraint1.cro";
connectAttr "L_Pist_Shold_3.jo" "joint36_aimConstraint1.cjo";
connectAttr "L_Pist_Shold_3.is" "joint36_aimConstraint1.is";
connectAttr "L_Pist_Base_3.t" "joint36_aimConstraint1.tg[0].tt";
connectAttr "L_Pist_Base_3.rp" "joint36_aimConstraint1.tg[0].trp";
connectAttr "L_Pist_Base_3.rpt" "joint36_aimConstraint1.tg[0].trt";
connectAttr "L_Pist_Base_3.pm" "joint36_aimConstraint1.tg[0].tpm";
connectAttr "joint36_aimConstraint1.w0" "joint36_aimConstraint1.tg[0].tw";
connectAttr "joint38_aimConstraint1.crx" "L_Pist_Shold_4.rx";
connectAttr "joint38_aimConstraint1.crz" "L_Pist_Shold_4.rz";
connectAttr "L_Pist_Shold_4.pim" "joint38_aimConstraint1.cpim";
connectAttr "L_Pist_Shold_4.t" "joint38_aimConstraint1.ct";
connectAttr "L_Pist_Shold_4.rp" "joint38_aimConstraint1.crp";
connectAttr "L_Pist_Shold_4.rpt" "joint38_aimConstraint1.crt";
connectAttr "L_Pist_Shold_4.ro" "joint38_aimConstraint1.cro";
connectAttr "L_Pist_Shold_4.jo" "joint38_aimConstraint1.cjo";
connectAttr "L_Pist_Shold_4.is" "joint38_aimConstraint1.is";
connectAttr "L_Pist_Base_4.t" "joint38_aimConstraint1.tg[0].tt";
connectAttr "L_Pist_Base_4.rp" "joint38_aimConstraint1.tg[0].trp";
connectAttr "L_Pist_Base_4.rpt" "joint38_aimConstraint1.tg[0].trt";
connectAttr "L_Pist_Base_4.pm" "joint38_aimConstraint1.tg[0].tpm";
connectAttr "joint38_aimConstraint1.w0" "joint38_aimConstraint1.tg[0].tw";
connectAttr "L_RK_Arm_01_Jnt.ro" "L_RK_Arm_01_Jnt_parentConstraint1.cro";
connectAttr "L_RK_Arm_01_Jnt.pim" "L_RK_Arm_01_Jnt_parentConstraint1.cpim";
connectAttr "L_RK_Arm_01_Jnt.rp" "L_RK_Arm_01_Jnt_parentConstraint1.crp";
connectAttr "L_RK_Arm_01_Jnt.rpt" "L_RK_Arm_01_Jnt_parentConstraint1.crt";
connectAttr "L_RK_Arm_01_Jnt.jo" "L_RK_Arm_01_Jnt_parentConstraint1.cjo";
connectAttr "L_FK_Arm_01_Jnt.t" "L_RK_Arm_01_Jnt_parentConstraint1.tg[0].tt";
connectAttr "L_FK_Arm_01_Jnt.rp" "L_RK_Arm_01_Jnt_parentConstraint1.tg[0].trp";
connectAttr "L_FK_Arm_01_Jnt.rpt" "L_RK_Arm_01_Jnt_parentConstraint1.tg[0].trt";
connectAttr "L_FK_Arm_01_Jnt.r" "L_RK_Arm_01_Jnt_parentConstraint1.tg[0].tr";
connectAttr "L_FK_Arm_01_Jnt.ro" "L_RK_Arm_01_Jnt_parentConstraint1.tg[0].tro";
connectAttr "L_FK_Arm_01_Jnt.s" "L_RK_Arm_01_Jnt_parentConstraint1.tg[0].ts";
connectAttr "L_FK_Arm_01_Jnt.pm" "L_RK_Arm_01_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "L_FK_Arm_01_Jnt.jo" "L_RK_Arm_01_Jnt_parentConstraint1.tg[0].tjo";
connectAttr "L_FK_Arm_01_Jnt.ssc" "L_RK_Arm_01_Jnt_parentConstraint1.tg[0].tsc";
connectAttr "L_FK_Arm_01_Jnt.is" "L_RK_Arm_01_Jnt_parentConstraint1.tg[0].tis";
connectAttr "L_RK_Arm_01_Jnt_parentConstraint1.w0" "L_RK_Arm_01_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_IK_Arm_01_Jnt.t" "L_RK_Arm_01_Jnt_parentConstraint1.tg[1].tt";
connectAttr "L_IK_Arm_01_Jnt.rp" "L_RK_Arm_01_Jnt_parentConstraint1.tg[1].trp";
connectAttr "L_IK_Arm_01_Jnt.rpt" "L_RK_Arm_01_Jnt_parentConstraint1.tg[1].trt";
connectAttr "L_IK_Arm_01_Jnt.r" "L_RK_Arm_01_Jnt_parentConstraint1.tg[1].tr";
connectAttr "L_IK_Arm_01_Jnt.ro" "L_RK_Arm_01_Jnt_parentConstraint1.tg[1].tro";
connectAttr "L_IK_Arm_01_Jnt.s" "L_RK_Arm_01_Jnt_parentConstraint1.tg[1].ts";
connectAttr "L_IK_Arm_01_Jnt.pm" "L_RK_Arm_01_Jnt_parentConstraint1.tg[1].tpm";
connectAttr "L_IK_Arm_01_Jnt.jo" "L_RK_Arm_01_Jnt_parentConstraint1.tg[1].tjo";
connectAttr "L_IK_Arm_01_Jnt.ssc" "L_RK_Arm_01_Jnt_parentConstraint1.tg[1].tsc";
connectAttr "L_IK_Arm_01_Jnt.is" "L_RK_Arm_01_Jnt_parentConstraint1.tg[1].tis";
connectAttr "L_RK_Arm_01_Jnt_parentConstraint1.w1" "L_RK_Arm_01_Jnt_parentConstraint1.tg[1].tw"
		;
connectAttr "Transform_Ctrl.L_Arm_IKFK" "L_RK_Arm_01_Jnt_parentConstraint1.w0";
connectAttr "L_Arm_IKFKRev.ox" "L_RK_Arm_01_Jnt_parentConstraint1.w1";
connectAttr "L_Clav_Jnt.ro" "L_Clav_Jnt_parentConstraint1.cro";
connectAttr "L_Clav_Jnt.pim" "L_Clav_Jnt_parentConstraint1.cpim";
connectAttr "L_Clav_Jnt.rp" "L_Clav_Jnt_parentConstraint1.crp";
connectAttr "L_Clav_Jnt.rpt" "L_Clav_Jnt_parentConstraint1.crt";
connectAttr "L_Clav_Jnt.jo" "L_Clav_Jnt_parentConstraint1.cjo";
connectAttr "L_Clav_Ctrl.t" "L_Clav_Jnt_parentConstraint1.tg[0].tt";
connectAttr "L_Clav_Ctrl.rp" "L_Clav_Jnt_parentConstraint1.tg[0].trp";
connectAttr "L_Clav_Ctrl.rpt" "L_Clav_Jnt_parentConstraint1.tg[0].trt";
connectAttr "L_Clav_Ctrl.r" "L_Clav_Jnt_parentConstraint1.tg[0].tr";
connectAttr "L_Clav_Ctrl.ro" "L_Clav_Jnt_parentConstraint1.tg[0].tro";
connectAttr "L_Clav_Ctrl.s" "L_Clav_Jnt_parentConstraint1.tg[0].ts";
connectAttr "L_Clav_Ctrl.pm" "L_Clav_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "L_Clav_Jnt_parentConstraint1.w0" "L_Clav_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Clav_Jnt.ssc" "L_Clav_Jnt_scaleConstraint1.tsc";
connectAttr "L_Clav_Jnt.pim" "L_Clav_Jnt_scaleConstraint1.cpim";
connectAttr "L_Clav_Ctrl.s" "L_Clav_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "L_Clav_Ctrl.pm" "L_Clav_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "L_Clav_Jnt_scaleConstraint1.w0" "L_Clav_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "Spine_03_Jnt.s" "L_Pist_Rot_Jnt.is";
connectAttr "unitConversion2.o" "L_Pist_Rot_Jnt.rx";
connectAttr "joint31_aimConstraint1.crx" "L_Pist_Base_1.rx";
connectAttr "joint31_aimConstraint1.crz" "L_Pist_Base_1.rz";
connectAttr "L_Pist_Base_1.pim" "joint31_aimConstraint1.cpim";
connectAttr "L_Pist_Base_1.t" "joint31_aimConstraint1.ct";
connectAttr "L_Pist_Base_1.rp" "joint31_aimConstraint1.crp";
connectAttr "L_Pist_Base_1.rpt" "joint31_aimConstraint1.crt";
connectAttr "L_Pist_Base_1.ro" "joint31_aimConstraint1.cro";
connectAttr "L_Pist_Base_1.jo" "joint31_aimConstraint1.cjo";
connectAttr "L_Pist_Base_1.is" "joint31_aimConstraint1.is";
connectAttr "L_Pist_Shold_1.t" "joint31_aimConstraint1.tg[0].tt";
connectAttr "L_Pist_Shold_1.rp" "joint31_aimConstraint1.tg[0].trp";
connectAttr "L_Pist_Shold_1.rpt" "joint31_aimConstraint1.tg[0].trt";
connectAttr "L_Pist_Shold_1.pm" "joint31_aimConstraint1.tg[0].tpm";
connectAttr "joint31_aimConstraint1.w0" "joint31_aimConstraint1.tg[0].tw";
connectAttr "joint33_aimConstraint1.crx" "L_Pist_Base_2.rx";
connectAttr "joint33_aimConstraint1.crz" "L_Pist_Base_2.rz";
connectAttr "L_Pist_Base_2.pim" "joint33_aimConstraint1.cpim";
connectAttr "L_Pist_Base_2.t" "joint33_aimConstraint1.ct";
connectAttr "L_Pist_Base_2.rp" "joint33_aimConstraint1.crp";
connectAttr "L_Pist_Base_2.rpt" "joint33_aimConstraint1.crt";
connectAttr "L_Pist_Base_2.ro" "joint33_aimConstraint1.cro";
connectAttr "L_Pist_Base_2.jo" "joint33_aimConstraint1.cjo";
connectAttr "L_Pist_Base_2.is" "joint33_aimConstraint1.is";
connectAttr "L_Pist_Shold_2.t" "joint33_aimConstraint1.tg[0].tt";
connectAttr "L_Pist_Shold_2.rp" "joint33_aimConstraint1.tg[0].trp";
connectAttr "L_Pist_Shold_2.rpt" "joint33_aimConstraint1.tg[0].trt";
connectAttr "L_Pist_Shold_2.pm" "joint33_aimConstraint1.tg[0].tpm";
connectAttr "joint33_aimConstraint1.w0" "joint33_aimConstraint1.tg[0].tw";
connectAttr "joint35_aimConstraint1.crx" "L_Pist_Base_3.rx";
connectAttr "joint35_aimConstraint1.crz" "L_Pist_Base_3.rz";
connectAttr "L_Pist_Base_3.pim" "joint35_aimConstraint1.cpim";
connectAttr "L_Pist_Base_3.t" "joint35_aimConstraint1.ct";
connectAttr "L_Pist_Base_3.rp" "joint35_aimConstraint1.crp";
connectAttr "L_Pist_Base_3.rpt" "joint35_aimConstraint1.crt";
connectAttr "L_Pist_Base_3.ro" "joint35_aimConstraint1.cro";
connectAttr "L_Pist_Base_3.jo" "joint35_aimConstraint1.cjo";
connectAttr "L_Pist_Base_3.is" "joint35_aimConstraint1.is";
connectAttr "L_Pist_Shold_3.t" "joint35_aimConstraint1.tg[0].tt";
connectAttr "L_Pist_Shold_3.rp" "joint35_aimConstraint1.tg[0].trp";
connectAttr "L_Pist_Shold_3.rpt" "joint35_aimConstraint1.tg[0].trt";
connectAttr "L_Pist_Shold_3.pm" "joint35_aimConstraint1.tg[0].tpm";
connectAttr "joint35_aimConstraint1.w0" "joint35_aimConstraint1.tg[0].tw";
connectAttr "joint37_aimConstraint1.crx" "L_Pist_Base_4.rx";
connectAttr "joint37_aimConstraint1.crz" "L_Pist_Base_4.rz";
connectAttr "L_Pist_Base_4.pim" "joint37_aimConstraint1.cpim";
connectAttr "L_Pist_Base_4.t" "joint37_aimConstraint1.ct";
connectAttr "L_Pist_Base_4.rp" "joint37_aimConstraint1.crp";
connectAttr "L_Pist_Base_4.rpt" "joint37_aimConstraint1.crt";
connectAttr "L_Pist_Base_4.ro" "joint37_aimConstraint1.cro";
connectAttr "L_Pist_Base_4.jo" "joint37_aimConstraint1.cjo";
connectAttr "L_Pist_Base_4.is" "joint37_aimConstraint1.is";
connectAttr "L_Pist_Shold_4.t" "joint37_aimConstraint1.tg[0].tt";
connectAttr "L_Pist_Shold_4.rp" "joint37_aimConstraint1.tg[0].trp";
connectAttr "L_Pist_Shold_4.rpt" "joint37_aimConstraint1.tg[0].trt";
connectAttr "L_Pist_Shold_4.pm" "joint37_aimConstraint1.tg[0].tpm";
connectAttr "joint37_aimConstraint1.w0" "joint37_aimConstraint1.tg[0].tw";
connectAttr "Spine_03_Jnt.s" "R_Clav_Jnt.is";
connectAttr "R_Clav_Jnt_scaleConstraint1.csx" "R_Clav_Jnt.sx";
connectAttr "R_Clav_Jnt_scaleConstraint1.csy" "R_Clav_Jnt.sy";
connectAttr "R_Clav_Jnt_scaleConstraint1.csz" "R_Clav_Jnt.sz";
connectAttr "R_Clav_Jnt_parentConstraint1.ctx" "R_Clav_Jnt.tx";
connectAttr "R_Clav_Jnt_parentConstraint1.cty" "R_Clav_Jnt.ty";
connectAttr "R_Clav_Jnt_parentConstraint1.ctz" "R_Clav_Jnt.tz";
connectAttr "R_Clav_Jnt_parentConstraint1.crx" "R_Clav_Jnt.rx";
connectAttr "R_Clav_Jnt_parentConstraint1.cry" "R_Clav_Jnt.ry";
connectAttr "R_Clav_Jnt_parentConstraint1.crz" "R_Clav_Jnt.rz";
connectAttr "R_Clav_Jnt.s" "R_FK_Arm_01_Jnt.is";
connectAttr "R_FK_Arm_01_Jnt_scaleConstraint1.csx" "R_FK_Arm_01_Jnt.sx";
connectAttr "R_FK_Arm_01_Jnt_scaleConstraint1.csy" "R_FK_Arm_01_Jnt.sy";
connectAttr "R_FK_Arm_01_Jnt_scaleConstraint1.csz" "R_FK_Arm_01_Jnt.sz";
connectAttr "R_FK_Arm_01_Jnt_parentConstraint1.crz" "R_FK_Arm_01_Jnt.rz";
connectAttr "R_FK_Arm_01_Jnt_parentConstraint1.crx" "R_FK_Arm_01_Jnt.rx";
connectAttr "R_FK_Arm_01_Jnt_parentConstraint1.cry" "R_FK_Arm_01_Jnt.ry";
connectAttr "R_FK_Arm_01_Jnt_parentConstraint1.ctx" "R_FK_Arm_01_Jnt.tx";
connectAttr "R_FK_Arm_01_Jnt_parentConstraint1.cty" "R_FK_Arm_01_Jnt.ty";
connectAttr "R_FK_Arm_01_Jnt_parentConstraint1.ctz" "R_FK_Arm_01_Jnt.tz";
connectAttr "R_FK_Arm_01_Jnt.s" "R_FK_Arm_02_Jnt.is";
connectAttr "R_FK_Arm_02_Jnt_scaleConstraint1.csx" "R_FK_Arm_02_Jnt.sx";
connectAttr "R_FK_Arm_02_Jnt_scaleConstraint1.csy" "R_FK_Arm_02_Jnt.sy";
connectAttr "R_FK_Arm_02_Jnt_scaleConstraint1.csz" "R_FK_Arm_02_Jnt.sz";
connectAttr "R_FK_Arm_02_Jnt_parentConstraint1.ctx" "R_FK_Arm_02_Jnt.tx";
connectAttr "R_FK_Arm_02_Jnt_parentConstraint1.cty" "R_FK_Arm_02_Jnt.ty";
connectAttr "R_FK_Arm_02_Jnt_parentConstraint1.ctz" "R_FK_Arm_02_Jnt.tz";
connectAttr "R_FK_Arm_02_Jnt_parentConstraint1.crx" "R_FK_Arm_02_Jnt.rx";
connectAttr "R_FK_Arm_02_Jnt_parentConstraint1.cry" "R_FK_Arm_02_Jnt.ry";
connectAttr "R_FK_Arm_02_Jnt_parentConstraint1.crz" "R_FK_Arm_02_Jnt.rz";
connectAttr "R_FK_Arm_02_Jnt.s" "R_FK_Arm_03_Jnt.is";
connectAttr "R_FK_Arm_03_Jnt_parentConstraint1.ctx" "R_FK_Arm_03_Jnt.tx";
connectAttr "R_FK_Arm_03_Jnt_parentConstraint1.cty" "R_FK_Arm_03_Jnt.ty";
connectAttr "R_FK_Arm_03_Jnt_parentConstraint1.ctz" "R_FK_Arm_03_Jnt.tz";
connectAttr "R_FK_Arm_03_Jnt_parentConstraint1.crx" "R_FK_Arm_03_Jnt.rx";
connectAttr "R_FK_Arm_03_Jnt_parentConstraint1.cry" "R_FK_Arm_03_Jnt.ry";
connectAttr "R_FK_Arm_03_Jnt_parentConstraint1.crz" "R_FK_Arm_03_Jnt.rz";
connectAttr "R_FK_Arm_03_Jnt_scaleConstraint1.csx" "R_FK_Arm_03_Jnt.sx";
connectAttr "R_FK_Arm_03_Jnt_scaleConstraint1.csy" "R_FK_Arm_03_Jnt.sy";
connectAttr "R_FK_Arm_03_Jnt_scaleConstraint1.csz" "R_FK_Arm_03_Jnt.sz";
connectAttr "R_FK_Arm_03_Jnt.ro" "R_FK_Arm_03_Jnt_parentConstraint1.cro";
connectAttr "R_FK_Arm_03_Jnt.pim" "R_FK_Arm_03_Jnt_parentConstraint1.cpim";
connectAttr "R_FK_Arm_03_Jnt.rp" "R_FK_Arm_03_Jnt_parentConstraint1.crp";
connectAttr "R_FK_Arm_03_Jnt.rpt" "R_FK_Arm_03_Jnt_parentConstraint1.crt";
connectAttr "R_FK_Arm_03_Jnt.jo" "R_FK_Arm_03_Jnt_parentConstraint1.cjo";
connectAttr "R_FK_Arm_03_Ctrl.t" "R_FK_Arm_03_Jnt_parentConstraint1.tg[0].tt";
connectAttr "R_FK_Arm_03_Ctrl.rp" "R_FK_Arm_03_Jnt_parentConstraint1.tg[0].trp";
connectAttr "R_FK_Arm_03_Ctrl.rpt" "R_FK_Arm_03_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "R_FK_Arm_03_Ctrl.r" "R_FK_Arm_03_Jnt_parentConstraint1.tg[0].tr";
connectAttr "R_FK_Arm_03_Ctrl.ro" "R_FK_Arm_03_Jnt_parentConstraint1.tg[0].tro";
connectAttr "R_FK_Arm_03_Ctrl.s" "R_FK_Arm_03_Jnt_parentConstraint1.tg[0].ts";
connectAttr "R_FK_Arm_03_Ctrl.pm" "R_FK_Arm_03_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "R_FK_Arm_03_Jnt_parentConstraint1.w0" "R_FK_Arm_03_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_FK_Arm_03_Jnt.ssc" "R_FK_Arm_03_Jnt_scaleConstraint1.tsc";
connectAttr "R_FK_Arm_03_Jnt.pim" "R_FK_Arm_03_Jnt_scaleConstraint1.cpim";
connectAttr "R_FK_Arm_03_Ctrl.s" "R_FK_Arm_03_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "R_FK_Arm_03_Ctrl.pm" "R_FK_Arm_03_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "R_FK_Arm_03_Jnt_scaleConstraint1.w0" "R_FK_Arm_03_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_FK_Arm_02_Jnt.ro" "R_FK_Arm_02_Jnt_parentConstraint1.cro";
connectAttr "R_FK_Arm_02_Jnt.pim" "R_FK_Arm_02_Jnt_parentConstraint1.cpim";
connectAttr "R_FK_Arm_02_Jnt.rp" "R_FK_Arm_02_Jnt_parentConstraint1.crp";
connectAttr "R_FK_Arm_02_Jnt.rpt" "R_FK_Arm_02_Jnt_parentConstraint1.crt";
connectAttr "R_FK_Arm_02_Jnt.jo" "R_FK_Arm_02_Jnt_parentConstraint1.cjo";
connectAttr "R_FK_Arm_02_Ctrl.t" "R_FK_Arm_02_Jnt_parentConstraint1.tg[0].tt";
connectAttr "R_FK_Arm_02_Ctrl.rp" "R_FK_Arm_02_Jnt_parentConstraint1.tg[0].trp";
connectAttr "R_FK_Arm_02_Ctrl.rpt" "R_FK_Arm_02_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "R_FK_Arm_02_Ctrl.r" "R_FK_Arm_02_Jnt_parentConstraint1.tg[0].tr";
connectAttr "R_FK_Arm_02_Ctrl.ro" "R_FK_Arm_02_Jnt_parentConstraint1.tg[0].tro";
connectAttr "R_FK_Arm_02_Ctrl.s" "R_FK_Arm_02_Jnt_parentConstraint1.tg[0].ts";
connectAttr "R_FK_Arm_02_Ctrl.pm" "R_FK_Arm_02_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "R_FK_Arm_02_Jnt_parentConstraint1.w0" "R_FK_Arm_02_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_FK_Arm_02_Jnt.ssc" "R_FK_Arm_02_Jnt_scaleConstraint1.tsc";
connectAttr "R_FK_Arm_02_Jnt.pim" "R_FK_Arm_02_Jnt_scaleConstraint1.cpim";
connectAttr "R_FK_Arm_02_Ctrl.s" "R_FK_Arm_02_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "R_FK_Arm_02_Ctrl.pm" "R_FK_Arm_02_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "R_FK_Arm_02_Jnt_scaleConstraint1.w0" "R_FK_Arm_02_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_FK_Arm_01_Jnt.ro" "R_FK_Arm_01_Jnt_parentConstraint1.cro";
connectAttr "R_FK_Arm_01_Jnt.pim" "R_FK_Arm_01_Jnt_parentConstraint1.cpim";
connectAttr "R_FK_Arm_01_Jnt.rp" "R_FK_Arm_01_Jnt_parentConstraint1.crp";
connectAttr "R_FK_Arm_01_Jnt.rpt" "R_FK_Arm_01_Jnt_parentConstraint1.crt";
connectAttr "R_FK_Arm_01_Jnt.jo" "R_FK_Arm_01_Jnt_parentConstraint1.cjo";
connectAttr "R_FK_Arm_01_Ctrl.t" "R_FK_Arm_01_Jnt_parentConstraint1.tg[0].tt";
connectAttr "R_FK_Arm_01_Ctrl.rp" "R_FK_Arm_01_Jnt_parentConstraint1.tg[0].trp";
connectAttr "R_FK_Arm_01_Ctrl.rpt" "R_FK_Arm_01_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "R_FK_Arm_01_Ctrl.r" "R_FK_Arm_01_Jnt_parentConstraint1.tg[0].tr";
connectAttr "R_FK_Arm_01_Ctrl.ro" "R_FK_Arm_01_Jnt_parentConstraint1.tg[0].tro";
connectAttr "R_FK_Arm_01_Ctrl.s" "R_FK_Arm_01_Jnt_parentConstraint1.tg[0].ts";
connectAttr "R_FK_Arm_01_Ctrl.pm" "R_FK_Arm_01_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "R_FK_Arm_01_Jnt_parentConstraint1.w0" "R_FK_Arm_01_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_FK_Arm_01_Jnt.ssc" "R_FK_Arm_01_Jnt_scaleConstraint1.tsc";
connectAttr "R_FK_Arm_01_Jnt.pim" "R_FK_Arm_01_Jnt_scaleConstraint1.cpim";
connectAttr "R_FK_Arm_01_Ctrl.s" "R_FK_Arm_01_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "R_FK_Arm_01_Ctrl.pm" "R_FK_Arm_01_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "R_FK_Arm_01_Jnt_scaleConstraint1.w0" "R_FK_Arm_01_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Clav_Jnt.s" "R_IK_Arm_01_Jnt.is";
connectAttr "R_IK_Arm_01_Jnt_pointConstraint1.ctx" "R_IK_Arm_01_Jnt.tx";
connectAttr "R_IK_Arm_01_Jnt_pointConstraint1.cty" "R_IK_Arm_01_Jnt.ty";
connectAttr "R_IK_Arm_01_Jnt_pointConstraint1.ctz" "R_IK_Arm_01_Jnt.tz";
connectAttr "R_IK_Arm_01_Jnt.s" "R_IK_Arm_02_Jnt.is";
connectAttr "R_IK_Arm_02_Jnt.s" "R_IK_Arm_03_Jnt.is";
connectAttr "R_IK_Arm_03_Jnt_orientConstraint1.crx" "R_IK_Arm_03_Jnt.rx";
connectAttr "R_IK_Arm_03_Jnt_orientConstraint1.cry" "R_IK_Arm_03_Jnt.ry";
connectAttr "R_IK_Arm_03_Jnt_orientConstraint1.crz" "R_IK_Arm_03_Jnt.rz";
connectAttr "R_IK_Arm_03_Jnt.ro" "R_IK_Arm_03_Jnt_orientConstraint1.cro";
connectAttr "R_IK_Arm_03_Jnt.pim" "R_IK_Arm_03_Jnt_orientConstraint1.cpim";
connectAttr "R_IK_Arm_03_Jnt.jo" "R_IK_Arm_03_Jnt_orientConstraint1.cjo";
connectAttr "R_IK_Arm_03_Jnt.is" "R_IK_Arm_03_Jnt_orientConstraint1.is";
connectAttr "R_Arm_IK_Ctrl.r" "R_IK_Arm_03_Jnt_orientConstraint1.tg[0].tr";
connectAttr "R_Arm_IK_Ctrl.ro" "R_IK_Arm_03_Jnt_orientConstraint1.tg[0].tro";
connectAttr "R_Arm_IK_Ctrl.pm" "R_IK_Arm_03_Jnt_orientConstraint1.tg[0].tpm";
connectAttr "R_IK_Arm_03_Jnt_orientConstraint1.w0" "R_IK_Arm_03_Jnt_orientConstraint1.tg[0].tw"
		;
connectAttr "R_IK_Arm_03_Jnt.tx" "effector2.tx";
connectAttr "R_IK_Arm_03_Jnt.ty" "effector2.ty";
connectAttr "R_IK_Arm_03_Jnt.tz" "effector2.tz";
connectAttr "R_IK_Arm_03_Jnt.opm" "effector2.opm";
connectAttr "R_IK_Arm_01_Jnt.pim" "R_IK_Arm_01_Jnt_pointConstraint1.cpim";
connectAttr "R_IK_Arm_01_Jnt.rp" "R_IK_Arm_01_Jnt_pointConstraint1.crp";
connectAttr "R_IK_Arm_01_Jnt.rpt" "R_IK_Arm_01_Jnt_pointConstraint1.crt";
connectAttr "R_IK_Arm_01_Ctrl.t" "R_IK_Arm_01_Jnt_pointConstraint1.tg[0].tt";
connectAttr "R_IK_Arm_01_Ctrl.rp" "R_IK_Arm_01_Jnt_pointConstraint1.tg[0].trp";
connectAttr "R_IK_Arm_01_Ctrl.rpt" "R_IK_Arm_01_Jnt_pointConstraint1.tg[0].trt";
connectAttr "R_IK_Arm_01_Ctrl.pm" "R_IK_Arm_01_Jnt_pointConstraint1.tg[0].tpm";
connectAttr "R_IK_Arm_01_Jnt_pointConstraint1.w0" "R_IK_Arm_01_Jnt_pointConstraint1.tg[0].tw"
		;
connectAttr "R_Clav_Jnt.s" "R_RK_Arm_01_Jnt.is";
connectAttr "R_RK_Arm_01_Jnt_parentConstraint1.crz" "R_RK_Arm_01_Jnt.rz";
connectAttr "R_RK_Arm_01_Jnt_parentConstraint1.crx" "R_RK_Arm_01_Jnt.rx";
connectAttr "R_RK_Arm_01_Jnt_parentConstraint1.cry" "R_RK_Arm_01_Jnt.ry";
connectAttr "R_RK_Arm_01_Jnt_parentConstraint1.ctx" "R_RK_Arm_01_Jnt.tx";
connectAttr "R_RK_Arm_01_Jnt_parentConstraint1.cty" "R_RK_Arm_01_Jnt.ty";
connectAttr "R_RK_Arm_01_Jnt_parentConstraint1.ctz" "R_RK_Arm_01_Jnt.tz";
connectAttr "R_RK_Arm_01_Jnt.s" "R_RK_Arm_02_Jnt.is";
connectAttr "R_RK_Arm_02_Jnt_parentConstraint1.ctx" "R_RK_Arm_02_Jnt.tx";
connectAttr "R_RK_Arm_02_Jnt_parentConstraint1.cty" "R_RK_Arm_02_Jnt.ty";
connectAttr "R_RK_Arm_02_Jnt_parentConstraint1.ctz" "R_RK_Arm_02_Jnt.tz";
connectAttr "R_RK_Arm_02_Jnt_parentConstraint1.crx" "R_RK_Arm_02_Jnt.rx";
connectAttr "R_RK_Arm_02_Jnt_parentConstraint1.cry" "R_RK_Arm_02_Jnt.ry";
connectAttr "R_RK_Arm_02_Jnt_parentConstraint1.crz" "R_RK_Arm_02_Jnt.rz";
connectAttr "R_RK_Arm_02_Jnt.s" "R_RK_Arm_03_Jnt.is";
connectAttr "R_RK_Arm_03_Jnt_parentConstraint1.ctx" "R_RK_Arm_03_Jnt.tx";
connectAttr "R_RK_Arm_03_Jnt_parentConstraint1.cty" "R_RK_Arm_03_Jnt.ty";
connectAttr "R_RK_Arm_03_Jnt_parentConstraint1.ctz" "R_RK_Arm_03_Jnt.tz";
connectAttr "R_RK_Arm_03_Jnt_parentConstraint1.crx" "R_RK_Arm_03_Jnt.rx";
connectAttr "R_RK_Arm_03_Jnt_parentConstraint1.cry" "R_RK_Arm_03_Jnt.ry";
connectAttr "R_RK_Arm_03_Jnt_parentConstraint1.crz" "R_RK_Arm_03_Jnt.rz";
connectAttr "Bones_Layer.di" "R_Hand_0.do";
connectAttr "R_Hand_0_scaleConstraint1.csx" "R_Hand_0.sx";
connectAttr "R_Hand_0_scaleConstraint1.csy" "R_Hand_0.sy";
connectAttr "R_Hand_0_scaleConstraint1.csz" "R_Hand_0.sz";
connectAttr "R_Hand_0_parentConstraint1.ctx" "R_Hand_0.tx";
connectAttr "R_Hand_0_parentConstraint1.cty" "R_Hand_0.ty";
connectAttr "R_Hand_0_parentConstraint1.ctz" "R_Hand_0.tz";
connectAttr "R_Hand_0_parentConstraint1.crx" "R_Hand_0.rx";
connectAttr "R_Hand_0_parentConstraint1.cry" "R_Hand_0.ry";
connectAttr "R_Hand_0_parentConstraint1.crz" "R_Hand_0.rz";
connectAttr "R_RK_Arm_03_Jnt.s" "R_Hand_0.is";
connectAttr "R_Hand_0.s" "R_Fing_2_01_Jnt.is";
connectAttr "R_Fing_2_01_Jnt_scaleConstraint1.csx" "R_Fing_2_01_Jnt.sx";
connectAttr "R_Fing_2_01_Jnt_scaleConstraint1.csy" "R_Fing_2_01_Jnt.sy";
connectAttr "R_Fing_2_01_Jnt_scaleConstraint1.csz" "R_Fing_2_01_Jnt.sz";
connectAttr "R_Fing_2_01_Jnt_parentConstraint1.ctx" "R_Fing_2_01_Jnt.tx";
connectAttr "R_Fing_2_01_Jnt_parentConstraint1.cty" "R_Fing_2_01_Jnt.ty";
connectAttr "R_Fing_2_01_Jnt_parentConstraint1.ctz" "R_Fing_2_01_Jnt.tz";
connectAttr "R_Fing_2_01_Jnt_parentConstraint1.crx" "R_Fing_2_01_Jnt.rx";
connectAttr "R_Fing_2_01_Jnt_parentConstraint1.cry" "R_Fing_2_01_Jnt.ry";
connectAttr "R_Fing_2_01_Jnt_parentConstraint1.crz" "R_Fing_2_01_Jnt.rz";
connectAttr "R_Fing_2_01_Jnt.s" "R_Fing_2_02_Jnt.is";
connectAttr "R_Fing_2_02_Jnt_scaleConstraint1.csx" "R_Fing_2_02_Jnt.sx";
connectAttr "R_Fing_2_02_Jnt_scaleConstraint1.csy" "R_Fing_2_02_Jnt.sy";
connectAttr "R_Fing_2_02_Jnt_scaleConstraint1.csz" "R_Fing_2_02_Jnt.sz";
connectAttr "R_Fing_2_02_Jnt_parentConstraint1.ctx" "R_Fing_2_02_Jnt.tx";
connectAttr "R_Fing_2_02_Jnt_parentConstraint1.cty" "R_Fing_2_02_Jnt.ty";
connectAttr "R_Fing_2_02_Jnt_parentConstraint1.ctz" "R_Fing_2_02_Jnt.tz";
connectAttr "R_Fing_2_02_Jnt_parentConstraint1.crx" "R_Fing_2_02_Jnt.rx";
connectAttr "R_Fing_2_02_Jnt_parentConstraint1.cry" "R_Fing_2_02_Jnt.ry";
connectAttr "R_Fing_2_02_Jnt_parentConstraint1.crz" "R_Fing_2_02_Jnt.rz";
connectAttr "R_Fing_2_02_Jnt.s" "R_Fing_2_03_Jnt.is";
connectAttr "R_Fing_2_03_Jnt_parentConstraint1.ctx" "R_Fing_2_03_Jnt.tx";
connectAttr "R_Fing_2_03_Jnt_parentConstraint1.cty" "R_Fing_2_03_Jnt.ty";
connectAttr "R_Fing_2_03_Jnt_parentConstraint1.ctz" "R_Fing_2_03_Jnt.tz";
connectAttr "R_Fing_2_03_Jnt_parentConstraint1.crx" "R_Fing_2_03_Jnt.rx";
connectAttr "R_Fing_2_03_Jnt_parentConstraint1.cry" "R_Fing_2_03_Jnt.ry";
connectAttr "R_Fing_2_03_Jnt_parentConstraint1.crz" "R_Fing_2_03_Jnt.rz";
connectAttr "R_Fing_2_03_Jnt_scaleConstraint1.csx" "R_Fing_2_03_Jnt.sx";
connectAttr "R_Fing_2_03_Jnt_scaleConstraint1.csy" "R_Fing_2_03_Jnt.sy";
connectAttr "R_Fing_2_03_Jnt_scaleConstraint1.csz" "R_Fing_2_03_Jnt.sz";
connectAttr "R_Fing_2_03_Jnt.ro" "R_Fing_2_03_Jnt_parentConstraint1.cro";
connectAttr "R_Fing_2_03_Jnt.pim" "R_Fing_2_03_Jnt_parentConstraint1.cpim";
connectAttr "R_Fing_2_03_Jnt.rp" "R_Fing_2_03_Jnt_parentConstraint1.crp";
connectAttr "R_Fing_2_03_Jnt.rpt" "R_Fing_2_03_Jnt_parentConstraint1.crt";
connectAttr "R_Fing_2_03_Jnt.jo" "R_Fing_2_03_Jnt_parentConstraint1.cjo";
connectAttr "R_Finger_2_03_Ctrl.t" "R_Fing_2_03_Jnt_parentConstraint1.tg[0].tt";
connectAttr "R_Finger_2_03_Ctrl.rp" "R_Fing_2_03_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "R_Finger_2_03_Ctrl.rpt" "R_Fing_2_03_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Finger_2_03_Ctrl.r" "R_Fing_2_03_Jnt_parentConstraint1.tg[0].tr";
connectAttr "R_Finger_2_03_Ctrl.ro" "R_Fing_2_03_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "R_Finger_2_03_Ctrl.s" "R_Fing_2_03_Jnt_parentConstraint1.tg[0].ts";
connectAttr "R_Finger_2_03_Ctrl.pm" "R_Fing_2_03_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_Fing_2_03_Jnt_parentConstraint1.w0" "R_Fing_2_03_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Fing_2_03_Jnt.ssc" "R_Fing_2_03_Jnt_scaleConstraint1.tsc";
connectAttr "R_Fing_2_03_Jnt.pim" "R_Fing_2_03_Jnt_scaleConstraint1.cpim";
connectAttr "R_Finger_2_03_Ctrl.s" "R_Fing_2_03_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "R_Finger_2_03_Ctrl.pm" "R_Fing_2_03_Jnt_scaleConstraint1.tg[0].tpm"
		;
connectAttr "R_Fing_2_03_Jnt_scaleConstraint1.w0" "R_Fing_2_03_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Fing_2_02_Jnt.ro" "R_Fing_2_02_Jnt_parentConstraint1.cro";
connectAttr "R_Fing_2_02_Jnt.pim" "R_Fing_2_02_Jnt_parentConstraint1.cpim";
connectAttr "R_Fing_2_02_Jnt.rp" "R_Fing_2_02_Jnt_parentConstraint1.crp";
connectAttr "R_Fing_2_02_Jnt.rpt" "R_Fing_2_02_Jnt_parentConstraint1.crt";
connectAttr "R_Fing_2_02_Jnt.jo" "R_Fing_2_02_Jnt_parentConstraint1.cjo";
connectAttr "R_Finger_2_02_Ctrl.t" "R_Fing_2_02_Jnt_parentConstraint1.tg[0].tt";
connectAttr "R_Finger_2_02_Ctrl.rp" "R_Fing_2_02_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "R_Finger_2_02_Ctrl.rpt" "R_Fing_2_02_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Finger_2_02_Ctrl.r" "R_Fing_2_02_Jnt_parentConstraint1.tg[0].tr";
connectAttr "R_Finger_2_02_Ctrl.ro" "R_Fing_2_02_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "R_Finger_2_02_Ctrl.s" "R_Fing_2_02_Jnt_parentConstraint1.tg[0].ts";
connectAttr "R_Finger_2_02_Ctrl.pm" "R_Fing_2_02_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_Fing_2_02_Jnt_parentConstraint1.w0" "R_Fing_2_02_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Fing_2_02_Jnt.ssc" "R_Fing_2_02_Jnt_scaleConstraint1.tsc";
connectAttr "R_Fing_2_02_Jnt.pim" "R_Fing_2_02_Jnt_scaleConstraint1.cpim";
connectAttr "R_Finger_2_02_Ctrl.s" "R_Fing_2_02_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "R_Finger_2_02_Ctrl.pm" "R_Fing_2_02_Jnt_scaleConstraint1.tg[0].tpm"
		;
connectAttr "R_Fing_2_02_Jnt_scaleConstraint1.w0" "R_Fing_2_02_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Fing_2_01_Jnt.ro" "R_Fing_2_01_Jnt_parentConstraint1.cro";
connectAttr "R_Fing_2_01_Jnt.pim" "R_Fing_2_01_Jnt_parentConstraint1.cpim";
connectAttr "R_Fing_2_01_Jnt.rp" "R_Fing_2_01_Jnt_parentConstraint1.crp";
connectAttr "R_Fing_2_01_Jnt.rpt" "R_Fing_2_01_Jnt_parentConstraint1.crt";
connectAttr "R_Fing_2_01_Jnt.jo" "R_Fing_2_01_Jnt_parentConstraint1.cjo";
connectAttr "R_Finger_2_01_Ctrl.t" "R_Fing_2_01_Jnt_parentConstraint1.tg[0].tt";
connectAttr "R_Finger_2_01_Ctrl.rp" "R_Fing_2_01_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "R_Finger_2_01_Ctrl.rpt" "R_Fing_2_01_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Finger_2_01_Ctrl.r" "R_Fing_2_01_Jnt_parentConstraint1.tg[0].tr";
connectAttr "R_Finger_2_01_Ctrl.ro" "R_Fing_2_01_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "R_Finger_2_01_Ctrl.s" "R_Fing_2_01_Jnt_parentConstraint1.tg[0].ts";
connectAttr "R_Finger_2_01_Ctrl.pm" "R_Fing_2_01_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_Fing_2_01_Jnt_parentConstraint1.w0" "R_Fing_2_01_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Fing_2_01_Jnt.ssc" "R_Fing_2_01_Jnt_scaleConstraint1.tsc";
connectAttr "R_Fing_2_01_Jnt.pim" "R_Fing_2_01_Jnt_scaleConstraint1.cpim";
connectAttr "R_Finger_2_01_Ctrl.s" "R_Fing_2_01_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "R_Finger_2_01_Ctrl.pm" "R_Fing_2_01_Jnt_scaleConstraint1.tg[0].tpm"
		;
connectAttr "R_Fing_2_01_Jnt_scaleConstraint1.w0" "R_Fing_2_01_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Hand_0.s" "R_Fing_1_01_Jnt.is";
connectAttr "R_Fing_1_01_Jnt_scaleConstraint1.csx" "R_Fing_1_01_Jnt.sx";
connectAttr "R_Fing_1_01_Jnt_scaleConstraint1.csy" "R_Fing_1_01_Jnt.sy";
connectAttr "R_Fing_1_01_Jnt_scaleConstraint1.csz" "R_Fing_1_01_Jnt.sz";
connectAttr "R_Fing_1_01_Jnt_parentConstraint1.ctx" "R_Fing_1_01_Jnt.tx";
connectAttr "R_Fing_1_01_Jnt_parentConstraint1.cty" "R_Fing_1_01_Jnt.ty";
connectAttr "R_Fing_1_01_Jnt_parentConstraint1.ctz" "R_Fing_1_01_Jnt.tz";
connectAttr "R_Fing_1_01_Jnt_parentConstraint1.crx" "R_Fing_1_01_Jnt.rx";
connectAttr "R_Fing_1_01_Jnt_parentConstraint1.cry" "R_Fing_1_01_Jnt.ry";
connectAttr "R_Fing_1_01_Jnt_parentConstraint1.crz" "R_Fing_1_01_Jnt.rz";
connectAttr "R_Fing_1_01_Jnt.s" "R_Fing_1_02_Jnt.is";
connectAttr "R_Fing_1_02_Jnt_scaleConstraint1.csx" "R_Fing_1_02_Jnt.sx";
connectAttr "R_Fing_1_02_Jnt_scaleConstraint1.csy" "R_Fing_1_02_Jnt.sy";
connectAttr "R_Fing_1_02_Jnt_scaleConstraint1.csz" "R_Fing_1_02_Jnt.sz";
connectAttr "R_Fing_1_02_Jnt_parentConstraint1.ctx" "R_Fing_1_02_Jnt.tx";
connectAttr "R_Fing_1_02_Jnt_parentConstraint1.cty" "R_Fing_1_02_Jnt.ty";
connectAttr "R_Fing_1_02_Jnt_parentConstraint1.ctz" "R_Fing_1_02_Jnt.tz";
connectAttr "R_Fing_1_02_Jnt_parentConstraint1.crx" "R_Fing_1_02_Jnt.rx";
connectAttr "R_Fing_1_02_Jnt_parentConstraint1.cry" "R_Fing_1_02_Jnt.ry";
connectAttr "R_Fing_1_02_Jnt_parentConstraint1.crz" "R_Fing_1_02_Jnt.rz";
connectAttr "R_Fing_1_02_Jnt.s" "R_Fing_1_03_Jnt.is";
connectAttr "R_Fing_1_03_Jnt_parentConstraint1.ctx" "R_Fing_1_03_Jnt.tx";
connectAttr "R_Fing_1_03_Jnt_parentConstraint1.cty" "R_Fing_1_03_Jnt.ty";
connectAttr "R_Fing_1_03_Jnt_parentConstraint1.ctz" "R_Fing_1_03_Jnt.tz";
connectAttr "R_Fing_1_03_Jnt_parentConstraint1.crx" "R_Fing_1_03_Jnt.rx";
connectAttr "R_Fing_1_03_Jnt_parentConstraint1.cry" "R_Fing_1_03_Jnt.ry";
connectAttr "R_Fing_1_03_Jnt_parentConstraint1.crz" "R_Fing_1_03_Jnt.rz";
connectAttr "R_Fing_1_03_Jnt_scaleConstraint1.csx" "R_Fing_1_03_Jnt.sx";
connectAttr "R_Fing_1_03_Jnt_scaleConstraint1.csy" "R_Fing_1_03_Jnt.sy";
connectAttr "R_Fing_1_03_Jnt_scaleConstraint1.csz" "R_Fing_1_03_Jnt.sz";
connectAttr "R_Fing_1_03_Jnt.ro" "R_Fing_1_03_Jnt_parentConstraint1.cro";
connectAttr "R_Fing_1_03_Jnt.pim" "R_Fing_1_03_Jnt_parentConstraint1.cpim";
connectAttr "R_Fing_1_03_Jnt.rp" "R_Fing_1_03_Jnt_parentConstraint1.crp";
connectAttr "R_Fing_1_03_Jnt.rpt" "R_Fing_1_03_Jnt_parentConstraint1.crt";
connectAttr "R_Fing_1_03_Jnt.jo" "R_Fing_1_03_Jnt_parentConstraint1.cjo";
connectAttr "R_Finger_1_03_Ctrl.t" "R_Fing_1_03_Jnt_parentConstraint1.tg[0].tt";
connectAttr "R_Finger_1_03_Ctrl.rp" "R_Fing_1_03_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "R_Finger_1_03_Ctrl.rpt" "R_Fing_1_03_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Finger_1_03_Ctrl.r" "R_Fing_1_03_Jnt_parentConstraint1.tg[0].tr";
connectAttr "R_Finger_1_03_Ctrl.ro" "R_Fing_1_03_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "R_Finger_1_03_Ctrl.s" "R_Fing_1_03_Jnt_parentConstraint1.tg[0].ts";
connectAttr "R_Finger_1_03_Ctrl.pm" "R_Fing_1_03_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_Fing_1_03_Jnt_parentConstraint1.w0" "R_Fing_1_03_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Fing_1_03_Jnt.ssc" "R_Fing_1_03_Jnt_scaleConstraint1.tsc";
connectAttr "R_Fing_1_03_Jnt.pim" "R_Fing_1_03_Jnt_scaleConstraint1.cpim";
connectAttr "R_Finger_1_03_Ctrl.s" "R_Fing_1_03_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "R_Finger_1_03_Ctrl.pm" "R_Fing_1_03_Jnt_scaleConstraint1.tg[0].tpm"
		;
connectAttr "R_Fing_1_03_Jnt_scaleConstraint1.w0" "R_Fing_1_03_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Fing_1_02_Jnt.ro" "R_Fing_1_02_Jnt_parentConstraint1.cro";
connectAttr "R_Fing_1_02_Jnt.pim" "R_Fing_1_02_Jnt_parentConstraint1.cpim";
connectAttr "R_Fing_1_02_Jnt.rp" "R_Fing_1_02_Jnt_parentConstraint1.crp";
connectAttr "R_Fing_1_02_Jnt.rpt" "R_Fing_1_02_Jnt_parentConstraint1.crt";
connectAttr "R_Fing_1_02_Jnt.jo" "R_Fing_1_02_Jnt_parentConstraint1.cjo";
connectAttr "R_Finger_1_02_Ctrl.t" "R_Fing_1_02_Jnt_parentConstraint1.tg[0].tt";
connectAttr "R_Finger_1_02_Ctrl.rp" "R_Fing_1_02_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "R_Finger_1_02_Ctrl.rpt" "R_Fing_1_02_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Finger_1_02_Ctrl.r" "R_Fing_1_02_Jnt_parentConstraint1.tg[0].tr";
connectAttr "R_Finger_1_02_Ctrl.ro" "R_Fing_1_02_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "R_Finger_1_02_Ctrl.s" "R_Fing_1_02_Jnt_parentConstraint1.tg[0].ts";
connectAttr "R_Finger_1_02_Ctrl.pm" "R_Fing_1_02_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_Fing_1_02_Jnt_parentConstraint1.w0" "R_Fing_1_02_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Fing_1_02_Jnt.ssc" "R_Fing_1_02_Jnt_scaleConstraint1.tsc";
connectAttr "R_Fing_1_02_Jnt.pim" "R_Fing_1_02_Jnt_scaleConstraint1.cpim";
connectAttr "R_Finger_1_02_Ctrl.s" "R_Fing_1_02_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "R_Finger_1_02_Ctrl.pm" "R_Fing_1_02_Jnt_scaleConstraint1.tg[0].tpm"
		;
connectAttr "R_Fing_1_02_Jnt_scaleConstraint1.w0" "R_Fing_1_02_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Fing_1_01_Jnt.ro" "R_Fing_1_01_Jnt_parentConstraint1.cro";
connectAttr "R_Fing_1_01_Jnt.pim" "R_Fing_1_01_Jnt_parentConstraint1.cpim";
connectAttr "R_Fing_1_01_Jnt.rp" "R_Fing_1_01_Jnt_parentConstraint1.crp";
connectAttr "R_Fing_1_01_Jnt.rpt" "R_Fing_1_01_Jnt_parentConstraint1.crt";
connectAttr "R_Fing_1_01_Jnt.jo" "R_Fing_1_01_Jnt_parentConstraint1.cjo";
connectAttr "R_Finger_1_01_Ctrl.t" "R_Fing_1_01_Jnt_parentConstraint1.tg[0].tt";
connectAttr "R_Finger_1_01_Ctrl.rp" "R_Fing_1_01_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "R_Finger_1_01_Ctrl.rpt" "R_Fing_1_01_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Finger_1_01_Ctrl.r" "R_Fing_1_01_Jnt_parentConstraint1.tg[0].tr";
connectAttr "R_Finger_1_01_Ctrl.ro" "R_Fing_1_01_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "R_Finger_1_01_Ctrl.s" "R_Fing_1_01_Jnt_parentConstraint1.tg[0].ts";
connectAttr "R_Finger_1_01_Ctrl.pm" "R_Fing_1_01_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_Fing_1_01_Jnt_parentConstraint1.w0" "R_Fing_1_01_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Fing_1_01_Jnt.ssc" "R_Fing_1_01_Jnt_scaleConstraint1.tsc";
connectAttr "R_Fing_1_01_Jnt.pim" "R_Fing_1_01_Jnt_scaleConstraint1.cpim";
connectAttr "R_Finger_1_01_Ctrl.s" "R_Fing_1_01_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "R_Finger_1_01_Ctrl.pm" "R_Fing_1_01_Jnt_scaleConstraint1.tg[0].tpm"
		;
connectAttr "R_Fing_1_01_Jnt_scaleConstraint1.w0" "R_Fing_1_01_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Hand_0.s" "R_Thumb_01_Jnt.is";
connectAttr "R_Thumb_01_Jnt_scaleConstraint1.csx" "R_Thumb_01_Jnt.sx";
connectAttr "R_Thumb_01_Jnt_scaleConstraint1.csy" "R_Thumb_01_Jnt.sy";
connectAttr "R_Thumb_01_Jnt_scaleConstraint1.csz" "R_Thumb_01_Jnt.sz";
connectAttr "R_Thumb_01_Jnt_parentConstraint1.ctx" "R_Thumb_01_Jnt.tx";
connectAttr "R_Thumb_01_Jnt_parentConstraint1.cty" "R_Thumb_01_Jnt.ty";
connectAttr "R_Thumb_01_Jnt_parentConstraint1.ctz" "R_Thumb_01_Jnt.tz";
connectAttr "R_Thumb_01_Jnt_parentConstraint1.crx" "R_Thumb_01_Jnt.rx";
connectAttr "R_Thumb_01_Jnt_parentConstraint1.cry" "R_Thumb_01_Jnt.ry";
connectAttr "R_Thumb_01_Jnt_parentConstraint1.crz" "R_Thumb_01_Jnt.rz";
connectAttr "R_Thumb_01_Jnt.s" "R_Thumb_02_Jnt.is";
connectAttr "R_Thumb_02_Jnt_scaleConstraint1.csx" "R_Thumb_02_Jnt.sx";
connectAttr "R_Thumb_02_Jnt_scaleConstraint1.csy" "R_Thumb_02_Jnt.sy";
connectAttr "R_Thumb_02_Jnt_scaleConstraint1.csz" "R_Thumb_02_Jnt.sz";
connectAttr "R_Thumb_02_Jnt_parentConstraint1.ctx" "R_Thumb_02_Jnt.tx";
connectAttr "R_Thumb_02_Jnt_parentConstraint1.cty" "R_Thumb_02_Jnt.ty";
connectAttr "R_Thumb_02_Jnt_parentConstraint1.ctz" "R_Thumb_02_Jnt.tz";
connectAttr "R_Thumb_02_Jnt_parentConstraint1.crx" "R_Thumb_02_Jnt.rx";
connectAttr "R_Thumb_02_Jnt_parentConstraint1.cry" "R_Thumb_02_Jnt.ry";
connectAttr "R_Thumb_02_Jnt_parentConstraint1.crz" "R_Thumb_02_Jnt.rz";
connectAttr "R_Thumb_02_Jnt.s" "R_Thumb_03_Jnt.is";
connectAttr "R_Thumb_03_Jnt_parentConstraint1.ctx" "R_Thumb_03_Jnt.tx";
connectAttr "R_Thumb_03_Jnt_parentConstraint1.cty" "R_Thumb_03_Jnt.ty";
connectAttr "R_Thumb_03_Jnt_parentConstraint1.ctz" "R_Thumb_03_Jnt.tz";
connectAttr "R_Thumb_03_Jnt_parentConstraint1.crx" "R_Thumb_03_Jnt.rx";
connectAttr "R_Thumb_03_Jnt_parentConstraint1.cry" "R_Thumb_03_Jnt.ry";
connectAttr "R_Thumb_03_Jnt_parentConstraint1.crz" "R_Thumb_03_Jnt.rz";
connectAttr "R_Thumb_03_Jnt_scaleConstraint1.csx" "R_Thumb_03_Jnt.sx";
connectAttr "R_Thumb_03_Jnt_scaleConstraint1.csy" "R_Thumb_03_Jnt.sy";
connectAttr "R_Thumb_03_Jnt_scaleConstraint1.csz" "R_Thumb_03_Jnt.sz";
connectAttr "R_Thumb_03_Jnt.ro" "R_Thumb_03_Jnt_parentConstraint1.cro";
connectAttr "R_Thumb_03_Jnt.pim" "R_Thumb_03_Jnt_parentConstraint1.cpim";
connectAttr "R_Thumb_03_Jnt.rp" "R_Thumb_03_Jnt_parentConstraint1.crp";
connectAttr "R_Thumb_03_Jnt.rpt" "R_Thumb_03_Jnt_parentConstraint1.crt";
connectAttr "R_Thumb_03_Jnt.jo" "R_Thumb_03_Jnt_parentConstraint1.cjo";
connectAttr "R_Thumb_03_Ctrl.t" "R_Thumb_03_Jnt_parentConstraint1.tg[0].tt";
connectAttr "R_Thumb_03_Ctrl.rp" "R_Thumb_03_Jnt_parentConstraint1.tg[0].trp";
connectAttr "R_Thumb_03_Ctrl.rpt" "R_Thumb_03_Jnt_parentConstraint1.tg[0].trt";
connectAttr "R_Thumb_03_Ctrl.r" "R_Thumb_03_Jnt_parentConstraint1.tg[0].tr";
connectAttr "R_Thumb_03_Ctrl.ro" "R_Thumb_03_Jnt_parentConstraint1.tg[0].tro";
connectAttr "R_Thumb_03_Ctrl.s" "R_Thumb_03_Jnt_parentConstraint1.tg[0].ts";
connectAttr "R_Thumb_03_Ctrl.pm" "R_Thumb_03_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "R_Thumb_03_Jnt_parentConstraint1.w0" "R_Thumb_03_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Thumb_03_Jnt.ssc" "R_Thumb_03_Jnt_scaleConstraint1.tsc";
connectAttr "R_Thumb_03_Jnt.pim" "R_Thumb_03_Jnt_scaleConstraint1.cpim";
connectAttr "R_Thumb_03_Ctrl.s" "R_Thumb_03_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "R_Thumb_03_Ctrl.pm" "R_Thumb_03_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "R_Thumb_03_Jnt_scaleConstraint1.w0" "R_Thumb_03_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Thumb_02_Jnt.ro" "R_Thumb_02_Jnt_parentConstraint1.cro";
connectAttr "R_Thumb_02_Jnt.pim" "R_Thumb_02_Jnt_parentConstraint1.cpim";
connectAttr "R_Thumb_02_Jnt.rp" "R_Thumb_02_Jnt_parentConstraint1.crp";
connectAttr "R_Thumb_02_Jnt.rpt" "R_Thumb_02_Jnt_parentConstraint1.crt";
connectAttr "R_Thumb_02_Jnt.jo" "R_Thumb_02_Jnt_parentConstraint1.cjo";
connectAttr "R_Thumb_02_Ctrl.t" "R_Thumb_02_Jnt_parentConstraint1.tg[0].tt";
connectAttr "R_Thumb_02_Ctrl.rp" "R_Thumb_02_Jnt_parentConstraint1.tg[0].trp";
connectAttr "R_Thumb_02_Ctrl.rpt" "R_Thumb_02_Jnt_parentConstraint1.tg[0].trt";
connectAttr "R_Thumb_02_Ctrl.r" "R_Thumb_02_Jnt_parentConstraint1.tg[0].tr";
connectAttr "R_Thumb_02_Ctrl.ro" "R_Thumb_02_Jnt_parentConstraint1.tg[0].tro";
connectAttr "R_Thumb_02_Ctrl.s" "R_Thumb_02_Jnt_parentConstraint1.tg[0].ts";
connectAttr "R_Thumb_02_Ctrl.pm" "R_Thumb_02_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "R_Thumb_02_Jnt_parentConstraint1.w0" "R_Thumb_02_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Thumb_02_Jnt.ssc" "R_Thumb_02_Jnt_scaleConstraint1.tsc";
connectAttr "R_Thumb_02_Jnt.pim" "R_Thumb_02_Jnt_scaleConstraint1.cpim";
connectAttr "R_Thumb_02_Ctrl.s" "R_Thumb_02_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "R_Thumb_02_Ctrl.pm" "R_Thumb_02_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "R_Thumb_02_Jnt_scaleConstraint1.w0" "R_Thumb_02_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Thumb_01_Jnt.ro" "R_Thumb_01_Jnt_parentConstraint1.cro";
connectAttr "R_Thumb_01_Jnt.pim" "R_Thumb_01_Jnt_parentConstraint1.cpim";
connectAttr "R_Thumb_01_Jnt.rp" "R_Thumb_01_Jnt_parentConstraint1.crp";
connectAttr "R_Thumb_01_Jnt.rpt" "R_Thumb_01_Jnt_parentConstraint1.crt";
connectAttr "R_Thumb_01_Jnt.jo" "R_Thumb_01_Jnt_parentConstraint1.cjo";
connectAttr "R_Thumb_01_Ctrl.t" "R_Thumb_01_Jnt_parentConstraint1.tg[0].tt";
connectAttr "R_Thumb_01_Ctrl.rp" "R_Thumb_01_Jnt_parentConstraint1.tg[0].trp";
connectAttr "R_Thumb_01_Ctrl.rpt" "R_Thumb_01_Jnt_parentConstraint1.tg[0].trt";
connectAttr "R_Thumb_01_Ctrl.r" "R_Thumb_01_Jnt_parentConstraint1.tg[0].tr";
connectAttr "R_Thumb_01_Ctrl.ro" "R_Thumb_01_Jnt_parentConstraint1.tg[0].tro";
connectAttr "R_Thumb_01_Ctrl.s" "R_Thumb_01_Jnt_parentConstraint1.tg[0].ts";
connectAttr "R_Thumb_01_Ctrl.pm" "R_Thumb_01_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "R_Thumb_01_Jnt_parentConstraint1.w0" "R_Thumb_01_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Thumb_01_Jnt.ssc" "R_Thumb_01_Jnt_scaleConstraint1.tsc";
connectAttr "R_Thumb_01_Jnt.pim" "R_Thumb_01_Jnt_scaleConstraint1.cpim";
connectAttr "R_Thumb_01_Ctrl.s" "R_Thumb_01_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "R_Thumb_01_Ctrl.pm" "R_Thumb_01_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "R_Thumb_01_Jnt_scaleConstraint1.w0" "R_Thumb_01_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Hand_0.ro" "R_Hand_0_parentConstraint1.cro";
connectAttr "R_Hand_0.pim" "R_Hand_0_parentConstraint1.cpim";
connectAttr "R_Hand_0.rp" "R_Hand_0_parentConstraint1.crp";
connectAttr "R_Hand_0.rpt" "R_Hand_0_parentConstraint1.crt";
connectAttr "R_Hand_0.jo" "R_Hand_0_parentConstraint1.cjo";
connectAttr "R_Hand_Ctrl.t" "R_Hand_0_parentConstraint1.tg[0].tt";
connectAttr "R_Hand_Ctrl.rp" "R_Hand_0_parentConstraint1.tg[0].trp";
connectAttr "R_Hand_Ctrl.rpt" "R_Hand_0_parentConstraint1.tg[0].trt";
connectAttr "R_Hand_Ctrl.r" "R_Hand_0_parentConstraint1.tg[0].tr";
connectAttr "R_Hand_Ctrl.ro" "R_Hand_0_parentConstraint1.tg[0].tro";
connectAttr "R_Hand_Ctrl.s" "R_Hand_0_parentConstraint1.tg[0].ts";
connectAttr "R_Hand_Ctrl.pm" "R_Hand_0_parentConstraint1.tg[0].tpm";
connectAttr "R_Hand_0_parentConstraint1.w0" "R_Hand_0_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Hand_0.pim" "R_Hand_0_scaleConstraint1.cpim";
connectAttr "R_Hand_Ctrl.s" "R_Hand_0_scaleConstraint1.tg[0].ts";
connectAttr "R_Hand_Ctrl.pm" "R_Hand_0_scaleConstraint1.tg[0].tpm";
connectAttr "R_Hand_0_scaleConstraint1.w0" "R_Hand_0_scaleConstraint1.tg[0].tw";
connectAttr "R_RK_Arm_03_Jnt.ro" "R_RK_Arm_03_Jnt_parentConstraint1.cro";
connectAttr "R_RK_Arm_03_Jnt.pim" "R_RK_Arm_03_Jnt_parentConstraint1.cpim";
connectAttr "R_RK_Arm_03_Jnt.rp" "R_RK_Arm_03_Jnt_parentConstraint1.crp";
connectAttr "R_RK_Arm_03_Jnt.rpt" "R_RK_Arm_03_Jnt_parentConstraint1.crt";
connectAttr "R_RK_Arm_03_Jnt.jo" "R_RK_Arm_03_Jnt_parentConstraint1.cjo";
connectAttr "R_FK_Arm_03_Jnt.t" "R_RK_Arm_03_Jnt_parentConstraint1.tg[0].tt";
connectAttr "R_FK_Arm_03_Jnt.rp" "R_RK_Arm_03_Jnt_parentConstraint1.tg[0].trp";
connectAttr "R_FK_Arm_03_Jnt.rpt" "R_RK_Arm_03_Jnt_parentConstraint1.tg[0].trt";
connectAttr "R_FK_Arm_03_Jnt.r" "R_RK_Arm_03_Jnt_parentConstraint1.tg[0].tr";
connectAttr "R_FK_Arm_03_Jnt.ro" "R_RK_Arm_03_Jnt_parentConstraint1.tg[0].tro";
connectAttr "R_FK_Arm_03_Jnt.s" "R_RK_Arm_03_Jnt_parentConstraint1.tg[0].ts";
connectAttr "R_FK_Arm_03_Jnt.pm" "R_RK_Arm_03_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "R_FK_Arm_03_Jnt.jo" "R_RK_Arm_03_Jnt_parentConstraint1.tg[0].tjo";
connectAttr "R_FK_Arm_03_Jnt.ssc" "R_RK_Arm_03_Jnt_parentConstraint1.tg[0].tsc";
connectAttr "R_FK_Arm_03_Jnt.is" "R_RK_Arm_03_Jnt_parentConstraint1.tg[0].tis";
connectAttr "R_RK_Arm_03_Jnt_parentConstraint1.w0" "R_RK_Arm_03_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_IK_Arm_03_Jnt.t" "R_RK_Arm_03_Jnt_parentConstraint1.tg[1].tt";
connectAttr "R_IK_Arm_03_Jnt.rp" "R_RK_Arm_03_Jnt_parentConstraint1.tg[1].trp";
connectAttr "R_IK_Arm_03_Jnt.rpt" "R_RK_Arm_03_Jnt_parentConstraint1.tg[1].trt";
connectAttr "R_IK_Arm_03_Jnt.r" "R_RK_Arm_03_Jnt_parentConstraint1.tg[1].tr";
connectAttr "R_IK_Arm_03_Jnt.ro" "R_RK_Arm_03_Jnt_parentConstraint1.tg[1].tro";
connectAttr "R_IK_Arm_03_Jnt.s" "R_RK_Arm_03_Jnt_parentConstraint1.tg[1].ts";
connectAttr "R_IK_Arm_03_Jnt.pm" "R_RK_Arm_03_Jnt_parentConstraint1.tg[1].tpm";
connectAttr "R_IK_Arm_03_Jnt.jo" "R_RK_Arm_03_Jnt_parentConstraint1.tg[1].tjo";
connectAttr "R_IK_Arm_03_Jnt.ssc" "R_RK_Arm_03_Jnt_parentConstraint1.tg[1].tsc";
connectAttr "R_IK_Arm_03_Jnt.is" "R_RK_Arm_03_Jnt_parentConstraint1.tg[1].tis";
connectAttr "R_RK_Arm_03_Jnt_parentConstraint1.w1" "R_RK_Arm_03_Jnt_parentConstraint1.tg[1].tw"
		;
connectAttr "Transform_Ctrl.R_Arm_IKFK" "R_RK_Arm_03_Jnt_parentConstraint1.w0";
connectAttr "R_Arm_IKFKRev.ox" "R_RK_Arm_03_Jnt_parentConstraint1.w1";
connectAttr "R_RK_Arm_02_Jnt.ro" "R_RK_Arm_02_Jnt_parentConstraint1.cro";
connectAttr "R_RK_Arm_02_Jnt.pim" "R_RK_Arm_02_Jnt_parentConstraint1.cpim";
connectAttr "R_RK_Arm_02_Jnt.rp" "R_RK_Arm_02_Jnt_parentConstraint1.crp";
connectAttr "R_RK_Arm_02_Jnt.rpt" "R_RK_Arm_02_Jnt_parentConstraint1.crt";
connectAttr "R_RK_Arm_02_Jnt.jo" "R_RK_Arm_02_Jnt_parentConstraint1.cjo";
connectAttr "R_FK_Arm_02_Jnt.t" "R_RK_Arm_02_Jnt_parentConstraint1.tg[0].tt";
connectAttr "R_FK_Arm_02_Jnt.rp" "R_RK_Arm_02_Jnt_parentConstraint1.tg[0].trp";
connectAttr "R_FK_Arm_02_Jnt.rpt" "R_RK_Arm_02_Jnt_parentConstraint1.tg[0].trt";
connectAttr "R_FK_Arm_02_Jnt.r" "R_RK_Arm_02_Jnt_parentConstraint1.tg[0].tr";
connectAttr "R_FK_Arm_02_Jnt.ro" "R_RK_Arm_02_Jnt_parentConstraint1.tg[0].tro";
connectAttr "R_FK_Arm_02_Jnt.s" "R_RK_Arm_02_Jnt_parentConstraint1.tg[0].ts";
connectAttr "R_FK_Arm_02_Jnt.pm" "R_RK_Arm_02_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "R_FK_Arm_02_Jnt.jo" "R_RK_Arm_02_Jnt_parentConstraint1.tg[0].tjo";
connectAttr "R_FK_Arm_02_Jnt.ssc" "R_RK_Arm_02_Jnt_parentConstraint1.tg[0].tsc";
connectAttr "R_FK_Arm_02_Jnt.is" "R_RK_Arm_02_Jnt_parentConstraint1.tg[0].tis";
connectAttr "R_RK_Arm_02_Jnt_parentConstraint1.w0" "R_RK_Arm_02_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_IK_Arm_02_Jnt.t" "R_RK_Arm_02_Jnt_parentConstraint1.tg[1].tt";
connectAttr "R_IK_Arm_02_Jnt.rp" "R_RK_Arm_02_Jnt_parentConstraint1.tg[1].trp";
connectAttr "R_IK_Arm_02_Jnt.rpt" "R_RK_Arm_02_Jnt_parentConstraint1.tg[1].trt";
connectAttr "R_IK_Arm_02_Jnt.r" "R_RK_Arm_02_Jnt_parentConstraint1.tg[1].tr";
connectAttr "R_IK_Arm_02_Jnt.ro" "R_RK_Arm_02_Jnt_parentConstraint1.tg[1].tro";
connectAttr "R_IK_Arm_02_Jnt.s" "R_RK_Arm_02_Jnt_parentConstraint1.tg[1].ts";
connectAttr "R_IK_Arm_02_Jnt.pm" "R_RK_Arm_02_Jnt_parentConstraint1.tg[1].tpm";
connectAttr "R_IK_Arm_02_Jnt.jo" "R_RK_Arm_02_Jnt_parentConstraint1.tg[1].tjo";
connectAttr "R_IK_Arm_02_Jnt.ssc" "R_RK_Arm_02_Jnt_parentConstraint1.tg[1].tsc";
connectAttr "R_IK_Arm_02_Jnt.is" "R_RK_Arm_02_Jnt_parentConstraint1.tg[1].tis";
connectAttr "R_RK_Arm_02_Jnt_parentConstraint1.w1" "R_RK_Arm_02_Jnt_parentConstraint1.tg[1].tw"
		;
connectAttr "Transform_Ctrl.R_Arm_IKFK" "R_RK_Arm_02_Jnt_parentConstraint1.w0";
connectAttr "R_Arm_IKFKRev.ox" "R_RK_Arm_02_Jnt_parentConstraint1.w1";
connectAttr "Bones_Layer.di" "R_Pist_Shold_Grp.do";
connectAttr "joint40_aimConstraint1.crx" "R_Pist_Shold_1.rx";
connectAttr "joint40_aimConstraint1.crz" "R_Pist_Shold_1.rz";
connectAttr "R_Pist_Shold_1.pim" "joint40_aimConstraint1.cpim";
connectAttr "R_Pist_Shold_1.t" "joint40_aimConstraint1.ct";
connectAttr "R_Pist_Shold_1.rp" "joint40_aimConstraint1.crp";
connectAttr "R_Pist_Shold_1.rpt" "joint40_aimConstraint1.crt";
connectAttr "R_Pist_Shold_1.ro" "joint40_aimConstraint1.cro";
connectAttr "R_Pist_Shold_1.jo" "joint40_aimConstraint1.cjo";
connectAttr "R_Pist_Shold_1.is" "joint40_aimConstraint1.is";
connectAttr "R_Pist_Base_1.t" "joint40_aimConstraint1.tg[0].tt";
connectAttr "R_Pist_Base_1.rp" "joint40_aimConstraint1.tg[0].trp";
connectAttr "R_Pist_Base_1.rpt" "joint40_aimConstraint1.tg[0].trt";
connectAttr "R_Pist_Base_1.pm" "joint40_aimConstraint1.tg[0].tpm";
connectAttr "joint40_aimConstraint1.w0" "joint40_aimConstraint1.tg[0].tw";
connectAttr "joint41_aimConstraint1.crx" "R_Pist_Shold_2.rx";
connectAttr "joint41_aimConstraint1.crz" "R_Pist_Shold_2.rz";
connectAttr "R_Pist_Shold_2.pim" "joint41_aimConstraint1.cpim";
connectAttr "R_Pist_Shold_2.t" "joint41_aimConstraint1.ct";
connectAttr "R_Pist_Shold_2.rp" "joint41_aimConstraint1.crp";
connectAttr "R_Pist_Shold_2.rpt" "joint41_aimConstraint1.crt";
connectAttr "R_Pist_Shold_2.ro" "joint41_aimConstraint1.cro";
connectAttr "R_Pist_Shold_2.jo" "joint41_aimConstraint1.cjo";
connectAttr "R_Pist_Shold_2.is" "joint41_aimConstraint1.is";
connectAttr "R_Pist_Base_2.t" "joint41_aimConstraint1.tg[0].tt";
connectAttr "R_Pist_Base_2.rp" "joint41_aimConstraint1.tg[0].trp";
connectAttr "R_Pist_Base_2.rpt" "joint41_aimConstraint1.tg[0].trt";
connectAttr "R_Pist_Base_2.pm" "joint41_aimConstraint1.tg[0].tpm";
connectAttr "joint41_aimConstraint1.w0" "joint41_aimConstraint1.tg[0].tw";
connectAttr "joint44_aimConstraint1.crx" "R_Pist_Shold_3.rx";
connectAttr "joint44_aimConstraint1.crz" "R_Pist_Shold_3.rz";
connectAttr "R_Pist_Shold_3.pim" "joint44_aimConstraint1.cpim";
connectAttr "R_Pist_Shold_3.t" "joint44_aimConstraint1.ct";
connectAttr "R_Pist_Shold_3.rp" "joint44_aimConstraint1.crp";
connectAttr "R_Pist_Shold_3.rpt" "joint44_aimConstraint1.crt";
connectAttr "R_Pist_Shold_3.ro" "joint44_aimConstraint1.cro";
connectAttr "R_Pist_Shold_3.jo" "joint44_aimConstraint1.cjo";
connectAttr "R_Pist_Shold_3.is" "joint44_aimConstraint1.is";
connectAttr "R_Pist_Base_3.t" "joint44_aimConstraint1.tg[0].tt";
connectAttr "R_Pist_Base_3.rp" "joint44_aimConstraint1.tg[0].trp";
connectAttr "R_Pist_Base_3.rpt" "joint44_aimConstraint1.tg[0].trt";
connectAttr "R_Pist_Base_3.pm" "joint44_aimConstraint1.tg[0].tpm";
connectAttr "joint44_aimConstraint1.w0" "joint44_aimConstraint1.tg[0].tw";
connectAttr "joint46_aimConstraint1.crx" "R_Pist_Shold_4.rx";
connectAttr "joint46_aimConstraint1.crz" "R_Pist_Shold_4.rz";
connectAttr "R_Pist_Shold_4.pim" "joint46_aimConstraint1.cpim";
connectAttr "R_Pist_Shold_4.t" "joint46_aimConstraint1.ct";
connectAttr "R_Pist_Shold_4.rp" "joint46_aimConstraint1.crp";
connectAttr "R_Pist_Shold_4.rpt" "joint46_aimConstraint1.crt";
connectAttr "R_Pist_Shold_4.ro" "joint46_aimConstraint1.cro";
connectAttr "R_Pist_Shold_4.jo" "joint46_aimConstraint1.cjo";
connectAttr "R_Pist_Shold_4.is" "joint46_aimConstraint1.is";
connectAttr "R_Pist_Base_4.t" "joint46_aimConstraint1.tg[0].tt";
connectAttr "R_Pist_Base_4.rp" "joint46_aimConstraint1.tg[0].trp";
connectAttr "R_Pist_Base_4.rpt" "joint46_aimConstraint1.tg[0].trt";
connectAttr "R_Pist_Base_4.pm" "joint46_aimConstraint1.tg[0].tpm";
connectAttr "joint46_aimConstraint1.w0" "joint46_aimConstraint1.tg[0].tw";
connectAttr "R_RK_Arm_01_Jnt.ro" "R_RK_Arm_01_Jnt_parentConstraint1.cro";
connectAttr "R_RK_Arm_01_Jnt.pim" "R_RK_Arm_01_Jnt_parentConstraint1.cpim";
connectAttr "R_RK_Arm_01_Jnt.rp" "R_RK_Arm_01_Jnt_parentConstraint1.crp";
connectAttr "R_RK_Arm_01_Jnt.rpt" "R_RK_Arm_01_Jnt_parentConstraint1.crt";
connectAttr "R_RK_Arm_01_Jnt.jo" "R_RK_Arm_01_Jnt_parentConstraint1.cjo";
connectAttr "R_FK_Arm_01_Jnt.t" "R_RK_Arm_01_Jnt_parentConstraint1.tg[0].tt";
connectAttr "R_FK_Arm_01_Jnt.rp" "R_RK_Arm_01_Jnt_parentConstraint1.tg[0].trp";
connectAttr "R_FK_Arm_01_Jnt.rpt" "R_RK_Arm_01_Jnt_parentConstraint1.tg[0].trt";
connectAttr "R_FK_Arm_01_Jnt.r" "R_RK_Arm_01_Jnt_parentConstraint1.tg[0].tr";
connectAttr "R_FK_Arm_01_Jnt.ro" "R_RK_Arm_01_Jnt_parentConstraint1.tg[0].tro";
connectAttr "R_FK_Arm_01_Jnt.s" "R_RK_Arm_01_Jnt_parentConstraint1.tg[0].ts";
connectAttr "R_FK_Arm_01_Jnt.pm" "R_RK_Arm_01_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "R_FK_Arm_01_Jnt.jo" "R_RK_Arm_01_Jnt_parentConstraint1.tg[0].tjo";
connectAttr "R_FK_Arm_01_Jnt.ssc" "R_RK_Arm_01_Jnt_parentConstraint1.tg[0].tsc";
connectAttr "R_FK_Arm_01_Jnt.is" "R_RK_Arm_01_Jnt_parentConstraint1.tg[0].tis";
connectAttr "R_RK_Arm_01_Jnt_parentConstraint1.w0" "R_RK_Arm_01_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_IK_Arm_01_Jnt.t" "R_RK_Arm_01_Jnt_parentConstraint1.tg[1].tt";
connectAttr "R_IK_Arm_01_Jnt.rp" "R_RK_Arm_01_Jnt_parentConstraint1.tg[1].trp";
connectAttr "R_IK_Arm_01_Jnt.rpt" "R_RK_Arm_01_Jnt_parentConstraint1.tg[1].trt";
connectAttr "R_IK_Arm_01_Jnt.r" "R_RK_Arm_01_Jnt_parentConstraint1.tg[1].tr";
connectAttr "R_IK_Arm_01_Jnt.ro" "R_RK_Arm_01_Jnt_parentConstraint1.tg[1].tro";
connectAttr "R_IK_Arm_01_Jnt.s" "R_RK_Arm_01_Jnt_parentConstraint1.tg[1].ts";
connectAttr "R_IK_Arm_01_Jnt.pm" "R_RK_Arm_01_Jnt_parentConstraint1.tg[1].tpm";
connectAttr "R_IK_Arm_01_Jnt.jo" "R_RK_Arm_01_Jnt_parentConstraint1.tg[1].tjo";
connectAttr "R_IK_Arm_01_Jnt.ssc" "R_RK_Arm_01_Jnt_parentConstraint1.tg[1].tsc";
connectAttr "R_IK_Arm_01_Jnt.is" "R_RK_Arm_01_Jnt_parentConstraint1.tg[1].tis";
connectAttr "R_RK_Arm_01_Jnt_parentConstraint1.w1" "R_RK_Arm_01_Jnt_parentConstraint1.tg[1].tw"
		;
connectAttr "Transform_Ctrl.R_Arm_IKFK" "R_RK_Arm_01_Jnt_parentConstraint1.w0";
connectAttr "R_Arm_IKFKRev.ox" "R_RK_Arm_01_Jnt_parentConstraint1.w1";
connectAttr "R_Clav_Jnt.ro" "R_Clav_Jnt_parentConstraint1.cro";
connectAttr "R_Clav_Jnt.pim" "R_Clav_Jnt_parentConstraint1.cpim";
connectAttr "R_Clav_Jnt.rp" "R_Clav_Jnt_parentConstraint1.crp";
connectAttr "R_Clav_Jnt.rpt" "R_Clav_Jnt_parentConstraint1.crt";
connectAttr "R_Clav_Jnt.jo" "R_Clav_Jnt_parentConstraint1.cjo";
connectAttr "R_Clav_Ctrl.t" "R_Clav_Jnt_parentConstraint1.tg[0].tt";
connectAttr "R_Clav_Ctrl.rp" "R_Clav_Jnt_parentConstraint1.tg[0].trp";
connectAttr "R_Clav_Ctrl.rpt" "R_Clav_Jnt_parentConstraint1.tg[0].trt";
connectAttr "R_Clav_Ctrl.r" "R_Clav_Jnt_parentConstraint1.tg[0].tr";
connectAttr "R_Clav_Ctrl.ro" "R_Clav_Jnt_parentConstraint1.tg[0].tro";
connectAttr "R_Clav_Ctrl.s" "R_Clav_Jnt_parentConstraint1.tg[0].ts";
connectAttr "R_Clav_Ctrl.pm" "R_Clav_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "R_Clav_Jnt_parentConstraint1.w0" "R_Clav_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Clav_Jnt.ssc" "R_Clav_Jnt_scaleConstraint1.tsc";
connectAttr "R_Clav_Jnt.pim" "R_Clav_Jnt_scaleConstraint1.cpim";
connectAttr "R_Clav_Ctrl.s" "R_Clav_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "R_Clav_Ctrl.pm" "R_Clav_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "R_Clav_Jnt_scaleConstraint1.w0" "R_Clav_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "Spine_03_Jnt.s" "R_Pist_Rot_Jnt.is";
connectAttr "unitConversion4.o" "R_Pist_Rot_Jnt.rx";
connectAttr "joint39_aimConstraint1.crx" "R_Pist_Base_1.rx";
connectAttr "joint39_aimConstraint1.crz" "R_Pist_Base_1.rz";
connectAttr "R_Pist_Base_1.pim" "joint39_aimConstraint1.cpim";
connectAttr "R_Pist_Base_1.t" "joint39_aimConstraint1.ct";
connectAttr "R_Pist_Base_1.rp" "joint39_aimConstraint1.crp";
connectAttr "R_Pist_Base_1.rpt" "joint39_aimConstraint1.crt";
connectAttr "R_Pist_Base_1.ro" "joint39_aimConstraint1.cro";
connectAttr "R_Pist_Base_1.jo" "joint39_aimConstraint1.cjo";
connectAttr "R_Pist_Base_1.is" "joint39_aimConstraint1.is";
connectAttr "R_Pist_Shold_1.t" "joint39_aimConstraint1.tg[0].tt";
connectAttr "R_Pist_Shold_1.rp" "joint39_aimConstraint1.tg[0].trp";
connectAttr "R_Pist_Shold_1.rpt" "joint39_aimConstraint1.tg[0].trt";
connectAttr "R_Pist_Shold_1.pm" "joint39_aimConstraint1.tg[0].tpm";
connectAttr "joint39_aimConstraint1.w0" "joint39_aimConstraint1.tg[0].tw";
connectAttr "joint42_aimConstraint1.crx" "R_Pist_Base_2.rx";
connectAttr "joint42_aimConstraint1.crz" "R_Pist_Base_2.rz";
connectAttr "R_Pist_Base_2.pim" "joint42_aimConstraint1.cpim";
connectAttr "R_Pist_Base_2.t" "joint42_aimConstraint1.ct";
connectAttr "R_Pist_Base_2.rp" "joint42_aimConstraint1.crp";
connectAttr "R_Pist_Base_2.rpt" "joint42_aimConstraint1.crt";
connectAttr "R_Pist_Base_2.ro" "joint42_aimConstraint1.cro";
connectAttr "R_Pist_Base_2.jo" "joint42_aimConstraint1.cjo";
connectAttr "R_Pist_Base_2.is" "joint42_aimConstraint1.is";
connectAttr "R_Pist_Shold_2.t" "joint42_aimConstraint1.tg[0].tt";
connectAttr "R_Pist_Shold_2.rp" "joint42_aimConstraint1.tg[0].trp";
connectAttr "R_Pist_Shold_2.rpt" "joint42_aimConstraint1.tg[0].trt";
connectAttr "R_Pist_Shold_2.pm" "joint42_aimConstraint1.tg[0].tpm";
connectAttr "joint42_aimConstraint1.w0" "joint42_aimConstraint1.tg[0].tw";
connectAttr "joint43_aimConstraint1.crx" "R_Pist_Base_3.rx";
connectAttr "joint43_aimConstraint1.crz" "R_Pist_Base_3.rz";
connectAttr "R_Pist_Base_3.pim" "joint43_aimConstraint1.cpim";
connectAttr "R_Pist_Base_3.t" "joint43_aimConstraint1.ct";
connectAttr "R_Pist_Base_3.rp" "joint43_aimConstraint1.crp";
connectAttr "R_Pist_Base_3.rpt" "joint43_aimConstraint1.crt";
connectAttr "R_Pist_Base_3.ro" "joint43_aimConstraint1.cro";
connectAttr "R_Pist_Base_3.jo" "joint43_aimConstraint1.cjo";
connectAttr "R_Pist_Base_3.is" "joint43_aimConstraint1.is";
connectAttr "R_Pist_Shold_3.t" "joint43_aimConstraint1.tg[0].tt";
connectAttr "R_Pist_Shold_3.rp" "joint43_aimConstraint1.tg[0].trp";
connectAttr "R_Pist_Shold_3.rpt" "joint43_aimConstraint1.tg[0].trt";
connectAttr "R_Pist_Shold_3.pm" "joint43_aimConstraint1.tg[0].tpm";
connectAttr "joint43_aimConstraint1.w0" "joint43_aimConstraint1.tg[0].tw";
connectAttr "joint45_aimConstraint1.crx" "R_Pist_Base_4.rx";
connectAttr "joint45_aimConstraint1.crz" "R_Pist_Base_4.rz";
connectAttr "R_Pist_Base_4.pim" "joint45_aimConstraint1.cpim";
connectAttr "R_Pist_Base_4.t" "joint45_aimConstraint1.ct";
connectAttr "R_Pist_Base_4.rp" "joint45_aimConstraint1.crp";
connectAttr "R_Pist_Base_4.rpt" "joint45_aimConstraint1.crt";
connectAttr "R_Pist_Base_4.ro" "joint45_aimConstraint1.cro";
connectAttr "R_Pist_Base_4.jo" "joint45_aimConstraint1.cjo";
connectAttr "R_Pist_Base_4.is" "joint45_aimConstraint1.is";
connectAttr "R_Pist_Shold_4.t" "joint45_aimConstraint1.tg[0].tt";
connectAttr "R_Pist_Shold_4.rp" "joint45_aimConstraint1.tg[0].trp";
connectAttr "R_Pist_Shold_4.rpt" "joint45_aimConstraint1.tg[0].trt";
connectAttr "R_Pist_Shold_4.pm" "joint45_aimConstraint1.tg[0].tpm";
connectAttr "joint45_aimConstraint1.w0" "joint45_aimConstraint1.tg[0].tw";
connectAttr "Spine_03_Jnt.ro" "Spine_03_Jnt_parentConstraint1.cro";
connectAttr "Spine_03_Jnt.pim" "Spine_03_Jnt_parentConstraint1.cpim";
connectAttr "Spine_03_Jnt.rp" "Spine_03_Jnt_parentConstraint1.crp";
connectAttr "Spine_03_Jnt.rpt" "Spine_03_Jnt_parentConstraint1.crt";
connectAttr "Spine_03_Jnt.jo" "Spine_03_Jnt_parentConstraint1.cjo";
connectAttr "Spine_04_Ctrl.t" "Spine_03_Jnt_parentConstraint1.tg[0].tt";
connectAttr "Spine_04_Ctrl.rp" "Spine_03_Jnt_parentConstraint1.tg[0].trp";
connectAttr "Spine_04_Ctrl.rpt" "Spine_03_Jnt_parentConstraint1.tg[0].trt";
connectAttr "Spine_04_Ctrl.r" "Spine_03_Jnt_parentConstraint1.tg[0].tr";
connectAttr "Spine_04_Ctrl.ro" "Spine_03_Jnt_parentConstraint1.tg[0].tro";
connectAttr "Spine_04_Ctrl.s" "Spine_03_Jnt_parentConstraint1.tg[0].ts";
connectAttr "Spine_04_Ctrl.pm" "Spine_03_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "Spine_03_Jnt_parentConstraint1.w0" "Spine_03_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Spine_03_Jnt.ssc" "Spine_03_Jnt_scaleConstraint1.tsc";
connectAttr "Spine_03_Jnt.pim" "Spine_03_Jnt_scaleConstraint1.cpim";
connectAttr "Spine_04_Ctrl.s" "Spine_03_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "Spine_04_Ctrl.pm" "Spine_03_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "Spine_03_Jnt_scaleConstraint1.w0" "Spine_03_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "Spine_02_Jnt.ro" "Spine_02_Jnt_parentConstraint1.cro";
connectAttr "Spine_02_Jnt.pim" "Spine_02_Jnt_parentConstraint1.cpim";
connectAttr "Spine_02_Jnt.rp" "Spine_02_Jnt_parentConstraint1.crp";
connectAttr "Spine_02_Jnt.rpt" "Spine_02_Jnt_parentConstraint1.crt";
connectAttr "Spine_02_Jnt.jo" "Spine_02_Jnt_parentConstraint1.cjo";
connectAttr "Spine_03_Ctrl.t" "Spine_02_Jnt_parentConstraint1.tg[0].tt";
connectAttr "Spine_03_Ctrl.rp" "Spine_02_Jnt_parentConstraint1.tg[0].trp";
connectAttr "Spine_03_Ctrl.rpt" "Spine_02_Jnt_parentConstraint1.tg[0].trt";
connectAttr "Spine_03_Ctrl.r" "Spine_02_Jnt_parentConstraint1.tg[0].tr";
connectAttr "Spine_03_Ctrl.ro" "Spine_02_Jnt_parentConstraint1.tg[0].tro";
connectAttr "Spine_03_Ctrl.s" "Spine_02_Jnt_parentConstraint1.tg[0].ts";
connectAttr "Spine_03_Ctrl.pm" "Spine_02_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "Spine_02_Jnt_parentConstraint1.w0" "Spine_02_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Spine_02_Jnt.ssc" "Spine_02_Jnt_scaleConstraint1.tsc";
connectAttr "Spine_02_Jnt.pim" "Spine_02_Jnt_scaleConstraint1.cpim";
connectAttr "Spine_03_Ctrl.s" "Spine_02_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "Spine_03_Ctrl.pm" "Spine_02_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "Spine_02_Jnt_scaleConstraint1.w0" "Spine_02_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "Spine_01_Jnt.ro" "Spine_01_Jnt_parentConstraint1.cro";
connectAttr "Spine_01_Jnt.pim" "Spine_01_Jnt_parentConstraint1.cpim";
connectAttr "Spine_01_Jnt.rp" "Spine_01_Jnt_parentConstraint1.crp";
connectAttr "Spine_01_Jnt.rpt" "Spine_01_Jnt_parentConstraint1.crt";
connectAttr "Spine_01_Jnt.jo" "Spine_01_Jnt_parentConstraint1.cjo";
connectAttr "Spine_02_Ctrl.t" "Spine_01_Jnt_parentConstraint1.tg[0].tt";
connectAttr "Spine_02_Ctrl.rp" "Spine_01_Jnt_parentConstraint1.tg[0].trp";
connectAttr "Spine_02_Ctrl.rpt" "Spine_01_Jnt_parentConstraint1.tg[0].trt";
connectAttr "Spine_02_Ctrl.r" "Spine_01_Jnt_parentConstraint1.tg[0].tr";
connectAttr "Spine_02_Ctrl.ro" "Spine_01_Jnt_parentConstraint1.tg[0].tro";
connectAttr "Spine_02_Ctrl.s" "Spine_01_Jnt_parentConstraint1.tg[0].ts";
connectAttr "Spine_02_Ctrl.pm" "Spine_01_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "Spine_01_Jnt_parentConstraint1.w0" "Spine_01_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Spine_01_Jnt.ssc" "Spine_01_Jnt_scaleConstraint1.tsc";
connectAttr "Spine_01_Jnt.pim" "Spine_01_Jnt_scaleConstraint1.cpim";
connectAttr "Spine_02_Ctrl.s" "Spine_01_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "Spine_02_Ctrl.pm" "Spine_01_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "Spine_01_Jnt_scaleConstraint1.w0" "Spine_01_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "Spine_00_Jnt.ro" "Spine_00_Jnt_parentConstraint1.cro";
connectAttr "Spine_00_Jnt.pim" "Spine_00_Jnt_parentConstraint1.cpim";
connectAttr "Spine_00_Jnt.rp" "Spine_00_Jnt_parentConstraint1.crp";
connectAttr "Spine_00_Jnt.rpt" "Spine_00_Jnt_parentConstraint1.crt";
connectAttr "Spine_00_Jnt.jo" "Spine_00_Jnt_parentConstraint1.cjo";
connectAttr "Spine_01_Ctrl.t" "Spine_00_Jnt_parentConstraint1.tg[0].tt";
connectAttr "Spine_01_Ctrl.rp" "Spine_00_Jnt_parentConstraint1.tg[0].trp";
connectAttr "Spine_01_Ctrl.rpt" "Spine_00_Jnt_parentConstraint1.tg[0].trt";
connectAttr "Spine_01_Ctrl.r" "Spine_00_Jnt_parentConstraint1.tg[0].tr";
connectAttr "Spine_01_Ctrl.ro" "Spine_00_Jnt_parentConstraint1.tg[0].tro";
connectAttr "Spine_01_Ctrl.s" "Spine_00_Jnt_parentConstraint1.tg[0].ts";
connectAttr "Spine_01_Ctrl.pm" "Spine_00_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "Spine_00_Jnt_parentConstraint1.w0" "Spine_00_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Spine_00_Jnt.ssc" "Spine_00_Jnt_scaleConstraint1.tsc";
connectAttr "Spine_00_Jnt.pim" "Spine_00_Jnt_scaleConstraint1.cpim";
connectAttr "Spine_01_Ctrl.s" "Spine_00_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "Spine_01_Ctrl.pm" "Spine_00_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "Spine_00_Jnt_scaleConstraint1.w0" "Spine_00_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "Cog_Jnt.ro" "Cog_Jnt_parentConstraint1.cro";
connectAttr "Cog_Jnt.pim" "Cog_Jnt_parentConstraint1.cpim";
connectAttr "Cog_Jnt.rp" "Cog_Jnt_parentConstraint1.crp";
connectAttr "Cog_Jnt.rpt" "Cog_Jnt_parentConstraint1.crt";
connectAttr "Cog_Jnt.jo" "Cog_Jnt_parentConstraint1.cjo";
connectAttr "Cog_Ctrl.t" "Cog_Jnt_parentConstraint1.tg[0].tt";
connectAttr "Cog_Ctrl.rp" "Cog_Jnt_parentConstraint1.tg[0].trp";
connectAttr "Cog_Ctrl.rpt" "Cog_Jnt_parentConstraint1.tg[0].trt";
connectAttr "Cog_Ctrl.r" "Cog_Jnt_parentConstraint1.tg[0].tr";
connectAttr "Cog_Ctrl.ro" "Cog_Jnt_parentConstraint1.tg[0].tro";
connectAttr "Cog_Ctrl.s" "Cog_Jnt_parentConstraint1.tg[0].ts";
connectAttr "Cog_Ctrl.pm" "Cog_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "Cog_Jnt_parentConstraint1.w0" "Cog_Jnt_parentConstraint1.tg[0].tw";
connectAttr "Cog_Jnt.ssc" "Cog_Jnt_scaleConstraint1.tsc";
connectAttr "Cog_Jnt.pim" "Cog_Jnt_scaleConstraint1.cpim";
connectAttr "Cog_Ctrl.s" "Cog_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "Cog_Ctrl.pm" "Cog_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "Cog_Jnt_scaleConstraint1.w0" "Cog_Jnt_scaleConstraint1.tg[0].tw";
connectAttr "Bones_Layer.di" "L_RK_Ankle.do";
connectAttr "L_RK_Ankle.s" "L_RK_Toe_1_Jnt.is";
connectAttr "L_RK_Toe_1_Jnt.s" "L_RK_Toe_1_Point.is";
connectAttr "L_RK_Ankle.s" "L_RK_Toe_2_Jnt.is";
connectAttr "L_RK_Toe_2_Jnt.s" "L_RK_Toe_2_Point.is";
connectAttr "L_RK_Ankle.s" "L_RK_Heel_Jnt.is";
connectAttr "L_RK_Heel_Jnt.s" "L_RK_Heel_Point.is";
connectAttr "Bones_Layer.di" "R_RK_Ankle.do";
connectAttr "R_RK_Ankle.s" "R_RK_Toe_1_Jnt.is";
connectAttr "R_RK_Toe_1_Jnt.s" "R_RK_Toe_1_Point.is";
connectAttr "R_RK_Ankle.s" "R_RK_Toe_2_Jnt.is";
connectAttr "R_RK_Toe_2_Jnt.s" "R_RK_Toe_2_Point.is";
connectAttr "R_RK_Ankle.s" "R_RK_Heel_Jnt.is";
connectAttr "R_RK_Heel_Jnt.s" "R_RK_Heel_Point.is";
connectAttr "makeNurbCircle2.oc" "ROOT_CtrlShape.cr";
connectAttr "makeNurbCircle1.oc" "Cog_CtrlShape.cr";
connectAttr "Hip_Ctrl_Grp_parentConstraint1.ctx" "Hip_Ctrl_Grp.tx";
connectAttr "Hip_Ctrl_Grp_parentConstraint1.cty" "Hip_Ctrl_Grp.ty";
connectAttr "Hip_Ctrl_Grp_parentConstraint1.ctz" "Hip_Ctrl_Grp.tz";
connectAttr "Hip_Ctrl_Grp_parentConstraint2.crx" "Hip_Ctrl_Grp.rx";
connectAttr "Hip_Ctrl_Grp_parentConstraint2.cry" "Hip_Ctrl_Grp.ry";
connectAttr "Hip_Ctrl_Grp_parentConstraint2.crz" "Hip_Ctrl_Grp.rz";
connectAttr "Hip_Ctrl_Grp_scaleConstraint1.csx" "Hip_Ctrl_Grp.sx";
connectAttr "Hip_Ctrl_Grp_scaleConstraint1.csy" "Hip_Ctrl_Grp.sy";
connectAttr "Hip_Ctrl_Grp_scaleConstraint1.csz" "Hip_Ctrl_Grp.sz";
connectAttr "Hip_Ctrl_Grp.ro" "Hip_Ctrl_Grp_parentConstraint1.cro";
connectAttr "Hip_Ctrl_Grp.pim" "Hip_Ctrl_Grp_parentConstraint1.cpim";
connectAttr "Hip_Ctrl_Grp.rp" "Hip_Ctrl_Grp_parentConstraint1.crp";
connectAttr "Hip_Ctrl_Grp.rpt" "Hip_Ctrl_Grp_parentConstraint1.crt";
connectAttr "Cog_Ctrl.t" "Hip_Ctrl_Grp_parentConstraint1.tg[0].tt";
connectAttr "Cog_Ctrl.rp" "Hip_Ctrl_Grp_parentConstraint1.tg[0].trp";
connectAttr "Cog_Ctrl.rpt" "Hip_Ctrl_Grp_parentConstraint1.tg[0].trt";
connectAttr "Cog_Ctrl.r" "Hip_Ctrl_Grp_parentConstraint1.tg[0].tr";
connectAttr "Cog_Ctrl.ro" "Hip_Ctrl_Grp_parentConstraint1.tg[0].tro";
connectAttr "Cog_Ctrl.s" "Hip_Ctrl_Grp_parentConstraint1.tg[0].ts";
connectAttr "Cog_Ctrl.pm" "Hip_Ctrl_Grp_parentConstraint1.tg[0].tpm";
connectAttr "Hip_Ctrl_Grp_parentConstraint1.w0" "Hip_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "Hip_Ctrl.FollowTranslate" "Hip_Ctrl_Grp_parentConstraint1.w0";
connectAttr "Hip_Ctrl_Grp.ro" "Hip_Ctrl_Grp_parentConstraint2.cro";
connectAttr "Hip_Ctrl_Grp.pim" "Hip_Ctrl_Grp_parentConstraint2.cpim";
connectAttr "Hip_Ctrl_Grp.rp" "Hip_Ctrl_Grp_parentConstraint2.crp";
connectAttr "Hip_Ctrl_Grp.rpt" "Hip_Ctrl_Grp_parentConstraint2.crt";
connectAttr "Cog_Ctrl.t" "Hip_Ctrl_Grp_parentConstraint2.tg[0].tt";
connectAttr "Cog_Ctrl.rp" "Hip_Ctrl_Grp_parentConstraint2.tg[0].trp";
connectAttr "Cog_Ctrl.rpt" "Hip_Ctrl_Grp_parentConstraint2.tg[0].trt";
connectAttr "Cog_Ctrl.r" "Hip_Ctrl_Grp_parentConstraint2.tg[0].tr";
connectAttr "Cog_Ctrl.ro" "Hip_Ctrl_Grp_parentConstraint2.tg[0].tro";
connectAttr "Cog_Ctrl.s" "Hip_Ctrl_Grp_parentConstraint2.tg[0].ts";
connectAttr "Cog_Ctrl.pm" "Hip_Ctrl_Grp_parentConstraint2.tg[0].tpm";
connectAttr "Hip_Ctrl_Grp_parentConstraint2.w0" "Hip_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "Hip_Ctrl.FollowRotate" "Hip_Ctrl_Grp_parentConstraint2.w0";
connectAttr "Hip_Ctrl_Grp.pim" "Hip_Ctrl_Grp_scaleConstraint1.cpim";
connectAttr "Cog_Ctrl.s" "Hip_Ctrl_Grp_scaleConstraint1.tg[0].ts";
connectAttr "Cog_Ctrl.pm" "Hip_Ctrl_Grp_scaleConstraint1.tg[0].tpm";
connectAttr "Hip_Ctrl_Grp_scaleConstraint1.w0" "Hip_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Hand_Ctrl_Grp_parentConstraint1.ctx" "L_Hand_Ctrl_Grp.tx";
connectAttr "L_Hand_Ctrl_Grp_parentConstraint1.cty" "L_Hand_Ctrl_Grp.ty";
connectAttr "L_Hand_Ctrl_Grp_parentConstraint1.ctz" "L_Hand_Ctrl_Grp.tz";
connectAttr "L_Hand_Ctrl_Grp_parentConstraint1.crx" "L_Hand_Ctrl_Grp.rx";
connectAttr "L_Hand_Ctrl_Grp_parentConstraint1.cry" "L_Hand_Ctrl_Grp.ry";
connectAttr "L_Hand_Ctrl_Grp_parentConstraint1.crz" "L_Hand_Ctrl_Grp.rz";
connectAttr "makeNurbCircle25.oc" "L_Hand_CtrlShape.cr";
connectAttr "L_Thumb_03_Ctrl_Grp_parentConstraint1.ctx" "L_Thumb_03_Ctrl_Grp.tx"
		;
connectAttr "L_Thumb_03_Ctrl_Grp_parentConstraint1.cty" "L_Thumb_03_Ctrl_Grp.ty"
		;
connectAttr "L_Thumb_03_Ctrl_Grp_parentConstraint1.ctz" "L_Thumb_03_Ctrl_Grp.tz"
		;
connectAttr "L_Thumb_03_Ctrl_Grp_parentConstraint2.crx" "L_Thumb_03_Ctrl_Grp.rx"
		;
connectAttr "L_Thumb_03_Ctrl_Grp_parentConstraint2.cry" "L_Thumb_03_Ctrl_Grp.ry"
		;
connectAttr "L_Thumb_03_Ctrl_Grp_parentConstraint2.crz" "L_Thumb_03_Ctrl_Grp.rz"
		;
connectAttr "L_Thumb_03_Ctrl_Grp_scaleConstraint1.csx" "L_Thumb_03_Ctrl_Grp.sx";
connectAttr "L_Thumb_03_Ctrl_Grp_scaleConstraint1.csy" "L_Thumb_03_Ctrl_Grp.sy";
connectAttr "L_Thumb_03_Ctrl_Grp_scaleConstraint1.csz" "L_Thumb_03_Ctrl_Grp.sz";
connectAttr "makeNurbCircle24.oc" "L_Thumb_03_CtrlShape.cr";
connectAttr "L_Thumb_03_Ctrl_Grp.ro" "L_Thumb_03_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "L_Thumb_03_Ctrl_Grp.pim" "L_Thumb_03_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "L_Thumb_03_Ctrl_Grp.rp" "L_Thumb_03_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "L_Thumb_03_Ctrl_Grp.rpt" "L_Thumb_03_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "L_Thumb_02_Ctrl.t" "L_Thumb_03_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "L_Thumb_02_Ctrl.rp" "L_Thumb_03_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "L_Thumb_02_Ctrl.rpt" "L_Thumb_03_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Thumb_02_Ctrl.r" "L_Thumb_03_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "L_Thumb_02_Ctrl.ro" "L_Thumb_03_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "L_Thumb_02_Ctrl.s" "L_Thumb_03_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "L_Thumb_02_Ctrl.pm" "L_Thumb_03_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_Thumb_03_Ctrl_Grp_parentConstraint1.w0" "L_Thumb_03_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Thumb_03_Ctrl.FollowTranslate" "L_Thumb_03_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "L_Thumb_03_Ctrl_Grp.ro" "L_Thumb_03_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "L_Thumb_03_Ctrl_Grp.pim" "L_Thumb_03_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "L_Thumb_03_Ctrl_Grp.rp" "L_Thumb_03_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "L_Thumb_03_Ctrl_Grp.rpt" "L_Thumb_03_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "L_Thumb_02_Ctrl.t" "L_Thumb_03_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "L_Thumb_02_Ctrl.rp" "L_Thumb_03_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "L_Thumb_02_Ctrl.rpt" "L_Thumb_03_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "L_Thumb_02_Ctrl.r" "L_Thumb_03_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "L_Thumb_02_Ctrl.ro" "L_Thumb_03_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "L_Thumb_02_Ctrl.s" "L_Thumb_03_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "L_Thumb_02_Ctrl.pm" "L_Thumb_03_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "L_Thumb_03_Ctrl_Grp_parentConstraint2.w0" "L_Thumb_03_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "L_Thumb_03_Ctrl.FollowRotate" "L_Thumb_03_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "L_Thumb_03_Ctrl_Grp.pim" "L_Thumb_03_Ctrl_Grp_scaleConstraint1.cpim"
		;
connectAttr "L_Thumb_02_Ctrl.s" "L_Thumb_03_Ctrl_Grp_scaleConstraint1.tg[0].ts";
connectAttr "L_Thumb_02_Ctrl.pm" "L_Thumb_03_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "L_Thumb_03_Ctrl_Grp_scaleConstraint1.w0" "L_Thumb_03_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Thumb_02_Ctrl_Grp_parentConstraint1.ctx" "L_Thumb_02_Ctrl_Grp.tx"
		;
connectAttr "L_Thumb_02_Ctrl_Grp_parentConstraint1.cty" "L_Thumb_02_Ctrl_Grp.ty"
		;
connectAttr "L_Thumb_02_Ctrl_Grp_parentConstraint1.ctz" "L_Thumb_02_Ctrl_Grp.tz"
		;
connectAttr "L_Thumb_02_Ctrl_Grp_parentConstraint2.crx" "L_Thumb_02_Ctrl_Grp.rx"
		;
connectAttr "L_Thumb_02_Ctrl_Grp_parentConstraint2.cry" "L_Thumb_02_Ctrl_Grp.ry"
		;
connectAttr "L_Thumb_02_Ctrl_Grp_parentConstraint2.crz" "L_Thumb_02_Ctrl_Grp.rz"
		;
connectAttr "L_Thumb_02_Ctrl_Grp_scaleConstraint1.csx" "L_Thumb_02_Ctrl_Grp.sx";
connectAttr "L_Thumb_02_Ctrl_Grp_scaleConstraint1.csy" "L_Thumb_02_Ctrl_Grp.sy";
connectAttr "L_Thumb_02_Ctrl_Grp_scaleConstraint1.csz" "L_Thumb_02_Ctrl_Grp.sz";
connectAttr "makeNurbCircle23.oc" "L_Thumb_02_CtrlShape.cr";
connectAttr "L_Thumb_02_Ctrl_Grp.ro" "L_Thumb_02_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "L_Thumb_02_Ctrl_Grp.pim" "L_Thumb_02_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "L_Thumb_02_Ctrl_Grp.rp" "L_Thumb_02_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "L_Thumb_02_Ctrl_Grp.rpt" "L_Thumb_02_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "L_Thumb_01_Ctrl.t" "L_Thumb_02_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "L_Thumb_01_Ctrl.rp" "L_Thumb_02_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "L_Thumb_01_Ctrl.rpt" "L_Thumb_02_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Thumb_01_Ctrl.r" "L_Thumb_02_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "L_Thumb_01_Ctrl.ro" "L_Thumb_02_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "L_Thumb_01_Ctrl.s" "L_Thumb_02_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "L_Thumb_01_Ctrl.pm" "L_Thumb_02_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_Thumb_02_Ctrl_Grp_parentConstraint1.w0" "L_Thumb_02_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Thumb_02_Ctrl.FollowTranslate" "L_Thumb_02_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "L_Thumb_02_Ctrl_Grp.ro" "L_Thumb_02_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "L_Thumb_02_Ctrl_Grp.pim" "L_Thumb_02_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "L_Thumb_02_Ctrl_Grp.rp" "L_Thumb_02_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "L_Thumb_02_Ctrl_Grp.rpt" "L_Thumb_02_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "L_Thumb_01_Ctrl.t" "L_Thumb_02_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "L_Thumb_01_Ctrl.rp" "L_Thumb_02_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "L_Thumb_01_Ctrl.rpt" "L_Thumb_02_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "L_Thumb_01_Ctrl.r" "L_Thumb_02_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "L_Thumb_01_Ctrl.ro" "L_Thumb_02_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "L_Thumb_01_Ctrl.s" "L_Thumb_02_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "L_Thumb_01_Ctrl.pm" "L_Thumb_02_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "L_Thumb_02_Ctrl_Grp_parentConstraint2.w0" "L_Thumb_02_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "L_Thumb_02_Ctrl.FollowRotate" "L_Thumb_02_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "L_Thumb_02_Ctrl_Grp.pim" "L_Thumb_02_Ctrl_Grp_scaleConstraint1.cpim"
		;
connectAttr "L_Thumb_01_Ctrl.s" "L_Thumb_02_Ctrl_Grp_scaleConstraint1.tg[0].ts";
connectAttr "L_Thumb_01_Ctrl.pm" "L_Thumb_02_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "L_Thumb_02_Ctrl_Grp_scaleConstraint1.w0" "L_Thumb_02_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Thumb_01_Ctrl_Grp_parentConstraint1.ctx" "L_Thumb_01_Ctrl_Grp.tx"
		;
connectAttr "L_Thumb_01_Ctrl_Grp_parentConstraint1.cty" "L_Thumb_01_Ctrl_Grp.ty"
		;
connectAttr "L_Thumb_01_Ctrl_Grp_parentConstraint1.ctz" "L_Thumb_01_Ctrl_Grp.tz"
		;
connectAttr "L_Thumb_01_Ctrl_Grp_parentConstraint2.crx" "L_Thumb_01_Ctrl_Grp.rx"
		;
connectAttr "L_Thumb_01_Ctrl_Grp_parentConstraint2.cry" "L_Thumb_01_Ctrl_Grp.ry"
		;
connectAttr "L_Thumb_01_Ctrl_Grp_parentConstraint2.crz" "L_Thumb_01_Ctrl_Grp.rz"
		;
connectAttr "L_Thumb_01_Ctrl_Grp_scaleConstraint1.csx" "L_Thumb_01_Ctrl_Grp.sx";
connectAttr "L_Thumb_01_Ctrl_Grp_scaleConstraint1.csy" "L_Thumb_01_Ctrl_Grp.sy";
connectAttr "L_Thumb_01_Ctrl_Grp_scaleConstraint1.csz" "L_Thumb_01_Ctrl_Grp.sz";
connectAttr "makeNurbCircle22.oc" "L_Thumb_01_CtrlShape.cr";
connectAttr "L_Thumb_01_Ctrl_Grp.ro" "L_Thumb_01_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "L_Thumb_01_Ctrl_Grp.pim" "L_Thumb_01_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "L_Thumb_01_Ctrl_Grp.rp" "L_Thumb_01_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "L_Thumb_01_Ctrl_Grp.rpt" "L_Thumb_01_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "L_Hand_Ctrl.t" "L_Thumb_01_Ctrl_Grp_parentConstraint1.tg[0].tt";
connectAttr "L_Hand_Ctrl.rp" "L_Thumb_01_Ctrl_Grp_parentConstraint1.tg[0].trp";
connectAttr "L_Hand_Ctrl.rpt" "L_Thumb_01_Ctrl_Grp_parentConstraint1.tg[0].trt";
connectAttr "L_Hand_Ctrl.r" "L_Thumb_01_Ctrl_Grp_parentConstraint1.tg[0].tr";
connectAttr "L_Hand_Ctrl.ro" "L_Thumb_01_Ctrl_Grp_parentConstraint1.tg[0].tro";
connectAttr "L_Hand_Ctrl.s" "L_Thumb_01_Ctrl_Grp_parentConstraint1.tg[0].ts";
connectAttr "L_Hand_Ctrl.pm" "L_Thumb_01_Ctrl_Grp_parentConstraint1.tg[0].tpm";
connectAttr "L_Thumb_01_Ctrl_Grp_parentConstraint1.w0" "L_Thumb_01_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Thumb_01_Ctrl.FollowTranslate" "L_Thumb_01_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "L_Thumb_01_Ctrl_Grp.ro" "L_Thumb_01_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "L_Thumb_01_Ctrl_Grp.pim" "L_Thumb_01_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "L_Thumb_01_Ctrl_Grp.rp" "L_Thumb_01_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "L_Thumb_01_Ctrl_Grp.rpt" "L_Thumb_01_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "L_Hand_Ctrl.t" "L_Thumb_01_Ctrl_Grp_parentConstraint2.tg[0].tt";
connectAttr "L_Hand_Ctrl.rp" "L_Thumb_01_Ctrl_Grp_parentConstraint2.tg[0].trp";
connectAttr "L_Hand_Ctrl.rpt" "L_Thumb_01_Ctrl_Grp_parentConstraint2.tg[0].trt";
connectAttr "L_Hand_Ctrl.r" "L_Thumb_01_Ctrl_Grp_parentConstraint2.tg[0].tr";
connectAttr "L_Hand_Ctrl.ro" "L_Thumb_01_Ctrl_Grp_parentConstraint2.tg[0].tro";
connectAttr "L_Hand_Ctrl.s" "L_Thumb_01_Ctrl_Grp_parentConstraint2.tg[0].ts";
connectAttr "L_Hand_Ctrl.pm" "L_Thumb_01_Ctrl_Grp_parentConstraint2.tg[0].tpm";
connectAttr "L_Thumb_01_Ctrl_Grp_parentConstraint2.w0" "L_Thumb_01_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "L_Thumb_01_Ctrl.FollowRotate" "L_Thumb_01_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "L_Thumb_01_Ctrl_Grp.pim" "L_Thumb_01_Ctrl_Grp_scaleConstraint1.cpim"
		;
connectAttr "L_Hand_Ctrl.s" "L_Thumb_01_Ctrl_Grp_scaleConstraint1.tg[0].ts";
connectAttr "L_Hand_Ctrl.pm" "L_Thumb_01_Ctrl_Grp_scaleConstraint1.tg[0].tpm";
connectAttr "L_Thumb_01_Ctrl_Grp_scaleConstraint1.w0" "L_Thumb_01_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Finger_2_01_Ctrl_Grp_parentConstraint1.ctx" "L_Finger_2_01_Ctrl_Grp.tx"
		;
connectAttr "L_Finger_2_01_Ctrl_Grp_parentConstraint1.cty" "L_Finger_2_01_Ctrl_Grp.ty"
		;
connectAttr "L_Finger_2_01_Ctrl_Grp_parentConstraint1.ctz" "L_Finger_2_01_Ctrl_Grp.tz"
		;
connectAttr "L_Finger_2_01_Ctrl_Grp_parentConstraint2.crx" "L_Finger_2_01_Ctrl_Grp.rx"
		;
connectAttr "L_Finger_2_01_Ctrl_Grp_parentConstraint2.cry" "L_Finger_2_01_Ctrl_Grp.ry"
		;
connectAttr "L_Finger_2_01_Ctrl_Grp_parentConstraint2.crz" "L_Finger_2_01_Ctrl_Grp.rz"
		;
connectAttr "L_Finger_2_01_Ctrl_Grp_scaleConstraint1.csx" "L_Finger_2_01_Ctrl_Grp.sx"
		;
connectAttr "L_Finger_2_01_Ctrl_Grp_scaleConstraint1.csy" "L_Finger_2_01_Ctrl_Grp.sy"
		;
connectAttr "L_Finger_2_01_Ctrl_Grp_scaleConstraint1.csz" "L_Finger_2_01_Ctrl_Grp.sz"
		;
connectAttr "makeNurbCircle21.oc" "L_Finger_2_01_CtrlShape.cr";
connectAttr "L_Finger_2_01_Ctrl_Grp.ro" "L_Finger_2_01_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "L_Finger_2_01_Ctrl_Grp.pim" "L_Finger_2_01_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "L_Finger_2_01_Ctrl_Grp.rp" "L_Finger_2_01_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "L_Finger_2_01_Ctrl_Grp.rpt" "L_Finger_2_01_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "L_Hand_Ctrl.t" "L_Finger_2_01_Ctrl_Grp_parentConstraint1.tg[0].tt";
connectAttr "L_Hand_Ctrl.rp" "L_Finger_2_01_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "L_Hand_Ctrl.rpt" "L_Finger_2_01_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Hand_Ctrl.r" "L_Finger_2_01_Ctrl_Grp_parentConstraint1.tg[0].tr";
connectAttr "L_Hand_Ctrl.ro" "L_Finger_2_01_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "L_Hand_Ctrl.s" "L_Finger_2_01_Ctrl_Grp_parentConstraint1.tg[0].ts";
connectAttr "L_Hand_Ctrl.pm" "L_Finger_2_01_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_Finger_2_01_Ctrl_Grp_parentConstraint1.w0" "L_Finger_2_01_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Finger_2_01_Ctrl.FollowTranslate" "L_Finger_2_01_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "L_Finger_2_01_Ctrl_Grp.ro" "L_Finger_2_01_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "L_Finger_2_01_Ctrl_Grp.pim" "L_Finger_2_01_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "L_Finger_2_01_Ctrl_Grp.rp" "L_Finger_2_01_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "L_Finger_2_01_Ctrl_Grp.rpt" "L_Finger_2_01_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "L_Hand_Ctrl.t" "L_Finger_2_01_Ctrl_Grp_parentConstraint2.tg[0].tt";
connectAttr "L_Hand_Ctrl.rp" "L_Finger_2_01_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "L_Hand_Ctrl.rpt" "L_Finger_2_01_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "L_Hand_Ctrl.r" "L_Finger_2_01_Ctrl_Grp_parentConstraint2.tg[0].tr";
connectAttr "L_Hand_Ctrl.ro" "L_Finger_2_01_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "L_Hand_Ctrl.s" "L_Finger_2_01_Ctrl_Grp_parentConstraint2.tg[0].ts";
connectAttr "L_Hand_Ctrl.pm" "L_Finger_2_01_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "L_Finger_2_01_Ctrl_Grp_parentConstraint2.w0" "L_Finger_2_01_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "L_Finger_2_01_Ctrl.FollowRotate" "L_Finger_2_01_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "L_Finger_2_01_Ctrl_Grp.pim" "L_Finger_2_01_Ctrl_Grp_scaleConstraint1.cpim"
		;
connectAttr "L_Hand_Ctrl.s" "L_Finger_2_01_Ctrl_Grp_scaleConstraint1.tg[0].ts";
connectAttr "L_Hand_Ctrl.pm" "L_Finger_2_01_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "L_Finger_2_01_Ctrl_Grp_scaleConstraint1.w0" "L_Finger_2_01_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Finger_2_02_Ctrl_Grp_parentConstraint1.ctx" "L_Finger_2_02_Ctrl_Grp.tx"
		;
connectAttr "L_Finger_2_02_Ctrl_Grp_parentConstraint1.cty" "L_Finger_2_02_Ctrl_Grp.ty"
		;
connectAttr "L_Finger_2_02_Ctrl_Grp_parentConstraint1.ctz" "L_Finger_2_02_Ctrl_Grp.tz"
		;
connectAttr "L_Finger_2_02_Ctrl_Grp_parentConstraint2.crx" "L_Finger_2_02_Ctrl_Grp.rx"
		;
connectAttr "L_Finger_2_02_Ctrl_Grp_parentConstraint2.cry" "L_Finger_2_02_Ctrl_Grp.ry"
		;
connectAttr "L_Finger_2_02_Ctrl_Grp_parentConstraint2.crz" "L_Finger_2_02_Ctrl_Grp.rz"
		;
connectAttr "L_Finger_2_02_Ctrl_Grp_scaleConstraint1.csx" "L_Finger_2_02_Ctrl_Grp.sx"
		;
connectAttr "L_Finger_2_02_Ctrl_Grp_scaleConstraint1.csy" "L_Finger_2_02_Ctrl_Grp.sy"
		;
connectAttr "L_Finger_2_02_Ctrl_Grp_scaleConstraint1.csz" "L_Finger_2_02_Ctrl_Grp.sz"
		;
connectAttr "makeNurbCircle20.oc" "L_Finger_2_02_CtrlShape.cr";
connectAttr "L_Finger_2_02_Ctrl_Grp.ro" "L_Finger_2_02_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "L_Finger_2_02_Ctrl_Grp.pim" "L_Finger_2_02_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "L_Finger_2_02_Ctrl_Grp.rp" "L_Finger_2_02_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "L_Finger_2_02_Ctrl_Grp.rpt" "L_Finger_2_02_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "L_Finger_2_01_Ctrl.t" "L_Finger_2_02_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "L_Finger_2_01_Ctrl.rp" "L_Finger_2_02_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "L_Finger_2_01_Ctrl.rpt" "L_Finger_2_02_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Finger_2_01_Ctrl.r" "L_Finger_2_02_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "L_Finger_2_01_Ctrl.ro" "L_Finger_2_02_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "L_Finger_2_01_Ctrl.s" "L_Finger_2_02_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "L_Finger_2_01_Ctrl.pm" "L_Finger_2_02_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_Finger_2_02_Ctrl_Grp_parentConstraint1.w0" "L_Finger_2_02_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Finger_2_02_Ctrl.FollowTranslate" "L_Finger_2_02_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "L_Finger_2_02_Ctrl_Grp.ro" "L_Finger_2_02_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "L_Finger_2_02_Ctrl_Grp.pim" "L_Finger_2_02_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "L_Finger_2_02_Ctrl_Grp.rp" "L_Finger_2_02_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "L_Finger_2_02_Ctrl_Grp.rpt" "L_Finger_2_02_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "L_Finger_2_01_Ctrl.t" "L_Finger_2_02_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "L_Finger_2_01_Ctrl.rp" "L_Finger_2_02_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "L_Finger_2_01_Ctrl.rpt" "L_Finger_2_02_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "L_Finger_2_01_Ctrl.r" "L_Finger_2_02_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "L_Finger_2_01_Ctrl.ro" "L_Finger_2_02_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "L_Finger_2_01_Ctrl.s" "L_Finger_2_02_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "L_Finger_2_01_Ctrl.pm" "L_Finger_2_02_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "L_Finger_2_02_Ctrl_Grp_parentConstraint2.w0" "L_Finger_2_02_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "L_Finger_2_02_Ctrl.FollowRotate" "L_Finger_2_02_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "L_Finger_2_02_Ctrl_Grp.pim" "L_Finger_2_02_Ctrl_Grp_scaleConstraint1.cpim"
		;
connectAttr "L_Finger_2_01_Ctrl.s" "L_Finger_2_02_Ctrl_Grp_scaleConstraint1.tg[0].ts"
		;
connectAttr "L_Finger_2_01_Ctrl.pm" "L_Finger_2_02_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "L_Finger_2_02_Ctrl_Grp_scaleConstraint1.w0" "L_Finger_2_02_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Finger_2_03_Ctrl_Grp_parentConstraint1.ctx" "L_Finger_2_03_Ctrl_Grp.tx"
		;
connectAttr "L_Finger_2_03_Ctrl_Grp_parentConstraint1.cty" "L_Finger_2_03_Ctrl_Grp.ty"
		;
connectAttr "L_Finger_2_03_Ctrl_Grp_parentConstraint1.ctz" "L_Finger_2_03_Ctrl_Grp.tz"
		;
connectAttr "L_Finger_2_03_Ctrl_Grp_parentConstraint2.crx" "L_Finger_2_03_Ctrl_Grp.rx"
		;
connectAttr "L_Finger_2_03_Ctrl_Grp_parentConstraint2.cry" "L_Finger_2_03_Ctrl_Grp.ry"
		;
connectAttr "L_Finger_2_03_Ctrl_Grp_parentConstraint2.crz" "L_Finger_2_03_Ctrl_Grp.rz"
		;
connectAttr "L_Finger_2_03_Ctrl_Grp_scaleConstraint1.csx" "L_Finger_2_03_Ctrl_Grp.sx"
		;
connectAttr "L_Finger_2_03_Ctrl_Grp_scaleConstraint1.csy" "L_Finger_2_03_Ctrl_Grp.sy"
		;
connectAttr "L_Finger_2_03_Ctrl_Grp_scaleConstraint1.csz" "L_Finger_2_03_Ctrl_Grp.sz"
		;
connectAttr "makeNurbCircle19.oc" "L_Finger_2_03_CtrlShape.cr";
connectAttr "L_Finger_2_03_Ctrl_Grp.ro" "L_Finger_2_03_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "L_Finger_2_03_Ctrl_Grp.pim" "L_Finger_2_03_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "L_Finger_2_03_Ctrl_Grp.rp" "L_Finger_2_03_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "L_Finger_2_03_Ctrl_Grp.rpt" "L_Finger_2_03_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "L_Finger_2_02_Ctrl.t" "L_Finger_2_03_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "L_Finger_2_02_Ctrl.rp" "L_Finger_2_03_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "L_Finger_2_02_Ctrl.rpt" "L_Finger_2_03_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Finger_2_02_Ctrl.r" "L_Finger_2_03_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "L_Finger_2_02_Ctrl.ro" "L_Finger_2_03_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "L_Finger_2_02_Ctrl.s" "L_Finger_2_03_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "L_Finger_2_02_Ctrl.pm" "L_Finger_2_03_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_Finger_2_03_Ctrl_Grp_parentConstraint1.w0" "L_Finger_2_03_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Finger_2_03_Ctrl.FollowTranslate" "L_Finger_2_03_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "L_Finger_2_03_Ctrl_Grp.ro" "L_Finger_2_03_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "L_Finger_2_03_Ctrl_Grp.pim" "L_Finger_2_03_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "L_Finger_2_03_Ctrl_Grp.rp" "L_Finger_2_03_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "L_Finger_2_03_Ctrl_Grp.rpt" "L_Finger_2_03_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "L_Finger_2_02_Ctrl.t" "L_Finger_2_03_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "L_Finger_2_02_Ctrl.rp" "L_Finger_2_03_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "L_Finger_2_02_Ctrl.rpt" "L_Finger_2_03_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "L_Finger_2_02_Ctrl.r" "L_Finger_2_03_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "L_Finger_2_02_Ctrl.ro" "L_Finger_2_03_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "L_Finger_2_02_Ctrl.s" "L_Finger_2_03_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "L_Finger_2_02_Ctrl.pm" "L_Finger_2_03_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "L_Finger_2_03_Ctrl_Grp_parentConstraint2.w0" "L_Finger_2_03_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "L_Finger_2_03_Ctrl.FollowRotate" "L_Finger_2_03_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "L_Finger_2_03_Ctrl_Grp.pim" "L_Finger_2_03_Ctrl_Grp_scaleConstraint1.cpim"
		;
connectAttr "L_Finger_2_02_Ctrl.s" "L_Finger_2_03_Ctrl_Grp_scaleConstraint1.tg[0].ts"
		;
connectAttr "L_Finger_2_02_Ctrl.pm" "L_Finger_2_03_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "L_Finger_2_03_Ctrl_Grp_scaleConstraint1.w0" "L_Finger_2_03_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Finger_1_03_Ctrl_Grp_parentConstraint1.ctx" "L_Finger_1_03_Ctrl_Grp.tx"
		;
connectAttr "L_Finger_1_03_Ctrl_Grp_parentConstraint1.cty" "L_Finger_1_03_Ctrl_Grp.ty"
		;
connectAttr "L_Finger_1_03_Ctrl_Grp_parentConstraint1.ctz" "L_Finger_1_03_Ctrl_Grp.tz"
		;
connectAttr "L_Finger_1_03_Ctrl_Grp_parentConstraint2.crx" "L_Finger_1_03_Ctrl_Grp.rx"
		;
connectAttr "L_Finger_1_03_Ctrl_Grp_parentConstraint2.cry" "L_Finger_1_03_Ctrl_Grp.ry"
		;
connectAttr "L_Finger_1_03_Ctrl_Grp_parentConstraint2.crz" "L_Finger_1_03_Ctrl_Grp.rz"
		;
connectAttr "L_Finger_1_03_Ctrl_Grp_scaleConstraint1.csx" "L_Finger_1_03_Ctrl_Grp.sx"
		;
connectAttr "L_Finger_1_03_Ctrl_Grp_scaleConstraint1.csy" "L_Finger_1_03_Ctrl_Grp.sy"
		;
connectAttr "L_Finger_1_03_Ctrl_Grp_scaleConstraint1.csz" "L_Finger_1_03_Ctrl_Grp.sz"
		;
connectAttr "makeNurbCircle18.oc" "L_Finger_1_03_CtrlShape.cr";
connectAttr "L_Finger_1_03_Ctrl_Grp.ro" "L_Finger_1_03_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "L_Finger_1_03_Ctrl_Grp.pim" "L_Finger_1_03_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "L_Finger_1_03_Ctrl_Grp.rp" "L_Finger_1_03_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "L_Finger_1_03_Ctrl_Grp.rpt" "L_Finger_1_03_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "L_Finger_1_02_Ctrl.t" "L_Finger_1_03_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "L_Finger_1_02_Ctrl.rp" "L_Finger_1_03_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "L_Finger_1_02_Ctrl.rpt" "L_Finger_1_03_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Finger_1_02_Ctrl.r" "L_Finger_1_03_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "L_Finger_1_02_Ctrl.ro" "L_Finger_1_03_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "L_Finger_1_02_Ctrl.s" "L_Finger_1_03_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "L_Finger_1_02_Ctrl.pm" "L_Finger_1_03_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_Finger_1_03_Ctrl_Grp_parentConstraint1.w0" "L_Finger_1_03_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Finger_1_03_Ctrl.FollowTranslate" "L_Finger_1_03_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "L_Finger_1_03_Ctrl_Grp.ro" "L_Finger_1_03_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "L_Finger_1_03_Ctrl_Grp.pim" "L_Finger_1_03_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "L_Finger_1_03_Ctrl_Grp.rp" "L_Finger_1_03_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "L_Finger_1_03_Ctrl_Grp.rpt" "L_Finger_1_03_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "L_Finger_1_02_Ctrl.t" "L_Finger_1_03_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "L_Finger_1_02_Ctrl.rp" "L_Finger_1_03_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "L_Finger_1_02_Ctrl.rpt" "L_Finger_1_03_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "L_Finger_1_02_Ctrl.r" "L_Finger_1_03_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "L_Finger_1_02_Ctrl.ro" "L_Finger_1_03_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "L_Finger_1_02_Ctrl.s" "L_Finger_1_03_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "L_Finger_1_02_Ctrl.pm" "L_Finger_1_03_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "L_Finger_1_03_Ctrl_Grp_parentConstraint2.w0" "L_Finger_1_03_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "L_Finger_1_03_Ctrl.FollowRotate" "L_Finger_1_03_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "L_Finger_1_03_Ctrl_Grp.pim" "L_Finger_1_03_Ctrl_Grp_scaleConstraint1.cpim"
		;
connectAttr "L_Finger_1_02_Ctrl.s" "L_Finger_1_03_Ctrl_Grp_scaleConstraint1.tg[0].ts"
		;
connectAttr "L_Finger_1_02_Ctrl.pm" "L_Finger_1_03_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "L_Finger_1_03_Ctrl_Grp_scaleConstraint1.w0" "L_Finger_1_03_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Finger_1_02_Ctrl_Grp_parentConstraint1.ctx" "L_Finger_1_02_Ctrl_Grp.tx"
		;
connectAttr "L_Finger_1_02_Ctrl_Grp_parentConstraint1.cty" "L_Finger_1_02_Ctrl_Grp.ty"
		;
connectAttr "L_Finger_1_02_Ctrl_Grp_parentConstraint1.ctz" "L_Finger_1_02_Ctrl_Grp.tz"
		;
connectAttr "L_Finger_1_02_Ctrl_Grp_parentConstraint2.crx" "L_Finger_1_02_Ctrl_Grp.rx"
		;
connectAttr "L_Finger_1_02_Ctrl_Grp_parentConstraint2.cry" "L_Finger_1_02_Ctrl_Grp.ry"
		;
connectAttr "L_Finger_1_02_Ctrl_Grp_parentConstraint2.crz" "L_Finger_1_02_Ctrl_Grp.rz"
		;
connectAttr "L_Finger_1_02_Ctrl_Grp_scaleConstraint1.csx" "L_Finger_1_02_Ctrl_Grp.sx"
		;
connectAttr "L_Finger_1_02_Ctrl_Grp_scaleConstraint1.csy" "L_Finger_1_02_Ctrl_Grp.sy"
		;
connectAttr "L_Finger_1_02_Ctrl_Grp_scaleConstraint1.csz" "L_Finger_1_02_Ctrl_Grp.sz"
		;
connectAttr "makeNurbCircle17.oc" "L_Finger_1_02_CtrlShape.cr";
connectAttr "L_Finger_1_02_Ctrl_Grp.ro" "L_Finger_1_02_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "L_Finger_1_02_Ctrl_Grp.pim" "L_Finger_1_02_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "L_Finger_1_02_Ctrl_Grp.rp" "L_Finger_1_02_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "L_Finger_1_02_Ctrl_Grp.rpt" "L_Finger_1_02_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "L_Finger_1_01_Ctrl.t" "L_Finger_1_02_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "L_Finger_1_01_Ctrl.rp" "L_Finger_1_02_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "L_Finger_1_01_Ctrl.rpt" "L_Finger_1_02_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Finger_1_01_Ctrl.r" "L_Finger_1_02_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "L_Finger_1_01_Ctrl.ro" "L_Finger_1_02_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "L_Finger_1_01_Ctrl.s" "L_Finger_1_02_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "L_Finger_1_01_Ctrl.pm" "L_Finger_1_02_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_Finger_1_02_Ctrl_Grp_parentConstraint1.w0" "L_Finger_1_02_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Finger_1_02_Ctrl.FollowTranslate" "L_Finger_1_02_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "L_Finger_1_02_Ctrl_Grp.ro" "L_Finger_1_02_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "L_Finger_1_02_Ctrl_Grp.pim" "L_Finger_1_02_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "L_Finger_1_02_Ctrl_Grp.rp" "L_Finger_1_02_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "L_Finger_1_02_Ctrl_Grp.rpt" "L_Finger_1_02_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "L_Finger_1_01_Ctrl.t" "L_Finger_1_02_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "L_Finger_1_01_Ctrl.rp" "L_Finger_1_02_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "L_Finger_1_01_Ctrl.rpt" "L_Finger_1_02_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "L_Finger_1_01_Ctrl.r" "L_Finger_1_02_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "L_Finger_1_01_Ctrl.ro" "L_Finger_1_02_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "L_Finger_1_01_Ctrl.s" "L_Finger_1_02_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "L_Finger_1_01_Ctrl.pm" "L_Finger_1_02_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "L_Finger_1_02_Ctrl_Grp_parentConstraint2.w0" "L_Finger_1_02_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "L_Finger_1_02_Ctrl.FollowRotate" "L_Finger_1_02_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "L_Finger_1_02_Ctrl_Grp.pim" "L_Finger_1_02_Ctrl_Grp_scaleConstraint1.cpim"
		;
connectAttr "L_Finger_1_01_Ctrl.s" "L_Finger_1_02_Ctrl_Grp_scaleConstraint1.tg[0].ts"
		;
connectAttr "L_Finger_1_01_Ctrl.pm" "L_Finger_1_02_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "L_Finger_1_02_Ctrl_Grp_scaleConstraint1.w0" "L_Finger_1_02_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Finger_1_01_Ctrl_Grp_parentConstraint1.ctx" "L_Finger_1_01_Ctrl_Grp.tx"
		;
connectAttr "L_Finger_1_01_Ctrl_Grp_parentConstraint1.cty" "L_Finger_1_01_Ctrl_Grp.ty"
		;
connectAttr "L_Finger_1_01_Ctrl_Grp_parentConstraint1.ctz" "L_Finger_1_01_Ctrl_Grp.tz"
		;
connectAttr "L_Finger_1_01_Ctrl_Grp_parentConstraint2.crx" "L_Finger_1_01_Ctrl_Grp.rx"
		;
connectAttr "L_Finger_1_01_Ctrl_Grp_parentConstraint2.cry" "L_Finger_1_01_Ctrl_Grp.ry"
		;
connectAttr "L_Finger_1_01_Ctrl_Grp_parentConstraint2.crz" "L_Finger_1_01_Ctrl_Grp.rz"
		;
connectAttr "L_Finger_1_01_Ctrl_Grp_scaleConstraint1.csx" "L_Finger_1_01_Ctrl_Grp.sx"
		;
connectAttr "L_Finger_1_01_Ctrl_Grp_scaleConstraint1.csy" "L_Finger_1_01_Ctrl_Grp.sy"
		;
connectAttr "L_Finger_1_01_Ctrl_Grp_scaleConstraint1.csz" "L_Finger_1_01_Ctrl_Grp.sz"
		;
connectAttr "makeNurbCircle16.oc" "L_Finger_1_01_CtrlShape.cr";
connectAttr "L_Finger_1_01_Ctrl_Grp.ro" "L_Finger_1_01_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "L_Finger_1_01_Ctrl_Grp.pim" "L_Finger_1_01_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "L_Finger_1_01_Ctrl_Grp.rp" "L_Finger_1_01_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "L_Finger_1_01_Ctrl_Grp.rpt" "L_Finger_1_01_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "L_Hand_Ctrl.t" "L_Finger_1_01_Ctrl_Grp_parentConstraint1.tg[0].tt";
connectAttr "L_Hand_Ctrl.rp" "L_Finger_1_01_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "L_Hand_Ctrl.rpt" "L_Finger_1_01_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Hand_Ctrl.r" "L_Finger_1_01_Ctrl_Grp_parentConstraint1.tg[0].tr";
connectAttr "L_Hand_Ctrl.ro" "L_Finger_1_01_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "L_Hand_Ctrl.s" "L_Finger_1_01_Ctrl_Grp_parentConstraint1.tg[0].ts";
connectAttr "L_Hand_Ctrl.pm" "L_Finger_1_01_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_Finger_1_01_Ctrl_Grp_parentConstraint1.w0" "L_Finger_1_01_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Finger_1_01_Ctrl.FollowTranslate" "L_Finger_1_01_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "L_Finger_1_01_Ctrl_Grp.ro" "L_Finger_1_01_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "L_Finger_1_01_Ctrl_Grp.pim" "L_Finger_1_01_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "L_Finger_1_01_Ctrl_Grp.rp" "L_Finger_1_01_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "L_Finger_1_01_Ctrl_Grp.rpt" "L_Finger_1_01_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "L_Hand_Ctrl.t" "L_Finger_1_01_Ctrl_Grp_parentConstraint2.tg[0].tt";
connectAttr "L_Hand_Ctrl.rp" "L_Finger_1_01_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "L_Hand_Ctrl.rpt" "L_Finger_1_01_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "L_Hand_Ctrl.r" "L_Finger_1_01_Ctrl_Grp_parentConstraint2.tg[0].tr";
connectAttr "L_Hand_Ctrl.ro" "L_Finger_1_01_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "L_Hand_Ctrl.s" "L_Finger_1_01_Ctrl_Grp_parentConstraint2.tg[0].ts";
connectAttr "L_Hand_Ctrl.pm" "L_Finger_1_01_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "L_Finger_1_01_Ctrl_Grp_parentConstraint2.w0" "L_Finger_1_01_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "L_Finger_1_01_Ctrl.FollowRotate" "L_Finger_1_01_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "L_Finger_1_01_Ctrl_Grp.pim" "L_Finger_1_01_Ctrl_Grp_scaleConstraint1.cpim"
		;
connectAttr "L_Hand_Ctrl.s" "L_Finger_1_01_Ctrl_Grp_scaleConstraint1.tg[0].ts";
connectAttr "L_Hand_Ctrl.pm" "L_Finger_1_01_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "L_Finger_1_01_Ctrl_Grp_scaleConstraint1.w0" "L_Finger_1_01_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Hand_Ctrl_Grp.ro" "L_Hand_Ctrl_Grp_parentConstraint1.cro";
connectAttr "L_Hand_Ctrl_Grp.pim" "L_Hand_Ctrl_Grp_parentConstraint1.cpim";
connectAttr "L_Hand_Ctrl_Grp.rp" "L_Hand_Ctrl_Grp_parentConstraint1.crp";
connectAttr "L_Hand_Ctrl_Grp.rpt" "L_Hand_Ctrl_Grp_parentConstraint1.crt";
connectAttr "L_RK_Arm_03_Jnt.t" "L_Hand_Ctrl_Grp_parentConstraint1.tg[0].tt";
connectAttr "L_RK_Arm_03_Jnt.rp" "L_Hand_Ctrl_Grp_parentConstraint1.tg[0].trp";
connectAttr "L_RK_Arm_03_Jnt.rpt" "L_Hand_Ctrl_Grp_parentConstraint1.tg[0].trt";
connectAttr "L_RK_Arm_03_Jnt.r" "L_Hand_Ctrl_Grp_parentConstraint1.tg[0].tr";
connectAttr "L_RK_Arm_03_Jnt.ro" "L_Hand_Ctrl_Grp_parentConstraint1.tg[0].tro";
connectAttr "L_RK_Arm_03_Jnt.s" "L_Hand_Ctrl_Grp_parentConstraint1.tg[0].ts";
connectAttr "L_RK_Arm_03_Jnt.pm" "L_Hand_Ctrl_Grp_parentConstraint1.tg[0].tpm";
connectAttr "L_RK_Arm_03_Jnt.jo" "L_Hand_Ctrl_Grp_parentConstraint1.tg[0].tjo";
connectAttr "L_RK_Arm_03_Jnt.ssc" "L_Hand_Ctrl_Grp_parentConstraint1.tg[0].tsc";
connectAttr "L_RK_Arm_03_Jnt.is" "L_Hand_Ctrl_Grp_parentConstraint1.tg[0].tis";
connectAttr "L_Hand_Ctrl_Grp_parentConstraint1.w0" "L_Hand_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Hand_Ctrl_Grp_parentConstraint1.ctx" "R_Hand_Ctrl_Grp.tx";
connectAttr "R_Hand_Ctrl_Grp_parentConstraint1.cty" "R_Hand_Ctrl_Grp.ty";
connectAttr "R_Hand_Ctrl_Grp_parentConstraint1.ctz" "R_Hand_Ctrl_Grp.tz";
connectAttr "R_Hand_Ctrl_Grp_parentConstraint1.crx" "R_Hand_Ctrl_Grp.rx";
connectAttr "R_Hand_Ctrl_Grp_parentConstraint1.cry" "R_Hand_Ctrl_Grp.ry";
connectAttr "R_Hand_Ctrl_Grp_parentConstraint1.crz" "R_Hand_Ctrl_Grp.rz";
connectAttr "R_Finger_2_01_Ctrl_Grp_parentConstraint1.ctx" "R_Finger_2_01_Ctrl_Grp.tx"
		;
connectAttr "R_Finger_2_01_Ctrl_Grp_parentConstraint1.cty" "R_Finger_2_01_Ctrl_Grp.ty"
		;
connectAttr "R_Finger_2_01_Ctrl_Grp_parentConstraint1.ctz" "R_Finger_2_01_Ctrl_Grp.tz"
		;
connectAttr "R_Finger_2_01_Ctrl_Grp_parentConstraint2.crx" "R_Finger_2_01_Ctrl_Grp.rx"
		;
connectAttr "R_Finger_2_01_Ctrl_Grp_parentConstraint2.cry" "R_Finger_2_01_Ctrl_Grp.ry"
		;
connectAttr "R_Finger_2_01_Ctrl_Grp_parentConstraint2.crz" "R_Finger_2_01_Ctrl_Grp.rz"
		;
connectAttr "R_Finger_2_01_Ctrl_Grp_scaleConstraint1.csx" "R_Finger_2_01_Ctrl_Grp.sx"
		;
connectAttr "R_Finger_2_01_Ctrl_Grp_scaleConstraint1.csy" "R_Finger_2_01_Ctrl_Grp.sy"
		;
connectAttr "R_Finger_2_01_Ctrl_Grp_scaleConstraint1.csz" "R_Finger_2_01_Ctrl_Grp.sz"
		;
connectAttr "R_Finger_2_01_Ctrl_Grp.ro" "R_Finger_2_01_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "R_Finger_2_01_Ctrl_Grp.pim" "R_Finger_2_01_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "R_Finger_2_01_Ctrl_Grp.rp" "R_Finger_2_01_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "R_Finger_2_01_Ctrl_Grp.rpt" "R_Finger_2_01_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "R_Hand_Ctrl.t" "R_Finger_2_01_Ctrl_Grp_parentConstraint1.tg[0].tt";
connectAttr "R_Hand_Ctrl.rp" "R_Finger_2_01_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "R_Hand_Ctrl.rpt" "R_Finger_2_01_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Hand_Ctrl.r" "R_Finger_2_01_Ctrl_Grp_parentConstraint1.tg[0].tr";
connectAttr "R_Hand_Ctrl.ro" "R_Finger_2_01_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "R_Hand_Ctrl.s" "R_Finger_2_01_Ctrl_Grp_parentConstraint1.tg[0].ts";
connectAttr "R_Hand_Ctrl.pm" "R_Finger_2_01_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_Finger_2_01_Ctrl_Grp_parentConstraint1.w0" "R_Finger_2_01_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Finger_2_01_Ctrl.FollowTranslate" "R_Finger_2_01_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "R_Finger_2_01_Ctrl_Grp.ro" "R_Finger_2_01_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "R_Finger_2_01_Ctrl_Grp.pim" "R_Finger_2_01_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "R_Finger_2_01_Ctrl_Grp.rp" "R_Finger_2_01_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "R_Finger_2_01_Ctrl_Grp.rpt" "R_Finger_2_01_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "R_Hand_Ctrl.t" "R_Finger_2_01_Ctrl_Grp_parentConstraint2.tg[0].tt";
connectAttr "R_Hand_Ctrl.rp" "R_Finger_2_01_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "R_Hand_Ctrl.rpt" "R_Finger_2_01_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "R_Hand_Ctrl.r" "R_Finger_2_01_Ctrl_Grp_parentConstraint2.tg[0].tr";
connectAttr "R_Hand_Ctrl.ro" "R_Finger_2_01_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "R_Hand_Ctrl.s" "R_Finger_2_01_Ctrl_Grp_parentConstraint2.tg[0].ts";
connectAttr "R_Hand_Ctrl.pm" "R_Finger_2_01_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "R_Finger_2_01_Ctrl_Grp_parentConstraint2.w0" "R_Finger_2_01_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "R_Finger_2_01_Ctrl.FollowRotate" "R_Finger_2_01_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "R_Finger_2_01_Ctrl_Grp.pim" "R_Finger_2_01_Ctrl_Grp_scaleConstraint1.cpim"
		;
connectAttr "R_Hand_Ctrl.s" "R_Finger_2_01_Ctrl_Grp_scaleConstraint1.tg[0].ts";
connectAttr "R_Hand_Ctrl.pm" "R_Finger_2_01_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "R_Finger_2_01_Ctrl_Grp_scaleConstraint1.w0" "R_Finger_2_01_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Finger_2_02_Ctrl_Grp_parentConstraint1.ctx" "R_Finger_2_02_Ctrl_Grp.tx"
		;
connectAttr "R_Finger_2_02_Ctrl_Grp_parentConstraint1.cty" "R_Finger_2_02_Ctrl_Grp.ty"
		;
connectAttr "R_Finger_2_02_Ctrl_Grp_parentConstraint1.ctz" "R_Finger_2_02_Ctrl_Grp.tz"
		;
connectAttr "R_Finger_2_02_Ctrl_Grp_parentConstraint2.crx" "R_Finger_2_02_Ctrl_Grp.rx"
		;
connectAttr "R_Finger_2_02_Ctrl_Grp_parentConstraint2.cry" "R_Finger_2_02_Ctrl_Grp.ry"
		;
connectAttr "R_Finger_2_02_Ctrl_Grp_parentConstraint2.crz" "R_Finger_2_02_Ctrl_Grp.rz"
		;
connectAttr "R_Finger_2_02_Ctrl_Grp_scaleConstraint1.csx" "R_Finger_2_02_Ctrl_Grp.sx"
		;
connectAttr "R_Finger_2_02_Ctrl_Grp_scaleConstraint1.csy" "R_Finger_2_02_Ctrl_Grp.sy"
		;
connectAttr "R_Finger_2_02_Ctrl_Grp_scaleConstraint1.csz" "R_Finger_2_02_Ctrl_Grp.sz"
		;
connectAttr "R_Finger_2_02_Ctrl_Grp.ro" "R_Finger_2_02_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "R_Finger_2_02_Ctrl_Grp.pim" "R_Finger_2_02_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "R_Finger_2_02_Ctrl_Grp.rp" "R_Finger_2_02_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "R_Finger_2_02_Ctrl_Grp.rpt" "R_Finger_2_02_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "R_Finger_2_01_Ctrl.t" "R_Finger_2_02_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "R_Finger_2_01_Ctrl.rp" "R_Finger_2_02_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "R_Finger_2_01_Ctrl.rpt" "R_Finger_2_02_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Finger_2_01_Ctrl.r" "R_Finger_2_02_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "R_Finger_2_01_Ctrl.ro" "R_Finger_2_02_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "R_Finger_2_01_Ctrl.s" "R_Finger_2_02_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "R_Finger_2_01_Ctrl.pm" "R_Finger_2_02_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_Finger_2_02_Ctrl_Grp_parentConstraint1.w0" "R_Finger_2_02_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Finger_2_02_Ctrl.FollowTranslate" "R_Finger_2_02_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "R_Finger_2_02_Ctrl_Grp.ro" "R_Finger_2_02_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "R_Finger_2_02_Ctrl_Grp.pim" "R_Finger_2_02_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "R_Finger_2_02_Ctrl_Grp.rp" "R_Finger_2_02_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "R_Finger_2_02_Ctrl_Grp.rpt" "R_Finger_2_02_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "R_Finger_2_01_Ctrl.t" "R_Finger_2_02_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "R_Finger_2_01_Ctrl.rp" "R_Finger_2_02_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "R_Finger_2_01_Ctrl.rpt" "R_Finger_2_02_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "R_Finger_2_01_Ctrl.r" "R_Finger_2_02_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "R_Finger_2_01_Ctrl.ro" "R_Finger_2_02_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "R_Finger_2_01_Ctrl.s" "R_Finger_2_02_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "R_Finger_2_01_Ctrl.pm" "R_Finger_2_02_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "R_Finger_2_02_Ctrl_Grp_parentConstraint2.w0" "R_Finger_2_02_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "R_Finger_2_02_Ctrl.FollowRotate" "R_Finger_2_02_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "R_Finger_2_02_Ctrl_Grp.pim" "R_Finger_2_02_Ctrl_Grp_scaleConstraint1.cpim"
		;
connectAttr "R_Finger_2_01_Ctrl.s" "R_Finger_2_02_Ctrl_Grp_scaleConstraint1.tg[0].ts"
		;
connectAttr "R_Finger_2_01_Ctrl.pm" "R_Finger_2_02_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "R_Finger_2_02_Ctrl_Grp_scaleConstraint1.w0" "R_Finger_2_02_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Finger_2_03_Ctrl_Grp_parentConstraint1.ctx" "R_Finger_2_03_Ctrl_Grp.tx"
		;
connectAttr "R_Finger_2_03_Ctrl_Grp_parentConstraint1.cty" "R_Finger_2_03_Ctrl_Grp.ty"
		;
connectAttr "R_Finger_2_03_Ctrl_Grp_parentConstraint1.ctz" "R_Finger_2_03_Ctrl_Grp.tz"
		;
connectAttr "R_Finger_2_03_Ctrl_Grp_parentConstraint2.crx" "R_Finger_2_03_Ctrl_Grp.rx"
		;
connectAttr "R_Finger_2_03_Ctrl_Grp_parentConstraint2.cry" "R_Finger_2_03_Ctrl_Grp.ry"
		;
connectAttr "R_Finger_2_03_Ctrl_Grp_parentConstraint2.crz" "R_Finger_2_03_Ctrl_Grp.rz"
		;
connectAttr "R_Finger_2_03_Ctrl_Grp_scaleConstraint1.csx" "R_Finger_2_03_Ctrl_Grp.sx"
		;
connectAttr "R_Finger_2_03_Ctrl_Grp_scaleConstraint1.csy" "R_Finger_2_03_Ctrl_Grp.sy"
		;
connectAttr "R_Finger_2_03_Ctrl_Grp_scaleConstraint1.csz" "R_Finger_2_03_Ctrl_Grp.sz"
		;
connectAttr "R_Finger_2_03_Ctrl_Grp.ro" "R_Finger_2_03_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "R_Finger_2_03_Ctrl_Grp.pim" "R_Finger_2_03_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "R_Finger_2_03_Ctrl_Grp.rp" "R_Finger_2_03_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "R_Finger_2_03_Ctrl_Grp.rpt" "R_Finger_2_03_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "R_Finger_2_02_Ctrl.t" "R_Finger_2_03_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "R_Finger_2_02_Ctrl.rp" "R_Finger_2_03_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "R_Finger_2_02_Ctrl.rpt" "R_Finger_2_03_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Finger_2_02_Ctrl.r" "R_Finger_2_03_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "R_Finger_2_02_Ctrl.ro" "R_Finger_2_03_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "R_Finger_2_02_Ctrl.s" "R_Finger_2_03_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "R_Finger_2_02_Ctrl.pm" "R_Finger_2_03_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_Finger_2_03_Ctrl_Grp_parentConstraint1.w0" "R_Finger_2_03_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Finger_2_03_Ctrl.FollowTranslate" "R_Finger_2_03_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "R_Finger_2_03_Ctrl_Grp.ro" "R_Finger_2_03_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "R_Finger_2_03_Ctrl_Grp.pim" "R_Finger_2_03_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "R_Finger_2_03_Ctrl_Grp.rp" "R_Finger_2_03_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "R_Finger_2_03_Ctrl_Grp.rpt" "R_Finger_2_03_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "R_Finger_2_02_Ctrl.t" "R_Finger_2_03_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "R_Finger_2_02_Ctrl.rp" "R_Finger_2_03_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "R_Finger_2_02_Ctrl.rpt" "R_Finger_2_03_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "R_Finger_2_02_Ctrl.r" "R_Finger_2_03_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "R_Finger_2_02_Ctrl.ro" "R_Finger_2_03_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "R_Finger_2_02_Ctrl.s" "R_Finger_2_03_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "R_Finger_2_02_Ctrl.pm" "R_Finger_2_03_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "R_Finger_2_03_Ctrl_Grp_parentConstraint2.w0" "R_Finger_2_03_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "R_Finger_2_03_Ctrl.FollowRotate" "R_Finger_2_03_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "R_Finger_2_03_Ctrl_Grp.pim" "R_Finger_2_03_Ctrl_Grp_scaleConstraint1.cpim"
		;
connectAttr "R_Finger_2_02_Ctrl.s" "R_Finger_2_03_Ctrl_Grp_scaleConstraint1.tg[0].ts"
		;
connectAttr "R_Finger_2_02_Ctrl.pm" "R_Finger_2_03_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "R_Finger_2_03_Ctrl_Grp_scaleConstraint1.w0" "R_Finger_2_03_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Finger_1_01_Ctrl_Grp_parentConstraint1.ctx" "R_Finger_1_01_Ctrl_Grp.tx"
		;
connectAttr "R_Finger_1_01_Ctrl_Grp_parentConstraint1.cty" "R_Finger_1_01_Ctrl_Grp.ty"
		;
connectAttr "R_Finger_1_01_Ctrl_Grp_parentConstraint1.ctz" "R_Finger_1_01_Ctrl_Grp.tz"
		;
connectAttr "R_Finger_1_01_Ctrl_Grp_parentConstraint2.crx" "R_Finger_1_01_Ctrl_Grp.rx"
		;
connectAttr "R_Finger_1_01_Ctrl_Grp_parentConstraint2.cry" "R_Finger_1_01_Ctrl_Grp.ry"
		;
connectAttr "R_Finger_1_01_Ctrl_Grp_parentConstraint2.crz" "R_Finger_1_01_Ctrl_Grp.rz"
		;
connectAttr "R_Finger_1_01_Ctrl_Grp_scaleConstraint1.csx" "R_Finger_1_01_Ctrl_Grp.sx"
		;
connectAttr "R_Finger_1_01_Ctrl_Grp_scaleConstraint1.csy" "R_Finger_1_01_Ctrl_Grp.sy"
		;
connectAttr "R_Finger_1_01_Ctrl_Grp_scaleConstraint1.csz" "R_Finger_1_01_Ctrl_Grp.sz"
		;
connectAttr "R_Finger_1_01_Ctrl_Grp.ro" "R_Finger_1_01_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "R_Finger_1_01_Ctrl_Grp.pim" "R_Finger_1_01_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "R_Finger_1_01_Ctrl_Grp.rp" "R_Finger_1_01_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "R_Finger_1_01_Ctrl_Grp.rpt" "R_Finger_1_01_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "R_Hand_Ctrl.t" "R_Finger_1_01_Ctrl_Grp_parentConstraint1.tg[0].tt";
connectAttr "R_Hand_Ctrl.rp" "R_Finger_1_01_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "R_Hand_Ctrl.rpt" "R_Finger_1_01_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Hand_Ctrl.r" "R_Finger_1_01_Ctrl_Grp_parentConstraint1.tg[0].tr";
connectAttr "R_Hand_Ctrl.ro" "R_Finger_1_01_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "R_Hand_Ctrl.s" "R_Finger_1_01_Ctrl_Grp_parentConstraint1.tg[0].ts";
connectAttr "R_Hand_Ctrl.pm" "R_Finger_1_01_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_Finger_1_01_Ctrl_Grp_parentConstraint1.w0" "R_Finger_1_01_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Finger_1_01_Ctrl.FollowTranslate" "R_Finger_1_01_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "R_Finger_1_01_Ctrl_Grp.ro" "R_Finger_1_01_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "R_Finger_1_01_Ctrl_Grp.pim" "R_Finger_1_01_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "R_Finger_1_01_Ctrl_Grp.rp" "R_Finger_1_01_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "R_Finger_1_01_Ctrl_Grp.rpt" "R_Finger_1_01_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "R_Hand_Ctrl.t" "R_Finger_1_01_Ctrl_Grp_parentConstraint2.tg[0].tt";
connectAttr "R_Hand_Ctrl.rp" "R_Finger_1_01_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "R_Hand_Ctrl.rpt" "R_Finger_1_01_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "R_Hand_Ctrl.r" "R_Finger_1_01_Ctrl_Grp_parentConstraint2.tg[0].tr";
connectAttr "R_Hand_Ctrl.ro" "R_Finger_1_01_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "R_Hand_Ctrl.s" "R_Finger_1_01_Ctrl_Grp_parentConstraint2.tg[0].ts";
connectAttr "R_Hand_Ctrl.pm" "R_Finger_1_01_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "R_Finger_1_01_Ctrl_Grp_parentConstraint2.w0" "R_Finger_1_01_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "R_Finger_1_01_Ctrl.FollowRotate" "R_Finger_1_01_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "R_Finger_1_01_Ctrl_Grp.pim" "R_Finger_1_01_Ctrl_Grp_scaleConstraint1.cpim"
		;
connectAttr "R_Hand_Ctrl.s" "R_Finger_1_01_Ctrl_Grp_scaleConstraint1.tg[0].ts";
connectAttr "R_Hand_Ctrl.pm" "R_Finger_1_01_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "R_Finger_1_01_Ctrl_Grp_scaleConstraint1.w0" "R_Finger_1_01_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Finger_1_02_Ctrl_Grp_parentConstraint1.ctx" "R_Finger_1_02_Ctrl_Grp.tx"
		;
connectAttr "R_Finger_1_02_Ctrl_Grp_parentConstraint1.cty" "R_Finger_1_02_Ctrl_Grp.ty"
		;
connectAttr "R_Finger_1_02_Ctrl_Grp_parentConstraint1.ctz" "R_Finger_1_02_Ctrl_Grp.tz"
		;
connectAttr "R_Finger_1_02_Ctrl_Grp_parentConstraint2.crx" "R_Finger_1_02_Ctrl_Grp.rx"
		;
connectAttr "R_Finger_1_02_Ctrl_Grp_parentConstraint2.cry" "R_Finger_1_02_Ctrl_Grp.ry"
		;
connectAttr "R_Finger_1_02_Ctrl_Grp_parentConstraint2.crz" "R_Finger_1_02_Ctrl_Grp.rz"
		;
connectAttr "R_Finger_1_02_Ctrl_Grp_scaleConstraint1.csx" "R_Finger_1_02_Ctrl_Grp.sx"
		;
connectAttr "R_Finger_1_02_Ctrl_Grp_scaleConstraint1.csy" "R_Finger_1_02_Ctrl_Grp.sy"
		;
connectAttr "R_Finger_1_02_Ctrl_Grp_scaleConstraint1.csz" "R_Finger_1_02_Ctrl_Grp.sz"
		;
connectAttr "R_Finger_1_02_Ctrl_Grp.ro" "R_Finger_1_02_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "R_Finger_1_02_Ctrl_Grp.pim" "R_Finger_1_02_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "R_Finger_1_02_Ctrl_Grp.rp" "R_Finger_1_02_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "R_Finger_1_02_Ctrl_Grp.rpt" "R_Finger_1_02_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "R_Finger_1_01_Ctrl.t" "R_Finger_1_02_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "R_Finger_1_01_Ctrl.rp" "R_Finger_1_02_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "R_Finger_1_01_Ctrl.rpt" "R_Finger_1_02_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Finger_1_01_Ctrl.r" "R_Finger_1_02_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "R_Finger_1_01_Ctrl.ro" "R_Finger_1_02_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "R_Finger_1_01_Ctrl.s" "R_Finger_1_02_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "R_Finger_1_01_Ctrl.pm" "R_Finger_1_02_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_Finger_1_02_Ctrl_Grp_parentConstraint1.w0" "R_Finger_1_02_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Finger_1_02_Ctrl.FollowTranslate" "R_Finger_1_02_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "R_Finger_1_02_Ctrl_Grp.ro" "R_Finger_1_02_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "R_Finger_1_02_Ctrl_Grp.pim" "R_Finger_1_02_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "R_Finger_1_02_Ctrl_Grp.rp" "R_Finger_1_02_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "R_Finger_1_02_Ctrl_Grp.rpt" "R_Finger_1_02_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "R_Finger_1_01_Ctrl.t" "R_Finger_1_02_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "R_Finger_1_01_Ctrl.rp" "R_Finger_1_02_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "R_Finger_1_01_Ctrl.rpt" "R_Finger_1_02_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "R_Finger_1_01_Ctrl.r" "R_Finger_1_02_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "R_Finger_1_01_Ctrl.ro" "R_Finger_1_02_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "R_Finger_1_01_Ctrl.s" "R_Finger_1_02_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "R_Finger_1_01_Ctrl.pm" "R_Finger_1_02_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "R_Finger_1_02_Ctrl_Grp_parentConstraint2.w0" "R_Finger_1_02_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "R_Finger_1_02_Ctrl.FollowRotate" "R_Finger_1_02_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "R_Finger_1_02_Ctrl_Grp.pim" "R_Finger_1_02_Ctrl_Grp_scaleConstraint1.cpim"
		;
connectAttr "R_Finger_1_01_Ctrl.s" "R_Finger_1_02_Ctrl_Grp_scaleConstraint1.tg[0].ts"
		;
connectAttr "R_Finger_1_01_Ctrl.pm" "R_Finger_1_02_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "R_Finger_1_02_Ctrl_Grp_scaleConstraint1.w0" "R_Finger_1_02_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "nurbsCircle15_Grp_parentConstraint1.ctx" "R_Finger_1_03_Ctrl_Grp.tx"
		;
connectAttr "nurbsCircle15_Grp_parentConstraint1.cty" "R_Finger_1_03_Ctrl_Grp.ty"
		;
connectAttr "nurbsCircle15_Grp_parentConstraint1.ctz" "R_Finger_1_03_Ctrl_Grp.tz"
		;
connectAttr "nurbsCircle15_Grp_parentConstraint2.crx" "R_Finger_1_03_Ctrl_Grp.rx"
		;
connectAttr "nurbsCircle15_Grp_parentConstraint2.cry" "R_Finger_1_03_Ctrl_Grp.ry"
		;
connectAttr "nurbsCircle15_Grp_parentConstraint2.crz" "R_Finger_1_03_Ctrl_Grp.rz"
		;
connectAttr "nurbsCircle15_Grp_scaleConstraint1.csx" "R_Finger_1_03_Ctrl_Grp.sx"
		;
connectAttr "nurbsCircle15_Grp_scaleConstraint1.csy" "R_Finger_1_03_Ctrl_Grp.sy"
		;
connectAttr "nurbsCircle15_Grp_scaleConstraint1.csz" "R_Finger_1_03_Ctrl_Grp.sz"
		;
connectAttr "R_Finger_1_03_Ctrl_Grp.ro" "nurbsCircle15_Grp_parentConstraint1.cro"
		;
connectAttr "R_Finger_1_03_Ctrl_Grp.pim" "nurbsCircle15_Grp_parentConstraint1.cpim"
		;
connectAttr "R_Finger_1_03_Ctrl_Grp.rp" "nurbsCircle15_Grp_parentConstraint1.crp"
		;
connectAttr "R_Finger_1_03_Ctrl_Grp.rpt" "nurbsCircle15_Grp_parentConstraint1.crt"
		;
connectAttr "R_Finger_1_02_Ctrl.t" "nurbsCircle15_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "R_Finger_1_02_Ctrl.rp" "nurbsCircle15_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "R_Finger_1_02_Ctrl.rpt" "nurbsCircle15_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Finger_1_02_Ctrl.r" "nurbsCircle15_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "R_Finger_1_02_Ctrl.ro" "nurbsCircle15_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "R_Finger_1_02_Ctrl.s" "nurbsCircle15_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "R_Finger_1_02_Ctrl.pm" "nurbsCircle15_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "nurbsCircle15_Grp_parentConstraint1.w0" "nurbsCircle15_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Finger_1_03_Ctrl.FollowTranslate" "nurbsCircle15_Grp_parentConstraint1.w0"
		;
connectAttr "R_Finger_1_03_Ctrl_Grp.ro" "nurbsCircle15_Grp_parentConstraint2.cro"
		;
connectAttr "R_Finger_1_03_Ctrl_Grp.pim" "nurbsCircle15_Grp_parentConstraint2.cpim"
		;
connectAttr "R_Finger_1_03_Ctrl_Grp.rp" "nurbsCircle15_Grp_parentConstraint2.crp"
		;
connectAttr "R_Finger_1_03_Ctrl_Grp.rpt" "nurbsCircle15_Grp_parentConstraint2.crt"
		;
connectAttr "R_Finger_1_02_Ctrl.t" "nurbsCircle15_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "R_Finger_1_02_Ctrl.rp" "nurbsCircle15_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "R_Finger_1_02_Ctrl.rpt" "nurbsCircle15_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "R_Finger_1_02_Ctrl.r" "nurbsCircle15_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "R_Finger_1_02_Ctrl.ro" "nurbsCircle15_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "R_Finger_1_02_Ctrl.s" "nurbsCircle15_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "R_Finger_1_02_Ctrl.pm" "nurbsCircle15_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "nurbsCircle15_Grp_parentConstraint2.w0" "nurbsCircle15_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "R_Finger_1_03_Ctrl.FollowRotate" "nurbsCircle15_Grp_parentConstraint2.w0"
		;
connectAttr "R_Finger_1_03_Ctrl_Grp.pim" "nurbsCircle15_Grp_scaleConstraint1.cpim"
		;
connectAttr "R_Finger_1_02_Ctrl.s" "nurbsCircle15_Grp_scaleConstraint1.tg[0].ts"
		;
connectAttr "R_Finger_1_02_Ctrl.pm" "nurbsCircle15_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "nurbsCircle15_Grp_scaleConstraint1.w0" "nurbsCircle15_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Thumb_01_Ctrl_Grp_parentConstraint1.ctx" "R_Thumb_01_Ctrl_Grp.tx"
		;
connectAttr "R_Thumb_01_Ctrl_Grp_parentConstraint1.cty" "R_Thumb_01_Ctrl_Grp.ty"
		;
connectAttr "R_Thumb_01_Ctrl_Grp_parentConstraint1.ctz" "R_Thumb_01_Ctrl_Grp.tz"
		;
connectAttr "R_Thumb_01_Ctrl_Grp_parentConstraint2.crx" "R_Thumb_01_Ctrl_Grp.rx"
		;
connectAttr "R_Thumb_01_Ctrl_Grp_parentConstraint2.cry" "R_Thumb_01_Ctrl_Grp.ry"
		;
connectAttr "R_Thumb_01_Ctrl_Grp_parentConstraint2.crz" "R_Thumb_01_Ctrl_Grp.rz"
		;
connectAttr "R_Thumb_01_Ctrl_Grp_scaleConstraint1.csx" "R_Thumb_01_Ctrl_Grp.sx";
connectAttr "R_Thumb_01_Ctrl_Grp_scaleConstraint1.csy" "R_Thumb_01_Ctrl_Grp.sy";
connectAttr "R_Thumb_01_Ctrl_Grp_scaleConstraint1.csz" "R_Thumb_01_Ctrl_Grp.sz";
connectAttr "R_Thumb_01_Ctrl_Grp.ro" "R_Thumb_01_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "R_Thumb_01_Ctrl_Grp.pim" "R_Thumb_01_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "R_Thumb_01_Ctrl_Grp.rp" "R_Thumb_01_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "R_Thumb_01_Ctrl_Grp.rpt" "R_Thumb_01_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "R_Hand_Ctrl.t" "R_Thumb_01_Ctrl_Grp_parentConstraint1.tg[0].tt";
connectAttr "R_Hand_Ctrl.rp" "R_Thumb_01_Ctrl_Grp_parentConstraint1.tg[0].trp";
connectAttr "R_Hand_Ctrl.rpt" "R_Thumb_01_Ctrl_Grp_parentConstraint1.tg[0].trt";
connectAttr "R_Hand_Ctrl.r" "R_Thumb_01_Ctrl_Grp_parentConstraint1.tg[0].tr";
connectAttr "R_Hand_Ctrl.ro" "R_Thumb_01_Ctrl_Grp_parentConstraint1.tg[0].tro";
connectAttr "R_Hand_Ctrl.s" "R_Thumb_01_Ctrl_Grp_parentConstraint1.tg[0].ts";
connectAttr "R_Hand_Ctrl.pm" "R_Thumb_01_Ctrl_Grp_parentConstraint1.tg[0].tpm";
connectAttr "R_Thumb_01_Ctrl_Grp_parentConstraint1.w0" "R_Thumb_01_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Thumb_01_Ctrl.FollowTranslate" "R_Thumb_01_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "R_Thumb_01_Ctrl_Grp.ro" "R_Thumb_01_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "R_Thumb_01_Ctrl_Grp.pim" "R_Thumb_01_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "R_Thumb_01_Ctrl_Grp.rp" "R_Thumb_01_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "R_Thumb_01_Ctrl_Grp.rpt" "R_Thumb_01_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "R_Hand_Ctrl.t" "R_Thumb_01_Ctrl_Grp_parentConstraint2.tg[0].tt";
connectAttr "R_Hand_Ctrl.rp" "R_Thumb_01_Ctrl_Grp_parentConstraint2.tg[0].trp";
connectAttr "R_Hand_Ctrl.rpt" "R_Thumb_01_Ctrl_Grp_parentConstraint2.tg[0].trt";
connectAttr "R_Hand_Ctrl.r" "R_Thumb_01_Ctrl_Grp_parentConstraint2.tg[0].tr";
connectAttr "R_Hand_Ctrl.ro" "R_Thumb_01_Ctrl_Grp_parentConstraint2.tg[0].tro";
connectAttr "R_Hand_Ctrl.s" "R_Thumb_01_Ctrl_Grp_parentConstraint2.tg[0].ts";
connectAttr "R_Hand_Ctrl.pm" "R_Thumb_01_Ctrl_Grp_parentConstraint2.tg[0].tpm";
connectAttr "R_Thumb_01_Ctrl_Grp_parentConstraint2.w0" "R_Thumb_01_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "R_Thumb_01_Ctrl.FollowRotate" "R_Thumb_01_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "R_Thumb_01_Ctrl_Grp.pim" "R_Thumb_01_Ctrl_Grp_scaleConstraint1.cpim"
		;
connectAttr "R_Hand_Ctrl.s" "R_Thumb_01_Ctrl_Grp_scaleConstraint1.tg[0].ts";
connectAttr "R_Hand_Ctrl.pm" "R_Thumb_01_Ctrl_Grp_scaleConstraint1.tg[0].tpm";
connectAttr "R_Thumb_01_Ctrl_Grp_scaleConstraint1.w0" "R_Thumb_01_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Thumb_02_Ctrl_Grp_parentConstraint1.ctx" "R_Thumb_02_Ctrl_Grp.tx"
		;
connectAttr "R_Thumb_02_Ctrl_Grp_parentConstraint1.cty" "R_Thumb_02_Ctrl_Grp.ty"
		;
connectAttr "R_Thumb_02_Ctrl_Grp_parentConstraint1.ctz" "R_Thumb_02_Ctrl_Grp.tz"
		;
connectAttr "R_Thumb_02_Ctrl_Grp_parentConstraint2.crx" "R_Thumb_02_Ctrl_Grp.rx"
		;
connectAttr "R_Thumb_02_Ctrl_Grp_parentConstraint2.cry" "R_Thumb_02_Ctrl_Grp.ry"
		;
connectAttr "R_Thumb_02_Ctrl_Grp_parentConstraint2.crz" "R_Thumb_02_Ctrl_Grp.rz"
		;
connectAttr "R_Thumb_02_Ctrl_Grp_scaleConstraint1.csx" "R_Thumb_02_Ctrl_Grp.sx";
connectAttr "R_Thumb_02_Ctrl_Grp_scaleConstraint1.csy" "R_Thumb_02_Ctrl_Grp.sy";
connectAttr "R_Thumb_02_Ctrl_Grp_scaleConstraint1.csz" "R_Thumb_02_Ctrl_Grp.sz";
connectAttr "R_Thumb_02_Ctrl_Grp.ro" "R_Thumb_02_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "R_Thumb_02_Ctrl_Grp.pim" "R_Thumb_02_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "R_Thumb_02_Ctrl_Grp.rp" "R_Thumb_02_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "R_Thumb_02_Ctrl_Grp.rpt" "R_Thumb_02_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "R_Thumb_01_Ctrl.t" "R_Thumb_02_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "R_Thumb_01_Ctrl.rp" "R_Thumb_02_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "R_Thumb_01_Ctrl.rpt" "R_Thumb_02_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Thumb_01_Ctrl.r" "R_Thumb_02_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "R_Thumb_01_Ctrl.ro" "R_Thumb_02_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "R_Thumb_01_Ctrl.s" "R_Thumb_02_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "R_Thumb_01_Ctrl.pm" "R_Thumb_02_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_Thumb_02_Ctrl_Grp_parentConstraint1.w0" "R_Thumb_02_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Thumb_02_Ctrl.FollowTranslate" "R_Thumb_02_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "R_Thumb_02_Ctrl_Grp.ro" "R_Thumb_02_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "R_Thumb_02_Ctrl_Grp.pim" "R_Thumb_02_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "R_Thumb_02_Ctrl_Grp.rp" "R_Thumb_02_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "R_Thumb_02_Ctrl_Grp.rpt" "R_Thumb_02_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "R_Thumb_01_Ctrl.t" "R_Thumb_02_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "R_Thumb_01_Ctrl.rp" "R_Thumb_02_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "R_Thumb_01_Ctrl.rpt" "R_Thumb_02_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "R_Thumb_01_Ctrl.r" "R_Thumb_02_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "R_Thumb_01_Ctrl.ro" "R_Thumb_02_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "R_Thumb_01_Ctrl.s" "R_Thumb_02_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "R_Thumb_01_Ctrl.pm" "R_Thumb_02_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "R_Thumb_02_Ctrl_Grp_parentConstraint2.w0" "R_Thumb_02_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "R_Thumb_02_Ctrl.FollowRotate" "R_Thumb_02_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "R_Thumb_02_Ctrl_Grp.pim" "R_Thumb_02_Ctrl_Grp_scaleConstraint1.cpim"
		;
connectAttr "R_Thumb_01_Ctrl.s" "R_Thumb_02_Ctrl_Grp_scaleConstraint1.tg[0].ts";
connectAttr "R_Thumb_01_Ctrl.pm" "R_Thumb_02_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "R_Thumb_02_Ctrl_Grp_scaleConstraint1.w0" "R_Thumb_02_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Thumb_03_Ctrl_Grp_parentConstraint1.ctx" "R_Thumb_03_Ctrl_Grp.tx"
		;
connectAttr "R_Thumb_03_Ctrl_Grp_parentConstraint1.cty" "R_Thumb_03_Ctrl_Grp.ty"
		;
connectAttr "R_Thumb_03_Ctrl_Grp_parentConstraint1.ctz" "R_Thumb_03_Ctrl_Grp.tz"
		;
connectAttr "R_Thumb_03_Ctrl_Grp_parentConstraint2.crx" "R_Thumb_03_Ctrl_Grp.rx"
		;
connectAttr "R_Thumb_03_Ctrl_Grp_parentConstraint2.cry" "R_Thumb_03_Ctrl_Grp.ry"
		;
connectAttr "R_Thumb_03_Ctrl_Grp_parentConstraint2.crz" "R_Thumb_03_Ctrl_Grp.rz"
		;
connectAttr "R_Thumb_03_Ctrl_Grp_scaleConstraint1.csx" "R_Thumb_03_Ctrl_Grp.sx";
connectAttr "R_Thumb_03_Ctrl_Grp_scaleConstraint1.csy" "R_Thumb_03_Ctrl_Grp.sy";
connectAttr "R_Thumb_03_Ctrl_Grp_scaleConstraint1.csz" "R_Thumb_03_Ctrl_Grp.sz";
connectAttr "R_Thumb_03_Ctrl_Grp.ro" "R_Thumb_03_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "R_Thumb_03_Ctrl_Grp.pim" "R_Thumb_03_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "R_Thumb_03_Ctrl_Grp.rp" "R_Thumb_03_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "R_Thumb_03_Ctrl_Grp.rpt" "R_Thumb_03_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "R_Thumb_02_Ctrl.t" "R_Thumb_03_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "R_Thumb_02_Ctrl.rp" "R_Thumb_03_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "R_Thumb_02_Ctrl.rpt" "R_Thumb_03_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Thumb_02_Ctrl.r" "R_Thumb_03_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "R_Thumb_02_Ctrl.ro" "R_Thumb_03_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "R_Thumb_02_Ctrl.s" "R_Thumb_03_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "R_Thumb_02_Ctrl.pm" "R_Thumb_03_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_Thumb_03_Ctrl_Grp_parentConstraint1.w0" "R_Thumb_03_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Thumb_03_Ctrl.FollowTranslate" "R_Thumb_03_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "R_Thumb_03_Ctrl_Grp.ro" "R_Thumb_03_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "R_Thumb_03_Ctrl_Grp.pim" "R_Thumb_03_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "R_Thumb_03_Ctrl_Grp.rp" "R_Thumb_03_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "R_Thumb_03_Ctrl_Grp.rpt" "R_Thumb_03_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "R_Thumb_02_Ctrl.t" "R_Thumb_03_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "R_Thumb_02_Ctrl.rp" "R_Thumb_03_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "R_Thumb_02_Ctrl.rpt" "R_Thumb_03_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "R_Thumb_02_Ctrl.r" "R_Thumb_03_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "R_Thumb_02_Ctrl.ro" "R_Thumb_03_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "R_Thumb_02_Ctrl.s" "R_Thumb_03_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "R_Thumb_02_Ctrl.pm" "R_Thumb_03_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "R_Thumb_03_Ctrl_Grp_parentConstraint2.w0" "R_Thumb_03_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "R_Thumb_03_Ctrl.FollowRotate" "R_Thumb_03_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "R_Thumb_03_Ctrl_Grp.pim" "R_Thumb_03_Ctrl_Grp_scaleConstraint1.cpim"
		;
connectAttr "R_Thumb_02_Ctrl.s" "R_Thumb_03_Ctrl_Grp_scaleConstraint1.tg[0].ts";
connectAttr "R_Thumb_02_Ctrl.pm" "R_Thumb_03_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "R_Thumb_03_Ctrl_Grp_scaleConstraint1.w0" "R_Thumb_03_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Hand_Ctrl_Grp.ro" "R_Hand_Ctrl_Grp_parentConstraint1.cro";
connectAttr "R_Hand_Ctrl_Grp.pim" "R_Hand_Ctrl_Grp_parentConstraint1.cpim";
connectAttr "R_Hand_Ctrl_Grp.rp" "R_Hand_Ctrl_Grp_parentConstraint1.crp";
connectAttr "R_Hand_Ctrl_Grp.rpt" "R_Hand_Ctrl_Grp_parentConstraint1.crt";
connectAttr "R_RK_Arm_03_Jnt.t" "R_Hand_Ctrl_Grp_parentConstraint1.tg[0].tt";
connectAttr "R_RK_Arm_03_Jnt.rp" "R_Hand_Ctrl_Grp_parentConstraint1.tg[0].trp";
connectAttr "R_RK_Arm_03_Jnt.rpt" "R_Hand_Ctrl_Grp_parentConstraint1.tg[0].trt";
connectAttr "R_RK_Arm_03_Jnt.r" "R_Hand_Ctrl_Grp_parentConstraint1.tg[0].tr";
connectAttr "R_RK_Arm_03_Jnt.ro" "R_Hand_Ctrl_Grp_parentConstraint1.tg[0].tro";
connectAttr "R_RK_Arm_03_Jnt.s" "R_Hand_Ctrl_Grp_parentConstraint1.tg[0].ts";
connectAttr "R_RK_Arm_03_Jnt.pm" "R_Hand_Ctrl_Grp_parentConstraint1.tg[0].tpm";
connectAttr "R_RK_Arm_03_Jnt.jo" "R_Hand_Ctrl_Grp_parentConstraint1.tg[0].tjo";
connectAttr "R_RK_Arm_03_Jnt.ssc" "R_Hand_Ctrl_Grp_parentConstraint1.tg[0].tsc";
connectAttr "R_RK_Arm_03_Jnt.is" "R_Hand_Ctrl_Grp_parentConstraint1.tg[0].tis";
connectAttr "R_Hand_Ctrl_Grp_parentConstraint1.w0" "R_Hand_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Clav_Ctrl_Grp_parentConstraint1.ctx" "L_Clav_Ctrl_Grp.tx";
connectAttr "L_Clav_Ctrl_Grp_parentConstraint1.cty" "L_Clav_Ctrl_Grp.ty";
connectAttr "L_Clav_Ctrl_Grp_parentConstraint1.ctz" "L_Clav_Ctrl_Grp.tz";
connectAttr "L_Clav_Ctrl_Grp_parentConstraint2.crx" "L_Clav_Ctrl_Grp.rx";
connectAttr "L_Clav_Ctrl_Grp_parentConstraint2.cry" "L_Clav_Ctrl_Grp.ry";
connectAttr "L_Clav_Ctrl_Grp_parentConstraint2.crz" "L_Clav_Ctrl_Grp.rz";
connectAttr "L_Clav_Ctrl_Grp_scaleConstraint1.csx" "L_Clav_Ctrl_Grp.sx";
connectAttr "L_Clav_Ctrl_Grp_scaleConstraint1.csy" "L_Clav_Ctrl_Grp.sy";
connectAttr "L_Clav_Ctrl_Grp_scaleConstraint1.csz" "L_Clav_Ctrl_Grp.sz";
connectAttr "makeNurbCircle4.oc" "L_Clav_CtrlShape.cr";
connectAttr "L_Clav_Ctrl_Grp.ro" "L_Clav_Ctrl_Grp_parentConstraint1.cro";
connectAttr "L_Clav_Ctrl_Grp.pim" "L_Clav_Ctrl_Grp_parentConstraint1.cpim";
connectAttr "L_Clav_Ctrl_Grp.rp" "L_Clav_Ctrl_Grp_parentConstraint1.crp";
connectAttr "L_Clav_Ctrl_Grp.rpt" "L_Clav_Ctrl_Grp_parentConstraint1.crt";
connectAttr "Spine_04_Ctrl.t" "L_Clav_Ctrl_Grp_parentConstraint1.tg[0].tt";
connectAttr "Spine_04_Ctrl.rp" "L_Clav_Ctrl_Grp_parentConstraint1.tg[0].trp";
connectAttr "Spine_04_Ctrl.rpt" "L_Clav_Ctrl_Grp_parentConstraint1.tg[0].trt";
connectAttr "Spine_04_Ctrl.r" "L_Clav_Ctrl_Grp_parentConstraint1.tg[0].tr";
connectAttr "Spine_04_Ctrl.ro" "L_Clav_Ctrl_Grp_parentConstraint1.tg[0].tro";
connectAttr "Spine_04_Ctrl.s" "L_Clav_Ctrl_Grp_parentConstraint1.tg[0].ts";
connectAttr "Spine_04_Ctrl.pm" "L_Clav_Ctrl_Grp_parentConstraint1.tg[0].tpm";
connectAttr "L_Clav_Ctrl_Grp_parentConstraint1.w0" "L_Clav_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Clav_Ctrl.FollowTranslate" "L_Clav_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "L_Clav_Ctrl_Grp.ro" "L_Clav_Ctrl_Grp_parentConstraint2.cro";
connectAttr "L_Clav_Ctrl_Grp.pim" "L_Clav_Ctrl_Grp_parentConstraint2.cpim";
connectAttr "L_Clav_Ctrl_Grp.rp" "L_Clav_Ctrl_Grp_parentConstraint2.crp";
connectAttr "L_Clav_Ctrl_Grp.rpt" "L_Clav_Ctrl_Grp_parentConstraint2.crt";
connectAttr "Spine_04_Ctrl.t" "L_Clav_Ctrl_Grp_parentConstraint2.tg[0].tt";
connectAttr "Spine_04_Ctrl.rp" "L_Clav_Ctrl_Grp_parentConstraint2.tg[0].trp";
connectAttr "Spine_04_Ctrl.rpt" "L_Clav_Ctrl_Grp_parentConstraint2.tg[0].trt";
connectAttr "Spine_04_Ctrl.r" "L_Clav_Ctrl_Grp_parentConstraint2.tg[0].tr";
connectAttr "Spine_04_Ctrl.ro" "L_Clav_Ctrl_Grp_parentConstraint2.tg[0].tro";
connectAttr "Spine_04_Ctrl.s" "L_Clav_Ctrl_Grp_parentConstraint2.tg[0].ts";
connectAttr "Spine_04_Ctrl.pm" "L_Clav_Ctrl_Grp_parentConstraint2.tg[0].tpm";
connectAttr "L_Clav_Ctrl_Grp_parentConstraint2.w0" "L_Clav_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "L_Clav_Ctrl.FollowRotate" "L_Clav_Ctrl_Grp_parentConstraint2.w0";
connectAttr "L_Clav_Ctrl_Grp.pim" "L_Clav_Ctrl_Grp_scaleConstraint1.cpim";
connectAttr "Spine_04_Ctrl.s" "L_Clav_Ctrl_Grp_scaleConstraint1.tg[0].ts";
connectAttr "Spine_04_Ctrl.pm" "L_Clav_Ctrl_Grp_scaleConstraint1.tg[0].tpm";
connectAttr "L_Clav_Ctrl_Grp_scaleConstraint1.w0" "L_Clav_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Clav_Ctrl_Grp_parentConstraint1.ctx" "R_Clav_Ctrl_Grp.tx";
connectAttr "R_Clav_Ctrl_Grp_parentConstraint1.cty" "R_Clav_Ctrl_Grp.ty";
connectAttr "R_Clav_Ctrl_Grp_parentConstraint1.ctz" "R_Clav_Ctrl_Grp.tz";
connectAttr "R_Clav_Ctrl_Grp_parentConstraint2.crx" "R_Clav_Ctrl_Grp.rx";
connectAttr "R_Clav_Ctrl_Grp_parentConstraint2.cry" "R_Clav_Ctrl_Grp.ry";
connectAttr "R_Clav_Ctrl_Grp_parentConstraint2.crz" "R_Clav_Ctrl_Grp.rz";
connectAttr "R_Clav_Ctrl_Grp_scaleConstraint1.csx" "R_Clav_Ctrl_Grp.sx";
connectAttr "R_Clav_Ctrl_Grp_scaleConstraint1.csy" "R_Clav_Ctrl_Grp.sy";
connectAttr "R_Clav_Ctrl_Grp_scaleConstraint1.csz" "R_Clav_Ctrl_Grp.sz";
connectAttr "R_Clav_Ctrl_Grp.ro" "R_Clav_Ctrl_Grp_parentConstraint1.cro";
connectAttr "R_Clav_Ctrl_Grp.pim" "R_Clav_Ctrl_Grp_parentConstraint1.cpim";
connectAttr "R_Clav_Ctrl_Grp.rp" "R_Clav_Ctrl_Grp_parentConstraint1.crp";
connectAttr "R_Clav_Ctrl_Grp.rpt" "R_Clav_Ctrl_Grp_parentConstraint1.crt";
connectAttr "Spine_04_Ctrl.t" "R_Clav_Ctrl_Grp_parentConstraint1.tg[0].tt";
connectAttr "Spine_04_Ctrl.rp" "R_Clav_Ctrl_Grp_parentConstraint1.tg[0].trp";
connectAttr "Spine_04_Ctrl.rpt" "R_Clav_Ctrl_Grp_parentConstraint1.tg[0].trt";
connectAttr "Spine_04_Ctrl.r" "R_Clav_Ctrl_Grp_parentConstraint1.tg[0].tr";
connectAttr "Spine_04_Ctrl.ro" "R_Clav_Ctrl_Grp_parentConstraint1.tg[0].tro";
connectAttr "Spine_04_Ctrl.s" "R_Clav_Ctrl_Grp_parentConstraint1.tg[0].ts";
connectAttr "Spine_04_Ctrl.pm" "R_Clav_Ctrl_Grp_parentConstraint1.tg[0].tpm";
connectAttr "R_Clav_Ctrl_Grp_parentConstraint1.w0" "R_Clav_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Clav_Ctrl.FollowTranslate" "R_Clav_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "R_Clav_Ctrl_Grp.ro" "R_Clav_Ctrl_Grp_parentConstraint2.cro";
connectAttr "R_Clav_Ctrl_Grp.pim" "R_Clav_Ctrl_Grp_parentConstraint2.cpim";
connectAttr "R_Clav_Ctrl_Grp.rp" "R_Clav_Ctrl_Grp_parentConstraint2.crp";
connectAttr "R_Clav_Ctrl_Grp.rpt" "R_Clav_Ctrl_Grp_parentConstraint2.crt";
connectAttr "Spine_04_Ctrl.t" "R_Clav_Ctrl_Grp_parentConstraint2.tg[0].tt";
connectAttr "Spine_04_Ctrl.rp" "R_Clav_Ctrl_Grp_parentConstraint2.tg[0].trp";
connectAttr "Spine_04_Ctrl.rpt" "R_Clav_Ctrl_Grp_parentConstraint2.tg[0].trt";
connectAttr "Spine_04_Ctrl.r" "R_Clav_Ctrl_Grp_parentConstraint2.tg[0].tr";
connectAttr "Spine_04_Ctrl.ro" "R_Clav_Ctrl_Grp_parentConstraint2.tg[0].tro";
connectAttr "Spine_04_Ctrl.s" "R_Clav_Ctrl_Grp_parentConstraint2.tg[0].ts";
connectAttr "Spine_04_Ctrl.pm" "R_Clav_Ctrl_Grp_parentConstraint2.tg[0].tpm";
connectAttr "R_Clav_Ctrl_Grp_parentConstraint2.w0" "R_Clav_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "R_Clav_Ctrl.FollowRotate" "R_Clav_Ctrl_Grp_parentConstraint2.w0";
connectAttr "R_Clav_Ctrl_Grp.pim" "R_Clav_Ctrl_Grp_scaleConstraint1.cpim";
connectAttr "Spine_04_Ctrl.s" "R_Clav_Ctrl_Grp_scaleConstraint1.tg[0].ts";
connectAttr "Spine_04_Ctrl.pm" "R_Clav_Ctrl_Grp_scaleConstraint1.tg[0].tpm";
connectAttr "R_Clav_Ctrl_Grp_scaleConstraint1.w0" "R_Clav_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "Transform_Ctrl.R_Arm_IKFK" "R_FK_Arm.v";
connectAttr "R_FK_Arm_01_Ctrl_Grp_parentConstraint1.ctx" "R_FK_Arm_01_Ctrl_Grp.tx"
		;
connectAttr "R_FK_Arm_01_Ctrl_Grp_parentConstraint1.cty" "R_FK_Arm_01_Ctrl_Grp.ty"
		;
connectAttr "R_FK_Arm_01_Ctrl_Grp_parentConstraint1.ctz" "R_FK_Arm_01_Ctrl_Grp.tz"
		;
connectAttr "R_FK_Arm_01_Ctrl_Grp_parentConstraint2.crx" "R_FK_Arm_01_Ctrl_Grp.rx"
		;
connectAttr "R_FK_Arm_01_Ctrl_Grp_parentConstraint2.cry" "R_FK_Arm_01_Ctrl_Grp.ry"
		;
connectAttr "R_FK_Arm_01_Ctrl_Grp_parentConstraint2.crz" "R_FK_Arm_01_Ctrl_Grp.rz"
		;
connectAttr "R_FK_Arm_01_Ctrl_Grp_scaleConstraint1.csx" "R_FK_Arm_01_Ctrl_Grp.sx"
		;
connectAttr "R_FK_Arm_01_Ctrl_Grp_scaleConstraint1.csy" "R_FK_Arm_01_Ctrl_Grp.sy"
		;
connectAttr "R_FK_Arm_01_Ctrl_Grp_scaleConstraint1.csz" "R_FK_Arm_01_Ctrl_Grp.sz"
		;
connectAttr "R_FK_Arm_01_Ctrl_Grp.ro" "R_FK_Arm_01_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "R_FK_Arm_01_Ctrl_Grp.pim" "R_FK_Arm_01_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "R_FK_Arm_01_Ctrl_Grp.rp" "R_FK_Arm_01_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "R_FK_Arm_01_Ctrl_Grp.rpt" "R_FK_Arm_01_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "R_Clav_Ctrl.t" "R_FK_Arm_01_Ctrl_Grp_parentConstraint1.tg[0].tt";
connectAttr "R_Clav_Ctrl.rp" "R_FK_Arm_01_Ctrl_Grp_parentConstraint1.tg[0].trp";
connectAttr "R_Clav_Ctrl.rpt" "R_FK_Arm_01_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Clav_Ctrl.r" "R_FK_Arm_01_Ctrl_Grp_parentConstraint1.tg[0].tr";
connectAttr "R_Clav_Ctrl.ro" "R_FK_Arm_01_Ctrl_Grp_parentConstraint1.tg[0].tro";
connectAttr "R_Clav_Ctrl.s" "R_FK_Arm_01_Ctrl_Grp_parentConstraint1.tg[0].ts";
connectAttr "R_Clav_Ctrl.pm" "R_FK_Arm_01_Ctrl_Grp_parentConstraint1.tg[0].tpm";
connectAttr "R_FK_Arm_01_Ctrl_Grp_parentConstraint1.w0" "R_FK_Arm_01_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "R_FK_Arm_01_Ctrl.FollowTranslate" "R_FK_Arm_01_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "R_FK_Arm_01_Ctrl_Grp.ro" "R_FK_Arm_01_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "R_FK_Arm_01_Ctrl_Grp.pim" "R_FK_Arm_01_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "R_FK_Arm_01_Ctrl_Grp.rp" "R_FK_Arm_01_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "R_FK_Arm_01_Ctrl_Grp.rpt" "R_FK_Arm_01_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "R_Clav_Ctrl.t" "R_FK_Arm_01_Ctrl_Grp_parentConstraint2.tg[0].tt";
connectAttr "R_Clav_Ctrl.rp" "R_FK_Arm_01_Ctrl_Grp_parentConstraint2.tg[0].trp";
connectAttr "R_Clav_Ctrl.rpt" "R_FK_Arm_01_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "R_Clav_Ctrl.r" "R_FK_Arm_01_Ctrl_Grp_parentConstraint2.tg[0].tr";
connectAttr "R_Clav_Ctrl.ro" "R_FK_Arm_01_Ctrl_Grp_parentConstraint2.tg[0].tro";
connectAttr "R_Clav_Ctrl.s" "R_FK_Arm_01_Ctrl_Grp_parentConstraint2.tg[0].ts";
connectAttr "R_Clav_Ctrl.pm" "R_FK_Arm_01_Ctrl_Grp_parentConstraint2.tg[0].tpm";
connectAttr "R_FK_Arm_01_Ctrl_Grp_parentConstraint2.w0" "R_FK_Arm_01_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "R_FK_Arm_01_Ctrl.FollowRotate" "R_FK_Arm_01_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "R_FK_Arm_01_Ctrl_Grp.pim" "R_FK_Arm_01_Ctrl_Grp_scaleConstraint1.cpim"
		;
connectAttr "R_Clav_Ctrl.s" "R_FK_Arm_01_Ctrl_Grp_scaleConstraint1.tg[0].ts";
connectAttr "R_Clav_Ctrl.pm" "R_FK_Arm_01_Ctrl_Grp_scaleConstraint1.tg[0].tpm";
connectAttr "R_FK_Arm_01_Ctrl_Grp_scaleConstraint1.w0" "R_FK_Arm_01_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_FK_Arm_02_Ctrl_Grp_parentConstraint1.ctx" "R_FK_Arm_02_Ctrl_Grp.tx"
		;
connectAttr "R_FK_Arm_02_Ctrl_Grp_parentConstraint1.cty" "R_FK_Arm_02_Ctrl_Grp.ty"
		;
connectAttr "R_FK_Arm_02_Ctrl_Grp_parentConstraint1.ctz" "R_FK_Arm_02_Ctrl_Grp.tz"
		;
connectAttr "R_FK_Arm_02_Ctrl_Grp_parentConstraint2.crx" "R_FK_Arm_02_Ctrl_Grp.rx"
		;
connectAttr "R_FK_Arm_02_Ctrl_Grp_parentConstraint2.cry" "R_FK_Arm_02_Ctrl_Grp.ry"
		;
connectAttr "R_FK_Arm_02_Ctrl_Grp_parentConstraint2.crz" "R_FK_Arm_02_Ctrl_Grp.rz"
		;
connectAttr "R_FK_Arm_02_Ctrl_Grp_scaleConstraint1.csx" "R_FK_Arm_02_Ctrl_Grp.sx"
		;
connectAttr "R_FK_Arm_02_Ctrl_Grp_scaleConstraint1.csy" "R_FK_Arm_02_Ctrl_Grp.sy"
		;
connectAttr "R_FK_Arm_02_Ctrl_Grp_scaleConstraint1.csz" "R_FK_Arm_02_Ctrl_Grp.sz"
		;
connectAttr "R_FK_Arm_02_Ctrl_Grp.ro" "R_FK_Arm_02_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "R_FK_Arm_02_Ctrl_Grp.pim" "R_FK_Arm_02_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "R_FK_Arm_02_Ctrl_Grp.rp" "R_FK_Arm_02_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "R_FK_Arm_02_Ctrl_Grp.rpt" "R_FK_Arm_02_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "R_FK_Arm_01_Ctrl.t" "R_FK_Arm_02_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "R_FK_Arm_01_Ctrl.rp" "R_FK_Arm_02_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "R_FK_Arm_01_Ctrl.rpt" "R_FK_Arm_02_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "R_FK_Arm_01_Ctrl.r" "R_FK_Arm_02_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "R_FK_Arm_01_Ctrl.ro" "R_FK_Arm_02_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "R_FK_Arm_01_Ctrl.s" "R_FK_Arm_02_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "R_FK_Arm_01_Ctrl.pm" "R_FK_Arm_02_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_FK_Arm_02_Ctrl_Grp_parentConstraint1.w0" "R_FK_Arm_02_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "R_FK_Arm_02_Ctrl.FollowTranslate" "R_FK_Arm_02_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "R_FK_Arm_02_Ctrl_Grp.ro" "R_FK_Arm_02_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "R_FK_Arm_02_Ctrl_Grp.pim" "R_FK_Arm_02_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "R_FK_Arm_02_Ctrl_Grp.rp" "R_FK_Arm_02_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "R_FK_Arm_02_Ctrl_Grp.rpt" "R_FK_Arm_02_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "R_FK_Arm_01_Ctrl.t" "R_FK_Arm_02_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "R_FK_Arm_01_Ctrl.rp" "R_FK_Arm_02_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "R_FK_Arm_01_Ctrl.rpt" "R_FK_Arm_02_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "R_FK_Arm_01_Ctrl.r" "R_FK_Arm_02_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "R_FK_Arm_01_Ctrl.ro" "R_FK_Arm_02_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "R_FK_Arm_01_Ctrl.s" "R_FK_Arm_02_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "R_FK_Arm_01_Ctrl.pm" "R_FK_Arm_02_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "R_FK_Arm_02_Ctrl_Grp_parentConstraint2.w0" "R_FK_Arm_02_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "R_FK_Arm_02_Ctrl.FollowRotate" "R_FK_Arm_02_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "R_FK_Arm_02_Ctrl_Grp.pim" "R_FK_Arm_02_Ctrl_Grp_scaleConstraint1.cpim"
		;
connectAttr "R_FK_Arm_01_Ctrl.s" "R_FK_Arm_02_Ctrl_Grp_scaleConstraint1.tg[0].ts"
		;
connectAttr "R_FK_Arm_01_Ctrl.pm" "R_FK_Arm_02_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "R_FK_Arm_02_Ctrl_Grp_scaleConstraint1.w0" "R_FK_Arm_02_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_FK_Arm_03_Ctrl_Grp_parentConstraint1.ctx" "R_FK_Arm_03_Ctrl_Grp.tx"
		;
connectAttr "R_FK_Arm_03_Ctrl_Grp_parentConstraint1.cty" "R_FK_Arm_03_Ctrl_Grp.ty"
		;
connectAttr "R_FK_Arm_03_Ctrl_Grp_parentConstraint1.ctz" "R_FK_Arm_03_Ctrl_Grp.tz"
		;
connectAttr "R_FK_Arm_03_Ctrl_Grp_parentConstraint2.crx" "R_FK_Arm_03_Ctrl_Grp.rx"
		;
connectAttr "R_FK_Arm_03_Ctrl_Grp_parentConstraint2.cry" "R_FK_Arm_03_Ctrl_Grp.ry"
		;
connectAttr "R_FK_Arm_03_Ctrl_Grp_parentConstraint2.crz" "R_FK_Arm_03_Ctrl_Grp.rz"
		;
connectAttr "R_FK_Arm_03_Ctrl_Grp_scaleConstraint1.csx" "R_FK_Arm_03_Ctrl_Grp.sx"
		;
connectAttr "R_FK_Arm_03_Ctrl_Grp_scaleConstraint1.csy" "R_FK_Arm_03_Ctrl_Grp.sy"
		;
connectAttr "R_FK_Arm_03_Ctrl_Grp_scaleConstraint1.csz" "R_FK_Arm_03_Ctrl_Grp.sz"
		;
connectAttr "R_FK_Arm_03_Ctrl_Grp.ro" "R_FK_Arm_03_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "R_FK_Arm_03_Ctrl_Grp.pim" "R_FK_Arm_03_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "R_FK_Arm_03_Ctrl_Grp.rp" "R_FK_Arm_03_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "R_FK_Arm_03_Ctrl_Grp.rpt" "R_FK_Arm_03_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "R_FK_Arm_02_Ctrl.t" "R_FK_Arm_03_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "R_FK_Arm_02_Ctrl.rp" "R_FK_Arm_03_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "R_FK_Arm_02_Ctrl.rpt" "R_FK_Arm_03_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "R_FK_Arm_02_Ctrl.r" "R_FK_Arm_03_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "R_FK_Arm_02_Ctrl.ro" "R_FK_Arm_03_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "R_FK_Arm_02_Ctrl.s" "R_FK_Arm_03_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "R_FK_Arm_02_Ctrl.pm" "R_FK_Arm_03_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_FK_Arm_03_Ctrl_Grp_parentConstraint1.w0" "R_FK_Arm_03_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "R_FK_Arm_03_Ctrl.FollowTranslate" "R_FK_Arm_03_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "R_FK_Arm_03_Ctrl_Grp.ro" "R_FK_Arm_03_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "R_FK_Arm_03_Ctrl_Grp.pim" "R_FK_Arm_03_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "R_FK_Arm_03_Ctrl_Grp.rp" "R_FK_Arm_03_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "R_FK_Arm_03_Ctrl_Grp.rpt" "R_FK_Arm_03_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "R_FK_Arm_02_Ctrl.t" "R_FK_Arm_03_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "R_FK_Arm_02_Ctrl.rp" "R_FK_Arm_03_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "R_FK_Arm_02_Ctrl.rpt" "R_FK_Arm_03_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "R_FK_Arm_02_Ctrl.r" "R_FK_Arm_03_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "R_FK_Arm_02_Ctrl.ro" "R_FK_Arm_03_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "R_FK_Arm_02_Ctrl.s" "R_FK_Arm_03_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "R_FK_Arm_02_Ctrl.pm" "R_FK_Arm_03_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "R_FK_Arm_03_Ctrl_Grp_parentConstraint2.w0" "R_FK_Arm_03_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "R_FK_Arm_03_Ctrl.FollowRotate" "R_FK_Arm_03_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "R_FK_Arm_03_Ctrl_Grp.pim" "R_FK_Arm_03_Ctrl_Grp_scaleConstraint1.cpim"
		;
connectAttr "R_FK_Arm_02_Ctrl.s" "R_FK_Arm_03_Ctrl_Grp_scaleConstraint1.tg[0].ts"
		;
connectAttr "R_FK_Arm_02_Ctrl.pm" "R_FK_Arm_03_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "R_FK_Arm_03_Ctrl_Grp_scaleConstraint1.w0" "R_FK_Arm_03_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "Transform_Ctrl.R_Leg_IKFK" "R_FK_Leg.v";
connectAttr "R_FK_Hip_Ctrl_Grp_parentConstraint1.ctx" "R_FK_Hip_Ctrl_Grp.tx";
connectAttr "R_FK_Hip_Ctrl_Grp_parentConstraint1.cty" "R_FK_Hip_Ctrl_Grp.ty";
connectAttr "R_FK_Hip_Ctrl_Grp_parentConstraint1.ctz" "R_FK_Hip_Ctrl_Grp.tz";
connectAttr "R_FK_Hip_Ctrl_Grp_parentConstraint2.crx" "R_FK_Hip_Ctrl_Grp.rx";
connectAttr "R_FK_Hip_Ctrl_Grp_parentConstraint2.cry" "R_FK_Hip_Ctrl_Grp.ry";
connectAttr "R_FK_Hip_Ctrl_Grp_parentConstraint2.crz" "R_FK_Hip_Ctrl_Grp.rz";
connectAttr "R_FK_Hip_Ctrl_Grp_scaleConstraint1.csx" "R_FK_Hip_Ctrl_Grp.sx";
connectAttr "R_FK_Hip_Ctrl_Grp_scaleConstraint1.csy" "R_FK_Hip_Ctrl_Grp.sy";
connectAttr "R_FK_Hip_Ctrl_Grp_scaleConstraint1.csz" "R_FK_Hip_Ctrl_Grp.sz";
connectAttr "R_FK_Hip_Ctrl_Grp.ro" "R_FK_Hip_Ctrl_Grp_parentConstraint1.cro";
connectAttr "R_FK_Hip_Ctrl_Grp.pim" "R_FK_Hip_Ctrl_Grp_parentConstraint1.cpim";
connectAttr "R_FK_Hip_Ctrl_Grp.rp" "R_FK_Hip_Ctrl_Grp_parentConstraint1.crp";
connectAttr "R_FK_Hip_Ctrl_Grp.rpt" "R_FK_Hip_Ctrl_Grp_parentConstraint1.crt";
connectAttr "Hip_Ctrl.t" "R_FK_Hip_Ctrl_Grp_parentConstraint1.tg[0].tt";
connectAttr "Hip_Ctrl.rp" "R_FK_Hip_Ctrl_Grp_parentConstraint1.tg[0].trp";
connectAttr "Hip_Ctrl.rpt" "R_FK_Hip_Ctrl_Grp_parentConstraint1.tg[0].trt";
connectAttr "Hip_Ctrl.r" "R_FK_Hip_Ctrl_Grp_parentConstraint1.tg[0].tr";
connectAttr "Hip_Ctrl.ro" "R_FK_Hip_Ctrl_Grp_parentConstraint1.tg[0].tro";
connectAttr "Hip_Ctrl.s" "R_FK_Hip_Ctrl_Grp_parentConstraint1.tg[0].ts";
connectAttr "Hip_Ctrl.pm" "R_FK_Hip_Ctrl_Grp_parentConstraint1.tg[0].tpm";
connectAttr "R_FK_Hip_Ctrl_Grp_parentConstraint1.w0" "R_FK_Hip_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "R_FK_Hip_Ctrl.FollowTranslate" "R_FK_Hip_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "R_FK_Hip_Ctrl_Grp.ro" "R_FK_Hip_Ctrl_Grp_parentConstraint2.cro";
connectAttr "R_FK_Hip_Ctrl_Grp.pim" "R_FK_Hip_Ctrl_Grp_parentConstraint2.cpim";
connectAttr "R_FK_Hip_Ctrl_Grp.rp" "R_FK_Hip_Ctrl_Grp_parentConstraint2.crp";
connectAttr "R_FK_Hip_Ctrl_Grp.rpt" "R_FK_Hip_Ctrl_Grp_parentConstraint2.crt";
connectAttr "Hip_Ctrl.t" "R_FK_Hip_Ctrl_Grp_parentConstraint2.tg[0].tt";
connectAttr "Hip_Ctrl.rp" "R_FK_Hip_Ctrl_Grp_parentConstraint2.tg[0].trp";
connectAttr "Hip_Ctrl.rpt" "R_FK_Hip_Ctrl_Grp_parentConstraint2.tg[0].trt";
connectAttr "Hip_Ctrl.r" "R_FK_Hip_Ctrl_Grp_parentConstraint2.tg[0].tr";
connectAttr "Hip_Ctrl.ro" "R_FK_Hip_Ctrl_Grp_parentConstraint2.tg[0].tro";
connectAttr "Hip_Ctrl.s" "R_FK_Hip_Ctrl_Grp_parentConstraint2.tg[0].ts";
connectAttr "Hip_Ctrl.pm" "R_FK_Hip_Ctrl_Grp_parentConstraint2.tg[0].tpm";
connectAttr "R_FK_Hip_Ctrl_Grp_parentConstraint2.w0" "R_FK_Hip_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "R_FK_Hip_Ctrl.FollowRotate" "R_FK_Hip_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "R_FK_Hip_Ctrl_Grp.pim" "R_FK_Hip_Ctrl_Grp_scaleConstraint1.cpim";
connectAttr "Hip_Ctrl.s" "R_FK_Hip_Ctrl_Grp_scaleConstraint1.tg[0].ts";
connectAttr "Hip_Ctrl.pm" "R_FK_Hip_Ctrl_Grp_scaleConstraint1.tg[0].tpm";
connectAttr "R_FK_Hip_Ctrl_Grp_scaleConstraint1.w0" "R_FK_Hip_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_FK_Leg_01_Ctrl_Grp_parentConstraint1.ctx" "R_FK_Leg_01_Ctrl_Grp.tx"
		;
connectAttr "R_FK_Leg_01_Ctrl_Grp_parentConstraint1.cty" "R_FK_Leg_01_Ctrl_Grp.ty"
		;
connectAttr "R_FK_Leg_01_Ctrl_Grp_parentConstraint1.ctz" "R_FK_Leg_01_Ctrl_Grp.tz"
		;
connectAttr "R_FK_Leg_01_Ctrl_Grp_parentConstraint2.crx" "R_FK_Leg_01_Ctrl_Grp.rx"
		;
connectAttr "R_FK_Leg_01_Ctrl_Grp_parentConstraint2.cry" "R_FK_Leg_01_Ctrl_Grp.ry"
		;
connectAttr "R_FK_Leg_01_Ctrl_Grp_parentConstraint2.crz" "R_FK_Leg_01_Ctrl_Grp.rz"
		;
connectAttr "R_FK_Leg_01_Ctrl_Grp_scaleConstraint1.csx" "R_FK_Leg_01_Ctrl_Grp.sx"
		;
connectAttr "R_FK_Leg_01_Ctrl_Grp_scaleConstraint1.csy" "R_FK_Leg_01_Ctrl_Grp.sy"
		;
connectAttr "R_FK_Leg_01_Ctrl_Grp_scaleConstraint1.csz" "R_FK_Leg_01_Ctrl_Grp.sz"
		;
connectAttr "R_FK_Leg_01_Ctrl_Grp.ro" "R_FK_Leg_01_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "R_FK_Leg_01_Ctrl_Grp.pim" "R_FK_Leg_01_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "R_FK_Leg_01_Ctrl_Grp.rp" "R_FK_Leg_01_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "R_FK_Leg_01_Ctrl_Grp.rpt" "R_FK_Leg_01_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "R_FK_Hip_Ctrl.t" "R_FK_Leg_01_Ctrl_Grp_parentConstraint1.tg[0].tt";
connectAttr "R_FK_Hip_Ctrl.rp" "R_FK_Leg_01_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "R_FK_Hip_Ctrl.rpt" "R_FK_Leg_01_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "R_FK_Hip_Ctrl.r" "R_FK_Leg_01_Ctrl_Grp_parentConstraint1.tg[0].tr";
connectAttr "R_FK_Hip_Ctrl.ro" "R_FK_Leg_01_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "R_FK_Hip_Ctrl.s" "R_FK_Leg_01_Ctrl_Grp_parentConstraint1.tg[0].ts";
connectAttr "R_FK_Hip_Ctrl.pm" "R_FK_Leg_01_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_FK_Leg_01_Ctrl_Grp_parentConstraint1.w0" "R_FK_Leg_01_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "R_FK_Leg_01_Ctrl.FollowTranslate" "R_FK_Leg_01_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "R_FK_Leg_01_Ctrl_Grp.ro" "R_FK_Leg_01_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "R_FK_Leg_01_Ctrl_Grp.pim" "R_FK_Leg_01_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "R_FK_Leg_01_Ctrl_Grp.rp" "R_FK_Leg_01_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "R_FK_Leg_01_Ctrl_Grp.rpt" "R_FK_Leg_01_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "R_FK_Hip_Ctrl.t" "R_FK_Leg_01_Ctrl_Grp_parentConstraint2.tg[0].tt";
connectAttr "R_FK_Hip_Ctrl.rp" "R_FK_Leg_01_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "R_FK_Hip_Ctrl.rpt" "R_FK_Leg_01_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "R_FK_Hip_Ctrl.r" "R_FK_Leg_01_Ctrl_Grp_parentConstraint2.tg[0].tr";
connectAttr "R_FK_Hip_Ctrl.ro" "R_FK_Leg_01_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "R_FK_Hip_Ctrl.s" "R_FK_Leg_01_Ctrl_Grp_parentConstraint2.tg[0].ts";
connectAttr "R_FK_Hip_Ctrl.pm" "R_FK_Leg_01_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "R_FK_Leg_01_Ctrl_Grp_parentConstraint2.w0" "R_FK_Leg_01_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "R_FK_Leg_01_Ctrl.FollowRotate" "R_FK_Leg_01_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "R_FK_Leg_01_Ctrl_Grp.pim" "R_FK_Leg_01_Ctrl_Grp_scaleConstraint1.cpim"
		;
connectAttr "R_FK_Hip_Ctrl.s" "R_FK_Leg_01_Ctrl_Grp_scaleConstraint1.tg[0].ts";
connectAttr "R_FK_Hip_Ctrl.pm" "R_FK_Leg_01_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "R_FK_Leg_01_Ctrl_Grp_scaleConstraint1.w0" "R_FK_Leg_01_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_FK_Leg_02_Ctrl_Grp_parentConstraint1.ctx" "R_FK_Leg_02_Ctrl_Grp.tx"
		;
connectAttr "R_FK_Leg_02_Ctrl_Grp_parentConstraint1.cty" "R_FK_Leg_02_Ctrl_Grp.ty"
		;
connectAttr "R_FK_Leg_02_Ctrl_Grp_parentConstraint1.ctz" "R_FK_Leg_02_Ctrl_Grp.tz"
		;
connectAttr "R_FK_Leg_02_Ctrl_Grp_parentConstraint2.crx" "R_FK_Leg_02_Ctrl_Grp.rx"
		;
connectAttr "R_FK_Leg_02_Ctrl_Grp_parentConstraint2.cry" "R_FK_Leg_02_Ctrl_Grp.ry"
		;
connectAttr "R_FK_Leg_02_Ctrl_Grp_parentConstraint2.crz" "R_FK_Leg_02_Ctrl_Grp.rz"
		;
connectAttr "R_FK_Leg_02_Ctrl_Grp_scaleConstraint1.csx" "R_FK_Leg_02_Ctrl_Grp.sx"
		;
connectAttr "R_FK_Leg_02_Ctrl_Grp_scaleConstraint1.csy" "R_FK_Leg_02_Ctrl_Grp.sy"
		;
connectAttr "R_FK_Leg_02_Ctrl_Grp_scaleConstraint1.csz" "R_FK_Leg_02_Ctrl_Grp.sz"
		;
connectAttr "R_FK_Leg_02_Ctrl_Grp.ro" "R_FK_Leg_02_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "R_FK_Leg_02_Ctrl_Grp.pim" "R_FK_Leg_02_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "R_FK_Leg_02_Ctrl_Grp.rp" "R_FK_Leg_02_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "R_FK_Leg_02_Ctrl_Grp.rpt" "R_FK_Leg_02_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "R_FK_Leg_01_Ctrl.t" "R_FK_Leg_02_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "R_FK_Leg_01_Ctrl.rp" "R_FK_Leg_02_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "R_FK_Leg_01_Ctrl.rpt" "R_FK_Leg_02_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "R_FK_Leg_01_Ctrl.r" "R_FK_Leg_02_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "R_FK_Leg_01_Ctrl.ro" "R_FK_Leg_02_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "R_FK_Leg_01_Ctrl.s" "R_FK_Leg_02_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "R_FK_Leg_01_Ctrl.pm" "R_FK_Leg_02_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_FK_Leg_02_Ctrl_Grp_parentConstraint1.w0" "R_FK_Leg_02_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "R_FK_Leg_02_Ctrl.FollowTranslate" "R_FK_Leg_02_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "R_FK_Leg_02_Ctrl_Grp.ro" "R_FK_Leg_02_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "R_FK_Leg_02_Ctrl_Grp.pim" "R_FK_Leg_02_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "R_FK_Leg_02_Ctrl_Grp.rp" "R_FK_Leg_02_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "R_FK_Leg_02_Ctrl_Grp.rpt" "R_FK_Leg_02_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "R_FK_Leg_01_Ctrl.t" "R_FK_Leg_02_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "R_FK_Leg_01_Ctrl.rp" "R_FK_Leg_02_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "R_FK_Leg_01_Ctrl.rpt" "R_FK_Leg_02_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "R_FK_Leg_01_Ctrl.r" "R_FK_Leg_02_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "R_FK_Leg_01_Ctrl.ro" "R_FK_Leg_02_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "R_FK_Leg_01_Ctrl.s" "R_FK_Leg_02_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "R_FK_Leg_01_Ctrl.pm" "R_FK_Leg_02_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "R_FK_Leg_02_Ctrl_Grp_parentConstraint2.w0" "R_FK_Leg_02_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "R_FK_Leg_02_Ctrl.FollowRotate" "R_FK_Leg_02_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "R_FK_Leg_02_Ctrl_Grp.pim" "R_FK_Leg_02_Ctrl_Grp_scaleConstraint1.cpim"
		;
connectAttr "R_FK_Leg_01_Ctrl.s" "R_FK_Leg_02_Ctrl_Grp_scaleConstraint1.tg[0].ts"
		;
connectAttr "R_FK_Leg_01_Ctrl.pm" "R_FK_Leg_02_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "R_FK_Leg_02_Ctrl_Grp_scaleConstraint1.w0" "R_FK_Leg_02_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_FK_Leg_03_Ctrl_Grp_parentConstraint1.ctx" "R_FK_Leg_03_Ctrl_Grp.tx"
		;
connectAttr "R_FK_Leg_03_Ctrl_Grp_parentConstraint1.cty" "R_FK_Leg_03_Ctrl_Grp.ty"
		;
connectAttr "R_FK_Leg_03_Ctrl_Grp_parentConstraint1.ctz" "R_FK_Leg_03_Ctrl_Grp.tz"
		;
connectAttr "R_FK_Leg_03_Ctrl_Grp_parentConstraint2.crx" "R_FK_Leg_03_Ctrl_Grp.rx"
		;
connectAttr "R_FK_Leg_03_Ctrl_Grp_parentConstraint2.cry" "R_FK_Leg_03_Ctrl_Grp.ry"
		;
connectAttr "R_FK_Leg_03_Ctrl_Grp_parentConstraint2.crz" "R_FK_Leg_03_Ctrl_Grp.rz"
		;
connectAttr "R_FK_Leg_03_Ctrl_Grp_scaleConstraint1.csx" "R_FK_Leg_03_Ctrl_Grp.sx"
		;
connectAttr "R_FK_Leg_03_Ctrl_Grp_scaleConstraint1.csy" "R_FK_Leg_03_Ctrl_Grp.sy"
		;
connectAttr "R_FK_Leg_03_Ctrl_Grp_scaleConstraint1.csz" "R_FK_Leg_03_Ctrl_Grp.sz"
		;
connectAttr "R_FK_Leg_03_Ctrl_Grp.ro" "R_FK_Leg_03_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "R_FK_Leg_03_Ctrl_Grp.pim" "R_FK_Leg_03_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "R_FK_Leg_03_Ctrl_Grp.rp" "R_FK_Leg_03_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "R_FK_Leg_03_Ctrl_Grp.rpt" "R_FK_Leg_03_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "R_FK_Leg_02_Ctrl.t" "R_FK_Leg_03_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "R_FK_Leg_02_Ctrl.rp" "R_FK_Leg_03_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "R_FK_Leg_02_Ctrl.rpt" "R_FK_Leg_03_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "R_FK_Leg_02_Ctrl.r" "R_FK_Leg_03_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "R_FK_Leg_02_Ctrl.ro" "R_FK_Leg_03_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "R_FK_Leg_02_Ctrl.s" "R_FK_Leg_03_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "R_FK_Leg_02_Ctrl.pm" "R_FK_Leg_03_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_FK_Leg_03_Ctrl_Grp_parentConstraint1.w0" "R_FK_Leg_03_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "R_FK_Leg_03_Ctrl.FollowTranslate" "R_FK_Leg_03_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "R_FK_Leg_03_Ctrl_Grp.ro" "R_FK_Leg_03_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "R_FK_Leg_03_Ctrl_Grp.pim" "R_FK_Leg_03_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "R_FK_Leg_03_Ctrl_Grp.rp" "R_FK_Leg_03_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "R_FK_Leg_03_Ctrl_Grp.rpt" "R_FK_Leg_03_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "R_FK_Leg_02_Ctrl.t" "R_FK_Leg_03_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "R_FK_Leg_02_Ctrl.rp" "R_FK_Leg_03_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "R_FK_Leg_02_Ctrl.rpt" "R_FK_Leg_03_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "R_FK_Leg_02_Ctrl.r" "R_FK_Leg_03_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "R_FK_Leg_02_Ctrl.ro" "R_FK_Leg_03_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "R_FK_Leg_02_Ctrl.s" "R_FK_Leg_03_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "R_FK_Leg_02_Ctrl.pm" "R_FK_Leg_03_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "R_FK_Leg_03_Ctrl_Grp_parentConstraint2.w0" "R_FK_Leg_03_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "R_FK_Leg_03_Ctrl.FollowRotate" "R_FK_Leg_03_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "R_FK_Leg_03_Ctrl_Grp.pim" "R_FK_Leg_03_Ctrl_Grp_scaleConstraint1.cpim"
		;
connectAttr "R_FK_Leg_02_Ctrl.s" "R_FK_Leg_03_Ctrl_Grp_scaleConstraint1.tg[0].ts"
		;
connectAttr "R_FK_Leg_02_Ctrl.pm" "R_FK_Leg_03_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "R_FK_Leg_03_Ctrl_Grp_scaleConstraint1.w0" "R_FK_Leg_03_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "group2_scaleX.o" "R_FK_Foot.sx";
connectAttr "group2_scaleY.o" "R_FK_Foot.sy";
connectAttr "group2_scaleZ.o" "R_FK_Foot.sz";
connectAttr "Transform_Ctrl.R_Leg_IKFK" "R_FK_Foot.v";
connectAttr "R_FK_Ankle_Ctrl_Grp_parentConstraint1.ctx" "R_FK_Ankle_Ctrl_Grp.tx"
		;
connectAttr "R_FK_Ankle_Ctrl_Grp_parentConstraint1.cty" "R_FK_Ankle_Ctrl_Grp.ty"
		;
connectAttr "R_FK_Ankle_Ctrl_Grp_parentConstraint1.ctz" "R_FK_Ankle_Ctrl_Grp.tz"
		;
connectAttr "R_FK_Ankle_Ctrl_Grp_parentConstraint2.crx" "R_FK_Ankle_Ctrl_Grp.rx"
		;
connectAttr "R_FK_Ankle_Ctrl_Grp_parentConstraint2.cry" "R_FK_Ankle_Ctrl_Grp.ry"
		;
connectAttr "R_FK_Ankle_Ctrl_Grp_parentConstraint2.crz" "R_FK_Ankle_Ctrl_Grp.rz"
		;
connectAttr "R_FK_Ankle_Ctrl_Grp_scaleConstraint1.csx" "R_FK_Ankle_Ctrl_Grp.sx";
connectAttr "R_FK_Ankle_Ctrl_Grp_scaleConstraint1.csy" "R_FK_Ankle_Ctrl_Grp.sy";
connectAttr "R_FK_Ankle_Ctrl_Grp_scaleConstraint1.csz" "R_FK_Ankle_Ctrl_Grp.sz";
connectAttr "R_FK_Ankle_Ctrl_Grp.ro" "R_FK_Ankle_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "R_FK_Ankle_Ctrl_Grp.pim" "R_FK_Ankle_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "R_FK_Ankle_Ctrl_Grp.rp" "R_FK_Ankle_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "R_FK_Ankle_Ctrl_Grp.rpt" "R_FK_Ankle_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "R_FK_Leg_03_Ctrl.t" "R_FK_Ankle_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "R_FK_Leg_03_Ctrl.rp" "R_FK_Ankle_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "R_FK_Leg_03_Ctrl.rpt" "R_FK_Ankle_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "R_FK_Leg_03_Ctrl.r" "R_FK_Ankle_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "R_FK_Leg_03_Ctrl.ro" "R_FK_Ankle_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "R_FK_Leg_03_Ctrl.s" "R_FK_Ankle_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "R_FK_Leg_03_Ctrl.pm" "R_FK_Ankle_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_FK_Ankle_Ctrl_Grp_parentConstraint1.w0" "R_FK_Ankle_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "R_FK_Ankle_Ctrl.FollowTranslate" "R_FK_Ankle_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "R_FK_Ankle_Ctrl_Grp.ro" "R_FK_Ankle_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "R_FK_Ankle_Ctrl_Grp.pim" "R_FK_Ankle_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "R_FK_Ankle_Ctrl_Grp.rp" "R_FK_Ankle_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "R_FK_Ankle_Ctrl_Grp.rpt" "R_FK_Ankle_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "R_FK_Leg_03_Ctrl.t" "R_FK_Ankle_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "R_FK_Leg_03_Ctrl.rp" "R_FK_Ankle_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "R_FK_Leg_03_Ctrl.rpt" "R_FK_Ankle_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "R_FK_Leg_03_Ctrl.r" "R_FK_Ankle_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "R_FK_Leg_03_Ctrl.ro" "R_FK_Ankle_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "R_FK_Leg_03_Ctrl.s" "R_FK_Ankle_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "R_FK_Leg_03_Ctrl.pm" "R_FK_Ankle_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "R_FK_Ankle_Ctrl_Grp_parentConstraint2.w0" "R_FK_Ankle_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "R_FK_Ankle_Ctrl.FollowRotate" "R_FK_Ankle_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "R_FK_Ankle_Ctrl_Grp.pim" "R_FK_Ankle_Ctrl_Grp_scaleConstraint1.cpim"
		;
connectAttr "R_FK_Leg_03_Ctrl.s" "R_FK_Ankle_Ctrl_Grp_scaleConstraint1.tg[0].ts"
		;
connectAttr "R_FK_Leg_03_Ctrl.pm" "R_FK_Ankle_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "R_FK_Ankle_Ctrl_Grp_scaleConstraint1.w0" "R_FK_Ankle_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_FK_Toe_02_Ctrl_Grp_parentConstraint1.ctx" "R_FK_Toe_02_Ctrl_Grp.tx"
		;
connectAttr "R_FK_Toe_02_Ctrl_Grp_parentConstraint1.cty" "R_FK_Toe_02_Ctrl_Grp.ty"
		;
connectAttr "R_FK_Toe_02_Ctrl_Grp_parentConstraint1.ctz" "R_FK_Toe_02_Ctrl_Grp.tz"
		;
connectAttr "R_FK_Toe_02_Ctrl_Grp_parentConstraint2.crx" "R_FK_Toe_02_Ctrl_Grp.rx"
		;
connectAttr "R_FK_Toe_02_Ctrl_Grp_parentConstraint2.cry" "R_FK_Toe_02_Ctrl_Grp.ry"
		;
connectAttr "R_FK_Toe_02_Ctrl_Grp_parentConstraint2.crz" "R_FK_Toe_02_Ctrl_Grp.rz"
		;
connectAttr "R_FK_Toe_02_Ctrl_Grp_scaleConstraint1.csx" "R_FK_Toe_02_Ctrl_Grp.sx"
		;
connectAttr "R_FK_Toe_02_Ctrl_Grp_scaleConstraint1.csy" "R_FK_Toe_02_Ctrl_Grp.sy"
		;
connectAttr "R_FK_Toe_02_Ctrl_Grp_scaleConstraint1.csz" "R_FK_Toe_02_Ctrl_Grp.sz"
		;
connectAttr "R_FK_Toe_02_Ctrl_Grp.ro" "R_FK_Toe_02_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "R_FK_Toe_02_Ctrl_Grp.pim" "R_FK_Toe_02_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "R_FK_Toe_02_Ctrl_Grp.rp" "R_FK_Toe_02_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "R_FK_Toe_02_Ctrl_Grp.rpt" "R_FK_Toe_02_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "R_FK_Ankle_Ctrl.t" "R_FK_Toe_02_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "R_FK_Ankle_Ctrl.rp" "R_FK_Toe_02_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "R_FK_Ankle_Ctrl.rpt" "R_FK_Toe_02_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "R_FK_Ankle_Ctrl.r" "R_FK_Toe_02_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "R_FK_Ankle_Ctrl.ro" "R_FK_Toe_02_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "R_FK_Ankle_Ctrl.s" "R_FK_Toe_02_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "R_FK_Ankle_Ctrl.pm" "R_FK_Toe_02_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_FK_Toe_02_Ctrl_Grp_parentConstraint1.w0" "R_FK_Toe_02_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "R_FK_Toe_02_Ctrl.FollowTranslate" "R_FK_Toe_02_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "R_FK_Toe_02_Ctrl_Grp.ro" "R_FK_Toe_02_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "R_FK_Toe_02_Ctrl_Grp.pim" "R_FK_Toe_02_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "R_FK_Toe_02_Ctrl_Grp.rp" "R_FK_Toe_02_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "R_FK_Toe_02_Ctrl_Grp.rpt" "R_FK_Toe_02_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "R_FK_Ankle_Ctrl.t" "R_FK_Toe_02_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "R_FK_Ankle_Ctrl.rp" "R_FK_Toe_02_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "R_FK_Ankle_Ctrl.rpt" "R_FK_Toe_02_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "R_FK_Ankle_Ctrl.r" "R_FK_Toe_02_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "R_FK_Ankle_Ctrl.ro" "R_FK_Toe_02_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "R_FK_Ankle_Ctrl.s" "R_FK_Toe_02_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "R_FK_Ankle_Ctrl.pm" "R_FK_Toe_02_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "R_FK_Toe_02_Ctrl_Grp_parentConstraint2.w0" "R_FK_Toe_02_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "R_FK_Toe_02_Ctrl.FollowRotate" "R_FK_Toe_02_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "R_FK_Toe_02_Ctrl_Grp.pim" "R_FK_Toe_02_Ctrl_Grp_scaleConstraint1.cpim"
		;
connectAttr "R_FK_Ankle_Ctrl.s" "R_FK_Toe_02_Ctrl_Grp_scaleConstraint1.tg[0].ts"
		;
connectAttr "R_FK_Ankle_Ctrl.pm" "R_FK_Toe_02_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "R_FK_Toe_02_Ctrl_Grp_scaleConstraint1.w0" "R_FK_Toe_02_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_FK_Toe_01_Ctrl_Grp_parentConstraint1.ctx" "R_FK_Toe_01_Ctrl_Grp.tx"
		;
connectAttr "R_FK_Toe_01_Ctrl_Grp_parentConstraint1.cty" "R_FK_Toe_01_Ctrl_Grp.ty"
		;
connectAttr "R_FK_Toe_01_Ctrl_Grp_parentConstraint1.ctz" "R_FK_Toe_01_Ctrl_Grp.tz"
		;
connectAttr "R_FK_Toe_01_Ctrl_Grp_parentConstraint2.crx" "R_FK_Toe_01_Ctrl_Grp.rx"
		;
connectAttr "R_FK_Toe_01_Ctrl_Grp_parentConstraint2.cry" "R_FK_Toe_01_Ctrl_Grp.ry"
		;
connectAttr "R_FK_Toe_01_Ctrl_Grp_parentConstraint2.crz" "R_FK_Toe_01_Ctrl_Grp.rz"
		;
connectAttr "R_FK_Toe_01_Ctrl_Grp_scaleConstraint1.csx" "R_FK_Toe_01_Ctrl_Grp.sx"
		;
connectAttr "R_FK_Toe_01_Ctrl_Grp_scaleConstraint1.csy" "R_FK_Toe_01_Ctrl_Grp.sy"
		;
connectAttr "R_FK_Toe_01_Ctrl_Grp_scaleConstraint1.csz" "R_FK_Toe_01_Ctrl_Grp.sz"
		;
connectAttr "R_FK_Toe_01_Ctrl_Grp.ro" "R_FK_Toe_01_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "R_FK_Toe_01_Ctrl_Grp.pim" "R_FK_Toe_01_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "R_FK_Toe_01_Ctrl_Grp.rp" "R_FK_Toe_01_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "R_FK_Toe_01_Ctrl_Grp.rpt" "R_FK_Toe_01_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "R_FK_Ankle_Ctrl.t" "R_FK_Toe_01_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "R_FK_Ankle_Ctrl.rp" "R_FK_Toe_01_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "R_FK_Ankle_Ctrl.rpt" "R_FK_Toe_01_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "R_FK_Ankle_Ctrl.r" "R_FK_Toe_01_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "R_FK_Ankle_Ctrl.ro" "R_FK_Toe_01_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "R_FK_Ankle_Ctrl.s" "R_FK_Toe_01_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "R_FK_Ankle_Ctrl.pm" "R_FK_Toe_01_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_FK_Toe_01_Ctrl_Grp_parentConstraint1.w0" "R_FK_Toe_01_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "R_FK_Toe_01_Ctrl.FollowTranslate" "R_FK_Toe_01_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "R_FK_Toe_01_Ctrl_Grp.ro" "R_FK_Toe_01_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "R_FK_Toe_01_Ctrl_Grp.pim" "R_FK_Toe_01_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "R_FK_Toe_01_Ctrl_Grp.rp" "R_FK_Toe_01_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "R_FK_Toe_01_Ctrl_Grp.rpt" "R_FK_Toe_01_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "R_FK_Ankle_Ctrl.t" "R_FK_Toe_01_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "R_FK_Ankle_Ctrl.rp" "R_FK_Toe_01_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "R_FK_Ankle_Ctrl.rpt" "R_FK_Toe_01_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "R_FK_Ankle_Ctrl.r" "R_FK_Toe_01_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "R_FK_Ankle_Ctrl.ro" "R_FK_Toe_01_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "R_FK_Ankle_Ctrl.s" "R_FK_Toe_01_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "R_FK_Ankle_Ctrl.pm" "R_FK_Toe_01_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "R_FK_Toe_01_Ctrl_Grp_parentConstraint2.w0" "R_FK_Toe_01_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "R_FK_Toe_01_Ctrl.FollowRotate" "R_FK_Toe_01_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "R_FK_Toe_01_Ctrl_Grp.pim" "R_FK_Toe_01_Ctrl_Grp_scaleConstraint1.cpim"
		;
connectAttr "R_FK_Ankle_Ctrl.s" "R_FK_Toe_01_Ctrl_Grp_scaleConstraint1.tg[0].ts"
		;
connectAttr "R_FK_Ankle_Ctrl.pm" "R_FK_Toe_01_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "R_FK_Toe_01_Ctrl_Grp_scaleConstraint1.w0" "R_FK_Toe_01_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_FK_Toe_03_Ctrl_Grp_parentConstraint1.ctx" "R_FK_Toe_03_Ctrl_Grp.tx"
		;
connectAttr "R_FK_Toe_03_Ctrl_Grp_parentConstraint1.cty" "R_FK_Toe_03_Ctrl_Grp.ty"
		;
connectAttr "R_FK_Toe_03_Ctrl_Grp_parentConstraint1.ctz" "R_FK_Toe_03_Ctrl_Grp.tz"
		;
connectAttr "R_FK_Toe_03_Ctrl_Grp_parentConstraint2.crx" "R_FK_Toe_03_Ctrl_Grp.rx"
		;
connectAttr "R_FK_Toe_03_Ctrl_Grp_parentConstraint2.cry" "R_FK_Toe_03_Ctrl_Grp.ry"
		;
connectAttr "R_FK_Toe_03_Ctrl_Grp_parentConstraint2.crz" "R_FK_Toe_03_Ctrl_Grp.rz"
		;
connectAttr "R_FK_Toe_03_Ctrl_Grp_scaleConstraint1.csx" "R_FK_Toe_03_Ctrl_Grp.sx"
		;
connectAttr "R_FK_Toe_03_Ctrl_Grp_scaleConstraint1.csy" "R_FK_Toe_03_Ctrl_Grp.sy"
		;
connectAttr "R_FK_Toe_03_Ctrl_Grp_scaleConstraint1.csz" "R_FK_Toe_03_Ctrl_Grp.sz"
		;
connectAttr "R_FK_Toe_03_Ctrl_Grp.ro" "R_FK_Toe_03_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "R_FK_Toe_03_Ctrl_Grp.pim" "R_FK_Toe_03_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "R_FK_Toe_03_Ctrl_Grp.rp" "R_FK_Toe_03_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "R_FK_Toe_03_Ctrl_Grp.rpt" "R_FK_Toe_03_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "R_FK_Ankle_Ctrl.t" "R_FK_Toe_03_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "R_FK_Ankle_Ctrl.rp" "R_FK_Toe_03_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "R_FK_Ankle_Ctrl.rpt" "R_FK_Toe_03_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "R_FK_Ankle_Ctrl.r" "R_FK_Toe_03_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "R_FK_Ankle_Ctrl.ro" "R_FK_Toe_03_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "R_FK_Ankle_Ctrl.s" "R_FK_Toe_03_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "R_FK_Ankle_Ctrl.pm" "R_FK_Toe_03_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_FK_Toe_03_Ctrl_Grp_parentConstraint1.w0" "R_FK_Toe_03_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "R_FK_Toe_03_Ctrl.FollowTranslate" "R_FK_Toe_03_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "R_FK_Toe_03_Ctrl_Grp.ro" "R_FK_Toe_03_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "R_FK_Toe_03_Ctrl_Grp.pim" "R_FK_Toe_03_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "R_FK_Toe_03_Ctrl_Grp.rp" "R_FK_Toe_03_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "R_FK_Toe_03_Ctrl_Grp.rpt" "R_FK_Toe_03_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "R_FK_Ankle_Ctrl.t" "R_FK_Toe_03_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "R_FK_Ankle_Ctrl.rp" "R_FK_Toe_03_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "R_FK_Ankle_Ctrl.rpt" "R_FK_Toe_03_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "R_FK_Ankle_Ctrl.r" "R_FK_Toe_03_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "R_FK_Ankle_Ctrl.ro" "R_FK_Toe_03_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "R_FK_Ankle_Ctrl.s" "R_FK_Toe_03_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "R_FK_Ankle_Ctrl.pm" "R_FK_Toe_03_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "R_FK_Toe_03_Ctrl_Grp_parentConstraint2.w0" "R_FK_Toe_03_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "R_FK_Toe_03_Ctrl.FollowRotate" "R_FK_Toe_03_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "R_FK_Toe_03_Ctrl_Grp.pim" "R_FK_Toe_03_Ctrl_Grp_scaleConstraint1.cpim"
		;
connectAttr "R_FK_Ankle_Ctrl.s" "R_FK_Toe_03_Ctrl_Grp_scaleConstraint1.tg[0].ts"
		;
connectAttr "R_FK_Ankle_Ctrl.pm" "R_FK_Toe_03_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "R_FK_Toe_03_Ctrl_Grp_scaleConstraint1.w0" "R_FK_Toe_03_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "Transform_Ctrl.L_Leg_IKFK" "L_FK_Leg.v";
connectAttr "L_FK_Hip_Ctrl_Grp_parentConstraint1.ctx" "L_FK_Hip_Ctrl_Grp.tx";
connectAttr "L_FK_Hip_Ctrl_Grp_parentConstraint1.cty" "L_FK_Hip_Ctrl_Grp.ty";
connectAttr "L_FK_Hip_Ctrl_Grp_parentConstraint1.ctz" "L_FK_Hip_Ctrl_Grp.tz";
connectAttr "L_FK_Hip_Ctrl_Grp_parentConstraint2.crx" "L_FK_Hip_Ctrl_Grp.rx";
connectAttr "L_FK_Hip_Ctrl_Grp_parentConstraint2.cry" "L_FK_Hip_Ctrl_Grp.ry";
connectAttr "L_FK_Hip_Ctrl_Grp_parentConstraint2.crz" "L_FK_Hip_Ctrl_Grp.rz";
connectAttr "L_FK_Hip_Ctrl_Grp_scaleConstraint1.csx" "L_FK_Hip_Ctrl_Grp.sx";
connectAttr "L_FK_Hip_Ctrl_Grp_scaleConstraint1.csy" "L_FK_Hip_Ctrl_Grp.sy";
connectAttr "L_FK_Hip_Ctrl_Grp_scaleConstraint1.csz" "L_FK_Hip_Ctrl_Grp.sz";
connectAttr "makeNurbCircle8.oc" "L_FK_Hip_CtrlShape.cr";
connectAttr "L_FK_Hip_Ctrl_Grp.ro" "L_FK_Hip_Ctrl_Grp_parentConstraint1.cro";
connectAttr "L_FK_Hip_Ctrl_Grp.pim" "L_FK_Hip_Ctrl_Grp_parentConstraint1.cpim";
connectAttr "L_FK_Hip_Ctrl_Grp.rp" "L_FK_Hip_Ctrl_Grp_parentConstraint1.crp";
connectAttr "L_FK_Hip_Ctrl_Grp.rpt" "L_FK_Hip_Ctrl_Grp_parentConstraint1.crt";
connectAttr "Hip_Ctrl.t" "L_FK_Hip_Ctrl_Grp_parentConstraint1.tg[0].tt";
connectAttr "Hip_Ctrl.rp" "L_FK_Hip_Ctrl_Grp_parentConstraint1.tg[0].trp";
connectAttr "Hip_Ctrl.rpt" "L_FK_Hip_Ctrl_Grp_parentConstraint1.tg[0].trt";
connectAttr "Hip_Ctrl.r" "L_FK_Hip_Ctrl_Grp_parentConstraint1.tg[0].tr";
connectAttr "Hip_Ctrl.ro" "L_FK_Hip_Ctrl_Grp_parentConstraint1.tg[0].tro";
connectAttr "Hip_Ctrl.s" "L_FK_Hip_Ctrl_Grp_parentConstraint1.tg[0].ts";
connectAttr "Hip_Ctrl.pm" "L_FK_Hip_Ctrl_Grp_parentConstraint1.tg[0].tpm";
connectAttr "L_FK_Hip_Ctrl_Grp_parentConstraint1.w0" "L_FK_Hip_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "L_FK_Hip_Ctrl.FollowTranslate" "L_FK_Hip_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "L_FK_Hip_Ctrl_Grp.ro" "L_FK_Hip_Ctrl_Grp_parentConstraint2.cro";
connectAttr "L_FK_Hip_Ctrl_Grp.pim" "L_FK_Hip_Ctrl_Grp_parentConstraint2.cpim";
connectAttr "L_FK_Hip_Ctrl_Grp.rp" "L_FK_Hip_Ctrl_Grp_parentConstraint2.crp";
connectAttr "L_FK_Hip_Ctrl_Grp.rpt" "L_FK_Hip_Ctrl_Grp_parentConstraint2.crt";
connectAttr "Hip_Ctrl.t" "L_FK_Hip_Ctrl_Grp_parentConstraint2.tg[0].tt";
connectAttr "Hip_Ctrl.rp" "L_FK_Hip_Ctrl_Grp_parentConstraint2.tg[0].trp";
connectAttr "Hip_Ctrl.rpt" "L_FK_Hip_Ctrl_Grp_parentConstraint2.tg[0].trt";
connectAttr "Hip_Ctrl.r" "L_FK_Hip_Ctrl_Grp_parentConstraint2.tg[0].tr";
connectAttr "Hip_Ctrl.ro" "L_FK_Hip_Ctrl_Grp_parentConstraint2.tg[0].tro";
connectAttr "Hip_Ctrl.s" "L_FK_Hip_Ctrl_Grp_parentConstraint2.tg[0].ts";
connectAttr "Hip_Ctrl.pm" "L_FK_Hip_Ctrl_Grp_parentConstraint2.tg[0].tpm";
connectAttr "L_FK_Hip_Ctrl_Grp_parentConstraint2.w0" "L_FK_Hip_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "L_FK_Hip_Ctrl.FollowRotate" "L_FK_Hip_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "L_FK_Hip_Ctrl_Grp.pim" "L_FK_Hip_Ctrl_Grp_scaleConstraint1.cpim";
connectAttr "Hip_Ctrl.s" "L_FK_Hip_Ctrl_Grp_scaleConstraint1.tg[0].ts";
connectAttr "Hip_Ctrl.pm" "L_FK_Hip_Ctrl_Grp_scaleConstraint1.tg[0].tpm";
connectAttr "L_FK_Hip_Ctrl_Grp_scaleConstraint1.w0" "L_FK_Hip_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_FK_Leg_01_Ctrl_Grp_parentConstraint1.ctx" "L_FK_Leg_01_Ctrl_Grp.tx"
		;
connectAttr "L_FK_Leg_01_Ctrl_Grp_parentConstraint1.cty" "L_FK_Leg_01_Ctrl_Grp.ty"
		;
connectAttr "L_FK_Leg_01_Ctrl_Grp_parentConstraint1.ctz" "L_FK_Leg_01_Ctrl_Grp.tz"
		;
connectAttr "L_FK_Leg_01_Ctrl_Grp_parentConstraint2.crx" "L_FK_Leg_01_Ctrl_Grp.rx"
		;
connectAttr "L_FK_Leg_01_Ctrl_Grp_parentConstraint2.cry" "L_FK_Leg_01_Ctrl_Grp.ry"
		;
connectAttr "L_FK_Leg_01_Ctrl_Grp_parentConstraint2.crz" "L_FK_Leg_01_Ctrl_Grp.rz"
		;
connectAttr "L_FK_Leg_01_Ctrl_Grp_scaleConstraint1.csx" "L_FK_Leg_01_Ctrl_Grp.sx"
		;
connectAttr "L_FK_Leg_01_Ctrl_Grp_scaleConstraint1.csy" "L_FK_Leg_01_Ctrl_Grp.sy"
		;
connectAttr "L_FK_Leg_01_Ctrl_Grp_scaleConstraint1.csz" "L_FK_Leg_01_Ctrl_Grp.sz"
		;
connectAttr "makeNurbCircle9.oc" "L_FK_Leg_01_CtrlShape.cr";
connectAttr "L_FK_Leg_01_Ctrl_Grp.ro" "L_FK_Leg_01_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "L_FK_Leg_01_Ctrl_Grp.pim" "L_FK_Leg_01_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "L_FK_Leg_01_Ctrl_Grp.rp" "L_FK_Leg_01_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "L_FK_Leg_01_Ctrl_Grp.rpt" "L_FK_Leg_01_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "L_FK_Hip_Ctrl.t" "L_FK_Leg_01_Ctrl_Grp_parentConstraint1.tg[0].tt";
connectAttr "L_FK_Hip_Ctrl.rp" "L_FK_Leg_01_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "L_FK_Hip_Ctrl.rpt" "L_FK_Leg_01_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "L_FK_Hip_Ctrl.r" "L_FK_Leg_01_Ctrl_Grp_parentConstraint1.tg[0].tr";
connectAttr "L_FK_Hip_Ctrl.ro" "L_FK_Leg_01_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "L_FK_Hip_Ctrl.s" "L_FK_Leg_01_Ctrl_Grp_parentConstraint1.tg[0].ts";
connectAttr "L_FK_Hip_Ctrl.pm" "L_FK_Leg_01_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_FK_Leg_01_Ctrl_Grp_parentConstraint1.w0" "L_FK_Leg_01_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "L_FK_Leg_01_Ctrl.FollowTranslate" "L_FK_Leg_01_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "L_FK_Leg_01_Ctrl_Grp.ro" "L_FK_Leg_01_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "L_FK_Leg_01_Ctrl_Grp.pim" "L_FK_Leg_01_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "L_FK_Leg_01_Ctrl_Grp.rp" "L_FK_Leg_01_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "L_FK_Leg_01_Ctrl_Grp.rpt" "L_FK_Leg_01_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "L_FK_Hip_Ctrl.t" "L_FK_Leg_01_Ctrl_Grp_parentConstraint2.tg[0].tt";
connectAttr "L_FK_Hip_Ctrl.rp" "L_FK_Leg_01_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "L_FK_Hip_Ctrl.rpt" "L_FK_Leg_01_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "L_FK_Hip_Ctrl.r" "L_FK_Leg_01_Ctrl_Grp_parentConstraint2.tg[0].tr";
connectAttr "L_FK_Hip_Ctrl.ro" "L_FK_Leg_01_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "L_FK_Hip_Ctrl.s" "L_FK_Leg_01_Ctrl_Grp_parentConstraint2.tg[0].ts";
connectAttr "L_FK_Hip_Ctrl.pm" "L_FK_Leg_01_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "L_FK_Leg_01_Ctrl_Grp_parentConstraint2.w0" "L_FK_Leg_01_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "L_FK_Leg_01_Ctrl.FollowRotate" "L_FK_Leg_01_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "L_FK_Leg_01_Ctrl_Grp.pim" "L_FK_Leg_01_Ctrl_Grp_scaleConstraint1.cpim"
		;
connectAttr "L_FK_Hip_Ctrl.s" "L_FK_Leg_01_Ctrl_Grp_scaleConstraint1.tg[0].ts";
connectAttr "L_FK_Hip_Ctrl.pm" "L_FK_Leg_01_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "L_FK_Leg_01_Ctrl_Grp_scaleConstraint1.w0" "L_FK_Leg_01_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_FK_Leg_02_Ctrl_Grp_parentConstraint1.ctx" "L_FK_Leg_02_Ctrl_Grp.tx"
		;
connectAttr "L_FK_Leg_02_Ctrl_Grp_parentConstraint1.cty" "L_FK_Leg_02_Ctrl_Grp.ty"
		;
connectAttr "L_FK_Leg_02_Ctrl_Grp_parentConstraint1.ctz" "L_FK_Leg_02_Ctrl_Grp.tz"
		;
connectAttr "L_FK_Leg_02_Ctrl_Grp_parentConstraint2.crx" "L_FK_Leg_02_Ctrl_Grp.rx"
		;
connectAttr "L_FK_Leg_02_Ctrl_Grp_parentConstraint2.cry" "L_FK_Leg_02_Ctrl_Grp.ry"
		;
connectAttr "L_FK_Leg_02_Ctrl_Grp_parentConstraint2.crz" "L_FK_Leg_02_Ctrl_Grp.rz"
		;
connectAttr "L_FK_Leg_02_Ctrl_Grp_scaleConstraint1.csx" "L_FK_Leg_02_Ctrl_Grp.sx"
		;
connectAttr "L_FK_Leg_02_Ctrl_Grp_scaleConstraint1.csy" "L_FK_Leg_02_Ctrl_Grp.sy"
		;
connectAttr "L_FK_Leg_02_Ctrl_Grp_scaleConstraint1.csz" "L_FK_Leg_02_Ctrl_Grp.sz"
		;
connectAttr "makeNurbCircle10.oc" "L_FK_Leg_02_CtrlShape.cr";
connectAttr "L_FK_Leg_02_Ctrl_Grp.ro" "L_FK_Leg_02_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "L_FK_Leg_02_Ctrl_Grp.pim" "L_FK_Leg_02_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "L_FK_Leg_02_Ctrl_Grp.rp" "L_FK_Leg_02_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "L_FK_Leg_02_Ctrl_Grp.rpt" "L_FK_Leg_02_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "L_FK_Leg_01_Ctrl.t" "L_FK_Leg_02_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "L_FK_Leg_01_Ctrl.rp" "L_FK_Leg_02_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "L_FK_Leg_01_Ctrl.rpt" "L_FK_Leg_02_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "L_FK_Leg_01_Ctrl.r" "L_FK_Leg_02_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "L_FK_Leg_01_Ctrl.ro" "L_FK_Leg_02_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "L_FK_Leg_01_Ctrl.s" "L_FK_Leg_02_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "L_FK_Leg_01_Ctrl.pm" "L_FK_Leg_02_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_FK_Leg_02_Ctrl_Grp_parentConstraint1.w0" "L_FK_Leg_02_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "L_FK_Leg_02_Ctrl.FollowTranslate" "L_FK_Leg_02_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "L_FK_Leg_02_Ctrl_Grp.ro" "L_FK_Leg_02_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "L_FK_Leg_02_Ctrl_Grp.pim" "L_FK_Leg_02_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "L_FK_Leg_02_Ctrl_Grp.rp" "L_FK_Leg_02_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "L_FK_Leg_02_Ctrl_Grp.rpt" "L_FK_Leg_02_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "L_FK_Leg_01_Ctrl.t" "L_FK_Leg_02_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "L_FK_Leg_01_Ctrl.rp" "L_FK_Leg_02_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "L_FK_Leg_01_Ctrl.rpt" "L_FK_Leg_02_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "L_FK_Leg_01_Ctrl.r" "L_FK_Leg_02_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "L_FK_Leg_01_Ctrl.ro" "L_FK_Leg_02_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "L_FK_Leg_01_Ctrl.s" "L_FK_Leg_02_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "L_FK_Leg_01_Ctrl.pm" "L_FK_Leg_02_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "L_FK_Leg_02_Ctrl_Grp_parentConstraint2.w0" "L_FK_Leg_02_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "L_FK_Leg_02_Ctrl.FollowRotate" "L_FK_Leg_02_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "L_FK_Leg_02_Ctrl_Grp.pim" "L_FK_Leg_02_Ctrl_Grp_scaleConstraint1.cpim"
		;
connectAttr "L_FK_Leg_01_Ctrl.s" "L_FK_Leg_02_Ctrl_Grp_scaleConstraint1.tg[0].ts"
		;
connectAttr "L_FK_Leg_01_Ctrl.pm" "L_FK_Leg_02_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "L_FK_Leg_02_Ctrl_Grp_scaleConstraint1.w0" "L_FK_Leg_02_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_FK_Leg_03_Ctrl_Grp_parentConstraint1.ctx" "L_FK_Leg_03_Ctrl_Grp.tx"
		;
connectAttr "L_FK_Leg_03_Ctrl_Grp_parentConstraint1.cty" "L_FK_Leg_03_Ctrl_Grp.ty"
		;
connectAttr "L_FK_Leg_03_Ctrl_Grp_parentConstraint1.ctz" "L_FK_Leg_03_Ctrl_Grp.tz"
		;
connectAttr "L_FK_Leg_03_Ctrl_Grp_parentConstraint2.crx" "L_FK_Leg_03_Ctrl_Grp.rx"
		;
connectAttr "L_FK_Leg_03_Ctrl_Grp_parentConstraint2.cry" "L_FK_Leg_03_Ctrl_Grp.ry"
		;
connectAttr "L_FK_Leg_03_Ctrl_Grp_parentConstraint2.crz" "L_FK_Leg_03_Ctrl_Grp.rz"
		;
connectAttr "L_FK_Leg_03_Ctrl_Grp_scaleConstraint1.csx" "L_FK_Leg_03_Ctrl_Grp.sx"
		;
connectAttr "L_FK_Leg_03_Ctrl_Grp_scaleConstraint1.csy" "L_FK_Leg_03_Ctrl_Grp.sy"
		;
connectAttr "L_FK_Leg_03_Ctrl_Grp_scaleConstraint1.csz" "L_FK_Leg_03_Ctrl_Grp.sz"
		;
connectAttr "makeNurbCircle11.oc" "L_FK_Leg_03_CtrlShape.cr";
connectAttr "L_FK_Leg_03_Ctrl_Grp.ro" "L_FK_Leg_03_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "L_FK_Leg_03_Ctrl_Grp.pim" "L_FK_Leg_03_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "L_FK_Leg_03_Ctrl_Grp.rp" "L_FK_Leg_03_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "L_FK_Leg_03_Ctrl_Grp.rpt" "L_FK_Leg_03_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "L_FK_Leg_02_Ctrl.t" "L_FK_Leg_03_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "L_FK_Leg_02_Ctrl.rp" "L_FK_Leg_03_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "L_FK_Leg_02_Ctrl.rpt" "L_FK_Leg_03_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "L_FK_Leg_02_Ctrl.r" "L_FK_Leg_03_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "L_FK_Leg_02_Ctrl.ro" "L_FK_Leg_03_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "L_FK_Leg_02_Ctrl.s" "L_FK_Leg_03_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "L_FK_Leg_02_Ctrl.pm" "L_FK_Leg_03_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_FK_Leg_03_Ctrl_Grp_parentConstraint1.w0" "L_FK_Leg_03_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "L_FK_Leg_03_Ctrl.FollowTranslate" "L_FK_Leg_03_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "L_FK_Leg_03_Ctrl_Grp.ro" "L_FK_Leg_03_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "L_FK_Leg_03_Ctrl_Grp.pim" "L_FK_Leg_03_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "L_FK_Leg_03_Ctrl_Grp.rp" "L_FK_Leg_03_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "L_FK_Leg_03_Ctrl_Grp.rpt" "L_FK_Leg_03_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "L_FK_Leg_02_Ctrl.t" "L_FK_Leg_03_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "L_FK_Leg_02_Ctrl.rp" "L_FK_Leg_03_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "L_FK_Leg_02_Ctrl.rpt" "L_FK_Leg_03_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "L_FK_Leg_02_Ctrl.r" "L_FK_Leg_03_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "L_FK_Leg_02_Ctrl.ro" "L_FK_Leg_03_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "L_FK_Leg_02_Ctrl.s" "L_FK_Leg_03_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "L_FK_Leg_02_Ctrl.pm" "L_FK_Leg_03_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "L_FK_Leg_03_Ctrl_Grp_parentConstraint2.w0" "L_FK_Leg_03_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "L_FK_Leg_03_Ctrl.FollowRotate" "L_FK_Leg_03_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "L_FK_Leg_03_Ctrl_Grp.pim" "L_FK_Leg_03_Ctrl_Grp_scaleConstraint1.cpim"
		;
connectAttr "L_FK_Leg_02_Ctrl.s" "L_FK_Leg_03_Ctrl_Grp_scaleConstraint1.tg[0].ts"
		;
connectAttr "L_FK_Leg_02_Ctrl.pm" "L_FK_Leg_03_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "L_FK_Leg_03_Ctrl_Grp_scaleConstraint1.w0" "L_FK_Leg_03_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "Transform_Ctrl.L_Arm_IKFK" "L_FK_Arm.v";
connectAttr "L_FK_Arm_01_Ctrl_Grp_parentConstraint1.ctx" "L_FK_Arm_01_Ctrl_Grp.tx"
		;
connectAttr "L_FK_Arm_01_Ctrl_Grp_parentConstraint1.cty" "L_FK_Arm_01_Ctrl_Grp.ty"
		;
connectAttr "L_FK_Arm_01_Ctrl_Grp_parentConstraint1.ctz" "L_FK_Arm_01_Ctrl_Grp.tz"
		;
connectAttr "L_FK_Arm_01_Ctrl_Grp_parentConstraint2.crx" "L_FK_Arm_01_Ctrl_Grp.rx"
		;
connectAttr "L_FK_Arm_01_Ctrl_Grp_parentConstraint2.cry" "L_FK_Arm_01_Ctrl_Grp.ry"
		;
connectAttr "L_FK_Arm_01_Ctrl_Grp_parentConstraint2.crz" "L_FK_Arm_01_Ctrl_Grp.rz"
		;
connectAttr "L_FK_Arm_01_Ctrl_Grp_scaleConstraint1.csx" "L_FK_Arm_01_Ctrl_Grp.sx"
		;
connectAttr "L_FK_Arm_01_Ctrl_Grp_scaleConstraint1.csy" "L_FK_Arm_01_Ctrl_Grp.sy"
		;
connectAttr "L_FK_Arm_01_Ctrl_Grp_scaleConstraint1.csz" "L_FK_Arm_01_Ctrl_Grp.sz"
		;
connectAttr "makeNurbCircle5.oc" "L_FK_Arm_01_CtrlShape.cr";
connectAttr "L_FK_Arm_01_Ctrl_Grp.ro" "L_FK_Arm_01_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "L_FK_Arm_01_Ctrl_Grp.pim" "L_FK_Arm_01_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "L_FK_Arm_01_Ctrl_Grp.rp" "L_FK_Arm_01_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "L_FK_Arm_01_Ctrl_Grp.rpt" "L_FK_Arm_01_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "L_Clav_Ctrl.t" "L_FK_Arm_01_Ctrl_Grp_parentConstraint1.tg[0].tt";
connectAttr "L_Clav_Ctrl.rp" "L_FK_Arm_01_Ctrl_Grp_parentConstraint1.tg[0].trp";
connectAttr "L_Clav_Ctrl.rpt" "L_FK_Arm_01_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Clav_Ctrl.r" "L_FK_Arm_01_Ctrl_Grp_parentConstraint1.tg[0].tr";
connectAttr "L_Clav_Ctrl.ro" "L_FK_Arm_01_Ctrl_Grp_parentConstraint1.tg[0].tro";
connectAttr "L_Clav_Ctrl.s" "L_FK_Arm_01_Ctrl_Grp_parentConstraint1.tg[0].ts";
connectAttr "L_Clav_Ctrl.pm" "L_FK_Arm_01_Ctrl_Grp_parentConstraint1.tg[0].tpm";
connectAttr "L_FK_Arm_01_Ctrl_Grp_parentConstraint1.w0" "L_FK_Arm_01_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "L_FK_Arm_01_Ctrl.FollowTranslate" "L_FK_Arm_01_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "L_FK_Arm_01_Ctrl_Grp.ro" "L_FK_Arm_01_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "L_FK_Arm_01_Ctrl_Grp.pim" "L_FK_Arm_01_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "L_FK_Arm_01_Ctrl_Grp.rp" "L_FK_Arm_01_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "L_FK_Arm_01_Ctrl_Grp.rpt" "L_FK_Arm_01_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "L_Clav_Ctrl.t" "L_FK_Arm_01_Ctrl_Grp_parentConstraint2.tg[0].tt";
connectAttr "L_Clav_Ctrl.rp" "L_FK_Arm_01_Ctrl_Grp_parentConstraint2.tg[0].trp";
connectAttr "L_Clav_Ctrl.rpt" "L_FK_Arm_01_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "L_Clav_Ctrl.r" "L_FK_Arm_01_Ctrl_Grp_parentConstraint2.tg[0].tr";
connectAttr "L_Clav_Ctrl.ro" "L_FK_Arm_01_Ctrl_Grp_parentConstraint2.tg[0].tro";
connectAttr "L_Clav_Ctrl.s" "L_FK_Arm_01_Ctrl_Grp_parentConstraint2.tg[0].ts";
connectAttr "L_Clav_Ctrl.pm" "L_FK_Arm_01_Ctrl_Grp_parentConstraint2.tg[0].tpm";
connectAttr "L_FK_Arm_01_Ctrl_Grp_parentConstraint2.w0" "L_FK_Arm_01_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "L_FK_Arm_01_Ctrl.FollowRotate" "L_FK_Arm_01_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "L_FK_Arm_01_Ctrl_Grp.pim" "L_FK_Arm_01_Ctrl_Grp_scaleConstraint1.cpim"
		;
connectAttr "L_Clav_Ctrl.s" "L_FK_Arm_01_Ctrl_Grp_scaleConstraint1.tg[0].ts";
connectAttr "L_Clav_Ctrl.pm" "L_FK_Arm_01_Ctrl_Grp_scaleConstraint1.tg[0].tpm";
connectAttr "L_FK_Arm_01_Ctrl_Grp_scaleConstraint1.w0" "L_FK_Arm_01_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_FK_Arm_02_Ctrl_Grp_parentConstraint1.ctx" "L_FK_Arm_02_Ctrl_Grp.tx"
		;
connectAttr "L_FK_Arm_02_Ctrl_Grp_parentConstraint1.cty" "L_FK_Arm_02_Ctrl_Grp.ty"
		;
connectAttr "L_FK_Arm_02_Ctrl_Grp_parentConstraint1.ctz" "L_FK_Arm_02_Ctrl_Grp.tz"
		;
connectAttr "L_FK_Arm_02_Ctrl_Grp_parentConstraint2.crx" "L_FK_Arm_02_Ctrl_Grp.rx"
		;
connectAttr "L_FK_Arm_02_Ctrl_Grp_parentConstraint2.cry" "L_FK_Arm_02_Ctrl_Grp.ry"
		;
connectAttr "L_FK_Arm_02_Ctrl_Grp_parentConstraint2.crz" "L_FK_Arm_02_Ctrl_Grp.rz"
		;
connectAttr "L_FK_Arm_02_Ctrl_Grp_scaleConstraint1.csx" "L_FK_Arm_02_Ctrl_Grp.sx"
		;
connectAttr "L_FK_Arm_02_Ctrl_Grp_scaleConstraint1.csy" "L_FK_Arm_02_Ctrl_Grp.sy"
		;
connectAttr "L_FK_Arm_02_Ctrl_Grp_scaleConstraint1.csz" "L_FK_Arm_02_Ctrl_Grp.sz"
		;
connectAttr "makeNurbCircle6.oc" "L_FK_Arm_02_CtrlShape.cr";
connectAttr "L_FK_Arm_02_Ctrl_Grp.ro" "L_FK_Arm_02_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "L_FK_Arm_02_Ctrl_Grp.pim" "L_FK_Arm_02_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "L_FK_Arm_02_Ctrl_Grp.rp" "L_FK_Arm_02_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "L_FK_Arm_02_Ctrl_Grp.rpt" "L_FK_Arm_02_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "L_FK_Arm_01_Ctrl.t" "L_FK_Arm_02_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "L_FK_Arm_01_Ctrl.rp" "L_FK_Arm_02_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "L_FK_Arm_01_Ctrl.rpt" "L_FK_Arm_02_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "L_FK_Arm_01_Ctrl.r" "L_FK_Arm_02_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "L_FK_Arm_01_Ctrl.ro" "L_FK_Arm_02_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "L_FK_Arm_01_Ctrl.s" "L_FK_Arm_02_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "L_FK_Arm_01_Ctrl.pm" "L_FK_Arm_02_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_FK_Arm_02_Ctrl_Grp_parentConstraint1.w0" "L_FK_Arm_02_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "L_FK_Arm_02_Ctrl.FollowTranslate" "L_FK_Arm_02_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "L_FK_Arm_02_Ctrl_Grp.ro" "L_FK_Arm_02_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "L_FK_Arm_02_Ctrl_Grp.pim" "L_FK_Arm_02_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "L_FK_Arm_02_Ctrl_Grp.rp" "L_FK_Arm_02_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "L_FK_Arm_02_Ctrl_Grp.rpt" "L_FK_Arm_02_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "L_FK_Arm_01_Ctrl.t" "L_FK_Arm_02_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "L_FK_Arm_01_Ctrl.rp" "L_FK_Arm_02_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "L_FK_Arm_01_Ctrl.rpt" "L_FK_Arm_02_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "L_FK_Arm_01_Ctrl.r" "L_FK_Arm_02_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "L_FK_Arm_01_Ctrl.ro" "L_FK_Arm_02_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "L_FK_Arm_01_Ctrl.s" "L_FK_Arm_02_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "L_FK_Arm_01_Ctrl.pm" "L_FK_Arm_02_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "L_FK_Arm_02_Ctrl_Grp_parentConstraint2.w0" "L_FK_Arm_02_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "L_FK_Arm_02_Ctrl.FollowRotate" "L_FK_Arm_02_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "L_FK_Arm_02_Ctrl_Grp.pim" "L_FK_Arm_02_Ctrl_Grp_scaleConstraint1.cpim"
		;
connectAttr "L_FK_Arm_01_Ctrl.s" "L_FK_Arm_02_Ctrl_Grp_scaleConstraint1.tg[0].ts"
		;
connectAttr "L_FK_Arm_01_Ctrl.pm" "L_FK_Arm_02_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "L_FK_Arm_02_Ctrl_Grp_scaleConstraint1.w0" "L_FK_Arm_02_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_FK_Arm_03_Ctrl_Grp_parentConstraint1.ctx" "L_FK_Arm_03_Ctrl_Grp.tx"
		;
connectAttr "L_FK_Arm_03_Ctrl_Grp_parentConstraint1.cty" "L_FK_Arm_03_Ctrl_Grp.ty"
		;
connectAttr "L_FK_Arm_03_Ctrl_Grp_parentConstraint1.ctz" "L_FK_Arm_03_Ctrl_Grp.tz"
		;
connectAttr "L_FK_Arm_03_Ctrl_Grp_parentConstraint2.crx" "L_FK_Arm_03_Ctrl_Grp.rx"
		;
connectAttr "L_FK_Arm_03_Ctrl_Grp_parentConstraint2.cry" "L_FK_Arm_03_Ctrl_Grp.ry"
		;
connectAttr "L_FK_Arm_03_Ctrl_Grp_parentConstraint2.crz" "L_FK_Arm_03_Ctrl_Grp.rz"
		;
connectAttr "L_FK_Arm_03_Ctrl_Grp_scaleConstraint1.csx" "L_FK_Arm_03_Ctrl_Grp.sx"
		;
connectAttr "L_FK_Arm_03_Ctrl_Grp_scaleConstraint1.csy" "L_FK_Arm_03_Ctrl_Grp.sy"
		;
connectAttr "L_FK_Arm_03_Ctrl_Grp_scaleConstraint1.csz" "L_FK_Arm_03_Ctrl_Grp.sz"
		;
connectAttr "makeNurbCircle7.oc" "L_FK_Arm_03_CtrlShape.cr";
connectAttr "L_FK_Arm_03_Ctrl_Grp.ro" "L_FK_Arm_03_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "L_FK_Arm_03_Ctrl_Grp.pim" "L_FK_Arm_03_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "L_FK_Arm_03_Ctrl_Grp.rp" "L_FK_Arm_03_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "L_FK_Arm_03_Ctrl_Grp.rpt" "L_FK_Arm_03_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "L_FK_Arm_02_Ctrl.t" "L_FK_Arm_03_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "L_FK_Arm_02_Ctrl.rp" "L_FK_Arm_03_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "L_FK_Arm_02_Ctrl.rpt" "L_FK_Arm_03_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "L_FK_Arm_02_Ctrl.r" "L_FK_Arm_03_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "L_FK_Arm_02_Ctrl.ro" "L_FK_Arm_03_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "L_FK_Arm_02_Ctrl.s" "L_FK_Arm_03_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "L_FK_Arm_02_Ctrl.pm" "L_FK_Arm_03_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_FK_Arm_03_Ctrl_Grp_parentConstraint1.w0" "L_FK_Arm_03_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "L_FK_Arm_03_Ctrl.FollowTranslate" "L_FK_Arm_03_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "L_FK_Arm_03_Ctrl_Grp.ro" "L_FK_Arm_03_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "L_FK_Arm_03_Ctrl_Grp.pim" "L_FK_Arm_03_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "L_FK_Arm_03_Ctrl_Grp.rp" "L_FK_Arm_03_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "L_FK_Arm_03_Ctrl_Grp.rpt" "L_FK_Arm_03_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "L_FK_Arm_02_Ctrl.t" "L_FK_Arm_03_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "L_FK_Arm_02_Ctrl.rp" "L_FK_Arm_03_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "L_FK_Arm_02_Ctrl.rpt" "L_FK_Arm_03_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "L_FK_Arm_02_Ctrl.r" "L_FK_Arm_03_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "L_FK_Arm_02_Ctrl.ro" "L_FK_Arm_03_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "L_FK_Arm_02_Ctrl.s" "L_FK_Arm_03_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "L_FK_Arm_02_Ctrl.pm" "L_FK_Arm_03_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "L_FK_Arm_03_Ctrl_Grp_parentConstraint2.w0" "L_FK_Arm_03_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "L_FK_Arm_03_Ctrl.FollowRotate" "L_FK_Arm_03_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "L_FK_Arm_03_Ctrl_Grp.pim" "L_FK_Arm_03_Ctrl_Grp_scaleConstraint1.cpim"
		;
connectAttr "L_FK_Arm_02_Ctrl.s" "L_FK_Arm_03_Ctrl_Grp_scaleConstraint1.tg[0].ts"
		;
connectAttr "L_FK_Arm_02_Ctrl.pm" "L_FK_Arm_03_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "L_FK_Arm_03_Ctrl_Grp_scaleConstraint1.w0" "L_FK_Arm_03_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "Transform_Ctrl.L_Leg_IKFK" "L_FK_Foot.v";
connectAttr "L_FK_Toe_03_Ctrl_Grp_parentConstraint1.ctx" "L_FK_Toe_03_Ctrl_Grp.tx"
		;
connectAttr "L_FK_Toe_03_Ctrl_Grp_parentConstraint1.cty" "L_FK_Toe_03_Ctrl_Grp.ty"
		;
connectAttr "L_FK_Toe_03_Ctrl_Grp_parentConstraint1.ctz" "L_FK_Toe_03_Ctrl_Grp.tz"
		;
connectAttr "L_FK_Toe_03_Ctrl_Grp_parentConstraint2.crx" "L_FK_Toe_03_Ctrl_Grp.rx"
		;
connectAttr "L_FK_Toe_03_Ctrl_Grp_parentConstraint2.cry" "L_FK_Toe_03_Ctrl_Grp.ry"
		;
connectAttr "L_FK_Toe_03_Ctrl_Grp_parentConstraint2.crz" "L_FK_Toe_03_Ctrl_Grp.rz"
		;
connectAttr "L_FK_Toe_03_Ctrl_Grp_scaleConstraint1.csx" "L_FK_Toe_03_Ctrl_Grp.sx"
		;
connectAttr "L_FK_Toe_03_Ctrl_Grp_scaleConstraint1.csy" "L_FK_Toe_03_Ctrl_Grp.sy"
		;
connectAttr "L_FK_Toe_03_Ctrl_Grp_scaleConstraint1.csz" "L_FK_Toe_03_Ctrl_Grp.sz"
		;
connectAttr "makeNurbCircle15.oc" "L_FK_Toe_03_CtrlShape.cr";
connectAttr "L_FK_Toe_03_Ctrl_Grp.ro" "L_FK_Toe_03_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "L_FK_Toe_03_Ctrl_Grp.pim" "L_FK_Toe_03_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "L_FK_Toe_03_Ctrl_Grp.rp" "L_FK_Toe_03_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "L_FK_Toe_03_Ctrl_Grp.rpt" "L_FK_Toe_03_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "L_FK_Ankle_Ctrl.t" "L_FK_Toe_03_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "L_FK_Ankle_Ctrl.rp" "L_FK_Toe_03_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "L_FK_Ankle_Ctrl.rpt" "L_FK_Toe_03_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "L_FK_Ankle_Ctrl.r" "L_FK_Toe_03_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "L_FK_Ankle_Ctrl.ro" "L_FK_Toe_03_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "L_FK_Ankle_Ctrl.s" "L_FK_Toe_03_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "L_FK_Ankle_Ctrl.pm" "L_FK_Toe_03_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_FK_Toe_03_Ctrl_Grp_parentConstraint1.w0" "L_FK_Toe_03_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "L_FK_Toe_03_Ctrl.FollowTranslate" "L_FK_Toe_03_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "L_FK_Toe_03_Ctrl_Grp.ro" "L_FK_Toe_03_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "L_FK_Toe_03_Ctrl_Grp.pim" "L_FK_Toe_03_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "L_FK_Toe_03_Ctrl_Grp.rp" "L_FK_Toe_03_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "L_FK_Toe_03_Ctrl_Grp.rpt" "L_FK_Toe_03_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "L_FK_Ankle_Ctrl.t" "L_FK_Toe_03_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "L_FK_Ankle_Ctrl.rp" "L_FK_Toe_03_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "L_FK_Ankle_Ctrl.rpt" "L_FK_Toe_03_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "L_FK_Ankle_Ctrl.r" "L_FK_Toe_03_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "L_FK_Ankle_Ctrl.ro" "L_FK_Toe_03_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "L_FK_Ankle_Ctrl.s" "L_FK_Toe_03_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "L_FK_Ankle_Ctrl.pm" "L_FK_Toe_03_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "L_FK_Toe_03_Ctrl_Grp_parentConstraint2.w0" "L_FK_Toe_03_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "L_FK_Toe_03_Ctrl.FollowRotate" "L_FK_Toe_03_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "L_FK_Toe_03_Ctrl_Grp.pim" "L_FK_Toe_03_Ctrl_Grp_scaleConstraint1.cpim"
		;
connectAttr "L_FK_Ankle_Ctrl.s" "L_FK_Toe_03_Ctrl_Grp_scaleConstraint1.tg[0].ts"
		;
connectAttr "L_FK_Ankle_Ctrl.pm" "L_FK_Toe_03_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "L_FK_Toe_03_Ctrl_Grp_scaleConstraint1.w0" "L_FK_Toe_03_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_FK_Toe_02_Ctrl_Grp_parentConstraint1.ctx" "L_FK_Toe_02_Ctrl_Grp.tx"
		;
connectAttr "L_FK_Toe_02_Ctrl_Grp_parentConstraint1.cty" "L_FK_Toe_02_Ctrl_Grp.ty"
		;
connectAttr "L_FK_Toe_02_Ctrl_Grp_parentConstraint1.ctz" "L_FK_Toe_02_Ctrl_Grp.tz"
		;
connectAttr "L_FK_Toe_02_Ctrl_Grp_parentConstraint2.crx" "L_FK_Toe_02_Ctrl_Grp.rx"
		;
connectAttr "L_FK_Toe_02_Ctrl_Grp_parentConstraint2.cry" "L_FK_Toe_02_Ctrl_Grp.ry"
		;
connectAttr "L_FK_Toe_02_Ctrl_Grp_parentConstraint2.crz" "L_FK_Toe_02_Ctrl_Grp.rz"
		;
connectAttr "L_FK_Toe_02_Ctrl_Grp_scaleConstraint1.csx" "L_FK_Toe_02_Ctrl_Grp.sx"
		;
connectAttr "L_FK_Toe_02_Ctrl_Grp_scaleConstraint1.csy" "L_FK_Toe_02_Ctrl_Grp.sy"
		;
connectAttr "L_FK_Toe_02_Ctrl_Grp_scaleConstraint1.csz" "L_FK_Toe_02_Ctrl_Grp.sz"
		;
connectAttr "makeNurbCircle14.oc" "L_FK_Toe_02_CtrlShape.cr";
connectAttr "L_FK_Toe_02_Ctrl_Grp.ro" "L_FK_Toe_02_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "L_FK_Toe_02_Ctrl_Grp.pim" "L_FK_Toe_02_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "L_FK_Toe_02_Ctrl_Grp.rp" "L_FK_Toe_02_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "L_FK_Toe_02_Ctrl_Grp.rpt" "L_FK_Toe_02_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "L_FK_Ankle_Ctrl.t" "L_FK_Toe_02_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "L_FK_Ankle_Ctrl.rp" "L_FK_Toe_02_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "L_FK_Ankle_Ctrl.rpt" "L_FK_Toe_02_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "L_FK_Ankle_Ctrl.r" "L_FK_Toe_02_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "L_FK_Ankle_Ctrl.ro" "L_FK_Toe_02_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "L_FK_Ankle_Ctrl.s" "L_FK_Toe_02_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "L_FK_Ankle_Ctrl.pm" "L_FK_Toe_02_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_FK_Toe_02_Ctrl_Grp_parentConstraint1.w0" "L_FK_Toe_02_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "L_FK_Toe_02_Ctrl.FollowTranslate" "L_FK_Toe_02_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "L_FK_Toe_02_Ctrl_Grp.ro" "L_FK_Toe_02_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "L_FK_Toe_02_Ctrl_Grp.pim" "L_FK_Toe_02_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "L_FK_Toe_02_Ctrl_Grp.rp" "L_FK_Toe_02_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "L_FK_Toe_02_Ctrl_Grp.rpt" "L_FK_Toe_02_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "L_FK_Ankle_Ctrl.t" "L_FK_Toe_02_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "L_FK_Ankle_Ctrl.rp" "L_FK_Toe_02_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "L_FK_Ankle_Ctrl.rpt" "L_FK_Toe_02_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "L_FK_Ankle_Ctrl.r" "L_FK_Toe_02_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "L_FK_Ankle_Ctrl.ro" "L_FK_Toe_02_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "L_FK_Ankle_Ctrl.s" "L_FK_Toe_02_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "L_FK_Ankle_Ctrl.pm" "L_FK_Toe_02_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "L_FK_Toe_02_Ctrl_Grp_parentConstraint2.w0" "L_FK_Toe_02_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "L_FK_Toe_02_Ctrl.FollowRotate" "L_FK_Toe_02_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "L_FK_Toe_02_Ctrl_Grp.pim" "L_FK_Toe_02_Ctrl_Grp_scaleConstraint1.cpim"
		;
connectAttr "L_FK_Ankle_Ctrl.s" "L_FK_Toe_02_Ctrl_Grp_scaleConstraint1.tg[0].ts"
		;
connectAttr "L_FK_Ankle_Ctrl.pm" "L_FK_Toe_02_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "L_FK_Toe_02_Ctrl_Grp_scaleConstraint1.w0" "L_FK_Toe_02_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_FK_Toe_01_Ctrl_Grp_parentConstraint1.ctx" "L_FK_Toe_01_Ctrl_Grp.tx"
		;
connectAttr "L_FK_Toe_01_Ctrl_Grp_parentConstraint1.cty" "L_FK_Toe_01_Ctrl_Grp.ty"
		;
connectAttr "L_FK_Toe_01_Ctrl_Grp_parentConstraint1.ctz" "L_FK_Toe_01_Ctrl_Grp.tz"
		;
connectAttr "L_FK_Toe_01_Ctrl_Grp_parentConstraint2.crx" "L_FK_Toe_01_Ctrl_Grp.rx"
		;
connectAttr "L_FK_Toe_01_Ctrl_Grp_parentConstraint2.cry" "L_FK_Toe_01_Ctrl_Grp.ry"
		;
connectAttr "L_FK_Toe_01_Ctrl_Grp_parentConstraint2.crz" "L_FK_Toe_01_Ctrl_Grp.rz"
		;
connectAttr "L_FK_Toe_01_Ctrl_Grp_scaleConstraint1.csx" "L_FK_Toe_01_Ctrl_Grp.sx"
		;
connectAttr "L_FK_Toe_01_Ctrl_Grp_scaleConstraint1.csy" "L_FK_Toe_01_Ctrl_Grp.sy"
		;
connectAttr "L_FK_Toe_01_Ctrl_Grp_scaleConstraint1.csz" "L_FK_Toe_01_Ctrl_Grp.sz"
		;
connectAttr "makeNurbCircle13.oc" "L_FK_Toe_01_CtrlShape.cr";
connectAttr "L_FK_Toe_01_Ctrl_Grp.ro" "L_FK_Toe_01_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "L_FK_Toe_01_Ctrl_Grp.pim" "L_FK_Toe_01_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "L_FK_Toe_01_Ctrl_Grp.rp" "L_FK_Toe_01_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "L_FK_Toe_01_Ctrl_Grp.rpt" "L_FK_Toe_01_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "L_FK_Ankle_Ctrl.t" "L_FK_Toe_01_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "L_FK_Ankle_Ctrl.rp" "L_FK_Toe_01_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "L_FK_Ankle_Ctrl.rpt" "L_FK_Toe_01_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "L_FK_Ankle_Ctrl.r" "L_FK_Toe_01_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "L_FK_Ankle_Ctrl.ro" "L_FK_Toe_01_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "L_FK_Ankle_Ctrl.s" "L_FK_Toe_01_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "L_FK_Ankle_Ctrl.pm" "L_FK_Toe_01_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_FK_Toe_01_Ctrl_Grp_parentConstraint1.w0" "L_FK_Toe_01_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "L_FK_Toe_01_Ctrl.FollowTranslate" "L_FK_Toe_01_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "L_FK_Toe_01_Ctrl_Grp.ro" "L_FK_Toe_01_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "L_FK_Toe_01_Ctrl_Grp.pim" "L_FK_Toe_01_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "L_FK_Toe_01_Ctrl_Grp.rp" "L_FK_Toe_01_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "L_FK_Toe_01_Ctrl_Grp.rpt" "L_FK_Toe_01_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "L_FK_Ankle_Ctrl.t" "L_FK_Toe_01_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "L_FK_Ankle_Ctrl.rp" "L_FK_Toe_01_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "L_FK_Ankle_Ctrl.rpt" "L_FK_Toe_01_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "L_FK_Ankle_Ctrl.r" "L_FK_Toe_01_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "L_FK_Ankle_Ctrl.ro" "L_FK_Toe_01_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "L_FK_Ankle_Ctrl.s" "L_FK_Toe_01_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "L_FK_Ankle_Ctrl.pm" "L_FK_Toe_01_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "L_FK_Toe_01_Ctrl_Grp_parentConstraint2.w0" "L_FK_Toe_01_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "L_FK_Toe_01_Ctrl.FollowRotate" "L_FK_Toe_01_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "L_FK_Toe_01_Ctrl_Grp.pim" "L_FK_Toe_01_Ctrl_Grp_scaleConstraint1.cpim"
		;
connectAttr "L_FK_Ankle_Ctrl.s" "L_FK_Toe_01_Ctrl_Grp_scaleConstraint1.tg[0].ts"
		;
connectAttr "L_FK_Ankle_Ctrl.pm" "L_FK_Toe_01_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "L_FK_Toe_01_Ctrl_Grp_scaleConstraint1.w0" "L_FK_Toe_01_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_FK_Ankle_Ctrl_Grp_parentConstraint1.ctx" "L_FK_Ankle_Ctrl_Grp.tx"
		;
connectAttr "L_FK_Ankle_Ctrl_Grp_parentConstraint1.cty" "L_FK_Ankle_Ctrl_Grp.ty"
		;
connectAttr "L_FK_Ankle_Ctrl_Grp_parentConstraint1.ctz" "L_FK_Ankle_Ctrl_Grp.tz"
		;
connectAttr "L_FK_Ankle_Ctrl_Grp_parentConstraint2.crx" "L_FK_Ankle_Ctrl_Grp.rx"
		;
connectAttr "L_FK_Ankle_Ctrl_Grp_parentConstraint2.cry" "L_FK_Ankle_Ctrl_Grp.ry"
		;
connectAttr "L_FK_Ankle_Ctrl_Grp_parentConstraint2.crz" "L_FK_Ankle_Ctrl_Grp.rz"
		;
connectAttr "L_FK_Ankle_Ctrl_Grp_scaleConstraint1.csx" "L_FK_Ankle_Ctrl_Grp.sx";
connectAttr "L_FK_Ankle_Ctrl_Grp_scaleConstraint1.csy" "L_FK_Ankle_Ctrl_Grp.sy";
connectAttr "L_FK_Ankle_Ctrl_Grp_scaleConstraint1.csz" "L_FK_Ankle_Ctrl_Grp.sz";
connectAttr "makeNurbCircle12.oc" "L_FK_Ankle_CtrlShape.cr";
connectAttr "L_FK_Ankle_Ctrl_Grp.ro" "L_FK_Ankle_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "L_FK_Ankle_Ctrl_Grp.pim" "L_FK_Ankle_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "L_FK_Ankle_Ctrl_Grp.rp" "L_FK_Ankle_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "L_FK_Ankle_Ctrl_Grp.rpt" "L_FK_Ankle_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "L_FK_Leg_03_Ctrl.t" "L_FK_Ankle_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "L_FK_Leg_03_Ctrl.rp" "L_FK_Ankle_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "L_FK_Leg_03_Ctrl.rpt" "L_FK_Ankle_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "L_FK_Leg_03_Ctrl.r" "L_FK_Ankle_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "L_FK_Leg_03_Ctrl.ro" "L_FK_Ankle_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "L_FK_Leg_03_Ctrl.s" "L_FK_Ankle_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "L_FK_Leg_03_Ctrl.pm" "L_FK_Ankle_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_FK_Ankle_Ctrl_Grp_parentConstraint1.w0" "L_FK_Ankle_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "L_FK_Ankle_Ctrl.FollowTranslate" "L_FK_Ankle_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "L_FK_Ankle_Ctrl_Grp.ro" "L_FK_Ankle_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "L_FK_Ankle_Ctrl_Grp.pim" "L_FK_Ankle_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "L_FK_Ankle_Ctrl_Grp.rp" "L_FK_Ankle_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "L_FK_Ankle_Ctrl_Grp.rpt" "L_FK_Ankle_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "L_FK_Leg_03_Ctrl.t" "L_FK_Ankle_Ctrl_Grp_parentConstraint2.tg[0].tt"
		;
connectAttr "L_FK_Leg_03_Ctrl.rp" "L_FK_Ankle_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "L_FK_Leg_03_Ctrl.rpt" "L_FK_Ankle_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "L_FK_Leg_03_Ctrl.r" "L_FK_Ankle_Ctrl_Grp_parentConstraint2.tg[0].tr"
		;
connectAttr "L_FK_Leg_03_Ctrl.ro" "L_FK_Ankle_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "L_FK_Leg_03_Ctrl.s" "L_FK_Ankle_Ctrl_Grp_parentConstraint2.tg[0].ts"
		;
connectAttr "L_FK_Leg_03_Ctrl.pm" "L_FK_Ankle_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "L_FK_Ankle_Ctrl_Grp_parentConstraint2.w0" "L_FK_Ankle_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "L_FK_Ankle_Ctrl.FollowRotate" "L_FK_Ankle_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "L_FK_Ankle_Ctrl_Grp.pim" "L_FK_Ankle_Ctrl_Grp_scaleConstraint1.cpim"
		;
connectAttr "L_FK_Leg_03_Ctrl.s" "L_FK_Ankle_Ctrl_Grp_scaleConstraint1.tg[0].ts"
		;
connectAttr "L_FK_Leg_03_Ctrl.pm" "L_FK_Ankle_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "L_FK_Ankle_Ctrl_Grp_scaleConstraint1.w0" "L_FK_Ankle_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Arm_IKFKRev.ox" "L_Arm_IK_Ctrls.v";
connectAttr "L_IK_Arm_01_Ctrl_Grp_parentConstraint1.ctx" "L_IK_Arm_01_Ctrl_Grp.tx"
		;
connectAttr "L_IK_Arm_01_Ctrl_Grp_parentConstraint1.cty" "L_IK_Arm_01_Ctrl_Grp.ty"
		;
connectAttr "L_IK_Arm_01_Ctrl_Grp_parentConstraint1.ctz" "L_IK_Arm_01_Ctrl_Grp.tz"
		;
connectAttr "L_IK_Arm_01_Ctrl_Grp_parentConstraint2.crx" "L_IK_Arm_01_Ctrl_Grp.rx"
		;
connectAttr "L_IK_Arm_01_Ctrl_Grp_parentConstraint2.cry" "L_IK_Arm_01_Ctrl_Grp.ry"
		;
connectAttr "L_IK_Arm_01_Ctrl_Grp_parentConstraint2.crz" "L_IK_Arm_01_Ctrl_Grp.rz"
		;
connectAttr "L_IK_Arm_01_Ctrl_Grp_scaleConstraint1.csx" "L_IK_Arm_01_Ctrl_Grp.sx"
		;
connectAttr "L_IK_Arm_01_Ctrl_Grp_scaleConstraint1.csy" "L_IK_Arm_01_Ctrl_Grp.sy"
		;
connectAttr "L_IK_Arm_01_Ctrl_Grp_scaleConstraint1.csz" "L_IK_Arm_01_Ctrl_Grp.sz"
		;
connectAttr "makeNurbCircle30.oc" "L_IK_Arm_01_CtrlShape.cr";
connectAttr "L_IK_Arm_01_Ctrl_Grp.ro" "L_IK_Arm_01_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "L_IK_Arm_01_Ctrl_Grp.pim" "L_IK_Arm_01_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "L_IK_Arm_01_Ctrl_Grp.rp" "L_IK_Arm_01_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "L_IK_Arm_01_Ctrl_Grp.rpt" "L_IK_Arm_01_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "L_Clav_Ctrl.t" "L_IK_Arm_01_Ctrl_Grp_parentConstraint1.tg[0].tt";
connectAttr "L_Clav_Ctrl.rp" "L_IK_Arm_01_Ctrl_Grp_parentConstraint1.tg[0].trp";
connectAttr "L_Clav_Ctrl.rpt" "L_IK_Arm_01_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Clav_Ctrl.r" "L_IK_Arm_01_Ctrl_Grp_parentConstraint1.tg[0].tr";
connectAttr "L_Clav_Ctrl.ro" "L_IK_Arm_01_Ctrl_Grp_parentConstraint1.tg[0].tro";
connectAttr "L_Clav_Ctrl.s" "L_IK_Arm_01_Ctrl_Grp_parentConstraint1.tg[0].ts";
connectAttr "L_Clav_Ctrl.pm" "L_IK_Arm_01_Ctrl_Grp_parentConstraint1.tg[0].tpm";
connectAttr "L_IK_Arm_01_Ctrl_Grp_parentConstraint1.w0" "L_IK_Arm_01_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "L_IK_Arm_01_Ctrl.FollowTranslate" "L_IK_Arm_01_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "L_IK_Arm_01_Ctrl_Grp.ro" "L_IK_Arm_01_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "L_IK_Arm_01_Ctrl_Grp.pim" "L_IK_Arm_01_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "L_IK_Arm_01_Ctrl_Grp.rp" "L_IK_Arm_01_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "L_IK_Arm_01_Ctrl_Grp.rpt" "L_IK_Arm_01_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "L_Clav_Ctrl.t" "L_IK_Arm_01_Ctrl_Grp_parentConstraint2.tg[0].tt";
connectAttr "L_Clav_Ctrl.rp" "L_IK_Arm_01_Ctrl_Grp_parentConstraint2.tg[0].trp";
connectAttr "L_Clav_Ctrl.rpt" "L_IK_Arm_01_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "L_Clav_Ctrl.r" "L_IK_Arm_01_Ctrl_Grp_parentConstraint2.tg[0].tr";
connectAttr "L_Clav_Ctrl.ro" "L_IK_Arm_01_Ctrl_Grp_parentConstraint2.tg[0].tro";
connectAttr "L_Clav_Ctrl.s" "L_IK_Arm_01_Ctrl_Grp_parentConstraint2.tg[0].ts";
connectAttr "L_Clav_Ctrl.pm" "L_IK_Arm_01_Ctrl_Grp_parentConstraint2.tg[0].tpm";
connectAttr "L_IK_Arm_01_Ctrl_Grp_parentConstraint2.w0" "L_IK_Arm_01_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "L_IK_Arm_01_Ctrl.FollowRotate" "L_IK_Arm_01_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "L_IK_Arm_01_Ctrl_Grp.pim" "L_IK_Arm_01_Ctrl_Grp_scaleConstraint1.cpim"
		;
connectAttr "L_Clav_Ctrl.s" "L_IK_Arm_01_Ctrl_Grp_scaleConstraint1.tg[0].ts";
connectAttr "L_Clav_Ctrl.pm" "L_IK_Arm_01_Ctrl_Grp_scaleConstraint1.tg[0].tpm";
connectAttr "L_IK_Arm_01_Ctrl_Grp_scaleConstraint1.w0" "L_IK_Arm_01_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "makeNurbCircle31.oc" "L_IK_Arm_PV_CtrlShape.cr";
connectAttr "makeNurbCircle32.oc" "L_Arm_IK_CtrlShape.cr";
connectAttr "L_IK_Arm_01_Jnt.msg" "L_Arm_IK_Handle.hsj";
connectAttr "effector1.hp" "L_Arm_IK_Handle.hee";
connectAttr "ikRPsolver.msg" "L_Arm_IK_Handle.hsv";
connectAttr "L_Arm_IK_Handle_poleVectorConstraint1.ctx" "L_Arm_IK_Handle.pvx";
connectAttr "L_Arm_IK_Handle_poleVectorConstraint1.cty" "L_Arm_IK_Handle.pvy";
connectAttr "L_Arm_IK_Handle_poleVectorConstraint1.ctz" "L_Arm_IK_Handle.pvz";
connectAttr "L_Arm_IK_Handle.pim" "L_Arm_IK_Handle_poleVectorConstraint1.cpim";
connectAttr "L_IK_Arm_01_Jnt.pm" "L_Arm_IK_Handle_poleVectorConstraint1.ps";
connectAttr "L_IK_Arm_01_Jnt.t" "L_Arm_IK_Handle_poleVectorConstraint1.crp";
connectAttr "L_IK_Arm_PV_Ctrl.t" "L_Arm_IK_Handle_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "L_IK_Arm_PV_Ctrl.rp" "L_Arm_IK_Handle_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "L_IK_Arm_PV_Ctrl.rpt" "L_Arm_IK_Handle_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "L_IK_Arm_PV_Ctrl.pm" "L_Arm_IK_Handle_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "L_Arm_IK_Handle_poleVectorConstraint1.w0" "L_Arm_IK_Handle_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "group1_scaleX.o" "R_Arm_IK_Ctrls.sx";
connectAttr "group1_scaleY.o" "R_Arm_IK_Ctrls.sy";
connectAttr "group1_scaleZ.o" "R_Arm_IK_Ctrls.sz";
connectAttr "R_Arm_IKFKRev.ox" "R_Arm_IK_Ctrls.v";
connectAttr "R_IK_Arm_01_Ctrl_Grp_parentConstraint1.ctx" "R_IK_Arm_01_Ctrl_Grp.tx"
		;
connectAttr "R_IK_Arm_01_Ctrl_Grp_parentConstraint1.cty" "R_IK_Arm_01_Ctrl_Grp.ty"
		;
connectAttr "R_IK_Arm_01_Ctrl_Grp_parentConstraint1.ctz" "R_IK_Arm_01_Ctrl_Grp.tz"
		;
connectAttr "R_IK_Arm_01_Ctrl_Grp_parentConstraint2.crx" "R_IK_Arm_01_Ctrl_Grp.rx"
		;
connectAttr "R_IK_Arm_01_Ctrl_Grp_parentConstraint2.cry" "R_IK_Arm_01_Ctrl_Grp.ry"
		;
connectAttr "R_IK_Arm_01_Ctrl_Grp_parentConstraint2.crz" "R_IK_Arm_01_Ctrl_Grp.rz"
		;
connectAttr "R_IK_Arm_01_Ctrl_Grp_scaleConstraint1.csx" "R_IK_Arm_01_Ctrl_Grp.sx"
		;
connectAttr "R_IK_Arm_01_Ctrl_Grp_scaleConstraint1.csy" "R_IK_Arm_01_Ctrl_Grp.sy"
		;
connectAttr "R_IK_Arm_01_Ctrl_Grp_scaleConstraint1.csz" "R_IK_Arm_01_Ctrl_Grp.sz"
		;
connectAttr "R_IK_Arm_01_Ctrl_Grp.ro" "R_IK_Arm_01_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "R_IK_Arm_01_Ctrl_Grp.pim" "R_IK_Arm_01_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "R_IK_Arm_01_Ctrl_Grp.rp" "R_IK_Arm_01_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "R_IK_Arm_01_Ctrl_Grp.rpt" "R_IK_Arm_01_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "Spine_04_Ctrl.t" "R_IK_Arm_01_Ctrl_Grp_parentConstraint1.tg[0].tt";
connectAttr "Spine_04_Ctrl.rp" "R_IK_Arm_01_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "Spine_04_Ctrl.rpt" "R_IK_Arm_01_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "Spine_04_Ctrl.r" "R_IK_Arm_01_Ctrl_Grp_parentConstraint1.tg[0].tr";
connectAttr "Spine_04_Ctrl.ro" "R_IK_Arm_01_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "Spine_04_Ctrl.s" "R_IK_Arm_01_Ctrl_Grp_parentConstraint1.tg[0].ts";
connectAttr "Spine_04_Ctrl.pm" "R_IK_Arm_01_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_IK_Arm_01_Ctrl_Grp_parentConstraint1.w0" "R_IK_Arm_01_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "R_IK_Arm_01_Ctrl.FollowTranslate" "R_IK_Arm_01_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "R_IK_Arm_01_Ctrl_Grp.ro" "R_IK_Arm_01_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "R_IK_Arm_01_Ctrl_Grp.pim" "R_IK_Arm_01_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "R_IK_Arm_01_Ctrl_Grp.rp" "R_IK_Arm_01_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "R_IK_Arm_01_Ctrl_Grp.rpt" "R_IK_Arm_01_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "Spine_04_Ctrl.t" "R_IK_Arm_01_Ctrl_Grp_parentConstraint2.tg[0].tt";
connectAttr "Spine_04_Ctrl.rp" "R_IK_Arm_01_Ctrl_Grp_parentConstraint2.tg[0].trp"
		;
connectAttr "Spine_04_Ctrl.rpt" "R_IK_Arm_01_Ctrl_Grp_parentConstraint2.tg[0].trt"
		;
connectAttr "Spine_04_Ctrl.r" "R_IK_Arm_01_Ctrl_Grp_parentConstraint2.tg[0].tr";
connectAttr "Spine_04_Ctrl.ro" "R_IK_Arm_01_Ctrl_Grp_parentConstraint2.tg[0].tro"
		;
connectAttr "Spine_04_Ctrl.s" "R_IK_Arm_01_Ctrl_Grp_parentConstraint2.tg[0].ts";
connectAttr "Spine_04_Ctrl.pm" "R_IK_Arm_01_Ctrl_Grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "R_IK_Arm_01_Ctrl_Grp_parentConstraint2.w0" "R_IK_Arm_01_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "R_IK_Arm_01_Ctrl.FollowRotate" "R_IK_Arm_01_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "R_IK_Arm_01_Ctrl_Grp.pim" "R_IK_Arm_01_Ctrl_Grp_scaleConstraint1.cpim"
		;
connectAttr "Spine_04_Ctrl.s" "R_IK_Arm_01_Ctrl_Grp_scaleConstraint1.tg[0].ts";
connectAttr "Spine_04_Ctrl.pm" "R_IK_Arm_01_Ctrl_Grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "R_IK_Arm_01_Ctrl_Grp_scaleConstraint1.w0" "R_IK_Arm_01_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_IK_Arm_01_Jnt.msg" "R_Arm_IK_Handle.hsj";
connectAttr "effector2.hp" "R_Arm_IK_Handle.hee";
connectAttr "ikRPsolver.msg" "R_Arm_IK_Handle.hsv";
connectAttr "ikHandle1_poleVectorConstraint1.ctx" "R_Arm_IK_Handle.pvx";
connectAttr "ikHandle1_poleVectorConstraint1.cty" "R_Arm_IK_Handle.pvy";
connectAttr "ikHandle1_poleVectorConstraint1.ctz" "R_Arm_IK_Handle.pvz";
connectAttr "R_Arm_IK_Handle.pim" "ikHandle1_poleVectorConstraint1.cpim";
connectAttr "R_IK_Arm_01_Jnt.pm" "ikHandle1_poleVectorConstraint1.ps";
connectAttr "R_IK_Arm_01_Jnt.t" "ikHandle1_poleVectorConstraint1.crp";
connectAttr "R_IK_Arm_PV_Ctrl.t" "ikHandle1_poleVectorConstraint1.tg[0].tt";
connectAttr "R_IK_Arm_PV_Ctrl.rp" "ikHandle1_poleVectorConstraint1.tg[0].trp";
connectAttr "R_IK_Arm_PV_Ctrl.rpt" "ikHandle1_poleVectorConstraint1.tg[0].trt";
connectAttr "R_IK_Arm_PV_Ctrl.pm" "ikHandle1_poleVectorConstraint1.tg[0].tpm";
connectAttr "ikHandle1_poleVectorConstraint1.w0" "ikHandle1_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "L_Leg_IKFKRev.ox" "L_IK_Leg_Ctrls.v";
connectAttr "L_IK_Leg_01_Ctrl_Grp_parentConstraint1.ctx" "L_IK_Leg_01_Ctrl_Grp.tx"
		;
connectAttr "L_IK_Leg_01_Ctrl_Grp_parentConstraint1.cty" "L_IK_Leg_01_Ctrl_Grp.ty"
		;
connectAttr "L_IK_Leg_01_Ctrl_Grp_parentConstraint1.ctz" "L_IK_Leg_01_Ctrl_Grp.tz"
		;
connectAttr "L_IK_Leg_01_Ctrl_Grp_parentConstraint2.crx" "L_IK_Leg_01_Ctrl_Grp.rx"
		;
connectAttr "L_IK_Leg_01_Ctrl_Grp_parentConstraint2.cry" "L_IK_Leg_01_Ctrl_Grp.ry"
		;
connectAttr "L_IK_Leg_01_Ctrl_Grp_parentConstraint2.crz" "L_IK_Leg_01_Ctrl_Grp.rz"
		;
connectAttr "L_IK_Leg_01_Ctrl_Grp_scaleConstraint1.csx" "L_IK_Leg_01_Ctrl_Grp.sx"
		;
connectAttr "L_IK_Leg_01_Ctrl_Grp_scaleConstraint1.csy" "L_IK_Leg_01_Ctrl_Grp.sy"
		;
connectAttr "L_IK_Leg_01_Ctrl_Grp_scaleConstraint1.csz" "L_IK_Leg_01_Ctrl_Grp.sz"
		;
connectAttr "makeNurbCircle33.oc" "L_IK_Leg_01_CtrlShape.cr";
connectAttr "L_IK_Leg_01_Ctrl_Grp.ro" "L_IK_Leg_01_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "L_IK_Leg_01_Ctrl_Grp.pim" "L_IK_Leg_01_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "L_IK_Leg_01_Ctrl_Grp.rp" "L_IK_Leg_01_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "L_IK_Leg_01_Ctrl_Grp.rpt" "L_IK_Leg_01_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "Hip_Ctrl.t" "L_IK_Leg_01_Ctrl_Grp_parentConstraint1.tg[0].tt";
connectAttr "Hip_Ctrl.rp" "L_IK_Leg_01_Ctrl_Grp_parentConstraint1.tg[0].trp";
connectAttr "Hip_Ctrl.rpt" "L_IK_Leg_01_Ctrl_Grp_parentConstraint1.tg[0].trt";
connectAttr "Hip_Ctrl.r" "L_IK_Leg_01_Ctrl_Grp_parentConstraint1.tg[0].tr";
connectAttr "Hip_Ctrl.ro" "L_IK_Leg_01_Ctrl_Grp_parentConstraint1.tg[0].tro";
connectAttr "Hip_Ctrl.s" "L_IK_Leg_01_Ctrl_Grp_parentConstraint1.tg[0].ts";
connectAttr "Hip_Ctrl.pm" "L_IK_Leg_01_Ctrl_Grp_parentConstraint1.tg[0].tpm";
connectAttr "L_IK_Leg_01_Ctrl_Grp_parentConstraint1.w0" "L_IK_Leg_01_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "L_IK_Leg_01_Ctrl.FollowTranslate" "L_IK_Leg_01_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "L_IK_Leg_01_Ctrl_Grp.ro" "L_IK_Leg_01_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "L_IK_Leg_01_Ctrl_Grp.pim" "L_IK_Leg_01_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "L_IK_Leg_01_Ctrl_Grp.rp" "L_IK_Leg_01_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "L_IK_Leg_01_Ctrl_Grp.rpt" "L_IK_Leg_01_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "Hip_Ctrl.t" "L_IK_Leg_01_Ctrl_Grp_parentConstraint2.tg[0].tt";
connectAttr "Hip_Ctrl.rp" "L_IK_Leg_01_Ctrl_Grp_parentConstraint2.tg[0].trp";
connectAttr "Hip_Ctrl.rpt" "L_IK_Leg_01_Ctrl_Grp_parentConstraint2.tg[0].trt";
connectAttr "Hip_Ctrl.r" "L_IK_Leg_01_Ctrl_Grp_parentConstraint2.tg[0].tr";
connectAttr "Hip_Ctrl.ro" "L_IK_Leg_01_Ctrl_Grp_parentConstraint2.tg[0].tro";
connectAttr "Hip_Ctrl.s" "L_IK_Leg_01_Ctrl_Grp_parentConstraint2.tg[0].ts";
connectAttr "Hip_Ctrl.pm" "L_IK_Leg_01_Ctrl_Grp_parentConstraint2.tg[0].tpm";
connectAttr "L_IK_Leg_01_Ctrl_Grp_parentConstraint2.w0" "L_IK_Leg_01_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "L_IK_Leg_01_Ctrl.FollowRotate" "L_IK_Leg_01_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "L_IK_Leg_01_Ctrl_Grp.pim" "L_IK_Leg_01_Ctrl_Grp_scaleConstraint1.cpim"
		;
connectAttr "Hip_Ctrl.s" "L_IK_Leg_01_Ctrl_Grp_scaleConstraint1.tg[0].ts";
connectAttr "Hip_Ctrl.pm" "L_IK_Leg_01_Ctrl_Grp_scaleConstraint1.tg[0].tpm";
connectAttr "L_IK_Leg_01_Ctrl_Grp_scaleConstraint1.w0" "L_IK_Leg_01_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_IK_Leg_PV_01_Ctrl_Offset_parentConstraint1.ctx" "L_IK_Leg_PV_01_Ctrl_Offset.tx"
		;
connectAttr "L_IK_Leg_PV_01_Ctrl_Offset_parentConstraint1.cty" "L_IK_Leg_PV_01_Ctrl_Offset.ty"
		;
connectAttr "L_IK_Leg_PV_01_Ctrl_Offset_parentConstraint1.ctz" "L_IK_Leg_PV_01_Ctrl_Offset.tz"
		;
connectAttr "L_IK_Leg_PV_01_Ctrl_Offset_parentConstraint1.crx" "L_IK_Leg_PV_01_Ctrl_Offset.rx"
		;
connectAttr "L_IK_Leg_PV_01_Ctrl_Offset_parentConstraint1.cry" "L_IK_Leg_PV_01_Ctrl_Offset.ry"
		;
connectAttr "L_IK_Leg_PV_01_Ctrl_Offset_parentConstraint1.crz" "L_IK_Leg_PV_01_Ctrl_Offset.rz"
		;
connectAttr "L_IK_Leg_PV_01_Ctrl_Offset.ro" "L_IK_Leg_PV_01_Ctrl_Offset_parentConstraint1.cro"
		;
connectAttr "L_IK_Leg_PV_01_Ctrl_Offset.pim" "L_IK_Leg_PV_01_Ctrl_Offset_parentConstraint1.cpim"
		;
connectAttr "L_IK_Leg_PV_01_Ctrl_Offset.rp" "L_IK_Leg_PV_01_Ctrl_Offset_parentConstraint1.crp"
		;
connectAttr "L_IK_Leg_PV_01_Ctrl_Offset.rpt" "L_IK_Leg_PV_01_Ctrl_Offset_parentConstraint1.crt"
		;
connectAttr "L_IK_Leg_Handle_Arc_Base.t" "L_IK_Leg_PV_01_Ctrl_Offset_parentConstraint1.tg[0].tt"
		;
connectAttr "L_IK_Leg_Handle_Arc_Base.rp" "L_IK_Leg_PV_01_Ctrl_Offset_parentConstraint1.tg[0].trp"
		;
connectAttr "L_IK_Leg_Handle_Arc_Base.rpt" "L_IK_Leg_PV_01_Ctrl_Offset_parentConstraint1.tg[0].trt"
		;
connectAttr "L_IK_Leg_Handle_Arc_Base.r" "L_IK_Leg_PV_01_Ctrl_Offset_parentConstraint1.tg[0].tr"
		;
connectAttr "L_IK_Leg_Handle_Arc_Base.ro" "L_IK_Leg_PV_01_Ctrl_Offset_parentConstraint1.tg[0].tro"
		;
connectAttr "L_IK_Leg_Handle_Arc_Base.s" "L_IK_Leg_PV_01_Ctrl_Offset_parentConstraint1.tg[0].ts"
		;
connectAttr "L_IK_Leg_Handle_Arc_Base.pm" "L_IK_Leg_PV_01_Ctrl_Offset_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_IK_Leg_PV_01_Ctrl_Offset_parentConstraint1.w0" "L_IK_Leg_PV_01_Ctrl_Offset_parentConstraint1.tg[0].tw"
		;
connectAttr "L_IK_Leg_PV_02_Ctrl_Offset_parentConstraint1.ctx" "L_IK_Leg_PV_02_Ctrl_Offset.tx"
		;
connectAttr "L_IK_Leg_PV_02_Ctrl_Offset_parentConstraint1.cty" "L_IK_Leg_PV_02_Ctrl_Offset.ty"
		;
connectAttr "L_IK_Leg_PV_02_Ctrl_Offset_parentConstraint1.ctz" "L_IK_Leg_PV_02_Ctrl_Offset.tz"
		;
connectAttr "L_IK_Leg_PV_02_Ctrl_Offset_parentConstraint1.crx" "L_IK_Leg_PV_02_Ctrl_Offset.rx"
		;
connectAttr "L_IK_Leg_PV_02_Ctrl_Offset_parentConstraint1.cry" "L_IK_Leg_PV_02_Ctrl_Offset.ry"
		;
connectAttr "L_IK_Leg_PV_02_Ctrl_Offset_parentConstraint1.crz" "L_IK_Leg_PV_02_Ctrl_Offset.rz"
		;
connectAttr "L_IK_Leg_PV_02_Ctrl_Offset_02_pointConstraint1.cty" "L_IK_Leg_PV_02_Ctrl_Offset_02.ty"
		;
connectAttr "L_IK_Leg_PV_02_Follow_Twist_MD.ox" "L_IK_Leg_PV_02_Ctrl_Offset_02.tx"
		;
connectAttr "L_IK_Leg_PV_02_Ctrl_Offset_02.pim" "L_IK_Leg_PV_02_Ctrl_Offset_02_pointConstraint1.cpim"
		;
connectAttr "L_IK_Leg_PV_02_Ctrl_Offset_02.rp" "L_IK_Leg_PV_02_Ctrl_Offset_02_pointConstraint1.crp"
		;
connectAttr "L_IK_Leg_PV_02_Ctrl_Offset_02.rpt" "L_IK_Leg_PV_02_Ctrl_Offset_02_pointConstraint1.crt"
		;
connectAttr "L_Leg_IK_Ctrl.t" "L_IK_Leg_PV_02_Ctrl_Offset_02_pointConstraint1.tg[0].tt"
		;
connectAttr "L_Leg_IK_Ctrl.rp" "L_IK_Leg_PV_02_Ctrl_Offset_02_pointConstraint1.tg[0].trp"
		;
connectAttr "L_Leg_IK_Ctrl.rpt" "L_IK_Leg_PV_02_Ctrl_Offset_02_pointConstraint1.tg[0].trt"
		;
connectAttr "L_Leg_IK_Ctrl.pm" "L_IK_Leg_PV_02_Ctrl_Offset_02_pointConstraint1.tg[0].tpm"
		;
connectAttr "L_IK_Leg_PV_02_Ctrl_Offset_02_pointConstraint1.w0" "L_IK_Leg_PV_02_Ctrl_Offset_02_pointConstraint1.tg[0].tw"
		;
connectAttr "L_IK_Leg_PV_02_Ctrl_Offset.ro" "L_IK_Leg_PV_02_Ctrl_Offset_parentConstraint1.cro"
		;
connectAttr "L_IK_Leg_PV_02_Ctrl_Offset.pim" "L_IK_Leg_PV_02_Ctrl_Offset_parentConstraint1.cpim"
		;
connectAttr "L_IK_Leg_PV_02_Ctrl_Offset.rp" "L_IK_Leg_PV_02_Ctrl_Offset_parentConstraint1.crp"
		;
connectAttr "L_IK_Leg_PV_02_Ctrl_Offset.rpt" "L_IK_Leg_PV_02_Ctrl_Offset_parentConstraint1.crt"
		;
connectAttr "L_IK_Leg_Handle_Arc_Base.t" "L_IK_Leg_PV_02_Ctrl_Offset_parentConstraint1.tg[0].tt"
		;
connectAttr "L_IK_Leg_Handle_Arc_Base.rp" "L_IK_Leg_PV_02_Ctrl_Offset_parentConstraint1.tg[0].trp"
		;
connectAttr "L_IK_Leg_Handle_Arc_Base.rpt" "L_IK_Leg_PV_02_Ctrl_Offset_parentConstraint1.tg[0].trt"
		;
connectAttr "L_IK_Leg_Handle_Arc_Base.r" "L_IK_Leg_PV_02_Ctrl_Offset_parentConstraint1.tg[0].tr"
		;
connectAttr "L_IK_Leg_Handle_Arc_Base.ro" "L_IK_Leg_PV_02_Ctrl_Offset_parentConstraint1.tg[0].tro"
		;
connectAttr "L_IK_Leg_Handle_Arc_Base.s" "L_IK_Leg_PV_02_Ctrl_Offset_parentConstraint1.tg[0].ts"
		;
connectAttr "L_IK_Leg_Handle_Arc_Base.pm" "L_IK_Leg_PV_02_Ctrl_Offset_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_IK_Leg_PV_02_Ctrl_Offset_parentConstraint1.w0" "L_IK_Leg_PV_02_Ctrl_Offset_parentConstraint1.tg[0].tw"
		;
connectAttr "makeNurbCircle36.oc" "L_Leg_IK_CtrlShape.cr";
connectAttr "L_IK_Heel_Jnt.msg" "L_Foot_IK_Heel_02_Handle.hsj";
connectAttr "effector12.hp" "L_Foot_IK_Heel_02_Handle.hee";
connectAttr "ikSCsolver.msg" "L_Foot_IK_Heel_02_Handle.hsv";
connectAttr "L_IK_Ankle.msg" "L_Foot_IK_Heel_01_Handle.hsj";
connectAttr "effector11.hp" "L_Foot_IK_Heel_01_Handle.hee";
connectAttr "ikSCsolver.msg" "L_Foot_IK_Heel_01_Handle.hsv";
connectAttr "L_IK_Toe_1_Rev_IK_Driver.msg" "L_Foot_IK_Toe_02_Handle.hsj";
connectAttr "effector14.hp" "L_Foot_IK_Toe_02_Handle.hee";
connectAttr "ikSCsolver.msg" "L_Foot_IK_Toe_02_Handle.hsv";
connectAttr "L_IK_Ankle.msg" "L_Foot_IK_Toe_01_Handle.hsj";
connectAttr "effector13.hp" "L_Foot_IK_Toe_01_Handle.hee";
connectAttr "ikSCsolver.msg" "L_Foot_IK_Toe_01_Handle.hsv";
connectAttr "L_IK_Leg_02_Jnt.msg" "L_Knee_1_to_Ankle_IK_Handle.hsj";
connectAttr "effector4.hp" "L_Knee_1_to_Ankle_IK_Handle.hee";
connectAttr "ikRPsolver.msg" "L_Knee_1_to_Ankle_IK_Handle.hsv";
connectAttr "ikHandle3_poleVectorConstraint1.ctx" "L_Knee_1_to_Ankle_IK_Handle.pvx"
		;
connectAttr "ikHandle3_poleVectorConstraint1.cty" "L_Knee_1_to_Ankle_IK_Handle.pvy"
		;
connectAttr "ikHandle3_poleVectorConstraint1.ctz" "L_Knee_1_to_Ankle_IK_Handle.pvz"
		;
connectAttr "L_Knee_1_to_Ankle_IK_Handle.pim" "ikHandle3_poleVectorConstraint1.cpim"
		;
connectAttr "L_IK_Leg_02_Jnt.pm" "ikHandle3_poleVectorConstraint1.ps";
connectAttr "L_IK_Leg_02_Jnt.t" "ikHandle3_poleVectorConstraint1.crp";
connectAttr "L_IK_Leg_PV_02_Ctrl.t" "ikHandle3_poleVectorConstraint1.tg[0].tt";
connectAttr "L_IK_Leg_PV_02_Ctrl.rp" "ikHandle3_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "L_IK_Leg_PV_02_Ctrl.rpt" "ikHandle3_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "L_IK_Leg_PV_02_Ctrl.pm" "ikHandle3_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "ikHandle3_poleVectorConstraint1.w0" "ikHandle3_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "R_Leg_IKFKRev.ox" "R_IK_Leg_Ctrls.v";
connectAttr "R_IK_Leg_01_Ctrl_Grp_parentConstraint1.ctx" "R_IK_Leg_01_Ctrl_Grp.tx"
		;
connectAttr "R_IK_Leg_01_Ctrl_Grp_parentConstraint1.cty" "R_IK_Leg_01_Ctrl_Grp.ty"
		;
connectAttr "R_IK_Leg_01_Ctrl_Grp_parentConstraint1.ctz" "R_IK_Leg_01_Ctrl_Grp.tz"
		;
connectAttr "R_IK_Leg_01_Ctrl_Grp_parentConstraint2.crx" "R_IK_Leg_01_Ctrl_Grp.rx"
		;
connectAttr "R_IK_Leg_01_Ctrl_Grp_parentConstraint2.cry" "R_IK_Leg_01_Ctrl_Grp.ry"
		;
connectAttr "R_IK_Leg_01_Ctrl_Grp_parentConstraint2.crz" "R_IK_Leg_01_Ctrl_Grp.rz"
		;
connectAttr "R_IK_Leg_01_Ctrl_Grp_scaleConstraint1.csx" "R_IK_Leg_01_Ctrl_Grp.sx"
		;
connectAttr "R_IK_Leg_01_Ctrl_Grp_scaleConstraint1.csy" "R_IK_Leg_01_Ctrl_Grp.sy"
		;
connectAttr "R_IK_Leg_01_Ctrl_Grp_scaleConstraint1.csz" "R_IK_Leg_01_Ctrl_Grp.sz"
		;
connectAttr "R_IK_Leg_01_Ctrl_Grp.ro" "R_IK_Leg_01_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "R_IK_Leg_01_Ctrl_Grp.pim" "R_IK_Leg_01_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "R_IK_Leg_01_Ctrl_Grp.rp" "R_IK_Leg_01_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "R_IK_Leg_01_Ctrl_Grp.rpt" "R_IK_Leg_01_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "Hip_Ctrl.t" "R_IK_Leg_01_Ctrl_Grp_parentConstraint1.tg[0].tt";
connectAttr "Hip_Ctrl.rp" "R_IK_Leg_01_Ctrl_Grp_parentConstraint1.tg[0].trp";
connectAttr "Hip_Ctrl.rpt" "R_IK_Leg_01_Ctrl_Grp_parentConstraint1.tg[0].trt";
connectAttr "Hip_Ctrl.r" "R_IK_Leg_01_Ctrl_Grp_parentConstraint1.tg[0].tr";
connectAttr "Hip_Ctrl.ro" "R_IK_Leg_01_Ctrl_Grp_parentConstraint1.tg[0].tro";
connectAttr "Hip_Ctrl.s" "R_IK_Leg_01_Ctrl_Grp_parentConstraint1.tg[0].ts";
connectAttr "Hip_Ctrl.pm" "R_IK_Leg_01_Ctrl_Grp_parentConstraint1.tg[0].tpm";
connectAttr "R_IK_Leg_01_Ctrl_Grp_parentConstraint1.w0" "R_IK_Leg_01_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "R_IK_Leg_01_Ctrl.FollowTranslate" "R_IK_Leg_01_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "R_IK_Leg_01_Ctrl_Grp.ro" "R_IK_Leg_01_Ctrl_Grp_parentConstraint2.cro"
		;
connectAttr "R_IK_Leg_01_Ctrl_Grp.pim" "R_IK_Leg_01_Ctrl_Grp_parentConstraint2.cpim"
		;
connectAttr "R_IK_Leg_01_Ctrl_Grp.rp" "R_IK_Leg_01_Ctrl_Grp_parentConstraint2.crp"
		;
connectAttr "R_IK_Leg_01_Ctrl_Grp.rpt" "R_IK_Leg_01_Ctrl_Grp_parentConstraint2.crt"
		;
connectAttr "Hip_Ctrl.t" "R_IK_Leg_01_Ctrl_Grp_parentConstraint2.tg[0].tt";
connectAttr "Hip_Ctrl.rp" "R_IK_Leg_01_Ctrl_Grp_parentConstraint2.tg[0].trp";
connectAttr "Hip_Ctrl.rpt" "R_IK_Leg_01_Ctrl_Grp_parentConstraint2.tg[0].trt";
connectAttr "Hip_Ctrl.r" "R_IK_Leg_01_Ctrl_Grp_parentConstraint2.tg[0].tr";
connectAttr "Hip_Ctrl.ro" "R_IK_Leg_01_Ctrl_Grp_parentConstraint2.tg[0].tro";
connectAttr "Hip_Ctrl.s" "R_IK_Leg_01_Ctrl_Grp_parentConstraint2.tg[0].ts";
connectAttr "Hip_Ctrl.pm" "R_IK_Leg_01_Ctrl_Grp_parentConstraint2.tg[0].tpm";
connectAttr "R_IK_Leg_01_Ctrl_Grp_parentConstraint2.w0" "R_IK_Leg_01_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "R_IK_Leg_01_Ctrl.FollowRotate" "R_IK_Leg_01_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "R_IK_Leg_01_Ctrl_Grp.pim" "R_IK_Leg_01_Ctrl_Grp_scaleConstraint1.cpim"
		;
connectAttr "Hip_Ctrl.s" "R_IK_Leg_01_Ctrl_Grp_scaleConstraint1.tg[0].ts";
connectAttr "Hip_Ctrl.pm" "R_IK_Leg_01_Ctrl_Grp_scaleConstraint1.tg[0].tpm";
connectAttr "R_IK_Leg_01_Ctrl_Grp_scaleConstraint1.w0" "R_IK_Leg_01_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_IK_Leg_PV_01_Ctrl_Offset_parentConstraint1.ctx" "R_IK_Leg_PV_01_Ctrl_Offset.tx"
		;
connectAttr "R_IK_Leg_PV_01_Ctrl_Offset_parentConstraint1.cty" "R_IK_Leg_PV_01_Ctrl_Offset.ty"
		;
connectAttr "R_IK_Leg_PV_01_Ctrl_Offset_parentConstraint1.ctz" "R_IK_Leg_PV_01_Ctrl_Offset.tz"
		;
connectAttr "R_IK_Leg_PV_01_Ctrl_Offset_parentConstraint1.crx" "R_IK_Leg_PV_01_Ctrl_Offset.rx"
		;
connectAttr "R_IK_Leg_PV_01_Ctrl_Offset_parentConstraint1.cry" "R_IK_Leg_PV_01_Ctrl_Offset.ry"
		;
connectAttr "R_IK_Leg_PV_01_Ctrl_Offset_parentConstraint1.crz" "R_IK_Leg_PV_01_Ctrl_Offset.rz"
		;
connectAttr "R_IK_Leg_PV_01_Ctrl_Offset.ro" "R_IK_Leg_PV_01_Ctrl_Offset_parentConstraint1.cro"
		;
connectAttr "R_IK_Leg_PV_01_Ctrl_Offset.pim" "R_IK_Leg_PV_01_Ctrl_Offset_parentConstraint1.cpim"
		;
connectAttr "R_IK_Leg_PV_01_Ctrl_Offset.rp" "R_IK_Leg_PV_01_Ctrl_Offset_parentConstraint1.crp"
		;
connectAttr "R_IK_Leg_PV_01_Ctrl_Offset.rpt" "R_IK_Leg_PV_01_Ctrl_Offset_parentConstraint1.crt"
		;
connectAttr "R_IK_Leg_Handle_Arc_Base.t" "R_IK_Leg_PV_01_Ctrl_Offset_parentConstraint1.tg[0].tt"
		;
connectAttr "R_IK_Leg_Handle_Arc_Base.rp" "R_IK_Leg_PV_01_Ctrl_Offset_parentConstraint1.tg[0].trp"
		;
connectAttr "R_IK_Leg_Handle_Arc_Base.rpt" "R_IK_Leg_PV_01_Ctrl_Offset_parentConstraint1.tg[0].trt"
		;
connectAttr "R_IK_Leg_Handle_Arc_Base.r" "R_IK_Leg_PV_01_Ctrl_Offset_parentConstraint1.tg[0].tr"
		;
connectAttr "R_IK_Leg_Handle_Arc_Base.ro" "R_IK_Leg_PV_01_Ctrl_Offset_parentConstraint1.tg[0].tro"
		;
connectAttr "R_IK_Leg_Handle_Arc_Base.s" "R_IK_Leg_PV_01_Ctrl_Offset_parentConstraint1.tg[0].ts"
		;
connectAttr "R_IK_Leg_Handle_Arc_Base.pm" "R_IK_Leg_PV_01_Ctrl_Offset_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_IK_Leg_PV_01_Ctrl_Offset_parentConstraint1.w0" "R_IK_Leg_PV_01_Ctrl_Offset_parentConstraint1.tg[0].tw"
		;
connectAttr "R_IK_Leg_PV_02_Ctrl_Offset_parentConstraint1.ctx" "R_IK_Leg_PV_02_Ctrl_Offset.tx"
		;
connectAttr "R_IK_Leg_PV_02_Ctrl_Offset_parentConstraint1.cty" "R_IK_Leg_PV_02_Ctrl_Offset.ty"
		;
connectAttr "R_IK_Leg_PV_02_Ctrl_Offset_parentConstraint1.ctz" "R_IK_Leg_PV_02_Ctrl_Offset.tz"
		;
connectAttr "R_IK_Leg_PV_02_Ctrl_Offset_parentConstraint1.crx" "R_IK_Leg_PV_02_Ctrl_Offset.rx"
		;
connectAttr "R_IK_Leg_PV_02_Ctrl_Offset_parentConstraint1.cry" "R_IK_Leg_PV_02_Ctrl_Offset.ry"
		;
connectAttr "R_IK_Leg_PV_02_Ctrl_Offset_parentConstraint1.crz" "R_IK_Leg_PV_02_Ctrl_Offset.rz"
		;
connectAttr "R_IK_Leg_PV_02_Ctrl_Offset_02_pointConstraint1.cty" "R_IK_Leg_PV_02_Ctrl_Offset_02.ty"
		;
connectAttr "R_IK_Leg_PV_02_Follow_Twist_MD.ox" "R_IK_Leg_PV_02_Ctrl_Offset_02.tx"
		;
connectAttr "R_IK_Leg_PV_02_Ctrl_Offset_02.pim" "R_IK_Leg_PV_02_Ctrl_Offset_02_pointConstraint1.cpim"
		;
connectAttr "R_IK_Leg_PV_02_Ctrl_Offset_02.rp" "R_IK_Leg_PV_02_Ctrl_Offset_02_pointConstraint1.crp"
		;
connectAttr "R_IK_Leg_PV_02_Ctrl_Offset_02.rpt" "R_IK_Leg_PV_02_Ctrl_Offset_02_pointConstraint1.crt"
		;
connectAttr "R_Leg_IK_Ctrl.t" "R_IK_Leg_PV_02_Ctrl_Offset_02_pointConstraint1.tg[0].tt"
		;
connectAttr "R_Leg_IK_Ctrl.rp" "R_IK_Leg_PV_02_Ctrl_Offset_02_pointConstraint1.tg[0].trp"
		;
connectAttr "R_Leg_IK_Ctrl.rpt" "R_IK_Leg_PV_02_Ctrl_Offset_02_pointConstraint1.tg[0].trt"
		;
connectAttr "R_Leg_IK_Ctrl.pm" "R_IK_Leg_PV_02_Ctrl_Offset_02_pointConstraint1.tg[0].tpm"
		;
connectAttr "R_IK_Leg_PV_02_Ctrl_Offset_02_pointConstraint1.w0" "R_IK_Leg_PV_02_Ctrl_Offset_02_pointConstraint1.tg[0].tw"
		;
connectAttr "R_IK_Leg_PV_02_Ctrl_Offset.ro" "R_IK_Leg_PV_02_Ctrl_Offset_parentConstraint1.cro"
		;
connectAttr "R_IK_Leg_PV_02_Ctrl_Offset.pim" "R_IK_Leg_PV_02_Ctrl_Offset_parentConstraint1.cpim"
		;
connectAttr "R_IK_Leg_PV_02_Ctrl_Offset.rp" "R_IK_Leg_PV_02_Ctrl_Offset_parentConstraint1.crp"
		;
connectAttr "R_IK_Leg_PV_02_Ctrl_Offset.rpt" "R_IK_Leg_PV_02_Ctrl_Offset_parentConstraint1.crt"
		;
connectAttr "R_IK_Leg_Handle_Arc_Base.t" "R_IK_Leg_PV_02_Ctrl_Offset_parentConstraint1.tg[0].tt"
		;
connectAttr "R_IK_Leg_Handle_Arc_Base.rp" "R_IK_Leg_PV_02_Ctrl_Offset_parentConstraint1.tg[0].trp"
		;
connectAttr "R_IK_Leg_Handle_Arc_Base.rpt" "R_IK_Leg_PV_02_Ctrl_Offset_parentConstraint1.tg[0].trt"
		;
connectAttr "R_IK_Leg_Handle_Arc_Base.r" "R_IK_Leg_PV_02_Ctrl_Offset_parentConstraint1.tg[0].tr"
		;
connectAttr "R_IK_Leg_Handle_Arc_Base.ro" "R_IK_Leg_PV_02_Ctrl_Offset_parentConstraint1.tg[0].tro"
		;
connectAttr "R_IK_Leg_Handle_Arc_Base.s" "R_IK_Leg_PV_02_Ctrl_Offset_parentConstraint1.tg[0].ts"
		;
connectAttr "R_IK_Leg_Handle_Arc_Base.pm" "R_IK_Leg_PV_02_Ctrl_Offset_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_IK_Leg_PV_02_Ctrl_Offset_parentConstraint1.w0" "R_IK_Leg_PV_02_Ctrl_Offset_parentConstraint1.tg[0].tw"
		;
connectAttr "R_IK_Heel_Jnt.msg" "R_Foot_IK_Heel_02_Handle.hsj";
connectAttr "effector18.hp" "R_Foot_IK_Heel_02_Handle.hee";
connectAttr "ikSCsolver.msg" "R_Foot_IK_Heel_02_Handle.hsv";
connectAttr "|ROOT|Cog_Jnt|Hip_Jnt|R_IK_Leg_01_Jnt|R_IK_Leg_02_Jnt|R_IK_Leg_03_Jnt|R_IK_Leg_04_Jnt|R_IK_Ankle|R_IK_Toe_1_Rev_IK_Driver.msg" "R_Foot_IK_Toe_02_Handle.hsj"
		;
connectAttr "effector16.hp" "R_Foot_IK_Toe_02_Handle.hee";
connectAttr "ikSCsolver.msg" "R_Foot_IK_Toe_02_Handle.hsv";
connectAttr "R_IK_Ankle.msg" "R_Foot_IK_Toe_01_Handle.hsj";
connectAttr "effector15.hp" "R_Foot_IK_Toe_01_Handle.hee";
connectAttr "ikSCsolver.msg" "R_Foot_IK_Toe_01_Handle.hsv";
connectAttr "R_IK_Leg_02_Jnt.msg" "R_Knee_1_to_Ankle_IK_Handle.hsj";
connectAttr "effector6.hp" "R_Knee_1_to_Ankle_IK_Handle.hee";
connectAttr "ikRPsolver.msg" "R_Knee_1_to_Ankle_IK_Handle.hsv";
connectAttr "R_Knee_1_to_Ankle_IK_Handle_poleVectorConstraint1.ctx" "R_Knee_1_to_Ankle_IK_Handle.pvx"
		;
connectAttr "R_Knee_1_to_Ankle_IK_Handle_poleVectorConstraint1.cty" "R_Knee_1_to_Ankle_IK_Handle.pvy"
		;
connectAttr "R_Knee_1_to_Ankle_IK_Handle_poleVectorConstraint1.ctz" "R_Knee_1_to_Ankle_IK_Handle.pvz"
		;
connectAttr "R_Knee_1_to_Ankle_IK_Handle.pim" "R_Knee_1_to_Ankle_IK_Handle_poleVectorConstraint1.cpim"
		;
connectAttr "R_IK_Leg_02_Jnt.pm" "R_Knee_1_to_Ankle_IK_Handle_poleVectorConstraint1.ps"
		;
connectAttr "R_IK_Leg_02_Jnt.t" "R_Knee_1_to_Ankle_IK_Handle_poleVectorConstraint1.crp"
		;
connectAttr "R_IK_Leg_PV_02_Ctrl.t" "R_Knee_1_to_Ankle_IK_Handle_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "R_IK_Leg_PV_02_Ctrl.rp" "R_Knee_1_to_Ankle_IK_Handle_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "R_IK_Leg_PV_02_Ctrl.rpt" "R_Knee_1_to_Ankle_IK_Handle_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "R_IK_Leg_PV_02_Ctrl.pm" "R_Knee_1_to_Ankle_IK_Handle_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "R_Knee_1_to_Ankle_IK_Handle_poleVectorConstraint1.w0" "R_Knee_1_to_Ankle_IK_Handle_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "R_IK_Ankle.msg" "R_Foot_IK_Heel_01_Handle.hsj";
connectAttr "effector17.hp" "R_Foot_IK_Heel_01_Handle.hee";
connectAttr "ikSCsolver.msg" "R_Foot_IK_Heel_01_Handle.hsv";
connectAttr "L_IK_Leg_Point_parentConstraint1.ctx" "L_IK_Leg_Point.tx";
connectAttr "L_IK_Leg_Point_parentConstraint1.cty" "L_IK_Leg_Point.ty";
connectAttr "L_IK_Leg_Point_parentConstraint1.ctz" "L_IK_Leg_Point.tz";
connectAttr "L_IK_Leg_Point_parentConstraint1.crx" "L_IK_Leg_Point.rx";
connectAttr "L_IK_Leg_Point_parentConstraint1.cry" "L_IK_Leg_Point.ry";
connectAttr "L_IK_Leg_Point_parentConstraint1.crz" "L_IK_Leg_Point.rz";
connectAttr "L_IK_Leg_Handle_Arc_Base_aimConstraint1.crx" "L_IK_Leg_Handle_Arc_Base.rx"
		;
connectAttr "L_IK_Leg_Handle_Arc_Base_aimConstraint1.cry" "L_IK_Leg_Handle_Arc_Base.ry"
		;
connectAttr "L_IK_Leg_Handle_Arc_Base_aimConstraint1.crz" "L_IK_Leg_Handle_Arc_Base.rz"
		;
connectAttr "L_IK_Leg_Handle_Arc_Base.pim" "L_IK_Leg_Handle_Arc_Base_aimConstraint1.cpim"
		;
connectAttr "L_IK_Leg_Handle_Arc_Base.t" "L_IK_Leg_Handle_Arc_Base_aimConstraint1.ct"
		;
connectAttr "L_IK_Leg_Handle_Arc_Base.rp" "L_IK_Leg_Handle_Arc_Base_aimConstraint1.crp"
		;
connectAttr "L_IK_Leg_Handle_Arc_Base.rpt" "L_IK_Leg_Handle_Arc_Base_aimConstraint1.crt"
		;
connectAttr "L_IK_Leg_Handle_Arc_Base.ro" "L_IK_Leg_Handle_Arc_Base_aimConstraint1.cro"
		;
connectAttr "L_IK_Leg_Handle_Arc_Trgt.t" "L_IK_Leg_Handle_Arc_Base_aimConstraint1.tg[0].tt"
		;
connectAttr "L_IK_Leg_Handle_Arc_Trgt.rp" "L_IK_Leg_Handle_Arc_Base_aimConstraint1.tg[0].trp"
		;
connectAttr "L_IK_Leg_Handle_Arc_Trgt.rpt" "L_IK_Leg_Handle_Arc_Base_aimConstraint1.tg[0].trt"
		;
connectAttr "L_IK_Leg_Handle_Arc_Trgt.pm" "L_IK_Leg_Handle_Arc_Base_aimConstraint1.tg[0].tpm"
		;
connectAttr "L_IK_Leg_Handle_Arc_Base_aimConstraint1.w0" "L_IK_Leg_Handle_Arc_Base_aimConstraint1.tg[0].tw"
		;
connectAttr "L_IK_Leg_Handle_Arc_Up.wm" "L_IK_Leg_Handle_Arc_Base_aimConstraint1.wum"
		;
connectAttr "L_IK_Leg_Handle_Arc_Trgt_pointConstraint1.ctx" "L_IK_Leg_Handle_Arc_Trgt.tx"
		;
connectAttr "L_IK_Leg_Handle_Arc_Trgt_pointConstraint1.cty" "L_IK_Leg_Handle_Arc_Trgt.ty"
		;
connectAttr "L_IK_Leg_Handle_Arc_Trgt_pointConstraint1.ctz" "L_IK_Leg_Handle_Arc_Trgt.tz"
		;
connectAttr "L_IK_Leg_Handle_Arc_Trgt.pim" "L_IK_Leg_Handle_Arc_Trgt_pointConstraint1.cpim"
		;
connectAttr "L_IK_Leg_Handle_Arc_Trgt.rp" "L_IK_Leg_Handle_Arc_Trgt_pointConstraint1.crp"
		;
connectAttr "L_IK_Leg_Handle_Arc_Trgt.rpt" "L_IK_Leg_Handle_Arc_Trgt_pointConstraint1.crt"
		;
connectAttr "L_Foot_IK_Ball_Ctrl.t" "L_IK_Leg_Handle_Arc_Trgt_pointConstraint1.tg[0].tt"
		;
connectAttr "L_Foot_IK_Ball_Ctrl.rp" "L_IK_Leg_Handle_Arc_Trgt_pointConstraint1.tg[0].trp"
		;
connectAttr "L_Foot_IK_Ball_Ctrl.rpt" "L_IK_Leg_Handle_Arc_Trgt_pointConstraint1.tg[0].trt"
		;
connectAttr "L_Foot_IK_Ball_Ctrl.pm" "L_IK_Leg_Handle_Arc_Trgt_pointConstraint1.tg[0].tpm"
		;
connectAttr "L_IK_Leg_Handle_Arc_Trgt_pointConstraint1.w0" "L_IK_Leg_Handle_Arc_Trgt_pointConstraint1.tg[0].tw"
		;
connectAttr "L_IK_Leg_Point.ro" "L_IK_Leg_Point_parentConstraint1.cro";
connectAttr "L_IK_Leg_Point.pim" "L_IK_Leg_Point_parentConstraint1.cpim";
connectAttr "L_IK_Leg_Point.rp" "L_IK_Leg_Point_parentConstraint1.crp";
connectAttr "L_IK_Leg_Point.rpt" "L_IK_Leg_Point_parentConstraint1.crt";
connectAttr "Hip_Jnt.t" "L_IK_Leg_Point_parentConstraint1.tg[0].tt";
connectAttr "Hip_Jnt.rp" "L_IK_Leg_Point_parentConstraint1.tg[0].trp";
connectAttr "Hip_Jnt.rpt" "L_IK_Leg_Point_parentConstraint1.tg[0].trt";
connectAttr "Hip_Jnt.r" "L_IK_Leg_Point_parentConstraint1.tg[0].tr";
connectAttr "Hip_Jnt.ro" "L_IK_Leg_Point_parentConstraint1.tg[0].tro";
connectAttr "Hip_Jnt.s" "L_IK_Leg_Point_parentConstraint1.tg[0].ts";
connectAttr "Hip_Jnt.pm" "L_IK_Leg_Point_parentConstraint1.tg[0].tpm";
connectAttr "Hip_Jnt.jo" "L_IK_Leg_Point_parentConstraint1.tg[0].tjo";
connectAttr "Hip_Jnt.ssc" "L_IK_Leg_Point_parentConstraint1.tg[0].tsc";
connectAttr "Hip_Jnt.is" "L_IK_Leg_Point_parentConstraint1.tg[0].tis";
connectAttr "L_IK_Leg_Point_parentConstraint1.w0" "L_IK_Leg_Point_parentConstraint1.tg[0].tw"
		;
connectAttr "R_IK_Leg_Point_parentConstraint1.ctx" "R_IK_Leg_Point.tx";
connectAttr "R_IK_Leg_Point_parentConstraint1.cty" "R_IK_Leg_Point.ty";
connectAttr "R_IK_Leg_Point_parentConstraint1.ctz" "R_IK_Leg_Point.tz";
connectAttr "R_IK_Leg_Point_parentConstraint1.crx" "R_IK_Leg_Point.rx";
connectAttr "R_IK_Leg_Point_parentConstraint1.cry" "R_IK_Leg_Point.ry";
connectAttr "R_IK_Leg_Point_parentConstraint1.crz" "R_IK_Leg_Point.rz";
connectAttr "R_IK_Leg_Handle_Arc_Base_aimConstraint1.crx" "R_IK_Leg_Handle_Arc_Base.rx"
		;
connectAttr "R_IK_Leg_Handle_Arc_Base_aimConstraint1.cry" "R_IK_Leg_Handle_Arc_Base.ry"
		;
connectAttr "R_IK_Leg_Handle_Arc_Base_aimConstraint1.crz" "R_IK_Leg_Handle_Arc_Base.rz"
		;
connectAttr "R_IK_Leg_Handle_Arc_Base.pim" "R_IK_Leg_Handle_Arc_Base_aimConstraint1.cpim"
		;
connectAttr "R_IK_Leg_Handle_Arc_Base.t" "R_IK_Leg_Handle_Arc_Base_aimConstraint1.ct"
		;
connectAttr "R_IK_Leg_Handle_Arc_Base.rp" "R_IK_Leg_Handle_Arc_Base_aimConstraint1.crp"
		;
connectAttr "R_IK_Leg_Handle_Arc_Base.rpt" "R_IK_Leg_Handle_Arc_Base_aimConstraint1.crt"
		;
connectAttr "R_IK_Leg_Handle_Arc_Base.ro" "R_IK_Leg_Handle_Arc_Base_aimConstraint1.cro"
		;
connectAttr "R_IK_Leg_Handle_Arc_Trgt.t" "R_IK_Leg_Handle_Arc_Base_aimConstraint1.tg[0].tt"
		;
connectAttr "R_IK_Leg_Handle_Arc_Trgt.rp" "R_IK_Leg_Handle_Arc_Base_aimConstraint1.tg[0].trp"
		;
connectAttr "R_IK_Leg_Handle_Arc_Trgt.rpt" "R_IK_Leg_Handle_Arc_Base_aimConstraint1.tg[0].trt"
		;
connectAttr "R_IK_Leg_Handle_Arc_Trgt.pm" "R_IK_Leg_Handle_Arc_Base_aimConstraint1.tg[0].tpm"
		;
connectAttr "R_IK_Leg_Handle_Arc_Base_aimConstraint1.w0" "R_IK_Leg_Handle_Arc_Base_aimConstraint1.tg[0].tw"
		;
connectAttr "R_IK_Leg_Handle_Arc_Up.wm" "R_IK_Leg_Handle_Arc_Base_aimConstraint1.wum"
		;
connectAttr "R_IK_Leg_Handle_Arc_Trgt_pointConstraint1.ctx" "R_IK_Leg_Handle_Arc_Trgt.tx"
		;
connectAttr "R_IK_Leg_Handle_Arc_Trgt_pointConstraint1.cty" "R_IK_Leg_Handle_Arc_Trgt.ty"
		;
connectAttr "R_IK_Leg_Handle_Arc_Trgt_pointConstraint1.ctz" "R_IK_Leg_Handle_Arc_Trgt.tz"
		;
connectAttr "R_IK_Leg_Handle_Arc_Trgt.pim" "R_IK_Leg_Handle_Arc_Trgt_pointConstraint1.cpim"
		;
connectAttr "R_IK_Leg_Handle_Arc_Trgt.rp" "R_IK_Leg_Handle_Arc_Trgt_pointConstraint1.crp"
		;
connectAttr "R_IK_Leg_Handle_Arc_Trgt.rpt" "R_IK_Leg_Handle_Arc_Trgt_pointConstraint1.crt"
		;
connectAttr "R_Foot_IK_Ball_Ctrl.t" "R_IK_Leg_Handle_Arc_Trgt_pointConstraint1.tg[0].tt"
		;
connectAttr "R_Foot_IK_Ball_Ctrl.rp" "R_IK_Leg_Handle_Arc_Trgt_pointConstraint1.tg[0].trp"
		;
connectAttr "R_Foot_IK_Ball_Ctrl.rpt" "R_IK_Leg_Handle_Arc_Trgt_pointConstraint1.tg[0].trt"
		;
connectAttr "R_Foot_IK_Ball_Ctrl.pm" "R_IK_Leg_Handle_Arc_Trgt_pointConstraint1.tg[0].tpm"
		;
connectAttr "R_IK_Leg_Handle_Arc_Trgt_pointConstraint1.w0" "R_IK_Leg_Handle_Arc_Trgt_pointConstraint1.tg[0].tw"
		;
connectAttr "R_IK_Leg_Point.ro" "R_IK_Leg_Point_parentConstraint1.cro";
connectAttr "R_IK_Leg_Point.pim" "R_IK_Leg_Point_parentConstraint1.cpim";
connectAttr "R_IK_Leg_Point.rp" "R_IK_Leg_Point_parentConstraint1.crp";
connectAttr "R_IK_Leg_Point.rpt" "R_IK_Leg_Point_parentConstraint1.crt";
connectAttr "Hip_Jnt.t" "R_IK_Leg_Point_parentConstraint1.tg[0].tt";
connectAttr "Hip_Jnt.rp" "R_IK_Leg_Point_parentConstraint1.tg[0].trp";
connectAttr "Hip_Jnt.rpt" "R_IK_Leg_Point_parentConstraint1.tg[0].trt";
connectAttr "Hip_Jnt.r" "R_IK_Leg_Point_parentConstraint1.tg[0].tr";
connectAttr "Hip_Jnt.ro" "R_IK_Leg_Point_parentConstraint1.tg[0].tro";
connectAttr "Hip_Jnt.s" "R_IK_Leg_Point_parentConstraint1.tg[0].ts";
connectAttr "Hip_Jnt.pm" "R_IK_Leg_Point_parentConstraint1.tg[0].tpm";
connectAttr "Hip_Jnt.jo" "R_IK_Leg_Point_parentConstraint1.tg[0].tjo";
connectAttr "Hip_Jnt.ssc" "R_IK_Leg_Point_parentConstraint1.tg[0].tsc";
connectAttr "Hip_Jnt.is" "R_IK_Leg_Point_parentConstraint1.tg[0].tis";
connectAttr "R_IK_Leg_Point_parentConstraint1.w0" "R_IK_Leg_Point_parentConstraint1.tg[0].tw"
		;
connectAttr "ikHandle2_Grp_parentConstraint1.ctx" "L_Hip_to_Knee_2_IK_Handle_Grp.tx"
		;
connectAttr "ikHandle2_Grp_parentConstraint1.cty" "L_Hip_to_Knee_2_IK_Handle_Grp.ty"
		;
connectAttr "ikHandle2_Grp_parentConstraint1.ctz" "L_Hip_to_Knee_2_IK_Handle_Grp.tz"
		;
connectAttr "ikHandle2_Grp_parentConstraint1.crx" "L_Hip_to_Knee_2_IK_Handle_Grp.rx"
		;
connectAttr "ikHandle2_Grp_parentConstraint1.cry" "L_Hip_to_Knee_2_IK_Handle_Grp.ry"
		;
connectAttr "ikHandle2_Grp_parentConstraint1.crz" "L_Hip_to_Knee_2_IK_Handle_Grp.rz"
		;
connectAttr "ikHandle2_Offset_Grp_pointConstraint1.cty" "L_Hip_to_Knee_2_IK_Handle_Offset_Grp.ty"
		;
connectAttr "L_IK_Leg_01_Jnt.msg" "L_Hip_to_Knee_2_IK_Handle.hsj";
connectAttr "effector3.hp" "L_Hip_to_Knee_2_IK_Handle.hee";
connectAttr "ikRPsolver.msg" "L_Hip_to_Knee_2_IK_Handle.hsv";
connectAttr "ikHandle2_poleVectorConstraint1.ctx" "L_Hip_to_Knee_2_IK_Handle.pvx"
		;
connectAttr "ikHandle2_poleVectorConstraint1.cty" "L_Hip_to_Knee_2_IK_Handle.pvy"
		;
connectAttr "ikHandle2_poleVectorConstraint1.ctz" "L_Hip_to_Knee_2_IK_Handle.pvz"
		;
connectAttr "L_Hip_to_Knee_2_IK_Handle.pim" "ikHandle2_poleVectorConstraint1.cpim"
		;
connectAttr "L_IK_Leg_01_Jnt.pm" "ikHandle2_poleVectorConstraint1.ps";
connectAttr "L_IK_Leg_01_Jnt.t" "ikHandle2_poleVectorConstraint1.crp";
connectAttr "L_IK_Leg_PV_01_Ctrl.t" "ikHandle2_poleVectorConstraint1.tg[0].tt";
connectAttr "L_IK_Leg_PV_01_Ctrl.rp" "ikHandle2_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "L_IK_Leg_PV_01_Ctrl.rpt" "ikHandle2_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "L_IK_Leg_PV_01_Ctrl.pm" "ikHandle2_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "ikHandle2_poleVectorConstraint1.w0" "ikHandle2_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "L_Hip_to_Knee_2_IK_Handle_Offset_Grp.pim" "ikHandle2_Offset_Grp_pointConstraint1.cpim"
		;
connectAttr "L_Hip_to_Knee_2_IK_Handle_Offset_Grp.rp" "ikHandle2_Offset_Grp_pointConstraint1.crp"
		;
connectAttr "L_Hip_to_Knee_2_IK_Handle_Offset_Grp.rpt" "ikHandle2_Offset_Grp_pointConstraint1.crt"
		;
connectAttr "L_IK_Leg_Handle_Arc_Base.t" "ikHandle2_Offset_Grp_pointConstraint1.tg[0].tt"
		;
connectAttr "L_IK_Leg_Handle_Arc_Base.rp" "ikHandle2_Offset_Grp_pointConstraint1.tg[0].trp"
		;
connectAttr "L_IK_Leg_Handle_Arc_Base.rpt" "ikHandle2_Offset_Grp_pointConstraint1.tg[0].trt"
		;
connectAttr "L_IK_Leg_Handle_Arc_Base.pm" "ikHandle2_Offset_Grp_pointConstraint1.tg[0].tpm"
		;
connectAttr "ikHandle2_Offset_Grp_pointConstraint1.w0" "ikHandle2_Offset_Grp_pointConstraint1.tg[0].tw"
		;
connectAttr "L_IK_Leg_Handle_Arc_Trgt.t" "ikHandle2_Offset_Grp_pointConstraint1.tg[1].tt"
		;
connectAttr "L_IK_Leg_Handle_Arc_Trgt.rp" "ikHandle2_Offset_Grp_pointConstraint1.tg[1].trp"
		;
connectAttr "L_IK_Leg_Handle_Arc_Trgt.rpt" "ikHandle2_Offset_Grp_pointConstraint1.tg[1].trt"
		;
connectAttr "L_IK_Leg_Handle_Arc_Trgt.pm" "ikHandle2_Offset_Grp_pointConstraint1.tg[1].tpm"
		;
connectAttr "ikHandle2_Offset_Grp_pointConstraint1.w1" "ikHandle2_Offset_Grp_pointConstraint1.tg[1].tw"
		;
connectAttr "L_Hip_to_Knee_2_IK_Handle_Grp.ro" "ikHandle2_Grp_parentConstraint1.cro"
		;
connectAttr "L_Hip_to_Knee_2_IK_Handle_Grp.pim" "ikHandle2_Grp_parentConstraint1.cpim"
		;
connectAttr "L_Hip_to_Knee_2_IK_Handle_Grp.rp" "ikHandle2_Grp_parentConstraint1.crp"
		;
connectAttr "L_Hip_to_Knee_2_IK_Handle_Grp.rpt" "ikHandle2_Grp_parentConstraint1.crt"
		;
connectAttr "L_IK_Leg_Handle_Arc_Base.t" "ikHandle2_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "L_IK_Leg_Handle_Arc_Base.rp" "ikHandle2_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "L_IK_Leg_Handle_Arc_Base.rpt" "ikHandle2_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "L_IK_Leg_Handle_Arc_Base.r" "ikHandle2_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "L_IK_Leg_Handle_Arc_Base.ro" "ikHandle2_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "L_IK_Leg_Handle_Arc_Base.s" "ikHandle2_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "L_IK_Leg_Handle_Arc_Base.pm" "ikHandle2_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "ikHandle2_Grp_parentConstraint1.w0" "ikHandle2_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Hip_to_Knee_2_IK_Handle_Grp_parentConstraint1.ctx" "R_Hip_to_Knee_2_IK_Handle_Grp.tx"
		;
connectAttr "R_Hip_to_Knee_2_IK_Handle_Grp_parentConstraint1.cty" "R_Hip_to_Knee_2_IK_Handle_Grp.ty"
		;
connectAttr "R_Hip_to_Knee_2_IK_Handle_Grp_parentConstraint1.ctz" "R_Hip_to_Knee_2_IK_Handle_Grp.tz"
		;
connectAttr "R_Hip_to_Knee_2_IK_Handle_Grp_parentConstraint1.crx" "R_Hip_to_Knee_2_IK_Handle_Grp.rx"
		;
connectAttr "R_Hip_to_Knee_2_IK_Handle_Grp_parentConstraint1.cry" "R_Hip_to_Knee_2_IK_Handle_Grp.ry"
		;
connectAttr "R_Hip_to_Knee_2_IK_Handle_Grp_parentConstraint1.crz" "R_Hip_to_Knee_2_IK_Handle_Grp.rz"
		;
connectAttr "R_Hip_to_Knee_2_IK_Handle_Offset_Grp_pointConstraint1.cty" "R_Hip_to_Knee_2_IK_Handle_Offset_Grp.ty"
		;
connectAttr "R_IK_Leg_01_Jnt.msg" "R_Hip_to_Knee_2_IK_Handle.hsj";
connectAttr "effector5.hp" "R_Hip_to_Knee_2_IK_Handle.hee";
connectAttr "ikRPsolver.msg" "R_Hip_to_Knee_2_IK_Handle.hsv";
connectAttr "R_Hip_to_Knee_2_IK_Handle_poleVectorConstraint1.ctx" "R_Hip_to_Knee_2_IK_Handle.pvx"
		;
connectAttr "R_Hip_to_Knee_2_IK_Handle_poleVectorConstraint1.cty" "R_Hip_to_Knee_2_IK_Handle.pvy"
		;
connectAttr "R_Hip_to_Knee_2_IK_Handle_poleVectorConstraint1.ctz" "R_Hip_to_Knee_2_IK_Handle.pvz"
		;
connectAttr "R_Hip_to_Knee_2_IK_Handle.pim" "R_Hip_to_Knee_2_IK_Handle_poleVectorConstraint1.cpim"
		;
connectAttr "R_IK_Leg_01_Jnt.pm" "R_Hip_to_Knee_2_IK_Handle_poleVectorConstraint1.ps"
		;
connectAttr "R_IK_Leg_01_Jnt.t" "R_Hip_to_Knee_2_IK_Handle_poleVectorConstraint1.crp"
		;
connectAttr "R_IK_Leg_PV_01_Ctrl.t" "R_Hip_to_Knee_2_IK_Handle_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "R_IK_Leg_PV_01_Ctrl.rp" "R_Hip_to_Knee_2_IK_Handle_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "R_IK_Leg_PV_01_Ctrl.rpt" "R_Hip_to_Knee_2_IK_Handle_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "R_IK_Leg_PV_01_Ctrl.pm" "R_Hip_to_Knee_2_IK_Handle_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "R_Hip_to_Knee_2_IK_Handle_poleVectorConstraint1.w0" "R_Hip_to_Knee_2_IK_Handle_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "R_Hip_to_Knee_2_IK_Handle_Offset_Grp.pim" "R_Hip_to_Knee_2_IK_Handle_Offset_Grp_pointConstraint1.cpim"
		;
connectAttr "R_Hip_to_Knee_2_IK_Handle_Offset_Grp.rp" "R_Hip_to_Knee_2_IK_Handle_Offset_Grp_pointConstraint1.crp"
		;
connectAttr "R_Hip_to_Knee_2_IK_Handle_Offset_Grp.rpt" "R_Hip_to_Knee_2_IK_Handle_Offset_Grp_pointConstraint1.crt"
		;
connectAttr "R_IK_Leg_Handle_Arc_Base.t" "R_Hip_to_Knee_2_IK_Handle_Offset_Grp_pointConstraint1.tg[0].tt"
		;
connectAttr "R_IK_Leg_Handle_Arc_Base.rp" "R_Hip_to_Knee_2_IK_Handle_Offset_Grp_pointConstraint1.tg[0].trp"
		;
connectAttr "R_IK_Leg_Handle_Arc_Base.rpt" "R_Hip_to_Knee_2_IK_Handle_Offset_Grp_pointConstraint1.tg[0].trt"
		;
connectAttr "R_IK_Leg_Handle_Arc_Base.pm" "R_Hip_to_Knee_2_IK_Handle_Offset_Grp_pointConstraint1.tg[0].tpm"
		;
connectAttr "R_Hip_to_Knee_2_IK_Handle_Offset_Grp_pointConstraint1.w0" "R_Hip_to_Knee_2_IK_Handle_Offset_Grp_pointConstraint1.tg[0].tw"
		;
connectAttr "R_IK_Leg_Handle_Arc_Trgt.t" "R_Hip_to_Knee_2_IK_Handle_Offset_Grp_pointConstraint1.tg[1].tt"
		;
connectAttr "R_IK_Leg_Handle_Arc_Trgt.rp" "R_Hip_to_Knee_2_IK_Handle_Offset_Grp_pointConstraint1.tg[1].trp"
		;
connectAttr "R_IK_Leg_Handle_Arc_Trgt.rpt" "R_Hip_to_Knee_2_IK_Handle_Offset_Grp_pointConstraint1.tg[1].trt"
		;
connectAttr "R_IK_Leg_Handle_Arc_Trgt.pm" "R_Hip_to_Knee_2_IK_Handle_Offset_Grp_pointConstraint1.tg[1].tpm"
		;
connectAttr "R_Hip_to_Knee_2_IK_Handle_Offset_Grp_pointConstraint1.w1" "R_Hip_to_Knee_2_IK_Handle_Offset_Grp_pointConstraint1.tg[1].tw"
		;
connectAttr "R_Hip_to_Knee_2_IK_Handle_Grp.ro" "R_Hip_to_Knee_2_IK_Handle_Grp_parentConstraint1.cro"
		;
connectAttr "R_Hip_to_Knee_2_IK_Handle_Grp.pim" "R_Hip_to_Knee_2_IK_Handle_Grp_parentConstraint1.cpim"
		;
connectAttr "R_Hip_to_Knee_2_IK_Handle_Grp.rp" "R_Hip_to_Knee_2_IK_Handle_Grp_parentConstraint1.crp"
		;
connectAttr "R_Hip_to_Knee_2_IK_Handle_Grp.rpt" "R_Hip_to_Knee_2_IK_Handle_Grp_parentConstraint1.crt"
		;
connectAttr "R_IK_Leg_Handle_Arc_Base.t" "R_Hip_to_Knee_2_IK_Handle_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "R_IK_Leg_Handle_Arc_Base.rp" "R_Hip_to_Knee_2_IK_Handle_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "R_IK_Leg_Handle_Arc_Base.rpt" "R_Hip_to_Knee_2_IK_Handle_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "R_IK_Leg_Handle_Arc_Base.r" "R_Hip_to_Knee_2_IK_Handle_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "R_IK_Leg_Handle_Arc_Base.ro" "R_Hip_to_Knee_2_IK_Handle_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "R_IK_Leg_Handle_Arc_Base.s" "R_Hip_to_Knee_2_IK_Handle_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "R_IK_Leg_Handle_Arc_Base.pm" "R_Hip_to_Knee_2_IK_Handle_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_Hip_to_Knee_2_IK_Handle_Grp_parentConstraint1.w0" "R_Hip_to_Knee_2_IK_Handle_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "Neck_01_Ctrl_Grp_parentConstraint1.ctx" "Neck_01_Ctrl_Grp.tx";
connectAttr "Neck_01_Ctrl_Grp_parentConstraint1.cty" "Neck_01_Ctrl_Grp.ty";
connectAttr "Neck_01_Ctrl_Grp_parentConstraint1.ctz" "Neck_01_Ctrl_Grp.tz";
connectAttr "Neck_01_Ctrl_Grp_parentConstraint2.crx" "Neck_01_Ctrl_Grp.rx";
connectAttr "Neck_01_Ctrl_Grp_parentConstraint2.cry" "Neck_01_Ctrl_Grp.ry";
connectAttr "Neck_01_Ctrl_Grp_parentConstraint2.crz" "Neck_01_Ctrl_Grp.rz";
connectAttr "Neck_01_Ctrl_Grp_scaleConstraint1.csx" "Neck_01_Ctrl_Grp.sx";
connectAttr "Neck_01_Ctrl_Grp_scaleConstraint1.csy" "Neck_01_Ctrl_Grp.sy";
connectAttr "Neck_01_Ctrl_Grp_scaleConstraint1.csz" "Neck_01_Ctrl_Grp.sz";
connectAttr "makeNurbCircle26.oc" "Neck_01_CtrlShape.cr";
connectAttr "Neck_01_Ctrl_Grp.ro" "Neck_01_Ctrl_Grp_parentConstraint1.cro";
connectAttr "Neck_01_Ctrl_Grp.pim" "Neck_01_Ctrl_Grp_parentConstraint1.cpim";
connectAttr "Neck_01_Ctrl_Grp.rp" "Neck_01_Ctrl_Grp_parentConstraint1.crp";
connectAttr "Neck_01_Ctrl_Grp.rpt" "Neck_01_Ctrl_Grp_parentConstraint1.crt";
connectAttr "Spine_04_Ctrl.t" "Neck_01_Ctrl_Grp_parentConstraint1.tg[0].tt";
connectAttr "Spine_04_Ctrl.rp" "Neck_01_Ctrl_Grp_parentConstraint1.tg[0].trp";
connectAttr "Spine_04_Ctrl.rpt" "Neck_01_Ctrl_Grp_parentConstraint1.tg[0].trt";
connectAttr "Spine_04_Ctrl.r" "Neck_01_Ctrl_Grp_parentConstraint1.tg[0].tr";
connectAttr "Spine_04_Ctrl.ro" "Neck_01_Ctrl_Grp_parentConstraint1.tg[0].tro";
connectAttr "Spine_04_Ctrl.s" "Neck_01_Ctrl_Grp_parentConstraint1.tg[0].ts";
connectAttr "Spine_04_Ctrl.pm" "Neck_01_Ctrl_Grp_parentConstraint1.tg[0].tpm";
connectAttr "Neck_01_Ctrl_Grp_parentConstraint1.w0" "Neck_01_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "Neck_01_Ctrl.FollowTranslate" "Neck_01_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "Neck_01_Ctrl_Grp.ro" "Neck_01_Ctrl_Grp_parentConstraint2.cro";
connectAttr "Neck_01_Ctrl_Grp.pim" "Neck_01_Ctrl_Grp_parentConstraint2.cpim";
connectAttr "Neck_01_Ctrl_Grp.rp" "Neck_01_Ctrl_Grp_parentConstraint2.crp";
connectAttr "Neck_01_Ctrl_Grp.rpt" "Neck_01_Ctrl_Grp_parentConstraint2.crt";
connectAttr "Spine_04_Ctrl.t" "Neck_01_Ctrl_Grp_parentConstraint2.tg[0].tt";
connectAttr "Spine_04_Ctrl.rp" "Neck_01_Ctrl_Grp_parentConstraint2.tg[0].trp";
connectAttr "Spine_04_Ctrl.rpt" "Neck_01_Ctrl_Grp_parentConstraint2.tg[0].trt";
connectAttr "Spine_04_Ctrl.r" "Neck_01_Ctrl_Grp_parentConstraint2.tg[0].tr";
connectAttr "Spine_04_Ctrl.ro" "Neck_01_Ctrl_Grp_parentConstraint2.tg[0].tro";
connectAttr "Spine_04_Ctrl.s" "Neck_01_Ctrl_Grp_parentConstraint2.tg[0].ts";
connectAttr "Spine_04_Ctrl.pm" "Neck_01_Ctrl_Grp_parentConstraint2.tg[0].tpm";
connectAttr "Neck_01_Ctrl_Grp_parentConstraint2.w0" "Neck_01_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "Neck_01_Ctrl.FollowRotate" "Neck_01_Ctrl_Grp_parentConstraint2.w0";
connectAttr "Neck_01_Ctrl_Grp.pim" "Neck_01_Ctrl_Grp_scaleConstraint1.cpim";
connectAttr "Spine_04_Ctrl.s" "Neck_01_Ctrl_Grp_scaleConstraint1.tg[0].ts";
connectAttr "Spine_04_Ctrl.pm" "Neck_01_Ctrl_Grp_scaleConstraint1.tg[0].tpm";
connectAttr "Neck_01_Ctrl_Grp_scaleConstraint1.w0" "Neck_01_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "Neck_02_Ctrl_Grp_parentConstraint1.ctx" "Neck_02_Ctrl_Grp.tx";
connectAttr "Neck_02_Ctrl_Grp_parentConstraint1.cty" "Neck_02_Ctrl_Grp.ty";
connectAttr "Neck_02_Ctrl_Grp_parentConstraint1.ctz" "Neck_02_Ctrl_Grp.tz";
connectAttr "Neck_02_Ctrl_Grp_parentConstraint2.crx" "Neck_02_Ctrl_Grp.rx";
connectAttr "Neck_02_Ctrl_Grp_parentConstraint2.cry" "Neck_02_Ctrl_Grp.ry";
connectAttr "Neck_02_Ctrl_Grp_parentConstraint2.crz" "Neck_02_Ctrl_Grp.rz";
connectAttr "Neck_02_Ctrl_Grp_scaleConstraint1.csx" "Neck_02_Ctrl_Grp.sx";
connectAttr "Neck_02_Ctrl_Grp_scaleConstraint1.csy" "Neck_02_Ctrl_Grp.sy";
connectAttr "Neck_02_Ctrl_Grp_scaleConstraint1.csz" "Neck_02_Ctrl_Grp.sz";
connectAttr "makeNurbCircle27.oc" "Neck_02_CtrlShape.cr";
connectAttr "Neck_02_Ctrl_Grp.ro" "Neck_02_Ctrl_Grp_parentConstraint1.cro";
connectAttr "Neck_02_Ctrl_Grp.pim" "Neck_02_Ctrl_Grp_parentConstraint1.cpim";
connectAttr "Neck_02_Ctrl_Grp.rp" "Neck_02_Ctrl_Grp_parentConstraint1.crp";
connectAttr "Neck_02_Ctrl_Grp.rpt" "Neck_02_Ctrl_Grp_parentConstraint1.crt";
connectAttr "Neck_01_Ctrl.t" "Neck_02_Ctrl_Grp_parentConstraint1.tg[0].tt";
connectAttr "Neck_01_Ctrl.rp" "Neck_02_Ctrl_Grp_parentConstraint1.tg[0].trp";
connectAttr "Neck_01_Ctrl.rpt" "Neck_02_Ctrl_Grp_parentConstraint1.tg[0].trt";
connectAttr "Neck_01_Ctrl.r" "Neck_02_Ctrl_Grp_parentConstraint1.tg[0].tr";
connectAttr "Neck_01_Ctrl.ro" "Neck_02_Ctrl_Grp_parentConstraint1.tg[0].tro";
connectAttr "Neck_01_Ctrl.s" "Neck_02_Ctrl_Grp_parentConstraint1.tg[0].ts";
connectAttr "Neck_01_Ctrl.pm" "Neck_02_Ctrl_Grp_parentConstraint1.tg[0].tpm";
connectAttr "Neck_02_Ctrl_Grp_parentConstraint1.w0" "Neck_02_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "Neck_02_Ctrl.FollowTranslate" "Neck_02_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "Neck_02_Ctrl_Grp.ro" "Neck_02_Ctrl_Grp_parentConstraint2.cro";
connectAttr "Neck_02_Ctrl_Grp.pim" "Neck_02_Ctrl_Grp_parentConstraint2.cpim";
connectAttr "Neck_02_Ctrl_Grp.rp" "Neck_02_Ctrl_Grp_parentConstraint2.crp";
connectAttr "Neck_02_Ctrl_Grp.rpt" "Neck_02_Ctrl_Grp_parentConstraint2.crt";
connectAttr "Neck_01_Ctrl.t" "Neck_02_Ctrl_Grp_parentConstraint2.tg[0].tt";
connectAttr "Neck_01_Ctrl.rp" "Neck_02_Ctrl_Grp_parentConstraint2.tg[0].trp";
connectAttr "Neck_01_Ctrl.rpt" "Neck_02_Ctrl_Grp_parentConstraint2.tg[0].trt";
connectAttr "Neck_01_Ctrl.r" "Neck_02_Ctrl_Grp_parentConstraint2.tg[0].tr";
connectAttr "Neck_01_Ctrl.ro" "Neck_02_Ctrl_Grp_parentConstraint2.tg[0].tro";
connectAttr "Neck_01_Ctrl.s" "Neck_02_Ctrl_Grp_parentConstraint2.tg[0].ts";
connectAttr "Neck_01_Ctrl.pm" "Neck_02_Ctrl_Grp_parentConstraint2.tg[0].tpm";
connectAttr "Neck_02_Ctrl_Grp_parentConstraint2.w0" "Neck_02_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "Neck_02_Ctrl.FollowRotate" "Neck_02_Ctrl_Grp_parentConstraint2.w0";
connectAttr "Neck_02_Ctrl_Grp.pim" "Neck_02_Ctrl_Grp_scaleConstraint1.cpim";
connectAttr "Neck_01_Ctrl.s" "Neck_02_Ctrl_Grp_scaleConstraint1.tg[0].ts";
connectAttr "Neck_01_Ctrl.pm" "Neck_02_Ctrl_Grp_scaleConstraint1.tg[0].tpm";
connectAttr "Neck_02_Ctrl_Grp_scaleConstraint1.w0" "Neck_02_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "Eye_FK_Ctrl_Grp_parentConstraint1.ctx" "Eye_FK_Ctrl_Grp.tx";
connectAttr "Eye_FK_Ctrl_Grp_parentConstraint1.cty" "Eye_FK_Ctrl_Grp.ty";
connectAttr "Eye_FK_Ctrl_Grp_parentConstraint1.ctz" "Eye_FK_Ctrl_Grp.tz";
connectAttr "Eye_FK_Ctrl_Grp_parentConstraint2.crx" "Eye_FK_Ctrl_Grp.rx";
connectAttr "Eye_FK_Ctrl_Grp_parentConstraint2.cry" "Eye_FK_Ctrl_Grp.ry";
connectAttr "Eye_FK_Ctrl_Grp_parentConstraint2.crz" "Eye_FK_Ctrl_Grp.rz";
connectAttr "Eye_FK_Ctrl_Grp_scaleConstraint1.csx" "Eye_FK_Ctrl_Grp.sx";
connectAttr "Eye_FK_Ctrl_Grp_scaleConstraint1.csy" "Eye_FK_Ctrl_Grp.sy";
connectAttr "Eye_FK_Ctrl_Grp_scaleConstraint1.csz" "Eye_FK_Ctrl_Grp.sz";
connectAttr "makeNurbCircle28.oc" "Eye_FK_CtrlShape.cr";
connectAttr "Eye_FK_Ctrl_Grp.ro" "Eye_FK_Ctrl_Grp_parentConstraint1.cro";
connectAttr "Eye_FK_Ctrl_Grp.pim" "Eye_FK_Ctrl_Grp_parentConstraint1.cpim";
connectAttr "Eye_FK_Ctrl_Grp.rp" "Eye_FK_Ctrl_Grp_parentConstraint1.crp";
connectAttr "Eye_FK_Ctrl_Grp.rpt" "Eye_FK_Ctrl_Grp_parentConstraint1.crt";
connectAttr "Neck_02_Ctrl.t" "Eye_FK_Ctrl_Grp_parentConstraint1.tg[0].tt";
connectAttr "Neck_02_Ctrl.rp" "Eye_FK_Ctrl_Grp_parentConstraint1.tg[0].trp";
connectAttr "Neck_02_Ctrl.rpt" "Eye_FK_Ctrl_Grp_parentConstraint1.tg[0].trt";
connectAttr "Neck_02_Ctrl.r" "Eye_FK_Ctrl_Grp_parentConstraint1.tg[0].tr";
connectAttr "Neck_02_Ctrl.ro" "Eye_FK_Ctrl_Grp_parentConstraint1.tg[0].tro";
connectAttr "Neck_02_Ctrl.s" "Eye_FK_Ctrl_Grp_parentConstraint1.tg[0].ts";
connectAttr "Neck_02_Ctrl.pm" "Eye_FK_Ctrl_Grp_parentConstraint1.tg[0].tpm";
connectAttr "Eye_FK_Ctrl_Grp_parentConstraint1.w0" "Eye_FK_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "Eye_FK_Ctrl.FollowTranslate" "Eye_FK_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "Eye_FK_Ctrl_Grp.ro" "Eye_FK_Ctrl_Grp_parentConstraint2.cro";
connectAttr "Eye_FK_Ctrl_Grp.pim" "Eye_FK_Ctrl_Grp_parentConstraint2.cpim";
connectAttr "Eye_FK_Ctrl_Grp.rp" "Eye_FK_Ctrl_Grp_parentConstraint2.crp";
connectAttr "Eye_FK_Ctrl_Grp.rpt" "Eye_FK_Ctrl_Grp_parentConstraint2.crt";
connectAttr "Neck_02_Ctrl.t" "Eye_FK_Ctrl_Grp_parentConstraint2.tg[0].tt";
connectAttr "Neck_02_Ctrl.rp" "Eye_FK_Ctrl_Grp_parentConstraint2.tg[0].trp";
connectAttr "Neck_02_Ctrl.rpt" "Eye_FK_Ctrl_Grp_parentConstraint2.tg[0].trt";
connectAttr "Neck_02_Ctrl.r" "Eye_FK_Ctrl_Grp_parentConstraint2.tg[0].tr";
connectAttr "Neck_02_Ctrl.ro" "Eye_FK_Ctrl_Grp_parentConstraint2.tg[0].tro";
connectAttr "Neck_02_Ctrl.s" "Eye_FK_Ctrl_Grp_parentConstraint2.tg[0].ts";
connectAttr "Neck_02_Ctrl.pm" "Eye_FK_Ctrl_Grp_parentConstraint2.tg[0].tpm";
connectAttr "Eye_FK_Ctrl_Grp_parentConstraint2.w0" "Eye_FK_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "Eye_FK_Ctrl.FollowRotate" "Eye_FK_Ctrl_Grp_parentConstraint2.w0";
connectAttr "Eye_FK_Ctrl_Grp.pim" "Eye_FK_Ctrl_Grp_scaleConstraint1.cpim";
connectAttr "Neck_02_Ctrl.s" "Eye_FK_Ctrl_Grp_scaleConstraint1.tg[0].ts";
connectAttr "Neck_02_Ctrl.pm" "Eye_FK_Ctrl_Grp_scaleConstraint1.tg[0].tpm";
connectAttr "Eye_FK_Ctrl_Grp_scaleConstraint1.w0" "Eye_FK_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "makeNurbCircle29.oc" "Eye_PointShape.cr";
connectAttr "Spine_04_Ctrl_Grp_parentConstraint1.ctx" "Spine_04_Ctrl_Grp.tx";
connectAttr "Spine_04_Ctrl_Grp_parentConstraint1.cty" "Spine_04_Ctrl_Grp.ty";
connectAttr "Spine_04_Ctrl_Grp_parentConstraint1.ctz" "Spine_04_Ctrl_Grp.tz";
connectAttr "Spine_04_Ctrl_Grp_parentConstraint2.crx" "Spine_04_Ctrl_Grp.rx";
connectAttr "Spine_04_Ctrl_Grp_parentConstraint2.cry" "Spine_04_Ctrl_Grp.ry";
connectAttr "Spine_04_Ctrl_Grp_parentConstraint2.crz" "Spine_04_Ctrl_Grp.rz";
connectAttr "Spine_04_Ctrl_Grp_scaleConstraint1.csx" "Spine_04_Ctrl_Grp.sx";
connectAttr "Spine_04_Ctrl_Grp_scaleConstraint1.csy" "Spine_04_Ctrl_Grp.sy";
connectAttr "Spine_04_Ctrl_Grp_scaleConstraint1.csz" "Spine_04_Ctrl_Grp.sz";
connectAttr "Spine_04_Ctrl_Grp.ro" "Spine_04_Ctrl_Grp_parentConstraint1.cro";
connectAttr "Spine_04_Ctrl_Grp.pim" "Spine_04_Ctrl_Grp_parentConstraint1.cpim";
connectAttr "Spine_04_Ctrl_Grp.rp" "Spine_04_Ctrl_Grp_parentConstraint1.crp";
connectAttr "Spine_04_Ctrl_Grp.rpt" "Spine_04_Ctrl_Grp_parentConstraint1.crt";
connectAttr "Spine_03_Ctrl.t" "Spine_04_Ctrl_Grp_parentConstraint1.tg[0].tt";
connectAttr "Spine_03_Ctrl.rp" "Spine_04_Ctrl_Grp_parentConstraint1.tg[0].trp";
connectAttr "Spine_03_Ctrl.rpt" "Spine_04_Ctrl_Grp_parentConstraint1.tg[0].trt";
connectAttr "Spine_03_Ctrl.r" "Spine_04_Ctrl_Grp_parentConstraint1.tg[0].tr";
connectAttr "Spine_03_Ctrl.ro" "Spine_04_Ctrl_Grp_parentConstraint1.tg[0].tro";
connectAttr "Spine_03_Ctrl.s" "Spine_04_Ctrl_Grp_parentConstraint1.tg[0].ts";
connectAttr "Spine_03_Ctrl.pm" "Spine_04_Ctrl_Grp_parentConstraint1.tg[0].tpm";
connectAttr "Spine_04_Ctrl_Grp_parentConstraint1.w0" "Spine_04_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "Spine_04_Ctrl.FollowTranslate" "Spine_04_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "Spine_04_Ctrl_Grp.ro" "Spine_04_Ctrl_Grp_parentConstraint2.cro";
connectAttr "Spine_04_Ctrl_Grp.pim" "Spine_04_Ctrl_Grp_parentConstraint2.cpim";
connectAttr "Spine_04_Ctrl_Grp.rp" "Spine_04_Ctrl_Grp_parentConstraint2.crp";
connectAttr "Spine_04_Ctrl_Grp.rpt" "Spine_04_Ctrl_Grp_parentConstraint2.crt";
connectAttr "Spine_03_Ctrl.t" "Spine_04_Ctrl_Grp_parentConstraint2.tg[0].tt";
connectAttr "Spine_03_Ctrl.rp" "Spine_04_Ctrl_Grp_parentConstraint2.tg[0].trp";
connectAttr "Spine_03_Ctrl.rpt" "Spine_04_Ctrl_Grp_parentConstraint2.tg[0].trt";
connectAttr "Spine_03_Ctrl.r" "Spine_04_Ctrl_Grp_parentConstraint2.tg[0].tr";
connectAttr "Spine_03_Ctrl.ro" "Spine_04_Ctrl_Grp_parentConstraint2.tg[0].tro";
connectAttr "Spine_03_Ctrl.s" "Spine_04_Ctrl_Grp_parentConstraint2.tg[0].ts";
connectAttr "Spine_03_Ctrl.pm" "Spine_04_Ctrl_Grp_parentConstraint2.tg[0].tpm";
connectAttr "Spine_04_Ctrl_Grp_parentConstraint2.w0" "Spine_04_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "Spine_04_Ctrl.FollowRotate" "Spine_04_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "Spine_04_Ctrl_Grp.pim" "Spine_04_Ctrl_Grp_scaleConstraint1.cpim";
connectAttr "Spine_03_Ctrl.s" "Spine_04_Ctrl_Grp_scaleConstraint1.tg[0].ts";
connectAttr "Spine_03_Ctrl.pm" "Spine_04_Ctrl_Grp_scaleConstraint1.tg[0].tpm";
connectAttr "Spine_04_Ctrl_Grp_scaleConstraint1.w0" "Spine_04_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "Spine_03_Ctrl_Grp_parentConstraint1.ctx" "Spine_03_Ctrl_Grp.tx";
connectAttr "Spine_03_Ctrl_Grp_parentConstraint1.cty" "Spine_03_Ctrl_Grp.ty";
connectAttr "Spine_03_Ctrl_Grp_parentConstraint1.ctz" "Spine_03_Ctrl_Grp.tz";
connectAttr "Spine_03_Ctrl_Grp_parentConstraint2.crx" "Spine_03_Ctrl_Grp.rx";
connectAttr "Spine_03_Ctrl_Grp_parentConstraint2.cry" "Spine_03_Ctrl_Grp.ry";
connectAttr "Spine_03_Ctrl_Grp_parentConstraint2.crz" "Spine_03_Ctrl_Grp.rz";
connectAttr "Spine_03_Ctrl_Grp_scaleConstraint1.csx" "Spine_03_Ctrl_Grp.sx";
connectAttr "Spine_03_Ctrl_Grp_scaleConstraint1.csy" "Spine_03_Ctrl_Grp.sy";
connectAttr "Spine_03_Ctrl_Grp_scaleConstraint1.csz" "Spine_03_Ctrl_Grp.sz";
connectAttr "Spine_03_Ctrl_Grp.ro" "Spine_03_Ctrl_Grp_parentConstraint1.cro";
connectAttr "Spine_03_Ctrl_Grp.pim" "Spine_03_Ctrl_Grp_parentConstraint1.cpim";
connectAttr "Spine_03_Ctrl_Grp.rp" "Spine_03_Ctrl_Grp_parentConstraint1.crp";
connectAttr "Spine_03_Ctrl_Grp.rpt" "Spine_03_Ctrl_Grp_parentConstraint1.crt";
connectAttr "Spine_02_Ctrl.t" "Spine_03_Ctrl_Grp_parentConstraint1.tg[0].tt";
connectAttr "Spine_02_Ctrl.rp" "Spine_03_Ctrl_Grp_parentConstraint1.tg[0].trp";
connectAttr "Spine_02_Ctrl.rpt" "Spine_03_Ctrl_Grp_parentConstraint1.tg[0].trt";
connectAttr "Spine_02_Ctrl.r" "Spine_03_Ctrl_Grp_parentConstraint1.tg[0].tr";
connectAttr "Spine_02_Ctrl.ro" "Spine_03_Ctrl_Grp_parentConstraint1.tg[0].tro";
connectAttr "Spine_02_Ctrl.s" "Spine_03_Ctrl_Grp_parentConstraint1.tg[0].ts";
connectAttr "Spine_02_Ctrl.pm" "Spine_03_Ctrl_Grp_parentConstraint1.tg[0].tpm";
connectAttr "Spine_03_Ctrl_Grp_parentConstraint1.w0" "Spine_03_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "Spine_03_Ctrl.FollowTranslate" "Spine_03_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "Spine_03_Ctrl_Grp.ro" "Spine_03_Ctrl_Grp_parentConstraint2.cro";
connectAttr "Spine_03_Ctrl_Grp.pim" "Spine_03_Ctrl_Grp_parentConstraint2.cpim";
connectAttr "Spine_03_Ctrl_Grp.rp" "Spine_03_Ctrl_Grp_parentConstraint2.crp";
connectAttr "Spine_03_Ctrl_Grp.rpt" "Spine_03_Ctrl_Grp_parentConstraint2.crt";
connectAttr "Spine_02_Ctrl.t" "Spine_03_Ctrl_Grp_parentConstraint2.tg[0].tt";
connectAttr "Spine_02_Ctrl.rp" "Spine_03_Ctrl_Grp_parentConstraint2.tg[0].trp";
connectAttr "Spine_02_Ctrl.rpt" "Spine_03_Ctrl_Grp_parentConstraint2.tg[0].trt";
connectAttr "Spine_02_Ctrl.r" "Spine_03_Ctrl_Grp_parentConstraint2.tg[0].tr";
connectAttr "Spine_02_Ctrl.ro" "Spine_03_Ctrl_Grp_parentConstraint2.tg[0].tro";
connectAttr "Spine_02_Ctrl.s" "Spine_03_Ctrl_Grp_parentConstraint2.tg[0].ts";
connectAttr "Spine_02_Ctrl.pm" "Spine_03_Ctrl_Grp_parentConstraint2.tg[0].tpm";
connectAttr "Spine_03_Ctrl_Grp_parentConstraint2.w0" "Spine_03_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "Spine_03_Ctrl.FollowRotate" "Spine_03_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "Spine_03_Ctrl_Grp.pim" "Spine_03_Ctrl_Grp_scaleConstraint1.cpim";
connectAttr "Spine_02_Ctrl.s" "Spine_03_Ctrl_Grp_scaleConstraint1.tg[0].ts";
connectAttr "Spine_02_Ctrl.pm" "Spine_03_Ctrl_Grp_scaleConstraint1.tg[0].tpm";
connectAttr "Spine_03_Ctrl_Grp_scaleConstraint1.w0" "Spine_03_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "Spine_02_Ctrl_Grp_parentConstraint1.ctx" "Spine_02_Ctrl_Grp.tx";
connectAttr "Spine_02_Ctrl_Grp_parentConstraint1.cty" "Spine_02_Ctrl_Grp.ty";
connectAttr "Spine_02_Ctrl_Grp_parentConstraint1.ctz" "Spine_02_Ctrl_Grp.tz";
connectAttr "Spine_02_Ctrl_Grp_parentConstraint2.crx" "Spine_02_Ctrl_Grp.rx";
connectAttr "Spine_02_Ctrl_Grp_parentConstraint2.cry" "Spine_02_Ctrl_Grp.ry";
connectAttr "Spine_02_Ctrl_Grp_parentConstraint2.crz" "Spine_02_Ctrl_Grp.rz";
connectAttr "Spine_02_Ctrl_Grp_scaleConstraint1.csx" "Spine_02_Ctrl_Grp.sx";
connectAttr "Spine_02_Ctrl_Grp_scaleConstraint1.csy" "Spine_02_Ctrl_Grp.sy";
connectAttr "Spine_02_Ctrl_Grp_scaleConstraint1.csz" "Spine_02_Ctrl_Grp.sz";
connectAttr "makeNurbCircle3.oc" "Spine_02_CtrlShape.cr";
connectAttr "Spine_02_Ctrl_Grp.ro" "Spine_02_Ctrl_Grp_parentConstraint1.cro";
connectAttr "Spine_02_Ctrl_Grp.pim" "Spine_02_Ctrl_Grp_parentConstraint1.cpim";
connectAttr "Spine_02_Ctrl_Grp.rp" "Spine_02_Ctrl_Grp_parentConstraint1.crp";
connectAttr "Spine_02_Ctrl_Grp.rpt" "Spine_02_Ctrl_Grp_parentConstraint1.crt";
connectAttr "Spine_01_Ctrl.t" "Spine_02_Ctrl_Grp_parentConstraint1.tg[0].tt";
connectAttr "Spine_01_Ctrl.rp" "Spine_02_Ctrl_Grp_parentConstraint1.tg[0].trp";
connectAttr "Spine_01_Ctrl.rpt" "Spine_02_Ctrl_Grp_parentConstraint1.tg[0].trt";
connectAttr "Spine_01_Ctrl.r" "Spine_02_Ctrl_Grp_parentConstraint1.tg[0].tr";
connectAttr "Spine_01_Ctrl.ro" "Spine_02_Ctrl_Grp_parentConstraint1.tg[0].tro";
connectAttr "Spine_01_Ctrl.s" "Spine_02_Ctrl_Grp_parentConstraint1.tg[0].ts";
connectAttr "Spine_01_Ctrl.pm" "Spine_02_Ctrl_Grp_parentConstraint1.tg[0].tpm";
connectAttr "Spine_02_Ctrl_Grp_parentConstraint1.w0" "Spine_02_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "Spine_02_Ctrl.FollowTranslate" "Spine_02_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "Spine_02_Ctrl_Grp.ro" "Spine_02_Ctrl_Grp_parentConstraint2.cro";
connectAttr "Spine_02_Ctrl_Grp.pim" "Spine_02_Ctrl_Grp_parentConstraint2.cpim";
connectAttr "Spine_02_Ctrl_Grp.rp" "Spine_02_Ctrl_Grp_parentConstraint2.crp";
connectAttr "Spine_02_Ctrl_Grp.rpt" "Spine_02_Ctrl_Grp_parentConstraint2.crt";
connectAttr "Spine_01_Ctrl.t" "Spine_02_Ctrl_Grp_parentConstraint2.tg[0].tt";
connectAttr "Spine_01_Ctrl.rp" "Spine_02_Ctrl_Grp_parentConstraint2.tg[0].trp";
connectAttr "Spine_01_Ctrl.rpt" "Spine_02_Ctrl_Grp_parentConstraint2.tg[0].trt";
connectAttr "Spine_01_Ctrl.r" "Spine_02_Ctrl_Grp_parentConstraint2.tg[0].tr";
connectAttr "Spine_01_Ctrl.ro" "Spine_02_Ctrl_Grp_parentConstraint2.tg[0].tro";
connectAttr "Spine_01_Ctrl.s" "Spine_02_Ctrl_Grp_parentConstraint2.tg[0].ts";
connectAttr "Spine_01_Ctrl.pm" "Spine_02_Ctrl_Grp_parentConstraint2.tg[0].tpm";
connectAttr "Spine_02_Ctrl_Grp_parentConstraint2.w0" "Spine_02_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "Spine_02_Ctrl.FollowRotate" "Spine_02_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "Spine_02_Ctrl_Grp.pim" "Spine_02_Ctrl_Grp_scaleConstraint1.cpim";
connectAttr "Spine_01_Ctrl.s" "Spine_02_Ctrl_Grp_scaleConstraint1.tg[0].ts";
connectAttr "Spine_01_Ctrl.pm" "Spine_02_Ctrl_Grp_scaleConstraint1.tg[0].tpm";
connectAttr "Spine_02_Ctrl_Grp_scaleConstraint1.w0" "Spine_02_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "Spine_01_Ctrl_Grp_parentConstraint1.ctx" "Spine_01_Ctrl_Grp.tx";
connectAttr "Spine_01_Ctrl_Grp_parentConstraint1.cty" "Spine_01_Ctrl_Grp.ty";
connectAttr "Spine_01_Ctrl_Grp_parentConstraint1.ctz" "Spine_01_Ctrl_Grp.tz";
connectAttr "Spine_01_Ctrl_Grp_parentConstraint2.crx" "Spine_01_Ctrl_Grp.rx";
connectAttr "Spine_01_Ctrl_Grp_parentConstraint2.cry" "Spine_01_Ctrl_Grp.ry";
connectAttr "Spine_01_Ctrl_Grp_parentConstraint2.crz" "Spine_01_Ctrl_Grp.rz";
connectAttr "Spine_01_Ctrl_Grp_scaleConstraint1.csx" "Spine_01_Ctrl_Grp.sx";
connectAttr "Spine_01_Ctrl_Grp_scaleConstraint1.csy" "Spine_01_Ctrl_Grp.sy";
connectAttr "Spine_01_Ctrl_Grp_scaleConstraint1.csz" "Spine_01_Ctrl_Grp.sz";
connectAttr "Spine_01_Ctrl_Grp.ro" "Spine_01_Ctrl_Grp_parentConstraint1.cro";
connectAttr "Spine_01_Ctrl_Grp.pim" "Spine_01_Ctrl_Grp_parentConstraint1.cpim";
connectAttr "Spine_01_Ctrl_Grp.rp" "Spine_01_Ctrl_Grp_parentConstraint1.crp";
connectAttr "Spine_01_Ctrl_Grp.rpt" "Spine_01_Ctrl_Grp_parentConstraint1.crt";
connectAttr "Cog_Ctrl.t" "Spine_01_Ctrl_Grp_parentConstraint1.tg[0].tt";
connectAttr "Cog_Ctrl.rp" "Spine_01_Ctrl_Grp_parentConstraint1.tg[0].trp";
connectAttr "Cog_Ctrl.rpt" "Spine_01_Ctrl_Grp_parentConstraint1.tg[0].trt";
connectAttr "Cog_Ctrl.r" "Spine_01_Ctrl_Grp_parentConstraint1.tg[0].tr";
connectAttr "Cog_Ctrl.ro" "Spine_01_Ctrl_Grp_parentConstraint1.tg[0].tro";
connectAttr "Cog_Ctrl.s" "Spine_01_Ctrl_Grp_parentConstraint1.tg[0].ts";
connectAttr "Cog_Ctrl.pm" "Spine_01_Ctrl_Grp_parentConstraint1.tg[0].tpm";
connectAttr "Spine_01_Ctrl_Grp_parentConstraint1.w0" "Spine_01_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "Spine_01_Ctrl.FollowTranslate" "Spine_01_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "Spine_01_Ctrl_Grp.ro" "Spine_01_Ctrl_Grp_parentConstraint2.cro";
connectAttr "Spine_01_Ctrl_Grp.pim" "Spine_01_Ctrl_Grp_parentConstraint2.cpim";
connectAttr "Spine_01_Ctrl_Grp.rp" "Spine_01_Ctrl_Grp_parentConstraint2.crp";
connectAttr "Spine_01_Ctrl_Grp.rpt" "Spine_01_Ctrl_Grp_parentConstraint2.crt";
connectAttr "Cog_Ctrl.t" "Spine_01_Ctrl_Grp_parentConstraint2.tg[0].tt";
connectAttr "Cog_Ctrl.rp" "Spine_01_Ctrl_Grp_parentConstraint2.tg[0].trp";
connectAttr "Cog_Ctrl.rpt" "Spine_01_Ctrl_Grp_parentConstraint2.tg[0].trt";
connectAttr "Cog_Ctrl.r" "Spine_01_Ctrl_Grp_parentConstraint2.tg[0].tr";
connectAttr "Cog_Ctrl.ro" "Spine_01_Ctrl_Grp_parentConstraint2.tg[0].tro";
connectAttr "Cog_Ctrl.s" "Spine_01_Ctrl_Grp_parentConstraint2.tg[0].ts";
connectAttr "Cog_Ctrl.pm" "Spine_01_Ctrl_Grp_parentConstraint2.tg[0].tpm";
connectAttr "Spine_01_Ctrl_Grp_parentConstraint2.w0" "Spine_01_Ctrl_Grp_parentConstraint2.tg[0].tw"
		;
connectAttr "Spine_01_Ctrl.FollowRotate" "Spine_01_Ctrl_Grp_parentConstraint2.w0"
		;
connectAttr "Spine_01_Ctrl_Grp.pim" "Spine_01_Ctrl_Grp_scaleConstraint1.cpim";
connectAttr "Cog_Ctrl.s" "Spine_01_Ctrl_Grp_scaleConstraint1.tg[0].ts";
connectAttr "Cog_Ctrl.pm" "Spine_01_Ctrl_Grp_scaleConstraint1.tg[0].tpm";
connectAttr "Spine_01_Ctrl_Grp_scaleConstraint1.w0" "Spine_01_Ctrl_Grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "polySurfaceShape14Tag.w" "polySurfaceShape14Deformed.i";
connectAttr "polySurfaceShape16Tag.w" "polySurfaceShape16Deformed.i";
connectAttr "polySurfaceShape17Tag.w" "polySurfaceShape17Deformed.i";
connectAttr "|bot_bodyRNfosterParent1|pCylinder29ShapeTag.w" "|bot_bodyRNfosterParent1|pCylinder29ShapeDeformed.i"
		;
connectAttr "|bot_bodyRNfosterParent1|pCylinder28ShapeTag.w" "|bot_bodyRNfosterParent1|pCylinder28ShapeDeformed.i"
		;
connectAttr "|bot_bodyRNfosterParent1|pCylinder27ShapeTag.w" "|bot_bodyRNfosterParent1|pCylinder27ShapeDeformed.i"
		;
connectAttr "|bot_bodyRNfosterParent1|pCylinder26ShapeTag.w" "|bot_bodyRNfosterParent1|pCylinder26ShapeDeformed.i"
		;
connectAttr "|bot_bodyRNfosterParent1|pCylinder25ShapeTag.w" "|bot_bodyRNfosterParent1|pCylinder25ShapeDeformed.i"
		;
connectAttr "|bot_bodyRNfosterParent1|pCylinder24ShapeTag.w" "|bot_bodyRNfosterParent1|pCylinder24ShapeDeformed.i"
		;
connectAttr "|bot_bodyRNfosterParent1|pCylinder23ShapeTag.w" "|bot_bodyRNfosterParent1|pCylinder23ShapeDeformed.i"
		;
connectAttr "|bot_bodyRNfosterParent1|pCylinder22ShapeTag.w" "|bot_bodyRNfosterParent1|pCylinder22ShapeDeformed.i"
		;
connectAttr "pPlane50ShapeTag.w" "pPlane50ShapeDeformed.i";
connectAttr "|bot_bodyRNfosterParent1|fosterParent1|pCylinder29ShapeTag.w" "|bot_bodyRNfosterParent1|fosterParent2|pCylinder29ShapeDeformed.i"
		;
connectAttr "|bot_bodyRNfosterParent1|fosterParent3|pCylinder28ShapeTag.w" "|bot_bodyRNfosterParent1|fosterParent4|pCylinder28ShapeDeformed.i"
		;
connectAttr "|bot_bodyRNfosterParent1|fosterParent5|pCylinder27ShapeTag.w" "|bot_bodyRNfosterParent1|fosterParent6|pCylinder27ShapeDeformed.i"
		;
connectAttr "|bot_bodyRNfosterParent1|fosterParent7|pCylinder26ShapeTag.w" "|bot_bodyRNfosterParent1|fosterParent8|pCylinder26ShapeDeformed.i"
		;
connectAttr "|bot_bodyRNfosterParent1|fosterParent9|pCylinder25ShapeTag.w" "|bot_bodyRNfosterParent1|fosterParent10|pCylinder25ShapeDeformed.i"
		;
connectAttr "|bot_bodyRNfosterParent1|fosterParent11|pCylinder24ShapeTag.w" "|bot_bodyRNfosterParent1|fosterParent12|pCylinder24ShapeDeformed.i"
		;
connectAttr "|bot_bodyRNfosterParent1|fosterParent13|pCylinder23ShapeTag.w" "|bot_bodyRNfosterParent1|fosterParent14|pCylinder23ShapeDeformed.i"
		;
connectAttr "|bot_bodyRNfosterParent1|fosterParent15|pCylinder22ShapeTag.w" "|bot_bodyRNfosterParent1|fosterParent16|pCylinder22ShapeDeformed.i"
		;
connectAttr "tweak1.og[0]" "pCube4ShapeDeformed.i";
connectAttr "tweak1.vl[0].vt[0]" "pCube4ShapeDeformed.twl";
connectAttr "EyeShapeTag.w" "EyeShapeDeformed.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "bot_bodyRNfosterParent1.msg" "bot_bodyRN.fp";
connectAttr "fosterParent1.msg" "bot_bodyRN.fs" -na;
connectAttr "fosterParent2.msg" "bot_bodyRN.fs" -na;
connectAttr "fosterParent3.msg" "bot_bodyRN.fs" -na;
connectAttr "fosterParent4.msg" "bot_bodyRN.fs" -na;
connectAttr "fosterParent5.msg" "bot_bodyRN.fs" -na;
connectAttr "fosterParent6.msg" "bot_bodyRN.fs" -na;
connectAttr "fosterParent7.msg" "bot_bodyRN.fs" -na;
connectAttr "fosterParent8.msg" "bot_bodyRN.fs" -na;
connectAttr "fosterParent9.msg" "bot_bodyRN.fs" -na;
connectAttr "fosterParent10.msg" "bot_bodyRN.fs" -na;
connectAttr "fosterParent11.msg" "bot_bodyRN.fs" -na;
connectAttr "fosterParent12.msg" "bot_bodyRN.fs" -na;
connectAttr "fosterParent13.msg" "bot_bodyRN.fs" -na;
connectAttr "fosterParent14.msg" "bot_bodyRN.fs" -na;
connectAttr "fosterParent15.msg" "bot_bodyRN.fs" -na;
connectAttr "fosterParent16.msg" "bot_bodyRN.fs" -na;
connectAttr "pCube4ShapeTag.w" "tweak1.ip[0].ig";
connectAttr "layerManager.dli[1]" "Bones_Layer.id";
connectAttr "unitConversion5.o" "L_Pist_Rot_Rev.ix";
connectAttr "L_Pist_Rot_Rev.ox" "unitConversion2.i";
connectAttr "unitConversion6.o" "R_Pist_Rot_Rev.ix";
connectAttr "R_Pist_Rot_Rev.ox" "unitConversion4.i";
connectAttr "L_RK_Arm_01_Jnt.rz" "unitConversion5.i";
connectAttr "R_RK_Arm_01_Jnt.rz" "unitConversion6.i";
connectAttr "L_IK_Leg_PV_01_Ctrl.tx" "L_IK_Leg_PV_02_Follow_Twist_MD.i1x";
connectAttr "L_IK_Leg_PV_01_Ctrl.TwistorFollow" "L_IK_Leg_PV_02_Follow_Twist_MD.i2x"
		;
connectAttr "R_IK_Leg_PV_01_Ctrl.tx" "R_IK_Leg_PV_02_Follow_Twist_MD.i1x";
connectAttr "R_IK_Leg_PV_01_Ctrl.TwistorFollow" "R_IK_Leg_PV_02_Follow_Twist_MD.i2x"
		;
connectAttr "Transform_Ctrl.L_Arm_IKFK" "L_Arm_IKFKRev.ix";
connectAttr "Transform_Ctrl.R_Arm_IKFK" "R_Arm_IKFKRev.ix";
connectAttr "Transform_Ctrl.L_Leg_IKFK" "L_Leg_IKFKRev.ix";
connectAttr "Transform_Ctrl.R_Leg_IKFK" "R_Leg_IKFKRev.ix";
connectAttr "L_IK_Leg_01_Ctrl_Grp_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "L_IK_Leg_01_Ctrl_Grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "R_IK_Leg_01_Ctrl_Grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "R_IK_Leg_01_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "L_IK_Leg_01_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "L_IK_Leg_01_Ctrl_Grp_parentConstraint2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "L_Pist_Rot_Rev.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "R_Pist_Rot_Rev.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "L_IK_Len_Ratio_MD.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "L_IK_Total_Len_PMA.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "L_IK_Trgt_Len_PMA.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "L_IK_Leg_PV_02_Follow_Twist_MD.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "R_IK_Leg_PV_02_Follow_Twist_MD.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "L_Arm_IKFKRev.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "R_Arm_IKFKRev.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "L_Leg_IKFKRev.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "R_Leg_IKFKRev.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pPlane50ShapeDeformed.iog" ":initialShadingGroup.dsm" -na;
connectAttr "EyeShapeDeformed.iog" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape16Deformed.iog" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape14Deformed.iog" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape17Deformed.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|bot_bodyRNfosterParent1|fosterParent6|pCylinder27ShapeDeformed.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|bot_bodyRNfosterParent1|fosterParent12|pCylinder24ShapeDeformed.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|bot_bodyRNfosterParent1|fosterParent8|pCylinder26ShapeDeformed.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|bot_bodyRNfosterParent1|fosterParent10|pCylinder25ShapeDeformed.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|bot_bodyRNfosterParent1|fosterParent14|pCylinder23ShapeDeformed.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|bot_bodyRNfosterParent1|fosterParent4|pCylinder28ShapeDeformed.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|bot_bodyRNfosterParent1|fosterParent16|pCylinder22ShapeDeformed.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|bot_bodyRNfosterParent1|fosterParent2|pCylinder29ShapeDeformed.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|bot_bodyRNfosterParent1|pCylinder26ShapeDeformed.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|bot_bodyRNfosterParent1|pCylinder25ShapeDeformed.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|bot_bodyRNfosterParent1|pCylinder27ShapeDeformed.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|bot_bodyRNfosterParent1|pCylinder24ShapeDeformed.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|bot_bodyRNfosterParent1|pCylinder28ShapeDeformed.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|bot_bodyRNfosterParent1|pCylinder23ShapeDeformed.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|bot_bodyRNfosterParent1|pCylinder29ShapeDeformed.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|bot_bodyRNfosterParent1|pCylinder22ShapeDeformed.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "pCube4ShapeDeformed.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape7Deformed.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape8Deformed.iog" ":initialShadingGroup.dsm" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
connectAttr "ikSCsolver.msg" ":ikSystem.sol" -na;
// End of Bot Rig.ma
