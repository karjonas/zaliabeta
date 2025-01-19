/// @description  p_init()
function p_init() {

	if (DEV) sdm(" p_init()");


	var _i,_ii,_j,_k,_m, _a, _idx, _num, _count;
	var _val,_val1,_val2,_val3,_val4;
	var _clm,_row, _clm0,_row0, _clms,_rows;
	var _pi, _pal1,_pal2,_pal3,_pal4,_pal5,_pal6,_pal7,_pal8, _palette;
	var _dk,_datakey,_datakey2,_datakey3,_datakey4,_datakey5;
	var _adj = 0;
	var _color,_color1,_color2,_color3;
	// ci: Color Index
	var _ci1="";
	var _ci2="";
	var _ci3="";
	var _ci4="";
	USE_ADDITIONAL_COLORS=0;

	dm = ds_map_create();


	GO_depth_init(DEPTH_BASE);




	//                          // 
	//                          // 
	C_BLK0 = $000000; // B-000,G-000,R-000.   full black
	C_WHT0 = $FFFFFF; // B-255,G-255,R-255.   full white
	//                          // 
	C_RED0 = $0000FF; // B-000,G-000,R-255.   full red
	C_GRN0 = $00FF00; // B-000,G-255,R-000.   full green
	C_BLU0 = $FF0000; // B-255,G-000,R-000.   full blue
	//                          // 
	C_MGN0 = $FF00FF; // B-255,G-000,R-255.   full magenta
	C_TEL0 = $00FFFF; // B-000,G-255,R-255.   full teal
	C_YLW0 = $FFFF00; // B-255,G-255,R-000.   full yellow
	C_ERR0 =  C_YLW0; // Error, Missing data, ..   full green 
	//C_ERR0 =  C_GRN0; // Error, Missing data, ..   full green 
	//                          // 
	//                          // 
	//                          // 
	//                          // 
	C_BLK1 = $000000; // NES black. B-000,G-000,R-000
	//                          // 
	C_WHT1 = $FCFCFC; // $30. White 1. Brightest NES white.
	C_WHT2 = $F1F2F1; // $20. White 2. SLIGHTLY grey. SLIGHTLY less bright than white 1
	//                          // 
	C_GRY1 = $BCBCBC; // Grey 1. $10. Brightest grey
	C_GRY2 = $A7A9A7; // Grey 2. $3D. 2nd Brightest grey
	C_GRY3 = $747474; // Grey 3. $00. Mid grey. 3rd brightest grey. 2nd darkest grey.
	C_GRY4 = $3E3E3E; // Grey 4. $2D. Darkest grey
	//                          // 
	C_BLU1 = $FCE4A8; // $31 Blue. Brightest
	C_BLU2 = $FCBC3C; // $21 Blue. Field Encounter sky
	C_BLU3 = $EC7000; // $11 Blue. Town sky
	C_BLU4 = $A80000; // $02 Blue. Old Kasuto sky
	//                          // 
	C_VLT1 = $FCD4C4; // $32 Violet.      Brightest
	C_VLT2 = $FC945C; // $22 Violet/Blue. Mid-Bright
	C_VLT3 = $EC3820; // $12 Violet/Blue. Mid-Dark
	C_VLT4 = $8C1824; // $01 Violet.      Darkest
	//                          // 
	C_PUR1 = $F1BADC; // $33 Purple. 
	C_PUR2 = $FC88CC; // $32 Purple. 
	C_PUR3 = $F00080; // $13 Purple. Cemetery sky
	C_PUR4 = $9C0044; // $03 Purple. 
	//                          // 
	C_MGN1 = $FCC4FC; // $34 Magenta. 
	C_MGN2 = $FC78F4; // $24 Magenta. 
	C_MGN3 = $AD15B8; // $14 Magenta. ShadowLink bg
	C_MGN4 = $74008C; // $04 Magenta. 
	//                          // 
	C_PNK1 = $DCB6F1; // $35 Pink. Brightest
	C_PNK2 = $B474FC; // $25 Pink. 
	C_PNK3 = $5800E4; // $15 Pink. 
	C_PNK4 = $1000A8; // $05 Pink. Darkest
	//                          // 
	C_RED1 = $B0BCFC; // $36 Red. Brightest
	C_RED2 = $6074FC; // $26 Red. 
	C_RED3 = $0028D8; // $16 Red. orange mob red
	C_RED4 = $0000A4; // $06 Red. Darkest
	//                          // 
	C_ORG1 = $A8D8FC; // $37 orange. Brightest
	C_ORG2 = $3898FC; // $27 orange mob orange
	C_ORG3 = $0C4CC8; // $17 orange. 2nd darkest
	C_ORG4 = $00087C; // $07 orange. 
	//                          // 
	C_YLW1 = $7DDAD4; // $38 Yellow. 
	C_YLW2 = $3CBCF0; // $28 Yellow. Map paper.
	C_YLW3 = $007088; // $18 Yellow. 
	C_YLW4 = $002C40; // $08 Yellow. 
	//                          // 
	C_YGR1 = $A0FCE0; // $39 Yellow/Green. Brightest
	C_YGR2 = $10D080; // $29 Yellow/Green. 
	C_YGR3 = $009400; // $19 Yellow/Green. 
	C_YGR4 = $004400; // $09 Yellow/Green. 
	//                          // 
	C_GRN1 = $96E8AF; // $3A Green. 
	C_GRN2 = $48DC4C; // $2A Green. Link green
	C_GRN3 = $00A800; // $1A Green. 
	C_GRN4 = $005000; // $0A Green. 
	//                          // 
	C_GRB1 = $BCE89E; // $3B Green-Blue.
	C_GRB2 = $70D43A; // $2B Green-Blue.
	C_GRB3 = $2A7B00; // $1B Green-Blue.
	C_GRB4 = $003E00; // $0B Green-Blue.
	//                          // 
	C_TEL1 = $F0FC9C; // $3C Teal. Brightest.
	C_TEL2 = $D8E800; // $2C Teal. 
	C_TEL3 = $888000; // $1C Teal. 
	C_TEL4 = $5C3C18; // $0C Teal. Darkest.
	//                          // 
	//                          // 

	// Color Tone Highlight, Midtone, Shadow
	C_TONE_HGH = C_WHT0; // Highlight
	C_TONE_MID = C_RED0; // Midtone
	C_TONE_LOW = C_BLU0; // Shadow






	dl_COLOR = ds_list_create();
	repeat($100) ds_list_add(dl_COLOR, C_ERR0);
	                                //                                          // 
	// $00-0F                       //                                          // 
	            _a=-1;              //                                          // 
	dl_COLOR[|++_a] = C_GRY3; // Luminosity $74.  Grey 3. Mid grey. 3rd brightest grey. 2nd darkest grey.
	dl_COLOR[|++_a] = C_VLT4; // Luminosity $8C.  Violet.      Darkest 
	dl_COLOR[|++_a] = C_BLU4; // Luminosity $A8.  Blue.        Darkest 
	dl_COLOR[|++_a] = C_PUR4; // Luminosity $9C.  Purple.      Darkest 
	dl_COLOR[|++_a] = C_MGN4; // Luminosity $8C.  Magenta.     Darkest 
	dl_COLOR[|++_a] = C_PNK4; // Luminosity $A8.  Pink.        Darkest 
	dl_COLOR[|++_a] = C_RED4; // Luminosity $A4.  Red.         Darkest 
	dl_COLOR[|++_a] = C_ORG4; // Luminosity $7C.  Orange.      Darkest 
	                                //                                          // 
	dl_COLOR[|++_a] = C_YLW4; // Luminosity $40.  Yellow.      Darkest 
	dl_COLOR[|++_a] = C_YGR4; // Luminosity $44.  Yellow-Green. Darkest 
	dl_COLOR[|++_a] = C_GRN4; // Luminosity $50.  Green.       Darkest 
	dl_COLOR[|++_a] = C_GRB4; // Luminosity $3E.  Green-Blue.  Darkest 
	dl_COLOR[|++_a] = C_TEL4; // Luminosity $5C.  Teal.        Darkest 
	dl_COLOR[|++_a] = C_BLK1; // Luminosity $00.  B-000,G-000,R-000.   full black
	//dl_COLOR[|++_a] = C_WHT0; // Luminosity $.  B-255,G-255,R-255.   full white
	//dl_COLOR[|++_a] = C_BLK0; // Luminosity $.  B-000,G-000,R-000.   full black
	                                //                                          // 
	                                //                                          // 
	// $10-1F                       //                                          // 
	            _a = (_a&$F0)+$0F;  //                                         // 
	dl_COLOR[|++_a] = C_GRY1; // Luminosity $BC.  Grey 1. Brightest grey
	dl_COLOR[|++_a] = C_BLU3; // Luminosity $EC.  Blue. 
	dl_COLOR[|++_a] = C_VLT3; // Luminosity $EC.  Violet. 
	dl_COLOR[|++_a] = C_PUR3; // Luminosity $F0.  Purple. 
	dl_COLOR[|++_a] = C_MGN3; // Luminosity $B8.  Magenta. 
	dl_COLOR[|++_a] = C_PNK3; // Luminosity $E4.  Pink. Mid-Dark
	dl_COLOR[|++_a] = C_RED3; // Luminosity $D8.  Red. 
	dl_COLOR[|++_a] = C_ORG3; // Luminosity $C8.  Orange.  
	                                //                                          // 
	dl_COLOR[|++_a] = C_YLW3; // Luminosity $88.  Yellow. 
	dl_COLOR[|++_a] = C_YGR3; // Luminosity $94.  Yellow-Green. 
	dl_COLOR[|++_a] = C_GRN3; // Luminosity $A8.  Green. 
	dl_COLOR[|++_a] = C_GRB3; // Luminosity $7B.  Green-Blue. 
	dl_COLOR[|++_a] = C_TEL3; // Luminosity $88.  Teal
	dl_COLOR[|++_a] = C_BLK1; // Luminosity $00.  
	// dl_COLOR[|++_a] = C_BLU0; // Luminosity $.  B-255,G-000,R-000.   full blue
	// dl_COLOR[|++_a] = C_BLK0; // Luminosity $.  B-000,G-000,R-000.   full black
	                                //                                          // 
	                                //                                          // 
	// $20-2F                       //                                          // 
	            _a = (_a&$F0)+$0F;  //                                         // 
	dl_COLOR[|++_a] = C_WHT2; // Luminosity $F2.  White 2. SLIGHTLY grey. SLIGHTLY less bright than white 1
	dl_COLOR[|++_a] = C_BLU2; // Luminosity $FC.  Blue. 
	dl_COLOR[|++_a] = C_VLT2; // Luminosity $FC.  Violet. 
	dl_COLOR[|++_a] = C_PUR2; // Luminosity $FC.  Purple. 
	dl_COLOR[|++_a] = C_MGN2; // Luminosity $FC.  Magenta. 
	dl_COLOR[|++_a] = C_PNK2; // Luminosity $FC.  Pink. Mid-Bright
	dl_COLOR[|++_a] = C_RED2; // Luminosity $FC.  Red. 
	dl_COLOR[|++_a] = C_ORG2; // Luminosity $FC.  Orange. mob orange.
	                                //                                          // 
	dl_COLOR[|++_a] = C_YLW2; // Luminosity $F0.  Yellow. Map paper.
	dl_COLOR[|++_a] = C_YGR2; // Luminosity $D0.  Yellow/Green. 
	dl_COLOR[|++_a] = C_GRN2; // Luminosity $DC.  Green. 
	dl_COLOR[|++_a] = C_GRB2; // Luminosity $D4.  Green-Blue. 
	dl_COLOR[|++_a] = C_TEL2; // Luminosity $E8.  Teal
	dl_COLOR[|++_a] = C_GRY4; // Luminosity $3E.  Grey 4. Darkest grey.
	// dl_COLOR[|++_a] = C_RED0; // Luminosity $.  B-000,G-000,R-255.   full red
	// dl_COLOR[|++_a] = C_BLK0; // Luminosity $.  B-000,G-000,R-000.   full black
	                                //                                          // 
	                                //                                          // 
	// $30-3F                       //                                          // 
	            _a = (_a&$F0)+$0F;  //                                         // 
	dl_COLOR[|++_a] = C_WHT1; // Luminosity $FC.  White 1. Brightest NES white.
	dl_COLOR[|++_a] = C_BLU1; // Luminosity $FC.  Blue. Brightest
	dl_COLOR[|++_a] = C_VLT1; // Luminosity $FC.  Violet. Brightest
	dl_COLOR[|++_a] = C_PUR1; // Luminosity $F1.  Purple. 
	dl_COLOR[|++_a] = C_MGN1; // Luminosity $FC.  Magenta. 
	dl_COLOR[|++_a] = C_PNK1; // Luminosity $F1.  Pink.    Brightest
	dl_COLOR[|++_a] = C_RED1; // Luminosity $FC.  Red.     Brightest
	dl_COLOR[|++_a] = C_ORG1; // Luminosity $FC.  Orange.  Brightest
	                                //                                          // 
	dl_COLOR[|++_a] = C_YLW1; // Luminosity $DA.  Yellow. 
	dl_COLOR[|++_a] = C_YGR1; // Luminosity $FC.  Yellow/Green. 
	dl_COLOR[|++_a] = C_GRN1; // Luminosity $E8.  Green. 
	dl_COLOR[|++_a] = C_GRB1; // Luminosity $E8.  Green-Blue. 
	dl_COLOR[|++_a] = C_TEL1; // Luminosity $FC.  Teal. 
	dl_COLOR[|++_a] = C_GRY2; // Luminosity $A9.  Grey 2. 2nd Brightest grey
	// dl_COLOR[|++_a] = C_GRN0; // Luminosity $.  B-000,G-255,R-000.   full green
	// dl_COLOR[|++_a] = C_BLK0; // Luminosity $.  B-000,G-000,R-000.   full black
	                                //                                          // 
	                                //                                          // 
	// $F0-FF                       //
	            _a=$F0;             //
	dl_COLOR[|++_a] = C_BLK0; // B-000,G-000,R-000.   full black
	dl_COLOR[|++_a] = C_WHT0; // B-255,G-255,R-255.   full white
	dl_COLOR[|++_a] = C_RED0; // B-000,G-000,R-255.   full red
	dl_COLOR[|++_a] = C_GRN0; // B-000,G-255,R-000.   full green
	dl_COLOR[|++_a] = C_BLU0; // B-255,G-000,R-000.   full blue
	dl_COLOR[|++_a] = C_MGN0; // B-255,G-000,R-255.   full magenta
	dl_COLOR[|++_a] = C_TEL0; // B-000,G-255,R-255.   full teal
	dl_COLOR[|++_a] = C_YLW0; // B-255,G-255,R-000.   full yellow
	                                // 
	dl_COLOR[| $FF] = C_ERR0; // Error, Missing data, ..   full green 








	// CI: Color Index (of dl_COLOR)
	CI_ERR0  = $FF; // ERROR. full green
	CI_ERR0_ = hex_str(CI_ERR0);
	// CI_ERR0 = ds_list_find_index(dl_COLOR, C_ERR0); // ERROR. full green
	CI_BLK0  = ds_list_find_index(dl_COLOR, C_BLK0); // full black
	CI_BLK0_ = hex_str(CI_BLK0);
	CI_WHT0  = ds_list_find_index(dl_COLOR, C_WHT0); // full white
	CI_WHT0_ = hex_str(CI_WHT0);
	CI_RED0  = ds_list_find_index(dl_COLOR, C_RED0); // full red
	CI_RED0_ = hex_str(CI_RED0);
	CI_GRN0  = ds_list_find_index(dl_COLOR, C_GRN0); // full green
	CI_GRN0_ = hex_str(CI_GRN0);
	CI_BLU0  = ds_list_find_index(dl_COLOR, C_BLU0); // full blue
	CI_BLU0_ = hex_str(CI_BLU0);
	CI_MGN0  = ds_list_find_index(dl_COLOR, C_MGN0); // full magenta
	CI_MGN0_ = hex_str(CI_MGN0);
	CI_TEL0  = ds_list_find_index(dl_COLOR, C_TEL0); // full teal
	CI_TEL0_ = hex_str(CI_TEL0);
	CI_YLW0  = ds_list_find_index(dl_COLOR, C_YLW0); // full yellow
	CI_YLW0_ = hex_str(CI_YLW0);
	//                                                  // 
	//                                                  // 
	//                                                  // 
	CI_BLK1  = ds_list_find_index(dl_COLOR, C_BLK1); // $0D. B-000,G-000,R-000.   NES black
	CI_BLK1_ = hex_str(CI_BLK1);
	//                                                  // 
	CI_WHT1  = ds_list_find_index(dl_COLOR, C_WHT1); // $30. White 1. Brightest NES white.
	CI_WHT1_ = hex_str(CI_WHT1);
	CI_WHT2  = ds_list_find_index(dl_COLOR, C_WHT2); // $20. White 2. SLIGHTLY grey. SLIGHTLY less bright than white 1
	CI_WHT2_ = hex_str(CI_WHT2);
	//                                                  // 
	CI_GRY1  = ds_list_find_index(dl_COLOR, C_GRY1); // $10. Grey,    Brightest grey
	CI_GRY1_ = hex_str(CI_GRY1);
	CI_GRY2  = ds_list_find_index(dl_COLOR, C_GRY2); // $3D. Grey,    2nd Brightest grey
	CI_GRY2_ = hex_str(CI_GRY2);
	CI_GRY3  = ds_list_find_index(dl_COLOR, C_GRY3); // $00. Grey,    2nd Darkest grey
	CI_GRY3_ = hex_str(CI_GRY3);
	CI_GRY4  = ds_list_find_index(dl_COLOR, C_GRY4); // $2D. Grey,    Darkest grey
	CI_GRY4_ = hex_str(CI_GRY4);
	//                                                  // 
	CI_BLU1  = ds_list_find_index(dl_COLOR, C_BLU1); // $31. Blue. 
	CI_BLU1_ = hex_str(CI_BLU1);
	CI_BLU2  = ds_list_find_index(dl_COLOR, C_BLU2); // $21. Blue. Field Encounter sky
	CI_BLU2_ = hex_str(CI_BLU2);
	CI_BLU3  = ds_list_find_index(dl_COLOR, C_BLU3); // $11. Blue. 
	CI_BLU3_ = hex_str(CI_BLU3);
	CI_BLU4  = ds_list_find_index(dl_COLOR, C_BLU4); // $02. Blue. Old Kasuto sky
	CI_BLU4_ = hex_str(CI_BLU4);
	//                                                  // 
	CI_VLT1  = ds_list_find_index(dl_COLOR, C_VLT1); // $32. Violet.         Brightest
	CI_VLT1_ = hex_str(CI_VLT1);
	CI_VLT2  = ds_list_find_index(dl_COLOR, C_VLT2); // $22. Violet/Blue.      
	CI_VLT2_ = hex_str(CI_VLT2);
	CI_VLT3  = ds_list_find_index(dl_COLOR, C_VLT3); // $12. Violet/Blue.      
	CI_VLT3_ = hex_str(CI_VLT3);
	CI_VLT4  = ds_list_find_index(dl_COLOR, C_VLT4); // $01. Violet          Darkest
	CI_VLT4_ = hex_str(CI_VLT4);
	//                                                  // 
	CI_PUR1  = ds_list_find_index(dl_COLOR, C_PUR1); // $33. Purple. 
	CI_PUR1_ = hex_str(CI_PUR1);
	CI_PUR2  = ds_list_find_index(dl_COLOR, C_PUR2); // $23. Purple. 
	CI_PUR2_ = hex_str(CI_PUR2);
	CI_PUR3  = ds_list_find_index(dl_COLOR, C_PUR3); // $13. Purple. Cemetery sky
	CI_PUR3_ = hex_str(CI_PUR3);
	CI_PUR4  = ds_list_find_index(dl_COLOR, C_PUR4); // $03. Purple. 
	CI_PUR4_ = hex_str(CI_PUR4);
	//                                                  // 
	CI_MGN1  = ds_list_find_index(dl_COLOR, C_MGN1); // $34. Magenta. 
	CI_MGN1_ = hex_str(CI_MGN1);
	CI_MGN2  = ds_list_find_index(dl_COLOR, C_MGN2); // $24. Magenta. 
	CI_MGN2_ = hex_str(CI_MGN2);
	CI_MGN3  = ds_list_find_index(dl_COLOR, C_MGN3); // $14. Magenta. ShadowLink bg
	CI_MGN3_ = hex_str(CI_MGN3);
	CI_MGN4  = ds_list_find_index(dl_COLOR, C_MGN4); // $04. Magenta. 
	CI_MGN4_ = hex_str(CI_MGN4);
	//                                                  // 
	CI_PNK1  = ds_list_find_index(dl_COLOR, C_PNK1); // $35. Pink. 
	CI_PNK1_ = hex_str(CI_PNK1);
	CI_PNK2  = ds_list_find_index(dl_COLOR, C_PNK2); // $25. Pink. 
	CI_PNK2_ = hex_str(CI_PNK2);
	CI_PNK3  = ds_list_find_index(dl_COLOR, C_PNK3); // $15. Pink. 
	CI_PNK3_ = hex_str(CI_PNK3);
	CI_PNK4  = ds_list_find_index(dl_COLOR, C_PNK4); // $05. Pink. 
	CI_PNK4_ = hex_str(CI_PNK4);
	//                                                  // 
	CI_RED1  = ds_list_find_index(dl_COLOR, C_RED1); // $36. Red. Brightest red
	CI_RED1_ = hex_str(CI_RED1);
	CI_RED2  = ds_list_find_index(dl_COLOR, C_RED2); // $26. Red. 
	CI_RED2_ = hex_str(CI_RED2);
	CI_RED3  = ds_list_find_index(dl_COLOR, C_RED3); // $16. Red. orange mob red
	CI_RED3_ = hex_str(CI_RED3);
	CI_RED4  = ds_list_find_index(dl_COLOR, C_RED4); // $06. Red. 
	CI_RED4_ = hex_str(CI_RED4);
	//                                                  // 
	CI_ORG1  = ds_list_find_index(dl_COLOR, C_ORG1); // $37. orange. brightest
	CI_ORG1_ = hex_str(CI_ORG1);
	CI_ORG2  = ds_list_find_index(dl_COLOR, C_ORG2); // $27. orange mob orange
	CI_ORG2_ = hex_str(CI_ORG2);
	CI_ORG3  = ds_list_find_index(dl_COLOR, C_ORG3); // $17. orange 
	CI_ORG3_ = hex_str(CI_ORG3);
	CI_ORG4  = ds_list_find_index(dl_COLOR, C_ORG4); // $07. 
	CI_ORG4_ = hex_str(CI_ORG4);
	//                                                  // 
	CI_YLW1  = ds_list_find_index(dl_COLOR, C_YLW1); // $38. Yellow. 
	CI_YLW1_ = hex_str(CI_YLW1);
	CI_YLW2  = ds_list_find_index(dl_COLOR, C_YLW2); // $28. Yellow. Map paper.
	CI_YLW2_ = hex_str(CI_YLW2);
	CI_YLW3  = ds_list_find_index(dl_COLOR, C_YLW3); // $18. Yellow. 
	CI_YLW3_ = hex_str(CI_YLW3);
	CI_YLW4  = ds_list_find_index(dl_COLOR, C_YLW4); // $08. Yellow. 
	CI_YLW4_ = hex_str(CI_YLW4);
	//                                                  // 
	CI_YGR1  = ds_list_find_index(dl_COLOR, C_YGR1); // $39. Green-Yellow. 
	CI_YGR1_ = hex_str(CI_YGR1);
	CI_YGR2  = ds_list_find_index(dl_COLOR, C_YGR2); // $29. Green-Yellow.
	CI_YGR2_ = hex_str(CI_YGR2);
	CI_YGR3  = ds_list_find_index(dl_COLOR, C_YGR3); // $19. Green-Yellow. 
	CI_YGR3_ = hex_str(CI_YGR3);
	CI_YGR4  = ds_list_find_index(dl_COLOR, C_YGR4); // $09. Green-Yellow. 
	CI_YGR4_ = hex_str(CI_YGR4);
	//                                                  // 
	CI_GRN1  = ds_list_find_index(dl_COLOR, C_GRN1); // $3A. Green. 
	CI_GRN1_ = hex_str(CI_GRN1);
	CI_GRN2  = ds_list_find_index(dl_COLOR, C_GRN2); // $2A. Green. Lonk green
	CI_GRN2_ = hex_str(CI_GRN2);
	CI_GRN3  = ds_list_find_index(dl_COLOR, C_GRN3); // $1A. Green. 
	CI_GRN3_ = hex_str(CI_GRN3);
	CI_GRN4  = ds_list_find_index(dl_COLOR, C_GRN4); // $0A. Green. 
	CI_GRN4_ = hex_str(CI_GRN4);
	//                                                  // 
	CI_GRB1  = ds_list_find_index(dl_COLOR, C_GRB1); // $3B. Green-Blue. 
	CI_GRB1_ = hex_str(CI_GRB1);
	CI_GRB2  = ds_list_find_index(dl_COLOR, C_GRB2); // $2B. Green-Blue.
	CI_GRB2_ = hex_str(CI_GRB2);
	CI_GRB3  = ds_list_find_index(dl_COLOR, C_GRB3); // $1B. Green-Blue.
	CI_GRB3_ = hex_str(CI_GRB3);
	CI_GRB4  = ds_list_find_index(dl_COLOR, C_GRB4); // $0B. Green-Blue.
	CI_GRB4_ = hex_str(CI_GRB4);
	//                                                  // 
	CI_TEL1  = ds_list_find_index(dl_COLOR, C_TEL1); // $3C. Teal. Brightest
	CI_TEL1_ = hex_str(CI_TEL1);
	CI_TEL2  = ds_list_find_index(dl_COLOR, C_TEL2); // $2C. Teal. 
	CI_TEL2_ = hex_str(CI_TEL2);
	CI_TEL3  = ds_list_find_index(dl_COLOR, C_TEL3); // $1C. Teal. 
	CI_TEL3_ = hex_str(CI_TEL3);
	CI_TEL4  = ds_list_find_index(dl_COLOR, C_TEL4); // $0C. Teal. Darkest
	CI_TEL4_ = hex_str(CI_TEL4);
	//                                                  // 
	//                                                  // 


	dl_COLORS_USED=ds_list_create();
	             _count=ds_list_size(dl_COLOR);
	for(_i=0; _i<_count; _i++)
	{
	        _color = dl_COLOR[|_i];
	    if (_color!=C_ERR0 
	    &&  ds_list_find_index(dl_COLORS_USED,_color)==-1 )
	    {
	        ds_list_add(       dl_COLORS_USED,_color);
	    }
	}




	if (USE_ADDITIONAL_COLORS) p_init_add_more_colors();

	//dev_output_colors_1a();






	// Color Tone Highlight, Midtone, Shadow
	CI_TONE_HGH = CI_WHT0; // Highlight
	CI_TONE_MID = CI_RED0; // Midtone
	CI_TONE_LOW = CI_BLU0; // Shadow





	background_color_index = CI_BLK1; // The dl_COLOR index for this room's bg color



	// color sequences
	dg_color_seq = ds_grid_create(0,4);
	_a=-1;
	// 0: bg flash for: spell, boss explosion, death screen, 
	ds_grid_resize(dg_color_seq, (++_a)+1, ds_grid_height(dg_color_seq));
	dg_color_seq[#_a,0] = C_VLT3;
	dg_color_seq[#_a,1] = C_RED3;
	dg_color_seq[#_a,2] = C_GRN2;
	dg_color_seq[#_a,3] = C_RED3;

	// 1: Star Sky star color sequence
	ds_grid_resize(dg_color_seq, (++_a)+1, ds_grid_height(dg_color_seq));
	dg_color_seq[#_a,0] = C_GRY3; // Grey,  2nd darkest
	dg_color_seq[#_a,1] = C_BLU4; // Blue,  darkest
	dg_color_seq[#_a,2] = C_BLU2; // Blue,  light
	dg_color_seq[#_a,3] = C_WHT1; // White, brightest




	/*
	_val = "00"+"0D"+"2D"+"3D";
	dm_COLOR_CHOICES = ds_map_create();
	dm_COLOR_CHOICES[?STR_Base+"01"+"_High"]  = _val+"01"+"02"+"03"+"0C"+"11"+"12"+"13"+"1C";
	dm_COLOR_CHOICES[?STR_Base+"01"+"_Shad"]  = "01"+"02"+"03"+"0C"+"0D"+"2D";

	dm_COLOR_CHOICES[?STR_Base+"02"+"_High"]  = _val+"01"+"02"+"03"+"0C"+"11"+"12"+"13"+"1C";
	*/




	//pal_sys_ver = 1;
	//pal_sys_ver = 2;





	SpellFlash_DURATION1   = $20;
	Flash_Pal_timer        = 0; // $074B
	Flash_Bgr_timer        = 0; // 
	Flash_Bgr_timer2       = 0; // Ganon3 uses this so red is used instead of the user's bgr flash setting
	SpellFlash_PC_timer    = 0; // 
	SpellFlash_GOB_timer   = 0; // 
	SpellReady_flash_timer = 0;
	SpellCast_flash_timer  = 0;
	//Flash_PC_timer         = 0; // 
	//PalFlash1_Bgr_timer    = 0; // 
	//PalFlash1_timer        = 0; // $074B
	//pal_flash_tmr          = 0; // $074B


	GameOverScreen_BGR_COLOR = C_RED3;


	            dl_BackgroundFlash_COLORS=ds_list_create();
	ds_list_add(dl_BackgroundFlash_COLORS,C_BLK1);
	ds_list_add(dl_BackgroundFlash_COLORS,C_RED3);
	ds_list_add(dl_BackgroundFlash_COLORS,C_VLT3);
	ds_list_add(dl_BackgroundFlash_COLORS,C_GRN2);
	BackgroundFlash_setting = $1;














	// palette_image_IS_SURFACE ---------------------------------
	// 2024/06/26: Had a lot of trouble getting this working. 
	// Palette swap would fail at random times during the 
	// ShadowBoss fight or the cutscene after.
	// After more work, I seem to have got it working fine during 
	// those times but needs to be tested much more.
	// 2024/06/27: When scaling the game window, there's about 
	// 1 frame the pal swap doesn't work so I switched back 
	// to using a sprite for palette_image.
	// You can set it to false for the stable legacy method that 
	// uses a sprite instead of a surface.
	global.palette_image_IS_SURFACE = false;
	palette_image = 0;

	PAL_SETS_PER_SCENE = 2; // scene lit set, scene dark set
	BGR_PAL_COUNT = 4;
	MOB_PAL_COUNT = 4;

	PAL_PER_SET   = 1; // PAL BASE
	PAL_PER_SET  += 1; // MENU PAL
	PAL_PER_SET  += PC_PAL_COUNT; // PC PAL
	PAL_PER_SET  += PC_PAL_COUNT; // CUCCO PAL
	PAL_PER_SET  += 1; // DARKLONK PAL
	PAL_PER_SET  += BGR_PAL_COUNT;
	PAL_PER_SET  += MOB_PAL_COUNT;

	PAL_PER_SCENE = PAL_PER_SET * PAL_SETS_PER_SCENE;

	COL_PER_SET   = PAL_PER_SET   * COL_PER_PAL;
	COL_PER_SCENE = PAL_PER_SCENE * COL_PER_PAL;




	_adj = 0; // For adding PAL_BASE

	// PI: Palette Index
	SET_IDX_LIT = 0;
	SET_IDX_DRK = 1;
	PI_LAST_LIT = ((SET_IDX_LIT+1)    * PAL_PER_SET) - 1 + _adj;
	PI_LAST_DRK = ((SET_IDX_DRK+1)    * PAL_PER_SET) - 1 + _adj;
	PI_LAST     = (PAL_SETS_PER_SCENE * PAL_PER_SET) - 1 + _adj;

	PI_PERMUT_BASE = PI_LAST + 1;

	PI_LIT1 = SET_IDX_LIT * PAL_PER_SET; // 
	PI_DRK1 = SET_IDX_DRK * PAL_PER_SET; // 

	PI_ERR0 = PI_BASE;


	// P_SPR: Palette Sprite
	global.palette_image_W = PAL_PER_SCENE + (PAL_PER_SCENE*PI_PERMUTATIONS);
	global.palette_image_H = COL_PER_PAL;






	// ---------------------------------------------------------------------------
	// dg_depth_pi contains the pi's each depth will use for THE CURRENT RM.
	dg_depth_pi = ds_grid_create(g.TILE_LAYER_COUNT,4);
	dm_depth_pi = ds_map_create();

	var _GROUP1_BASE  =  TILE_DEPTHS_BASE;

	var _GROUP2_BASE  = _GROUP1_BASE;
	    _GROUP2_BASE += (TILE_DEPTHS_PAD * (BGR_PAL_COUNT-1));
	    _GROUP2_BASE +=  TILE_LAYERS_GROUP_PAD;
	//
	var _depth = 0;

	for(_i=ds_list_size(g.dl_TILE_DEPTHS)-1; _i>=0; _i--)
	{
	    _depth =        g.dl_TILE_DEPTHS[|_i];
    
	         _idx  = abs(_depth);
	    if ( _idx >= _GROUP2_BASE)
	    {    _idx -= _GROUP2_BASE;  }
	    else _idx -= _GROUP1_BASE;
	         _idx  = _idx div TILE_DEPTHS_PAD; // = 0,1,2,3
	         _idx  = PI_BGR_1 + _idx;
	    //
	    dm_depth_pi[?hex_str(abs(_depth))] = _idx;
	}
	/*
	dm_depth_pi = ds_map_create();
	dm_depth_pi[?hex_str(DEPTH_BG1_P1)] = PI_BGR1; // +$80 depth
	dm_depth_pi[?hex_str(DEPTH_BG1_P2)] = PI_BGR2; // +$90
	dm_depth_pi[?hex_str(DEPTH_BG1_P3)] = PI_BGR3; // +$A0
	dm_depth_pi[?hex_str(DEPTH_BG1_P4)] = PI_BGR4; // +$B0
	                                                // 
	dm_depth_pi[?hex_str(DEPTH_BG2_P1)] = PI_BGR1; // +$E0
	dm_depth_pi[?hex_str(DEPTH_BG2_P2)] = PI_BGR2; // +$F0
	dm_depth_pi[?hex_str(DEPTH_BG2_P3)] = PI_BGR3; // +$100
	dm_depth_pi[?hex_str(DEPTH_BG2_P4)] = PI_BGR4; // +$110 depth
	                                                // 
	                                                // 
	dm_depth_pi[?hex_str(DEPTH_FG1_P1)] = PI_BGR1; // -$80 depth
	dm_depth_pi[?hex_str(DEPTH_FG1_P2)] = PI_BGR2; // -$90
	dm_depth_pi[?hex_str(DEPTH_FG1_P3)] = PI_BGR3; // -$A0
	dm_depth_pi[?hex_str(DEPTH_FG1_P4)] = PI_BGR4; // -$B0
	                                                // 
	dm_depth_pi[?hex_str(DEPTH_FG2_P1)] = PI_BGR1; // -$E0
	dm_depth_pi[?hex_str(DEPTH_FG2_P2)] = PI_BGR2; // -$F0
	dm_depth_pi[?hex_str(DEPTH_FG2_P3)] = PI_BGR3; // -$100
	dm_depth_pi[?hex_str(DEPTH_FG2_P4)] = PI_BGR4; // -$110 depth
	*/


















	TRIFORCE_PI = PI_MOB_BLU;
	triforce_pi = TRIFORCE_PI;
	//TRIFORCE_PAL_POS = val(dm_pal_data[?hex_str(triforce_pi)+STR_Palette+STR_Position]);

	var _CI1 = CI_WHT1_;
	//var _CI2 = CI_ORG4_;
	var _CI2 = CI_WHT1_;
	ar_PALSEQ_TRIFORCE[3] = CI_GRN0_ + _CI1 + CI_ORG1_ + _CI2; // 
	ar_PALSEQ_TRIFORCE[2] = CI_GRN0_ + _CI1 + CI_ORG1_ + _CI2; // 
	ar_PALSEQ_TRIFORCE[1] = CI_GRN0_ + _CI1 + CI_ORG2_ + _CI2; // 
	ar_PALSEQ_TRIFORCE[0] = CI_GRN0_ + _CI1 + CI_ORG3_ + _CI2; // 



	PI_SPELL_UNAFFORDABLE = get_pi(PI_GUI_1,4); // 4: SHM
	PI_SPELL_FUTILE       = get_pi(PI_GUI_1,3); // 3: MSH
	//PI_SPELL_ACTIVE       = get_pi(PI_GUI_1,2); // 2: MHS











	// FALLING SCENE  ----------------------------------
	FallScene_COL_CNT        = 3;
	FallScene_ROW_H          = 8;

	FallScene_ROW_GROUP_H    = FallScene_ROW_H * FallScene_COL_CNT;
	FallScene_ROW_GROUP_CNT  =      BASE_GAME_RESOLUTION_H div FallScene_ROW_GROUP_H;
	FallScene_ROW_GROUP_CNT += sign(BASE_GAME_RESOLUTION_H mod FallScene_ROW_GROUP_H);


	fall_scene_type        = 0; // current type of active fall scene
	fall_scene_1_spr       = 0; // created on first frame of app start.
	fall_scene_2_spr       = 0; // created on first frame of app start.
	fall_scene_1_spr_1     = 0; // created on first frame of app start.
	fall_scene_2_spr_1     = 0; // created on first frame of app start.
	fall_scene_spr         = 0; // spr for active fall scene
	fall_scene_1_pal       = $1C0C2C;
	fall_scene_2_pal       = $160626;
	fall_scene_pal         = fall_scene_1_pal; // pal for active fall scene
	fall_scene_pal_state   = 0; // 0484
	fall_scene_pal_set     = 0; // grid idx of dg_FS_PI
	FallScene_PI_BASE      = PI_BGR_1;
	fall_scene_counter     = 0;

	FallScene_FALL_SPD_DEF = 2; // OG 2
	FallScene_1_FALL_SPD   = FallScene_FALL_SPD_DEF;
	FallScene_2_FALL_SPD   = round(FallScene_1_FALL_SPD + (FallScene_1_FALL_SPD * (viewH()/viewW())));
	fall_scene_fall_spd    = FallScene_1_FALL_SPD; // pixels per frame speed

	FallScene_Y_BASE       = $20; // OG $10
	fall_scene_y           = 0;

	FallScene_X_BASE       = (viewW_()-viewH_()) + FallScene_Y_BASE;
	FallScene_X_BASE      -= $06<<3;
	fall_scene_x           = 0;




	// Colors for FallScene backgrounds
	dg_FallScene_PI = ds_grid_create(0,FallScene_COL_CNT);
	_a=-1;
	ds_grid_resize(dg_FallScene_PI, (++_a)+1, FallScene_COL_CNT);
	dg_FallScene_PI[#_a,0] = get_pi(FallScene_PI_BASE,3); // m, s, h
	dg_FallScene_PI[#_a,1] = get_pi(FallScene_PI_BASE,4); // s, h, m
	dg_FallScene_PI[#_a,2] = get_pi(FallScene_PI_BASE,0); // h, m, s
	//                                                      //
	ds_grid_resize(dg_FallScene_PI, (++_a)+1, FallScene_COL_CNT);
	dg_FallScene_PI[#_a,0] = get_pi(PI_MOB_PUR,       3); // m, s, h
	dg_FallScene_PI[#_a,1] = get_pi(PI_MOB_PUR,       4); // s, h, m
	dg_FallScene_PI[#_a,2] = get_pi(PI_MOB_PUR,       0); // h, m, s
	//                                                      //



























	//Rando_palettes = 0;

	dm_pal_data = ds_map_create();
	dm_scene_palette = ds_map_create();
	dl_various_pals1 = ds_list_create();
	dl_various_pals2 = ds_list_create();



















	// PAL_POS: The string position of a pal in (pal_rm_dflt, pal_rm_new, pal_rm_cur)
	PAL_POS_BASE = 1;


	var         _dl_PI = ds_list_create();
	ds_list_add(_dl_PI, PI_GUI_1);
	for(_i=0; _i<PC_PAL_COUNT; _i++) ds_list_add(_dl_PI, PI_PC_1+_i);
	for(_i=0; _i<PC_PAL_COUNT; _i++) ds_list_add(_dl_PI, PI_CUC1+_i);
	//ds_list_add(_dl_PI, PI_PC_1);
	//                              // 
	ds_list_add(_dl_PI, PI_DARKLONK);
	//                              // 
	ds_list_add(_dl_PI, PI_BGR_1);
	ds_list_add(_dl_PI, PI_BGR_2);
	ds_list_add(_dl_PI, PI_BGR_3);
	ds_list_add(_dl_PI, PI_BGR_4);
	//                              // 
	ds_list_add(_dl_PI, PI_MOB_ORG);
	ds_list_add(_dl_PI, PI_MOB_RED);
	ds_list_add(_dl_PI, PI_MOB_BLU);
	ds_list_add(_dl_PI, PI_MOB_PUR);
	//                              // 


	var _dk_Palette_Position = STR_Palette+STR_Position;

	            dl_PAL_POS = ds_list_create();
	ds_list_add(dl_PAL_POS, PAL_POS_BASE);
	             _count = ds_list_size(_dl_PI);
	for(_i=0; _i<_count; _i++)
	{
	    _pi   = _dl_PI[|_i];
	    _val  = get_pal_pos(_pi);
    
	    ds_list_add(dl_PAL_POS, _val);
	    dm_pal_data[?hex_str(_pi)+_dk_Palette_Position] = _val;
	}

	ds_list_destroy(_dl_PI); _dl_PI=undefined;


	PAL_POS_MENU = val(dm_pal_data[?hex_str(PI_GUI_1)  +_dk_Palette_Position], get_pal_pos(PI_GUI_1  ));
	//                                                                                              // 
	PAL_POS_PC_1 = val(dm_pal_data[?hex_str(PI_PC_1)   +_dk_Palette_Position], get_pal_pos(PI_PC_1   )); // Tunic (Green)
	PAL_POS_PC_2 = val(dm_pal_data[?hex_str(PI_PC_2)   +_dk_Palette_Position], get_pal_pos(PI_PC_2   )); // Spell flash (Light)
	PAL_POS_PC_3 = val(dm_pal_data[?hex_str(PI_PC_3)   +_dk_Palette_Position], get_pal_pos(PI_PC_3   )); // Disguise
	PAL_POS_CUC1 = val(dm_pal_data[?hex_str(PI_CUC1)   +_dk_Palette_Position], get_pal_pos(PI_CUC1   )); // Tunic (Green)
	PAL_POS_CUC2 = val(dm_pal_data[?hex_str(PI_CUC2)   +_dk_Palette_Position], get_pal_pos(PI_CUC2   )); // Spell flash (Light)
	PAL_POS_CUC3 = val(dm_pal_data[?hex_str(PI_CUC3)   +_dk_Palette_Position], get_pal_pos(PI_CUC3   )); // Disguise
	//                                                                                              // 
	PAL_POS_DLNK = val(dm_pal_data[?hex_str(PI_DARKLONK)+_dk_Palette_Position], get_pal_pos(PI_DARKLONK));
	//                                                                                              // 
	PAL_POS_BGR1 = val(dm_pal_data[?hex_str(PI_BGR_1)  +_dk_Palette_Position], get_pal_pos(PI_BGR_1  ));
	PAL_POS_BGR2 = val(dm_pal_data[?hex_str(PI_BGR_2)  +_dk_Palette_Position], get_pal_pos(PI_BGR_2  ));
	PAL_POS_BGR3 = val(dm_pal_data[?hex_str(PI_BGR_3)  +_dk_Palette_Position], get_pal_pos(PI_BGR_3  ));
	PAL_POS_BGR4 = val(dm_pal_data[?hex_str(PI_BGR_4)  +_dk_Palette_Position], get_pal_pos(PI_BGR_4  ));
	//                                                                                              // 
	PAL_POS_MOB1 = val(dm_pal_data[?hex_str(PI_MOB_ORG)+_dk_Palette_Position], get_pal_pos(PI_MOB_ORG));
	PAL_POS_MOB2 = val(dm_pal_data[?hex_str(PI_MOB_RED)+_dk_Palette_Position], get_pal_pos(PI_MOB_RED));
	PAL_POS_MOB3 = val(dm_pal_data[?hex_str(PI_MOB_BLU)+_dk_Palette_Position], get_pal_pos(PI_MOB_BLU));
	PAL_POS_MOB4 = val(dm_pal_data[?hex_str(PI_MOB_PUR)+_dk_Palette_Position], get_pal_pos(PI_MOB_PUR));
	//                                                                                              // 
	//                                                                                              // 
	PAL_POS_MENU_DARK = PAL_POS_MENU + (COL_PER_SET<<1);
	//                                                                                              // 
	PAL_POS_PC_1_DARK = PAL_POS_PC_1 + (COL_PER_SET<<1);
	PAL_POS_PC_2_DARK = PAL_POS_PC_2 + (COL_PER_SET<<1);
	PAL_POS_PC_3_DARK = PAL_POS_PC_3 + (COL_PER_SET<<1);
	PAL_POS_CUC1_DARK = PAL_POS_CUC1 + (COL_PER_SET<<1);
	PAL_POS_CUC2_DARK = PAL_POS_CUC2 + (COL_PER_SET<<1);
	PAL_POS_CUC3_DARK = PAL_POS_CUC3 + (COL_PER_SET<<1);
	//                                                                                              // 
	PAL_POS_DLNK_DARK = PAL_POS_DLNK + (COL_PER_SET<<1);
	//                                                                                              // 
	PAL_POS_BGR1_DARK = PAL_POS_BGR1 + (COL_PER_SET<<1);
	PAL_POS_BGR2_DARK = PAL_POS_BGR2 + (COL_PER_SET<<1);
	PAL_POS_BGR3_DARK = PAL_POS_BGR3 + (COL_PER_SET<<1);
	PAL_POS_BGR4_DARK = PAL_POS_BGR4 + (COL_PER_SET<<1);
	//                                                                                              // 
	PAL_POS_MOB1_DARK = PAL_POS_MOB1 + (COL_PER_SET<<1);
	PAL_POS_MOB2_DARK = PAL_POS_MOB2 + (COL_PER_SET<<1);
	PAL_POS_MOB3_DARK = PAL_POS_MOB3 + (COL_PER_SET<<1);
	PAL_POS_MOB4_DARK = PAL_POS_MOB4 + (COL_PER_SET<<1);
	//                                                                                              // 
	//                                                                                              // 
	//PAL_POS_PC_SWORD = get_pal_pos(PI_PC_SWORD);
	//                                                                                              // 
	/*
	PAL_POS_MENU = val(dm_pal_data[?hex_str(PI_GUI_1)  +_dk_Palette_Position], PAL_POS_BASE+(PI_GUI_1  *COL_PER_PAL));
	PAL_POS_BGR1 = val(dm_pal_data[?hex_str(PI_BGR_1)  +_dk_Palette_Position], PAL_POS_BASE+(PI_BGR_1  *COL_PER_PAL));
	PAL_POS_BGR2 = val(dm_pal_data[?hex_str(PI_BGR_2)  +_dk_Palette_Position], PAL_POS_BASE+(PI_BGR_2  *COL_PER_PAL));
	PAL_POS_BGR3 = val(dm_pal_data[?hex_str(PI_BGR_3)  +_dk_Palette_Position], PAL_POS_BASE+(PI_BGR_3  *COL_PER_PAL));
	PAL_POS_BGR4 = val(dm_pal_data[?hex_str(PI_BGR_4)  +_dk_Palette_Position], PAL_POS_BASE+(PI_BGR_4  *COL_PER_PAL));

	PAL_POS_PC_1 = val(dm_pal_data[?hex_str(PI_PC_1)   +_dk_Palette_Position], PAL_POS_BASE+(PI_PC_1   *COL_PER_PAL));
	PAL_POS_MOB1 = val(dm_pal_data[?hex_str(PI_MOB_ORG)+_dk_Palette_Position], PAL_POS_BASE+(PI_MOB_ORG*COL_PER_PAL));
	PAL_POS_MOB2 = val(dm_pal_data[?hex_str(PI_MOB_RED)+_dk_Palette_Position], PAL_POS_BASE+(PI_MOB_RED*COL_PER_PAL));
	PAL_POS_MOB3 = val(dm_pal_data[?hex_str(PI_MOB_BLU)+_dk_Palette_Position], PAL_POS_BASE+(PI_MOB_BLU*COL_PER_PAL));
	PAL_POS_MOB4 = val(dm_pal_data[?hex_str(PI_MOB_PUR)+_dk_Palette_Position], PAL_POS_BASE+(PI_MOB_PUR*COL_PER_PAL));
	*/





















	_ci1 = CI_BLK1_;

	PAL_BASE = hex_str(CI_GRN0)+hex_str(CI_TONE_HGH)+hex_str(CI_TONE_MID)+hex_str(CI_TONE_LOW); // Base colors. Green, White, Red, Blue
	//PAL_BASE = "3E"+ "0E"+ "2E"+ "1E"; // Base colors. Green, White, Red, Blue
	PAL_MENU = _ci1 + CI_WHT1_ + CI_RED3_ + CI_VLT3_; // Menu. $30-White, $16-Red, $12-Blue
	//PAL_MENU = CI_GRN0_ + CI_WHT1_ + CI_RED3_ + CI_VLT3_; // Menu. $30-White, $16-Red, $12-Blue
	PAL_SET1 = PAL_BASE + PAL_MENU;

	//                    H          M          S
	PAL_PC_1 = _ci1 + CI_RED1_ + CI_GRN2_ + CI_YLW3_; // Tunic Green.   Normal
	PAL_PC_2 = _ci1 + CI_RED1_ + CI_RED3_ + CI_YLW3_; // Tunic Red.     RING  ||  SHIELD
	PAL_PC_3 = _ci1 + CI_RED1_ + CI_BLU3_ + CI_GRY4_; // Lvl3 Armor.    RING  &&  SHIELD
	//                                  //
	PAL_PC_4 = _ci1 + CI_BLU2_ + CI_VLT4_ + CI_VLT4_; // Spell Flash.   Light
	PAL_PC_5 = _ci1 + CI_WHT1_ + CI_BLU1_ + CI_BLU1_; // Spell Flash.   Mid
	PAL_PC_6 = _ci1 + CI_VLT3_ + CI_WHT1_ + CI_WHT1_; // Spell Flash.   Dark
	PAL_PC_7 = _ci1 + CI_BLU2_ + CI_BLU3_ + CI_VLT4_; // Tunic Green.   Dark room.   
	//PAL_PC_8 = _ci1 + CI_RED1_ + CI_GRN2_ + CI_YLW4_; // Tunic Green.   Darker outline 1
	//PAL_PC_9 = _ci1 + CI_RED1_ + CI_GRN2_ + CI_ORG4_; // Tunic Green.   Darker outline 2
	PAL_PC_A = _ci1 + CI_BLU2_ + CI_VLT3_ + CI_VLT4_; // Tunic Red.     Dark room.   
	PAL_PC_B = _ci1 + CI_BLU2_ + CI_VLT2_ + CI_VLT4_; // Tunic Lvl3.    Dark room.   
	//PAL_PC_B = _ci1 + CI_BLU2_+ "32"+CI_VLT4_; // Tunic Lvl3.    Dark room.   
	PAL_PC_C = _ci1 + CI_RED1_ + CI_RED3_ + CI_BLK1_; // Tunic Red.     Disguise
	//PAL_PC_C = _ci1 + CI_RED1_ + CI_RED3_ + CI_ORG4_; // Tunic Red.     Disguise
	//                                                                          //
	PAL_CUC1 = _ci1 + CI_ORG2_ + CI_GRN3_ + CI_WHT1_; // Tunic Green.   Cucco
	PAL_CUC2 = _ci1 + CI_ORG2_ + CI_RED3_ + CI_WHT1_; // Tunic Red.     Cucco. RING  ||  SHIELD
	PAL_CUC3 = _ci1 + CI_ORG2_ + CI_BLU3_ + CI_WHT1_; // Tunic Lvl3.    Cucco. RING  &&  SHIELD
	//PAL_CUC3 = _ci1 + CI_ORG2_ + CI_YLW2_ + CI_WHT1_; // Tunic Lvl3.    Cucco. RING  &&  SHIELD
	PAL_CUC5 = _ci1 + CI_RED3_ + CI_BLK1_ + CI_WHT1_; // Tunic Red.     Disguise


	PAL_DL_1 = _ci1 + CI_GRY1_ + CI_GRY4_ + CI_BLK1_; // Darklonk
	switch(g.mod_PC_OUTLINE_COLOR){
	case 1:{
	PAL_PC_1 = _ci1 + CI_RED1_ + CI_GRN2_ + CI_YLW4_;
	PAL_PC_2 = _ci1 + CI_RED1_ + CI_RED3_ + CI_YLW4_;
	break;}
	case 2:{
	PAL_PC_1 = _ci1 + CI_RED1_ + CI_GRN2_ + CI_ORG4_;
	PAL_PC_2 = _ci1 + CI_RED1_ + CI_RED3_ + CI_ORG4_;
	break;}
	}

	PAL_SET_PC_0 = PAL_PC_4 + PAL_PC_5 + PAL_PC_6;  // Spell flash palettes
	PAL_SET_PC_1 = PAL_PC_1 + PAL_PC_2 + PAL_PC_3 + PAL_PC_C;  // Tunic palettes LIT
	PAL_SET_PC_2 = PAL_PC_7 + PAL_PC_A + PAL_PC_B + PAL_PC_A;  // Tunic palettes DARK

	PAL_SET_CUC0 = PAL_SET_PC_0;                    // Cucco spell flash palettes
	PAL_SET_CUC1 = PAL_CUC1 + PAL_CUC2 + PAL_CUC3 + PAL_CUC5;  // Cucco palettes LIT
	PAL_SET_CUC2 = PAL_SET_PC_2;                    // Cucco palettes DARK

	PAL_SET_PC_A = PAL_SET_PC_1 + PAL_SET_PC_0 + PAL_SET_CUC1 + PAL_SET_CUC0; // RM LIT
	PAL_SET_PC_B = PAL_SET_PC_2 + PAL_SET_PC_0 + PAL_SET_CUC2 + PAL_SET_CUC0; // RM DARK

	PAL_SET2 = PAL_SET1 + PAL_SET_PC_A + PAL_DL_1;
	PAL_SET3 = PAL_SET1 + PAL_SET_PC_B + PAL_DL_1;



	            dl_pal_pc = ds_list_create();
	ds_list_add(dl_pal_pc, PAL_PC_1); // Tunic Green
	ds_list_add(dl_pal_pc, PAL_PC_2); // Tunic Red
	ds_list_add(dl_pal_pc, PAL_PC_3); // Tunic Lvl3
	ds_list_add(dl_pal_pc, PAL_PC_C); // Disguise
	//                                //
	ds_list_add(dl_pal_pc, PAL_PC_6); // Spell flash Dark
	ds_list_add(dl_pal_pc, PAL_PC_4); // Spell flash Light
	ds_list_add(dl_pal_pc, PAL_PC_5); // Spell flash Mid
	ds_list_add(dl_pal_pc, PAL_PC_4); // Spell flash Light
	//                                //
	ds_list_add(dl_pal_pc, PAL_CUC1); // Cucco Tunic Green
	ds_list_add(dl_pal_pc, PAL_CUC2); // Cucco Tunic Red
	ds_list_add(dl_pal_pc, PAL_CUC3); // Cucco Tunic Lvl3
	ds_list_add(dl_pal_pc, PAL_CUC5); // Disguise
	//                                //
	ds_list_add(dl_pal_pc, PAL_DL_1); // Darklonk
	//                                //
	// $0D-$0F.  Reserved for future possibilities
	//// $0B-$0F.  Reserved for future possibilities
	ds_list_add(dl_pal_pc, PAL_BASE); // 
	ds_list_add(dl_pal_pc, PAL_BASE); // 
	ds_list_add(dl_pal_pc, PAL_BASE); // 
	//ds_list_add(dl_pal_pc, PAL_BASE); // 
	//ds_list_add(dl_pal_pc, PAL_BASE); // 
	//                                //
	// $10-$19.  Dark rm pc pals
	ds_list_add(dl_pal_pc, PAL_PC_7); // Tunic Green
	ds_list_add(dl_pal_pc, PAL_PC_A); // Tunic Red
	ds_list_add(dl_pal_pc, PAL_PC_B); // Tunic Lvl3
	//                                //
	ds_list_add(dl_pal_pc, PAL_PC_6); // Spell flash Dark
	ds_list_add(dl_pal_pc, PAL_PC_4); // Spell flash Light
	ds_list_add(dl_pal_pc, PAL_PC_5); // Spell flash Mid
	ds_list_add(dl_pal_pc, PAL_PC_4); // Spell flash Light
	//                                //
	ds_list_add(dl_pal_pc, dl_pal_pc[|$10]); // Cucco Tunic Green
	ds_list_add(dl_pal_pc, dl_pal_pc[|$11]); // Cucco Tunic Red
	ds_list_add(dl_pal_pc, dl_pal_pc[|$12]); // Cucco Tunic Lvl3
	//                                //
	ds_list_add(dl_pal_pc, PAL_DL_1); // Darklonk
	//                                //






	_ci1 = CI_BLK1_;
	//                                                      // 
	PAL_MOB_ORG1  = _ci1 + CI_WHT1_ + CI_ORG2_ + CI_RED3_; // orange     mob 
	//                                                      // 
	PAL_MOB_RED1  = _ci1 + CI_WHT1_ + CI_RED3_ + CI_ORG4_; // red        mob 
	PAL_MOB_RED2  = _ci1 + CI_RED1_ + CI_RED3_ + CI_ORG4_; // red        mob   NPC
	//                                                      // 
	PAL_MOB_BLU1  = _ci1 + CI_WHT1_ + CI_TEL2_ + CI_TEL4_; // blue       mob (non-dungeon)
	PAL_MOB_BLU2  = _ci1 + CI_WHT1_ + CI_BLU2_ + CI_BLU4_; // blue       mob (dungeon)
	//                                                      // 
	PAL_MOB_PUR1  = _ci1 + CI_WHT1_ + CI_PUR3_ + CI_PUR4_; // purple     mob 
	//                                                      // 
	//                                                      // 
	PAL_MENU_BLU1 = _ci1 + CI_WHT1_ + CI_BLU2_ + CI_VLT3_; // blue       menu 
	PAL_MENU_BLU2 = _ci1 + CI_WHT1_ + CI_BLU2_ + CI_BLU3_; // blue       menu 
	//                                                      // 
	//                                                      // 

	// 21 02






	// ---------------------------------------------------------------------------
	_ci1 = CI_BLK1_;
	var _BGR00 = _ci1 + CI_BLK1_ + CI_BLK1_ + CI_BLK1_;
	var _BGR01 = _ci1 + CI_VLT3_ + CI_VLT4_ + CI_BLK1_; // Dark room pal 1a
	var _BGR02 = _ci1 + CI_VLT4_ + CI_BLK1_ + CI_BLK1_; // Dark room pal 1b
	var _BGR03 = _ci1 + CI_BLK1_ + CI_BLK1_ + CI_GRY4_; // Dark room pal 2a
	var _BGR04 = _ci1 + CI_TEL4_ + CI_BLK1_ + CI_BLK1_; // Dungeon, Dark full.
	var _BGR05 = _ci1 + CI_BLK1_ + CI_RED3_ + CI_BLK1_; // Dark rm liquid
	var _BGR06 = _ci1 + CI_VLT3_ + CI_BLU4_ + CI_BLK1_; // Dark room pal 1b
	var _BGR07 = _ci1 + CI_TEL4_ + CI_BLU4_ + CI_BLK1_; // Dungeon, Dark 1a.
	var _BGR08 = _ci1 + CI_BLU4_ + CI_BLK1_ + CI_BLK1_; // 
	var _BGR09 = _ci1 + CI_ORG2_ + CI_ORG4_ + CI_BLK1_; // Cave. 1 torch lit
	var _BGR0A = _ci1 + CI_GRY4_ + CI_BLK1_ + CI_GRY3_; // Dark rm 
	var _BGR0B = _ci1 + CI_VLT4_ + CI_BLK1_ + CI_BLK1_; // Dark rm liquid

	var _MOB00 = _ci1 + CI_BLK1_ + CI_BLK1_ + CI_BLK1_; // red & blue mob dark rm. 0 torch lit
	var _MOB01 = _ci1 + CI_ORG2_ + CI_BLK1_ + CI_BLK1_; // orange     mob dark rm. 1 torch lit
	var _MOB02 = _ci1 + CI_RED3_ + CI_BLK1_ + CI_BLK1_; // red        mob dark rm. 1 torch lit
	var _MOB03 = _ci1 + CI_BLU2_ + CI_BLK1_ + CI_BLK1_; // blue       mob dark rm. 1 torch lit
	var _MOB04 = _ci1 + CI_MGN3_ + CI_BLK1_ + CI_BLK1_; // purple     mob dark rm. 1 torch lit
	//var _MOB01 = _ci1 + CI_WHT1_ + CI_ORG2_ + CI_RED3_; // orange mob



	var _PAL_GRP2 = _MOB00 + _MOB00 + _MOB00 + _MOB00; // 0 torch lit
	var _PAL_GRP3 = _MOB01 + _MOB02 + _MOB03 + _MOB04; // 1 torch lit


	// MOB solid black w/ 0 brightness,  MOB Highlights lit w/ 1 brightness
	// Cave
	var _RM_PAL_00 = PAL_SET3 + _BGR01+_BGR01+_BGR0B+_BGR02 + _PAL_GRP2; // 0 torch lit
	var _RM_PAL_01 = PAL_SET3 + _BGR09+_BGR09+_BGR0B+_BGR02 + _PAL_GRP3; // 1 torch lit
	// Dungeon
	var _RM_PAL_10 = PAL_SET3 + _BGR04+_BGR02+_BGR0B+_BGR02 + _PAL_GRP2; // 0 torch lit
	var _RM_PAL_11 = PAL_SET3 + _BGR07+_BGR08+_BGR0B+_BGR02 + _PAL_GRP3; // 1 torch lit
	var _RM_PAL_12 = PAL_SET3 + _BGR04+_BGR02+_BGR00+_BGR02 + _PAL_GRP2; // 0 torch lit
	var _RM_PAL_13 = PAL_SET3 + _BGR07+_BGR08+_BGR0A+_BGR02 + _PAL_GRP3; // 1 torch lit
	/*
	// MOB solid black w/ 0 brightness,  MOB Highlights lit w/ 1 brightness
	// Cave
	var _RM_PAL_00 = PAL_SET3 + _BGR01+_BGR01+_BGR0B+_BGR00 + _PAL_GRP2; // 0 torch lit
	var _RM_PAL_01 = PAL_SET3 + _BGR09+_BGR09+_BGR0B+_BGR00 + _PAL_GRP3; // 1 torch lit
	// Dungeon
	var _RM_PAL_10 = PAL_SET3 + _BGR04+_BGR02+_BGR0B+_BGR00 + _PAL_GRP2; // 0 torch lit
	var _RM_PAL_11 = PAL_SET3 + _BGR07+_BGR08+_BGR0B+_BGR00 + _PAL_GRP3; // 1 torch lit
	var _RM_PAL_12 = PAL_SET3 + _BGR04+_BGR02+_BGR00+_BGR00 + _PAL_GRP2; // 0 torch lit
	var _RM_PAL_13 = PAL_SET3 + _BGR07+_BGR08+_BGR0A+_BGR00 + _PAL_GRP3; // 1 torch lit
	*/



	pal_rm_dark_idx = 0;
	            _a=0;
	var _CAV1 = _a++;
	var _DGN1 = _a++;
	var _DGN2 = _a++;
	    dg_pal_rm_dark = ds_grid_create(_a, g.RM_BRIGHTNESS_MAX);
	for(_i=ds_grid_height(dg_pal_rm_dark)-1; _i>=0; _i--)
	{
	    dg_pal_rm_dark[#_CAV1,_i] = _RM_PAL_01; // Cave.    1 torch lit
	    dg_pal_rm_dark[#_DGN1,_i] = _RM_PAL_11; // Dungeon. 1 torch lit
	    dg_pal_rm_dark[#_DGN2,_i] = _RM_PAL_13; // Dungeon. 1 torch lit
	}
	    dg_pal_rm_dark[#_CAV1,0]  = _RM_PAL_00; // Cave.    0 torch lit
	    dg_pal_rm_dark[#_DGN1,0]  = _RM_PAL_10; // Dungeon. 0 torch lit
	    dg_pal_rm_dark[#_DGN2,0]  = _RM_PAL_12; // Dungeon. 0 torch lit
	//



	/*
	PAL_SET_PC_0 = PAL_PC_4 + PAL_PC_5 + PAL_PC_6;  // Spell flash palettes
	PAL_SET_PC_1 = PAL_PC_1 + PAL_PC_2 + PAL_PC_3;  // Tunic palettes LIT
	PAL_SET_PC_2 = PAL_PC_7 + PAL_PC_A + PAL_PC_B;  // Tunic palettes DARK

	PAL_SET_CUC0 = PAL_SET_PC_0;                    // Cucco spell flash palettes
	PAL_SET_CUC1 = PAL_CUC1 + PAL_CUC2 + PAL_CUC1;  // Cucco palettes LIT
	PAL_SET_CUC2 = PAL_SET_PC_2;                    // Cucco palettes DARK

	PAL_SET_PC_A = PAL_SET_PC_1 + PAL_SET_PC_0 + PAL_SET_CUC1 + PAL_SET_CUC0; // RM LIT
	PAL_SET_PC_B = PAL_SET_PC_2 + PAL_SET_PC_0 + PAL_SET_CUC2 + PAL_SET_CUC0; // RM DARK
	*/





	// CI: Color Index
	_ci1 = CI_BLK1_;
	//_ci1 = 'FF'; // 'FF' means use bg color.. _i think?..
	var _SET1 = _ci1 + CI_RED3_ + CI_GRY4_ + CI_BLK1_;
	//var _SET1 = _ci1 + CI_RED3_ + CI_GRY4_ + CI_BLK1_;
	//var _SET1 = _ci1 + CI_GRY1_ + CI_GRY4_ + CI_BLK1_;


	//PAL_MOB_ORG1 PAL_MOB_RED1 PAL_MOB_BLU1 PAL_MOB_PUR1
	var _PAL1 = _ci1 + CI_WHT1_ + CI_WHT1_ + CI_WHT1_;
	var _PAL2 = _ci1 + CI_RED1_ + CI_GRY1_ + CI_PUR4_;
	var _PAL3 = PAL_MOB_ORG1;
	var _PAL4 = _ci1 + CI_WHT2_ + CI_WHT1_ + CI_ORG4_;
	//var _PAL3 = _ci1 + CI_WHT1_ + CI_ORG2_ + CI_RED3_;
	// File Select screen
	             _dk  = room_get_name(rmB_FileSelect);
	dm_pal_data[?_dk] = PAL_SET2 
	                  + _PAL4        + _PAL1        + _PAL1                           + _PAL2  // bgr
	                  + PAL_MOB_ORG1 + PAL_MOB_RED1 + _ci1+CI_ORG2_+CI_ORG2_+CI_BLK1_ + _PAL2; // mob
	//
	/*
	             _dk  = room_get_name(rmB_FileSelect);
	dm_pal_data[?_dk] = PAL_SET2 
	                  + _PAL1        + _PAL1        + _PAL1 + _PAL2                       // bgr
	                  + PAL_MOB_ORG1 + PAL_MOB_RED1 + _ci1 + CI_ORG2_ + CI_ORG2_ + CI_BLK1_ + _PAL2;     // mob
	*/
	/*
	//PAL_MOB_ORG1 PAL_MOB_RED1 PAL_MOB_BLU1 PAL_MOB_PUR1
	var _PAL1 = _ci1 + CI_WHT1_ + CI_WHT1_ + CI_WHT1_;
	var _PAL2 = _ci1+ '36'+CI_GRY1_+ '03';
	var _PAL3 = _ci1 + CI_WHT1_ + CI_ORG2_ + CI_RED3_;
	// File Select screen
	             _dk  = room_get_name(rmB_FileSelect);
	dm_pal_data[?_dk] = PAL_SET2 
	                  + _PAL1 + _PAL1 + _PAL1 + _PAL2                       // bgr
	                  + _PAL3 + _PAL1 + _ci1 + CI_ORG2_ + CI_ORG2_ + CI_BLK1_ + _PAL2;     // mob
	*/
	// Continue Save screen
	             _dk  = room_get_name(rmB_ContinueSave);
	dm_pal_data[?_dk] = PAL_SET2 
	                  + _ci1+CI_RED2_+CI_BLK1_+CI_BLK1_ + _PAL1 + _PAL1                           + _PAL2  // bgr
	                  + _PAL3 + _ci1+CI_WHT1_+CI_RED3_+CI_BLK1_ + _ci1+CI_WHT1_+CI_TEL2_+CI_BLK1_ + _PAL2; // mob
	//
	// '3C110D' + '302111' + '303621' + '302919' + 
	// '302800' + '302817' + '302716' + '30160D';

	OW_PAL = PAL_SET2 
	       + CI_BLK1_ + CI_TEL1_ + CI_BLU3_ + CI_BLK1_  // BGR1
	       + CI_BLK1_ + CI_WHT1_ + CI_YGR2_ + CI_YGR3_  // BGR2
	       + CI_BLK1_ + CI_WHT1_ + CI_YLW2_ + CI_ORG3_  // BGR3
	       + CI_BLK1_ + CI_WHT1_ + CI_YLW2_ + CI_GRY3_  // BGR4
	       + PAL_MOB_ORG1               // MOB1
	       + PAL_MOB_RED1               // MOB2
	       + PAL_MOB_BLU2               // MOB3
	       + PAL_MOB_PUR1;              // MOB4
	//
	/*
	OW_PAL = build_pal(CI_BLK1_ + CI_TEL1_+ '11'+CI_BLK1_,  // BGR1
	                   CI_BLK1_ + CI_WHT1_+ '29'+ '19',  // BGR2
	                   CI_BLK1_ + CI_WHT1_+ '28'+ '17',  // BGR3
	                   CI_BLK1_ + CI_WHT1_+ '28'+CI_GRY3_,  // BGR4
	                   CI_BLK1_ + CI_WHT1_ + CI_ORG2_ + CI_RED3_,  // MOB1
	                   CI_BLK1_ + CI_WHT1_ + CI_RED3_ + CI_BLK1_,  // MOB2
	                   CI_BLK1_ + CI_WHT1_ + CI_BLU2_ + CI_VLT3_,  // MOB3
	                   CI_BLK1_ + CI_WHT1_+ '36'+CI_BLU2_); // MOB4
	*/
	/*  For reference:
	PAL_MOB_ORG1 = CI_BLK1_ + CI_WHT1_ + CI_ORG2_ + CI_RED3_; // orange     mob 
	//                                      // 
	PAL_MOB_RED1 = CI_BLK1_ + CI_WHT1_ + CI_RED3_ + CI_ORG4_; // red        mob 
	PAL_MOB_RED2 = CI_BLK1_ + CI_RED1_ + CI_RED3_ + CI_ORG4_; // red        mob   NPC
	//                                      // 
	PAL_MOB_BLU1 = CI_BLK1_ + CI_WHT1_ + CI_TEL2_ + CI_TEL4_; // blue       mob (non-dungeon)
	PAL_MOB_BLU2 = CI_BLK1_ + CI_WHT1_ + CI_BLU2_ + CI_BLU4_; // blue       mob (dungeon)
	//                                      // 
	PAL_MOB_PUR1 = CI_BLK1_ + CI_WHT1_ + CI_PUR3_ + CI_PUR4_; // purple     mob 
	*/


	// The data for each palette of colors is a string consisting of 8 characters, which
	// are 4 sets of 2 characters, each set the string representation of an 8-bit
	// hex value which is the index of p.dl_COLOR and also the grid xy of a 
	// color on the color grid image
	// The 1st value is for GREEN, 2nd for WHITE, 3rd for RED, 4th for BLUE
	// The 1st value can be a code: 
	    // FF: use room bg color
	pal_rm_file = undefined; // from .json rm file
	pal_rm_def  = undefined;
	pal_rm_curr = "";
	pal_rm_new  = "";
	pal_rm_dark = undefined;
	pal_rm_dark_DEFAULT = dg_pal_rm_dark[#0,0];
	//dg_rm_pal = ds_grid_create(P_SPR_W,4);
	                     _a=0;
	dg_rm_pal_IDX_FILE = _a++;
	dg_rm_pal_IDX_DFLT = _a++;
	dg_rm_pal_IDX_CURR = _a++;
	dg_rm_pal_IDX_NEW  = _a++;
	//dg_rm_pal_IDX_DARK  = _a++;
	//dg_rm_pal_IDX_DARK_DFLT  = _a++;
	dg_rm_pal   = ds_grid_create(_a,global.palette_image_W);
	ds_grid_clear(dg_rm_pal, -1);
	dg_rm_pal_W = ds_grid_width(dg_rm_pal);



	// pal_rm_DEFAULT: In case pal data for a rm cannot be located.
	pal_rm_DEFAULT  = PAL_SET2;
	pal_rm_DEFAULT += string_repeat(_SET1, BGR_PAL_COUNT);
	pal_rm_DEFAULT += string_repeat(_SET1, MOB_PAL_COUNT);
	//pal_rm_DEFAULT += PAL_DL_1;
	pal_rm_DEFAULT += pal_rm_dark_DEFAULT;
	/*
	pal_rm_DEFAULT  = PAL_SET1 + string_repeat(_SET1, BGR_PAL_COUNT);
	pal_rm_DEFAULT += PAL_PC_1 + string_repeat(_SET1, MOB_PAL_COUNT);
	pal_rm_DEFAULT  = build_pal(_SET1,_SET1,_SET1,_SET1, _SET1,_SET1,_SET1,_SET1);
	pal_rm_DEFAULT += pal_rm_dark_DEFAULT;
	*/


	dg_pal_seq = ds_grid_create(4,4);
	ds_grid_clear(dg_pal_seq, _SET1);
	            _a=1;
	dg_pal_seq[#_a,$0] = CI_GRN0_ + CI_RED1_ + CI_RED3_ + CI_ORG4_; // 
	dg_pal_seq[#_a,$1] = CI_GRN0_ + CI_RED2_ + CI_RED3_ + CI_ORG4_; // 
	dg_pal_seq[#_a,$2] = CI_GRN0_ + CI_RED3_ + CI_RED4_ + CI_BLK1_; // 
	dg_pal_seq[#_a,$3] = CI_GRN0_ + CI_RED4_ + CI_BLK1_ + CI_BLK1_; // 
	pal_seq_idx2       = 0;










	//_pal1   = CI_GRN0_ + CI_WHT1_ + CI_WHT2_ + CI_BLK1_;
	//_pal2   = CI_GRN0_ + CI_WHT1_ + CI_WHT2_ + CI_BLK1_;

	//build_pal(








	// ---------------------------------------------------------------------------
	// Palette index sequences
	dg_PI_SEQ = ds_grid_create($10,$04);
	ds_grid_clear(dg_PI_SEQ, PI_ERR0);
	//                                      //
	// $00: PC stun
	dg_PI_SEQ[#$00,0] = PI_PC_1;
	dg_PI_SEQ[#$00,1] = PI_MOB_ORG;
	dg_PI_SEQ[#$00,2] = PI_MOB_RED;
	dg_PI_SEQ[#$00,3] = PI_MOB_BLU;
	//                                      //
	// $04: PC spell flash
	dg_PI_SEQ[#$04,0] = PI_PC_2+2; // Dark
	dg_PI_SEQ[#$04,1] = PI_PC_2+0; // Light
	dg_PI_SEQ[#$04,2] = PI_PC_2+1; // Mid
	dg_PI_SEQ[#$04,3] = PI_PC_2+0; // Light
	//                                      //
	// $08: Barrier
	dg_PI_SEQ[#$08,0] = PI_GUI_1   + PI_DRK1; // GUI pal, but
	dg_PI_SEQ[#$08,1] = PI_MOB_PUR + PI_DRK1;
	//dg_PI_SEQ[#$08,0] = PI_DRK1 + 1; // GUI pal, but
	//dg_PI_SEQ[#$08,1] = PI_DRK1 + PI_MOB_PUR;
	dg_PI_SEQ[#$08,2] = dg_PI_SEQ[#$08,0];
	dg_PI_SEQ[#$08,3] = dg_PI_SEQ[#$08,1];
	//                                      //
	//                                      //



	dl_PI_MOB     = ds_list_create();
	dl_PI_MOB[|4] = PI_MOB_PUR;
	dl_PI_MOB[|3] = PI_MOB_BLU;
	dl_PI_MOB[|2] = PI_MOB_RED;
	dl_PI_MOB[|1] = PI_MOB_ORG;
	dl_PI_MOB[|0] = PI_PC_1;




	/*
	// var _STATE  = val(dm[?_datakey+STR_State])
	var    _PHASE  = val(dm[?_datakey2]);
	switch(_PHASE){
	    // -------------------------------------------------------------------------------
	    // ---------------------------------------------------------------------
	    case 1:{break;}
	    // -------------------------------------------------------------------------------
	    // ---------------------------------------------------------------------
	    case 2:{break;}
	    // -------------------------------------------------------------------------------
	    // ---------------------------------------------------------------------
	    case 3:{break;}
	}
	*/


	/*
	// ** Only 1 inst of an object can be active at once.
	var _seq_num, _phase;
	var _DUR1 = $20; // $20: about .5s
	_dk = STR_Palette+STR_Sequence;


	// -------------------------------------------------------------------------------
	// SEQUENCE 1.  Lightning flash.----------------------------------------
	    _seq_num    = $01;
	    _datakey    = _dk+hex_str(_seq_num); // Sequence obj
	    _datakey2   = _datakey+STR_Phase;
	dm[?_datakey2]  = $00; // Set this sequence's current phase = 0. This indicates the sequence is inactive.


	    // -------------------------------------------------------------------------------
	    // ---------------------------------------------------------------------
	                                _phase=$01;
	    _datakey3=_datakey2+hex_str(_phase);
	dm[?_datakey3+STR_Duration]     = _DUR1;

	    // ------------------------------------------------------
	    _datakey4=_datakey3+STR_Data;
	                                  _count=val(dm[?_datakey4+STR_Count])+1;
	dm[?_datakey4+STR_Count]        = _count;

	    _datakey5=_datakey4+hex_str(  _count);
	dm[?_datakey5]                  = CI_GRN0_ + CI_WHT1_ + CI_WHT2_ + CI_BLK1_;
	dm[?_datakey5+STR_Length]       = string_length(val(dm[?_datakey5], _SET1));
	dm[?_datakey5+STR_Position]     = PAL_POS_BGR1;








	//dm[?_datakey5] = CI_GRN0_ + CI_WHT1_ + CI_ORG1_ + CI_BLK1_;
	*/











	var _file, _data;
	var _layer_name="";
	var _tsrc;
	var _CLM_SHIFT=5;
	var _ROW_SHIFT=3;

	var _dm_data=ds_map_create();
	var _dm_layers;
	var _dl_layers;
	var _dl_tiles;

	var           _COUNT0=2;
	for(_i=1; _i<=_COUNT0; _i++)
	{
	    //var _file  = "other"+"/"+"RandoPalettes01.json";
	    _file  = "other"+"/"+"RandoPalettes";
	    _file += hex_str(_i)+".json";
	    //sdm("_file "+_file+", file_exists(_file) "+string(file_exists(_file)));
	    if(!file_exists(_file)) continue;
    
	        _file  = file_text_open_read(_file);
	        _data  = "";
	    while (     !file_text_eof(      _file)) 
	    {   _data += file_text_readln(   _file);  }
	                 file_text_close(    _file);
	    if (is_undefined(_data)) continue;
    
    
	    ds_map_clear(_dm_data);
	    _dm_data   = json_decode(_data);
	    _dl_layers = _dm_data[?"layers"];
	    if (is_undefined(_dl_layers)) continue;
    
    
	                 _count = ds_list_size(_dl_layers);
	    for(_j=0; _j<_count; _j++) // each layer
	    {
	        _dm_layers  =     _dl_layers[|_j];
	        _layer_name = val(_dm_layers[?"name"], "");
	        if (string_pos("palette",_layer_name)) break;
	    }
	    if(!string_pos("palette",_layer_name)) continue;
    
    
    
    
	    _dl_tiles = _dm_layers[?"data"];
	    var _CLMS = _dm_data[?"width"];
	    var _ROWS = _dm_data[?"height"];
	    if (is_undefined(_dl_tiles) 
	    ||  is_undefined(_CLMS) 
	    ||  is_undefined(_ROWS) )
	    {
	        continue;
	    }
    
    
    
	    var _CLMS0 = _CLMS>>_CLM_SHIFT;
	    var _ROWS0 = _ROWS>>_ROW_SHIFT;
	    var          _COUNT1 = _CLMS0*_ROWS0;
	    for(_j=0; _j<_COUNT1; _j++) // each palette_group(_j)
	    {
	        _clm0 = (_j mod _CLMS0) <<_CLM_SHIFT;
	        _row0 = (_j div _CLMS0) <<_ROW_SHIFT;
        
	        for(_k=0; _k<($1<<_CLM_SHIFT); _k++) // each palette(_k) of the palette_group(_j)
	        {
	            _palette  = "";
	            _clm = _clm0+_k;
	            for(_m=0; _m<COL_PER_PAL; _m++) // each color(_m) of the palette(_k)
	            {
	                _row = _row0+_m;
                
	                    _idx  = (_row*_CLMS) + _clm;
	                    _tsrc = _dl_tiles[|_idx];
	                if (_tsrc!=0) // 0 means no tile here
	                {
	                    _tsrc--; // Because Tiled adds 1
	                    _tsrc  = abs(_tsrc&$3FFFFFFF); // just incase x or y flipped
	                    _tsrc &= $FF;
                    
	                    _palette += hex_str(_tsrc);
	                }
	                else
	                {
	                    _palette  = "";
	                    _k=_CLMS*_ROWS; // move on to next palette_group(_j)
	                    break;//_m
	                }
	            }
            
	            if (string_length(_palette))
	            {
	                switch(_i){
	                case 1:{ds_list_add(dl_various_pals1,_palette); break;}
	                case 2:{ds_list_add(dl_various_pals2,_palette); break;}
	                }
	                /*switch(_i){
	                case 1:{sdm("dl_various_pals1[|$"+hex_str(ds_list_size(dl_various_pals1)-1)+"] = "+_palette); break;}
	                case 2:{sdm("dl_various_pals2[|$"+hex_str(ds_list_size(dl_various_pals2)-1)+"] = "+_palette); break;}
	                }*/
	                //sdm("dl_various_pals[|$"+hex_str(ds_list_size(dl_various_pals)-1)+"] = "+_palette);
	            }
	        }//_k
	    }//_j
	}//_i

	ds_map_destroy(_dm_data); _dm_data=undefined;



	// This adds a bunch of extra palettes with a black mid-tone.
	if (0) // *** Turning this off because rando seems to be picking them too often
	{
	    var _dl=ds_list_create();
    
	    var _dl_COLORS1=ds_list_create();
	    ds_list_add(_dl_COLORS1, CI_BLK1_,CI_GRY4_,CI_TEL4_,CI_GRB4_,CI_YGR4_,CI_YLW4_,CI_ORG4_,CI_BLU4_,CI_VLT4_);
    
	    var _dl_COLORS2=ds_list_create();
	    ds_list_add(_dl_COLORS2, CI_BLK1_,CI_GRY4_,CI_TEL4_,CI_GRB4_,CI_YGR4_,CI_YLW4_,         CI_BLU4_,CI_VLT4_);
    
	    for(_i=0; _i<=1; _i++)
	    {
	        switch(_i){
	        case 0:{ds_list_copy(_dl,dl_various_pals1); break;}
	        case 1:{ds_list_copy(_dl,dl_various_pals2); break;}
	        }
        
	        for(_j=ds_list_size(_dl)-1; _j>=0; _j--)
	        {
	            _val  = _dl[|_j];
	            _ci1  = string_copy(_val,1,2);
	            _ci2  = string_copy(_val,3,2);
	            _ci3  = string_copy(_val,5,2);
	            _ci4  = string_copy(_val,7,2);
	            _val1 = _ci1 + _ci2 + _ci4 + _ci3;
	            _val2 = _ci1 + _ci3 + _ci4 + _ci2;
	            _val3 = _ci1 + _ci4 + _ci3 + _ci2;
            
	            switch(_i)
	            {
	                case 0:{//====================================================
	                if (ds_list_find_index(dl_various_pals1,_val1)==-1)
	                {   ds_list_add(       dl_various_pals1,_val1);  }
                
	                if (_ci3==CI_BLK1_ 
	                ||  _ci4==CI_BLK1_ )
	                {
	                    if (_ci3==CI_BLK1_) _val = _val2;
	                    else                _val = _val3;
	                    if (ds_list_find_index(dl_various_pals1,_val)==-1)
	                    {   ds_list_add(       dl_various_pals1,_val);  }
	                }
	                break;}//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
                
                
	                case 1:{//====================================================
	                var _colors, _pal;
	                var _COLORS = CI_BLK1_ + CI_GRY4_ + CI_TEL4_ + CI_GRB4_ + CI_YGR4_ + CI_YLW4_ + CI_BLU4_ + CI_VLT4_; // darkest colors
	                var         _dl_PALS=ds_list_create();
	                ds_list_add(_dl_PALS, _val1,_val2,_val3);
                
	                for(_k=ds_list_size(_dl_PALS)-1; _k>=0; _k--)
	                {
	                    _pal = _dl_PALS[|_k];
	                        _color1 = string_copy(_pal,5,2); // midtone
	                        _color2 = string_copy(_pal,7,2); // shadow
	                    if (_color1==CI_BLK1_ 
	                    ||  _color2==CI_BLK1_ )
	                    {
	                        if (string_pos(_color1,_COLORS) 
	                        ||  string_pos(_color2,_COLORS) )
	                        {
	                            if (ds_list_find_index(dl_various_pals2,_pal)==-1)
	                            {   ds_list_add(       dl_various_pals2,_pal);  }
	                        }
	                    }
	                }
                
	                ds_list_destroy(_dl_PALS); _dl_PALS=undefined;
	                break;}//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
	            }//switch(_i)
	        }
	    }
	    ds_list_destroy(_dl); _dl=undefined;
	    ds_list_destroy(_dl_COLORS1); _dl_COLORS1=undefined;
	    ds_list_destroy(_dl_COLORS2); _dl_COLORS2=undefined;
	}







	instance_create(0,0, Dev_PalettePicker);
	//if (DEV) instance_create(0,0, Dev_PalettePicker);


	// Record palettes in each scene's Tiled file into dm_scene_palette 
	// so it's quicker to get palette data.
	p_init_palette_data();
	//dev_automate_palette_data();







}
