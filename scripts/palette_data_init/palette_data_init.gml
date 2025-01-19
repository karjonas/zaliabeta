function palette_data_init() {







	/*
	var i, _area;



	// CI: Color Index
	// 'FF' means use bg color.. i think?..
	var _CI0 = 'FF';

	var _PAL_BASE = PAL_SET1; // PAL_BASE + PAL_MENU
	var _PAL_PC_1 = PAL_PC_1; // Green tunic
	// var _PAL_PC_2 = PAL_PC_2; // Red tunic
	// var _PAL_PC_3 = PAL_PC_3; // White tunic
	// var _PAL_PC_4 = PAL_PC_4; // Spell flash Light
	// var _PAL_PC_5 = PAL_PC_5; // Spell flash Mid
	// var _PAL_PC_8 = PAL_PC_6; // Spell flash Dark
	// var _PAL_PC_7 = PAL_PC_7; // Dark room


	// var _bgSet01 = _PAL_BASE + _bg02 + _bg2A + _bg2B + _bg13; // P1, set 1
	// PAL_GRP1   + 'FF301000' + 'FF3C1C0C' + 'FF301600' + 'FF203D0D'





	var _bg00 = _CI0 + '27170D';
	var _bg01 = _CI0 + '30100D'; // PALACE 1, bg 1
	var _bg02 = _CI0 + '301000';
	var _bg03 = _CI0 + '23030D';
	var _bg04 = _CI0 + '27270D';
	var _bg05 = _CI0 + '303030'; // MIDO, bg 1
	var _bg06 = _CI0 + '2C1C0C';
	var _bg07 = _CI0 + '301621'; // House pal 2

	var _bg08 = _CI0 + '261607'; // 
	var _bg09 = _CI0 + '30280D'; // RUTO, bg 1
	var _bg0A = _CI0 + '28180D'; // RUTO, bg 2
	var _bg0B = _CI0 + '30260D'; // RUTO, bg 3
	var _bg0C = _CI0 + '372A0D'; // SARIA, bg 1
	var _bg0D = _CI0 + '301C0D'; // SARIA, bg 2
	var _bg0E = _CI0 + '301A0D'; // SARIA, bg 3
	var _bg0F = _CI0 + '0D0D0D'; // 

	var _bg10 = _CI0 + '30270D'; // MIDO, bg 2
	var _bg11 = _CI0 + '3C1C0D'; // PALACE 2, bg 1
	var _bg12 = _CI0 + '260D0D'; // 
	var _bg13 = _CI0 + '12010D'; // Dark room pal 1
	var _bg14 = _CI0 + '302917'; // House pal 1
	var _bg15 = _CI0 + '26160D'; // House pal 3
	var _bg16 = _CI0 + '361607'; // North Palace pal 1
	var _bg17 = _CI0 + '30290D'; // Rauru pal 1

	var _bg18 = _CI0 + '37180D'; // Bridge, Poison Bubbles pal 1
	var _bg19 = _CI0 + '301101'; // Bridge, Poison Bubbles pal 2
	var _bg1A = _CI0 + '372706'; // Cave pal 1
	var _bg1B = _CI0 + '27160D'; // Cave pal 2
	var _bg1C = _CI0 + '291709'; // pal 1: Desert, Path, Heart 4
	var _bg1D = _CI0 + '303627'; // pal 2: Desert, Path, Heart 4
	var _bg1E = _CI0 + '170708'; // Forest pal 1
	var _bg1F = _CI0 + '291909'; // pal 2: Forest, Field, Heart 1

	var _bg20 = _CI0 + '30000D'; // pal 1: Field
	var _bg21 = _CI0 + '291C0C'; // pal 2: Swamp
	var _bg22 = _CI0 + '19090D'; // pal 1: Cemetary
	var _bg23 = _CI0 + '2A0A0D'; // pal 1: Palace 5 outside
	var _bg24 = _CI0 + '30160A'; // pal 2: Palace 5 inside
	var _bg25 = _CI0 + '322202'; // pal 3: Palace 5 inside
	var _bg26 = _CI0 + '25050D'; // pal 1: Palace 6 inside
	var _bg27 = _CI0 + '301606'; // pal 2: Palace 6 inside

	var _bg28 = _CI0 + '26060D'; // pal 1: Palace 3 outside
	var _bg29 = _CI0 + '342404'; // pal 3: Palace 3 inside
	var _bg2A = _CI0 + '301600'; // Palace 1
	var _bg2B = _CI0 + '3C1C0C'; // Palace 1
	var _bg2C = _CI0 + '3C1C0C'; // Palace 2
	var _bg2D = _CI0 + '30160C'; // Palace 2
	var _bg2E = _CI0 + '261606'; // Palace 2
	var _bg2F = _CI0 + '23030D'; // Palace 4

	var _bg30 = _CI0 + '301603'; // Palace 4
	var _bg31 = _CI0 + '372707'; // Palace 4
	var _bg32 = _CI0 + '301605'; // Palace 6
	var _bg33 = _CI0 + '372707'; // pal 1: Palace 7 inside
	var _bg34 = _CI0 + '171622'; // pal 2: Palace 7 outside
	// var _bg34 = _CI0 + '221617'; // pal 2: Palace 7 outside
	var _bg35 = _CI0 + '39190D'; // pal 2: Darunia
	var _bg36 = _CI0 + '30120D'; // pal 3: Darunia
	var _bg37 = _CI0 + '01170D'; // pal 1: Old Kasuto

	var _bg38 = _CI0 + '10000D'; // pal 2: Old Kasuto
	var _bg39 = _CI0 + '37270D'; // Yellow/Orange, Gold
	var _bg3A = _CI0 + '301112'; // Blue, Water
	var _bg3B = _CI0 + '2C110C'; // P2 swamp water
	// var _bg3B = _CI0 + '291C0C'; // P2 swamp water
	var _bg3C = _CI0 + '3C1C0C'; // 
	// var _bg3D = _CI0 + ''; // 
	// var _bg3E = _CI0 + ''; // 
	// var _bg3F = _CI0 + ''; // 

	var _bg40 = _CI0 + '3D002D'; // Custom. Grey 1a
	var _bg41 = _CI0 + '0D2D00'; // Custom. Grey 2a
	var _bg42 = _CI0 + '2D2D0D'; // 
	var _bg43 = _CI0 + '30100D'; // Custom. Grey 3a
	var _bg44 = _CI0 + '30102D'; // 
	// var _bg45 = _CI0 + ''; // 
	// var _bg46 = _CI0 + ''; // 
	// var _bg47 = _CI0 + ''; // 

	// var _bg48 = _CI0 + ''; // 
	// var _bg49 = _CI0 + ''; // 
	// var _bg4A = _CI0 + ''; // 
	// var _bg4B = _CI0 + ''; // 
	// var _bg4C = _CI0 + ''; // 
	// var _bg4D = _CI0 + ''; // 
	// var _bg4E = _CI0 + ''; // 
	// var _bg4F = _CI0 + ''; // 

	//var _roomSet30 = _PAL_BASE + 303030 + 303030 + 303030 + 361003  // rmB_FileSelect
	//               + _PAL_PC_1 + 302716 + 303030 + 27270D + 361003;
	//
	//var _roomSet31 = _PAL_BASE + 260D0D + 303030 + 303030 + 361003  // rmB_ContinueSave
	//               + 0D0D0D    + 302716 + 30160D + 302C0D + 361003;



	// fg: ForeGround (mob palettes)    
	var _fg00 = _CI0 + '302716'; // orange mob
	var _fg01 = _CI0 + '0D0D0D'; // red & blue mob dark room
	var _fg02 = _CI0 + '2C1C0D'; // 
	var _fg03 = _CI0 + '30160D'; // red mob pal 1a
	var _fg04 = _CI0 + '301607'; // 
	var _fg05 = _CI0 + '302A0D'; // 
	var _fg06 = _CI0 + '303030'; // 
	var _fg07 = _CI0 + '302C0D'; // blue mob pal 1a

	var _fg08 = _CI0 + '36160D'; // town red    mob 1
	// var _fg09 = _CI0 + '36110D'; // town blue   mob 1
	var _fg09 = _CI0 + '36130D'; // town blue   mob 1
	var _fg0A = _CI0 + '361606'; // town red    mob 1
	// var _fg0B = _CI0 + '36030D'; // town purple mob 1
	var _fg0B = _CI0 + '361003'; // town purple mob 1
	var _fg0C = _CI0 + '301606'; // 
	var _fg0D = _CI0 + '25150D'; // 
	var _fg0E = _CI0 + '26160D'; // 
	var _fg0F = _CI0 + '302111'; // 

	var _fg10 = _CI0 + '302102'; // 
	var _fg11 = _CI0 + '361607'; // 
	var _fg12 = _CI0 + '302C0C'; // Cave pal 3
	// var _fg13 = _CI0 + ''; // 
	// var _fg14 = _CI0 + ''; // 
	// var _fg15 = _CI0 + ''; // 
	// var _fg16 = _CI0 + ''; // 
	// var _fg17 = _CI0 + ''; // 





    
	// var _bgSet00 = _PAL_BASE + _bg00 + _bg00 + _bg00;  // 
	var _bgSet00 = _PAL_BASE + _bg13 + _fg01 + _fg01 + _bg13;  // Dark room cave 1a
	// var _bgSet00 = _PAL_BASE + _bg13 + _fg01 + _fg01;  // Dark room cave 1a
	// var _bgSet01 = _PAL_BASE + _bg41 + _bg2A + _bg2B; // P1, set 1
	var _bgSet01 = _PAL_BASE + _bg02 + _bg2A + _bg2B + _bg13; // P1, set 1
	var _bgSet02 = _PAL_BASE + _bg2C + _bg2D + _bg2E + _bg13; // P2, set 1
	var _bgSet03 = _PAL_BASE + _bg28 + _bg27 + _bg29 + _bg13; // P3, set 1
	var _bgSet04 = _PAL_BASE + _bg2F + _bg30 + _bg31 + _bg13; // P4, set 1
	var _bgSet05 = _PAL_BASE + _bg23 + _bg24 + _bg25 + _bg13; // P5, set 1
	var _bgSet06 = _PAL_BASE + _bg26 + _bg32 + _bg02 + _bg13; // P6, set 1
	var _bgSet07 = _PAL_BASE + _bg17 + _bg00 + _bg01 + _bg13; // Rauru, set 1

	var _bgSet08 = _PAL_BASE + _bg09 + _bg0A + _bg0B + _bg13; // RUTO, set 1
	var _bgSet09 = _PAL_BASE + _bg0C + _bg0D + _bg0E + _bg13; // Saria
	var _bgSet0A = _PAL_BASE + _bg05 + _bg10 + _bg01 + _bg13; // MIDO, set 1
	var _bgSet0B = _PAL_BASE + _bg08 + _bg07 + _bg06 + _bg13; // Town basement, set 1
	var _bgSet0C = _PAL_BASE + _bg15 + _bg07 + _bg14 + _bg13; // House, set 1
	var _bgSet0D = _PAL_BASE + _bg18 + _bg19 + _bg02 + _bg13; // Bridge set 1, Poison Bubbles set 1
	var _bgSet0E = _PAL_BASE + _bg1A + _bg1B + _bg02 + _bg13; // Cave set 1
	var _bgSet0F = _PAL_BASE + _bg02 + _bg1D + _bg1C + _bg13; // set 1: Desert, Path, Heart 4

	var _bgSet10 = _PAL_BASE + _bg1F + _bg1E + _bg02 + _bg13; // set 1: Forest
	var _bgSet11 = _PAL_BASE + _bg1F + _bg20 + _bg02 + _bg13; // set 1: Field, Heart 1
	var _bgSet12 = _PAL_BASE + _bg02 + _bg21 + _bg18 + _bg13; // set 1: Swamp
	var _bgSet13 = _PAL_BASE + _bg20 + _bg1B + _bg22 + _bg13; // set 1: Cemetary
	var _bgSet14 = _PAL_BASE + _bg02 + _bg00 + _bg28 + _bg13; // P3, set 1 outside
	var _bgSet15 = _PAL_BASE + _bg02 + _bg00 + _bg2F + _bg13; // P4, set 1 outside
	var _bgSet16 = _PAL_BASE + _bg02 + _bg00 + _bg26 + _bg13; // P6, set 1 outside
	var _bgSet17 = _PAL_BASE + _bg01 + _bg00 + _bg02 + _bg13; // P1, set 1 outside

	var _bgSet18 = _PAL_BASE + _bg11 + _bg00 + _bg02 + _bg13; // P2, set 1 outside
	var _bgSet19 = _PAL_BASE + _bg02 + _bg00 + _bg23 + _bg13; // P5, set 1 outside
	var _bgSet1A = _PAL_BASE + _bg33 + _bg34 + _bg02 + _bg13; // P7, set 1 outside
	var _bgSet1B = _PAL_BASE + _bg33 + _fg04 + _bg2B + _bg13; // P7, set 1 inside
	var _bgSet1C = _PAL_BASE + _bg10 + _bg35 + _bg36 + _bg13; // set 1: Darunia, outside
	var _bgSet1D = _PAL_BASE + _bg37 + _bg38 + _bg01 + _bg13; // set 1: Old Kasuto, outside
	var _bgSet1E = _PAL_BASE + _bg19 + _bg18 + _bg02 + _bg13; // 
	var _bgSet1F = _PAL_BASE + _bg39 + _bg01 + _bg3A + _bg13; // set 1: N Palace outside

	var _bgSet20 = _PAL_BASE + _bg3A + _bg01 + _bg39 + _bg13; // N Palace Lake East
	var _bgSet21 = _PAL_BASE + _bg3A + _bg39 + _bg01 + _bg13; // N Palace Lake West 1
	var _bgSet22 = _PAL_BASE + _bg3A + _bg1F + _bg01 + _bg13; // N Palace Lake West 2
	var _bgSet23 = _PAL_BASE + _bg2C + _bg3B + _bg2E + _bg13; // P2, set 2. For swamp water
	// var _bgSet24 = _PAL_BASE + _bg00 + _bg00 + _bg00;  // 
	// var _bgSet25 = _PAL_BASE + _bg00 + _bg00 + _bg00;  // 
	// var _bgSet26 = _PAL_BASE + _bg00 + _bg00 + _bg00;  // 
	// var _bgSet27 = _PAL_BASE + _bg00 + _bg00 + _bg00;  // 





	var _fgSet00 = _PAL_PC_1 + _fg00 + _fg02 + _fg0D + _fg0B; // 
	var _fgSet01 = _PAL_PC_1 + _fg00 + _fg05 + _fg0E + _fg0B; // 
	var _fgSet02 = _PAL_PC_1 + _fg00 + _fg0F + _fg04 + _fg0B; // 
	var _fgSet03 = _PAL_PC_1 + _fg00 + _fg0C + _fg10 + _fg0B; // Palace 1, set 1
	var _fgSet04 = _PAL_PC_1 + _fg00 + _fg11 + _fg02 + _fg0B; // 
	var _fgSet05 = _PAL_PC_1 + _fg00 + _fg0C + _fg02 + _fg0B; // 
	var _fgSet06 = _PAL_PC_1 + _fg00 + _fg03 + _fg07 + _fg0B; // Bridge set 1, Poison Bubbles set 1
	var _fgSet07 = _PAL_PC_1 + _fg00 + _fg08 + _fg09 + _fg0B; // Rauru, set 1

	var _fgSet08 = _PAL_PC_1 + _fg00 + _fg04 + _fg12 + _fg0B; // set 1: Cave, Forest
	// var _fgSet09 = _PAL_PC_1 + '' + '' + ''; // 
	// var _fgSet0A = _PAL_PC_1 + '' + '' + ''; // 
	var _fgSet0B = _PAL_PC_1 + _fg00 + _fg0A + _fg0B + _fg0B; // Town basement, set 1
	// var _fgSet0C = _PAL_PC_1 + ''; // 
	// var _fgSet0D = _PAL_PC_1 + '' + '' + ''; // 
	// var _fgSet0E = _PAL_PC_1 + '' + '' + ''; // 
	// var _fgSet0F = _PAL_PC_1 + '' + '' + ''; // 

	var _fgSet10 = _PAL_PC_7 + _fg00 + _fg01 + _fg01 + _fg0B; // Dark room cave 1a
	// var _fgSet11 = _PAL_PC_1; // 
	// var _fgSet12 = _PAL_PC_1; // 
	// var _fgSet13 = _PAL_PC_1; // 
	// var _fgSet14 = _PAL_PC_1; // 
	// var _fgSet15 = _PAL_PC_1; // 
	// var _fgSet16 = _PAL_PC_1; // 
	// var _fgSet17 = _PAL_PC_1; // 

	// var _fgSet18 = _PAL_PC_1; // 
	// var _fgSet19 = _PAL_PC_1; // 
	// var _fgSet1A = _PAL_PC_1; // 
	// var _fgSet1B = _PAL_PC_1; // 
	// var _fgSet1C = _PAL_PC_1; // 
	// var _fgSet1D = _PAL_PC_1; // 
	// var _fgSet1E = _PAL_PC_1; // 
	// var _fgSet1F = _PAL_PC_1; // 








	var _roomSet00 = _bgSet01 + _fgSet03; // Palace 1, set 1
	var _roomSet01 = _bgSet02 + _fgSet03; // Palace 2, set 1
	var _roomSet02 = _bgSet05 + _fgSet03; // Palace 5, set 1
	var _roomSet03 = _bgSet06 + _fgSet03; // Palace 6, set 1
	var _roomSet04 = _bgSet03 + _fgSet03; // Palace 3, set 1
	var _roomSet05 = _bgSet04 + _fgSet03; // Palace 4, set 1
	var _roomSet06 = _bgSet14 + _fgSet03; // Palace 3, set 1 outside
	var _roomSet07 = _bgSet15 + _fgSet03; // Palace 4, set 1 outside

	var _roomSet08 = _bgSet07 + _fgSet07; // Rauru, set 1
	var _roomSet09 = _bgSet08 + _fgSet07; // RUTO, set 1
	var _roomSet0A = _bgSet09 + _fgSet07; // SARIA, set 1
	var _roomSet0B = _bgSet0B + _fgSet0B; // Town basement, set 1
	var _roomSet0C = _bgSet0C + _fgSet07; // House, set 1
	var _roomSet0D = _bgSet0A + _fgSet07; // MIDO, set 1
	var _roomSet0E = _bgSet16 + _fgSet03; // Palace 6, set 1 outside
	var _roomSet0F = _bgSet17 + _fgSet03; // Palace 1, set 1 outside

	var _roomSet10 = _bgSet18 + _fgSet03; // Palace 2, set 1 outside
	var _roomSet11 = _bgSet19 + _fgSet03; // Palace 5, set 1 outside
	var _roomSet12 = _bgSet23 + _fgSet03; // Palace 2, set 2. For swamp water
	var _roomSet13 = _bgSet0E + _fgSet06; // Final area
	var _roomSet14 = _bgSet0D + _fgSet06; // Bridge set 1, Poison Bubbles set 1
	var _roomSet15 = _bgSet0E + _fgSet08; // Cave set 1
	var _roomSet16 = _bgSet0F + _fgSet06; // set 1: Desert, Path, Heart 4
	var _roomSet17 = _bgSet10 + _fgSet08; // set 1: Forest

	var _roomSet18 = _bgSet11 + _fgSet06; // set 1: Field, Heart 1
	var _roomSet19 = _bgSet12 + _fgSet06; // set 1: Swamp
	var _roomSet1A = _bgSet13 + _fgSet06; // set 1: Cemetary
	var _roomSet1B = _bgSet1C + _fgSet07; // set 1: Darunia, outside
	var _roomSet1C = _bgSet1D + _fgSet07; // set 1: Old Kasuto, outside
	var _roomSet1D = _bgSet1E + _fgSet06; // set West 1a
	var _roomSet1E = _bgSet1F + _fgSet06; // set West 2a
	var _roomSet1F = _bgSet20 + _fgSet06; // N Palace Lake East

	var _roomSet20 = _bgSet00 + _fgSet10; // Dark room cave 1a
	var _roomSet21 = _bgSet21 + _fgSet06; // N Palace Lake West 1
	var _roomSet22 = _bgSet22 + _fgSet06; // N Palace Lake West 2
	// var _roomSet23 = ''; // 
	var _roomSet24 = _bgSet1A + _PAL_PC_1 + _fg00 + _fg11 + _bg02; // Palace 7, outside
	var _roomSet25 = _bgSet1B + _fgSet03; // Palace 7, inside
	// var _roomSet26 = ''; // 
	// var _roomSet27 = ''; // 
	var _roomSet30 = _PAL_BASE + _bg05 + _bg05 + _bg05 + _fg0B  // rmB_FileSelect
	               + _PAL_PC_1 + _fg00 + _fg06 + _bg04 + _fg0B;
	//
	var _roomSet31 = _PAL_BASE + _bg12 + _bg05 + _bg05 + _fg0B  // rmB_ContinueSave
	               + _bg0F     + _fg00 + _fg03 + _fg07 + _fg0B;
	// ---------------------------------------------------------------------
	// ---------------------------------------------------------------------------

	// File Select screen
	dm_pal_data[? room_get_name(rmB_FileSelect)]   = _roomSet30;
	// sdm("rmB_FileSelect pal:  " +                    _roomSet30);

	// Continue Save screen
	dm_pal_data[? room_get_name(rmB_ContinueSave)] = _roomSet31;





	// ---------------------------------------------------------------------------
	// ---------------------------------------------------------------------------

	// WEST --------------------------------------------
	_area = Area_WestA;

	dm_pal_data[? _area + "00"] = _PAL_BASE + _bg16 + _bg02 + _bg03 + _fg0B + _fgSet06;
	dm_pal_data[? _area + "01"] = _roomSet14; // bridge near Saria
	dm_pal_data[? _area + "02"] = _roomSet14; // bridge near Bagu
	dm_pal_data[? _area + "03"] = _roomSet1E; // N Pal entrance, E side
	dm_pal_data[? _area + "04"] = _roomSet14; // bridge Death Mtn
	dm_pal_data[? _area + "05"] = _roomSet14; // bridge Death Mtn
	dm_pal_data[? _area + "06"] = _roomSet14; // poison bubbles
	dm_pal_data[? _area + "07"] = _roomSet15; // cave Palace 1

	dm_pal_data[? _area + "08"] = _roomSet1F; // N Pal Lake, E side
	dm_pal_data[? _area + "09"] = _roomSet15; // cave JUMP
	dm_pal_data[? _area + "0A"] = _roomSet15; // cave JUMP
	dm_pal_data[? _area + "0B"] = _roomSet15; // cave JUMP
	dm_pal_data[? _area + "0C"] = _roomSet15; // cave pBag 1
	dm_pal_data[? _area + "0D"] = _roomSet15; // cave pBag 1
	dm_pal_data[? _area + "0E"] = _roomSet15; // MEDICINE
	dm_pal_data[? _area + "0F"] = _roomSet15; // MEDICINE

	dm_pal_data[? _area + "10"] = _roomSet15; // cave HEART
	dm_pal_data[? _area + "11"] = _roomSet15; // cave HEART
	dm_pal_data[? _area + "12"] = _roomSet15; // cave Palace 3
	dm_pal_data[? _area + "13"] = _roomSet15; // cave Palace 3
	dm_pal_data[? _area + "14"] = _roomSet17; // fairy by JUMP caves
	dm_pal_data[? _area + "15"] = _roomSet17; // Bagu forest
	dm_pal_data[? _area + "16"] = _roomSet17; // Bagu forest
	dm_pal_data[? _area + "17"] = _roomSet17; // Bagu forest

	dm_pal_data[? _area + "18"] = _roomSet21; // N Pal entrance, W side
	dm_pal_data[? _area + "19"] = _roomSet21; // N Palace Lake West 1
	dm_pal_data[? _area + "1A"] = _roomSet22; // N Palace Lake West 2
	dm_pal_data[? _area + "1B"] = _roomSet17; // Bagu woods 4
	dm_pal_data[? _area + "1C"] = _roomSet17; // Bagu woods 5
	dm_pal_data[? _area + "1D"] = _roomSet16; // desert 1
	dm_pal_data[? _area + "1E"] = _roomSet16; // desert 2
	dm_pal_data[? _area + "1F"] = _roomSet16; // Link doll W of Mido cemetery

	dm_pal_data[? _area + "20"] = _roomSet17; // Fairy secret E of Saria (in sandy area)
	dm_pal_data[? _area + "21"] = _roomSet15; // cave TROPHY
	dm_pal_data[? _area + "22"] = _roomSet18; // field 1
	dm_pal_data[? _area + "23"] = _roomSet18; // field 2
	dm_pal_data[? _area + "24"] = _roomSet15; // Cave from Saria to Death Mtn
	dm_pal_data[? _area + "25"] = _roomSet15; // Cave. Death Mtn E exit
	dm_pal_data[? _area + "26"] = _roomSet18; // Heart 1
	dm_pal_data[? _area + "27"] = _roomSet17; // forest encounter 1

	dm_pal_data[? _area + "28"] = _roomSet17; // forest encounter 2
	// dm_pal_data[? _area + "29"] = _roomSet00; // 
	// dm_pal_data[? _area + "2A"] = _roomSet00; // 
	dm_pal_data[? _area + "2B"] = _roomSet17; // pBag forest
	dm_pal_data[? _area + "2C"] = _roomSet17; // Bagu forest
	dm_pal_data[? _area + "2D"] = _roomSet15; // cave Magic
	dm_pal_data[? _area + "2E"] = _roomSet17; // pBag forest
	// dm_pal_data[? _area + "2F"] = _roomSet00; // 

	dm_pal_data[? _area + "30"] = _roomSet19; // swamp 1
	// dm_pal_data[? _area + "31"] = _roomSet00; // 
	// dm_pal_data[? _area + "32"] = _roomSet00; // 
	dm_pal_data[? _area + "33"] = _roomSet19; // swamp ruins. Link doll near MEDICINE cave
	dm_pal_data[? _area + "34"] = _roomSet19; // Red bottle secret. Swamp ruins 1a (near Palace 2)
	dm_pal_data[? _area + "35"] = _roomSet1A; // cemetary
	// dm_pal_data[? _area + "36"] = _roomSet00; // 
	// dm_pal_data[? _area + "37"] = _roomSet00; // 

	dm_pal_data[? _area + "38"] = _roomSet1A; // cemetary
	dm_pal_data[? _area + "39"] = _roomSet16; // path 1
	dm_pal_data[? _area + "3A"] = _roomSet16; // path 2
	// dm_pal_data[? _area + "3B"] = _roomSet00; // 
	// dm_pal_data[? _area + "3C"] = _roomSet00; // 
	// dm_pal_data[? _area + "3D"] = _roomSet00; // 
	// dm_pal_data[? _area + "3E"] = _roomSet00; // 
	// dm_pal_data[? _area + "3F"] = _roomSet00; // 

	dm_pal_data[? _area + "40"] = _roomSet1D; // 
	// ---------------------------------------------------------------------------


	// EAST --------------------------------------------
	_area = Area_EastA;

	dm_pal_data[? _area + "00"] = _roomSet14; // bridge
	dm_pal_data[? _area + "01"] = _roomSet14; // bridge
	dm_pal_data[? _area + "02"] = _roomSet17; // gauntlet
	dm_pal_data[? _area + "03"] = _roomSet17; // gauntlet
	dm_pal_data[? _area + "04"] = _roomSet17; // gauntlet
	dm_pal_data[? _area + "05"] = _roomSet17; // gauntlet
	dm_pal_data[? _area + "06"] = _roomSet14; // water
	dm_pal_data[? _area + "07"] = _roomSet14; // water heart

	dm_pal_data[? _area + "08"] = _roomSet15; // cave
	dm_pal_data[? _area + "09"] = _roomSet15; // cave
	dm_pal_data[? _area + "0A"] = _roomSet15; // cave pbag
	dm_pal_data[? _area + "0B"] = _roomSet15; // cave
	dm_pal_data[? _area + "0C"] = _roomSet15; // cave pbag
	dm_pal_data[? _area + "0D"] = _roomSet15; // cave
	dm_pal_data[? _area + "0E"] = _roomSet15; // cave
	// dm_pal_data[? _area + "0F"] = _roomSet00; // 

	dm_pal_data[? _area + "10"] = _roomSet15; // cave
	// dm_pal_data[? _area + "11"] = _roomSet00; // 
	// dm_pal_data[? _area + "12"] = _roomSet00; // 
	dm_pal_data[? _area + "13"] = _roomSet15; // cave
	dm_pal_data[? _area + "14"] = _roomSet15; // cave
	// dm_pal_data[? _area + "15"] = _roomSet00; // 
	// dm_pal_data[? _area + "16"] = _roomSet00; // 
	dm_pal_data[? _area + "17"] = _roomSet14; // water

	dm_pal_data[? _area + "18"] = _roomSet13; // final area
	dm_pal_data[? _area + "19"] = _roomSet13; // final area
	dm_pal_data[? _area + "1A"] = _roomSet13; // final area
	// dm_pal_data[? _area + "1B"] = _roomSet00; // 
	// dm_pal_data[? _area + "1C"] = _roomSet00; // 
	dm_pal_data[? _area + "1D"] = _roomSet16; // desert
	dm_pal_data[? _area + "1E"] = _roomSet16; // desert
	// dm_pal_data[? _area + "1F"] = _roomSet00; // 

	// dm_pal_data[? _area + "20"] = _roomSet00; // 
	dm_pal_data[? _area + "21"] = _roomSet16; // desert pbag
	dm_pal_data[? _area + "22"] = _roomSet18; // field
	// dm_pal_data[? _area + "23"] = _roomSet00; // 
	// dm_pal_data[? _area + "24"] = _roomSet00; // 
	// dm_pal_data[? _area + "25"] = _roomSet00; // 
	dm_pal_data[? _area + "26"] = _roomSet17; // forest pbag
	dm_pal_data[? _area + "27"] = _roomSet17; // forest

	dm_pal_data[? _area + "28"] = _roomSet17; // forest
	// dm_pal_data[? _area + "29"] = _roomSet00; // 
	// dm_pal_data[? _area + "2A"] = _roomSet00; // 
	// dm_pal_data[? _area + "2B"] = _roomSet00; // 
	dm_pal_data[? _area + "2C"] = _roomSet17; // forest pbag
	dm_pal_data[? _area + "2D"] = _roomSet17; // forest fairy
	dm_pal_data[? _area + "2E"] = _roomSet16; // desert heart
	// dm_pal_data[? _area + "2F"] = _roomSet00; // 

	dm_pal_data[? _area + "30"] = _roomSet19; // swamp
	// dm_pal_data[? _area + "31"] = _roomSet00; // 
	// dm_pal_data[? _area + "32"] = _roomSet00; // 
	dm_pal_data[? _area + "33"] = _roomSet19; // swamp doll
	// dm_pal_data[? _area + "34"] = _roomSet00; // 
	dm_pal_data[? _area + "35"] = _roomSet1A; // cemetary
	// dm_pal_data[? _area + "36"] = _roomSet00; // 
	// dm_pal_data[? _area + "37"] = _roomSet00; // 

	// dm_pal_data[? _area + "38"] = _roomSet00; // 
	dm_pal_data[? _area + "39"] = _roomSet16; // path bottle doll
	dm_pal_data[? _area + "3A"] = _roomSet16; // Extra life doll near W end of Maze Isl Bridge
	dm_pal_data[? _area + "3B"] = _roomSet16; // Red Bottle secret in desert E of Nabooru
	dm_pal_data[? _area + "3C"] = _roomSet13; // final area
	// dm_pal_data[? _area + "3D"] = _roomSet00; // 
	dm_pal_data[? _area + "3E"] = _roomSet13; // final area bottle pbag
	dm_pal_data[? _area + "3F"] = _roomSet13; // 500 pbag
	// ---------------------------------------------------------------------------


	// DEATH MTN, MAZE IS. --------------------------------------------
	// _area = Area_DMtMI;

	_area = Area_DthMt;
	// dm_pal_data[? _area + "00"] = _roomSet00; // 
	dm_pal_data[? _area + "01"] = _roomSet15; // cave
	dm_pal_data[? _area + "02"] = _roomSet15; // cave
	dm_pal_data[? _area + "03"] = _roomSet15; // cave
	dm_pal_data[? _area + "04"] = _roomSet15; // cave
	dm_pal_data[? _area + "05"] = _roomSet15; // cave
	dm_pal_data[? _area + "06"] = _roomSet15; // cave
	dm_pal_data[? _area + "07"] = _roomSet15; // cave

	dm_pal_data[? _area + "08"] = _roomSet15; // cave
	dm_pal_data[? _area + "09"] = _roomSet15; // cave
	dm_pal_data[? _area + "0A"] = _roomSet15; // cave
	dm_pal_data[? _area + "0B"] = _roomSet15; // cave
	dm_pal_data[? _area + "0C"] = _roomSet15; // cave
	dm_pal_data[? _area + "0D"] = _roomSet15; // cave
	dm_pal_data[? _area + "0E"] = _roomSet15; // cave
	dm_pal_data[? _area + "0F"] = _roomSet15; // cave

	dm_pal_data[? _area + "10"] = _roomSet15; // cave
	dm_pal_data[? _area + "11"] = _roomSet15; // cave
	dm_pal_data[? _area + "12"] = _roomSet15; // cave
	dm_pal_data[? _area + "13"] = _roomSet15; // cave
	dm_pal_data[? _area + "14"] = _roomSet15; // cave
	dm_pal_data[? _area + "15"] = _roomSet15; // cave HAMMER
	dm_pal_data[? _area + "16"] = _roomSet15; // cave
	dm_pal_data[? _area + "17"] = _roomSet15; // cave

	dm_pal_data[? _area + "18"] = _roomSet15; // cave
	dm_pal_data[? _area + "19"] = _roomSet15; // cave
	dm_pal_data[? _area + "1A"] = _roomSet15; // cave MAGIC container 6
	// dm_pal_data[? _area + "1B"] = _roomSet00; // 
	// dm_pal_data[? _area + "1C"] = _roomSet00; // 
	dm_pal_data[? _area + "1D"] = _roomSet16; // desert
	// dm_pal_data[? _area + "1E"] = _roomSet00; // 
	// dm_pal_data[? _area + "1F"] = _roomSet00; // 

	// dm_pal_data[? _area + "20"] = _roomSet00; // 
	// dm_pal_data[? _area + "21"] = _roomSet00; // 

	_area = Area_MazIs;
	dm_pal_data[? _area + "22"] = _roomSet14; // water/bridge
	dm_pal_data[? _area + "23"] = _roomSet14; // water/bridge
	dm_pal_data[? _area + "24"] = _roomSet15; // cave
	dm_pal_data[? _area + "25"] = _roomSet15; // cave
	// dm_pal_data[? _area + "26"] = _roomSet00; // 

	_area = Area_DthMt;
	dm_pal_data[? _area + "27"] = _roomSet17; // forest

	// dm_pal_data[? _area + "28"] = _roomSet00; // 
	// dm_pal_data[? _area + "29"] = _roomSet00; // 
	// dm_pal_data[? _area + "2A"] = _roomSet00; // 
	// dm_pal_data[? _area + "2B"] = _roomSet00; // 
	// dm_pal_data[? _area + "2C"] = _roomSet00; // 
	// dm_pal_data[? _area + "2D"] = _roomSet00; // 
	// dm_pal_data[? _area + "2E"] = _roomSet00; // 

	_area = Area_MazIs;
	dm_pal_data[? _area + "2F"] = _roomSet14; // water/bridge

	dm_pal_data[? _area + "30"] = _roomSet14; // water/bridge
	dm_pal_data[? _area + "31"] = _roomSet14; // water/bridge
	dm_pal_data[? _area + "32"] = _roomSet14; // water/bridge
	dm_pal_data[? _area + "33"] = _roomSet14; // water/bridge

	_area = Area_DthMt;
	dm_pal_data[? _area + "34"] = _roomSet1A; // cemetary
	// dm_pal_data[? _area + "35"] = _roomSet00; // 
	// dm_pal_data[? _area + "36"] = _roomSet00; // 
	// dm_pal_data[? _area + "37"] = _roomSet00; // 

	// dm_pal_data[? _area + "38"] = _roomSet00; // 
	dm_pal_data[? _area + "39"] = _roomSet16; // path
	// dm_pal_data[? _area + "3A"] = _roomSet00; // 
	// dm_pal_data[? _area + "3B"] = _roomSet00; // 
	// dm_pal_data[? _area + "3C"] = _roomSet00; // 
	// dm_pal_data[? _area + "3D"] = _roomSet00; // 
	// dm_pal_data[? _area + "3E"] = _roomSet00; // 
	// dm_pal_data[? _area + "3F"] = _roomSet00; // 

	// ------------------------------------------------------
	// ---------------  PALACES 1, 2, 5  --------------------
	// ------------------------------------------------------


	//          -------------- PALACE 1 --------------
	              _area = Area_PalcA;
	dm_pal_data[? _area + "00"] = _roomSet0F; // outside
	dm_pal_data[? _area + "01"] = _roomSet00;
	dm_pal_data[? _area + "02"] = _roomSet00;
	dm_pal_data[? _area + "03"] = _roomSet00;
	dm_pal_data[? _area + "04"] = _roomSet00;
	dm_pal_data[? _area + "05"] = _roomSet00;
	dm_pal_data[? _area + "06"] = _roomSet00;
	dm_pal_data[? _area + "07"] = _roomSet00;
	dm_pal_data[? _area + "08"] = _roomSet00;
	dm_pal_data[? _area + "09"] = _roomSet00;
	dm_pal_data[? _area + "0A"] = _roomSet00;
	dm_pal_data[? _area + "0B"] = _roomSet00;
	dm_pal_data[? _area + "0C"] = _roomSet00;
	dm_pal_data[? _area + "0D"] = _roomSet00;
	                                            // 
	//          -------------- PALACE 2 --------------
	              _area = Area_PalcB;
	dm_pal_data[? _area + "00"] = _roomSet10; // outside
	dm_pal_data[? _area + "01"] = _roomSet01;
	dm_pal_data[? _area + "02"] = _roomSet01;
	dm_pal_data[? _area + "03"] = _roomSet01;
	dm_pal_data[? _area + "04"] = _roomSet01;
	dm_pal_data[? _area + "05"] = _roomSet01;
	dm_pal_data[? _area + "06"] = _roomSet01;
	dm_pal_data[? _area + "07"] = _roomSet01;
	dm_pal_data[? _area + "08"] = _roomSet01;
	dm_pal_data[? _area + "09"] = _roomSet01;
	dm_pal_data[? _area + "0A"] = _roomSet01;
	dm_pal_data[? _area + "0B"] = _roomSet01;
	dm_pal_data[? _area + "0C"] = _roomSet01;
	dm_pal_data[? _area + "0D"] = _roomSet01;
	dm_pal_data[? _area + "0E"] = _roomSet01;
	dm_pal_data[? _area + "0F"] = _roomSet01;
	                                            // 
	dm_pal_data[? _area + "10"] = _roomSet01;
	dm_pal_data[? _area + "11"] = _roomSet01;
	dm_pal_data[? _area + "12"] = _roomSet01;
	dm_pal_data[? _area + "13"] = _roomSet01;
	dm_pal_data[? _area + "14"] = _roomSet01;
	dm_pal_data[? _area + "15"] = _roomSet12; // swamp/flooded rm
	                                            // 
	//          -------------- PALACE 3 --------------
	              _area = Area_PalcC;
	dm_pal_data[? _area + "00"] = _roomSet06; // outside
	dm_pal_data[? _area + "01"] = _roomSet04;
	dm_pal_data[? _area + "02"] = _roomSet04;
	dm_pal_data[? _area + "03"] = _roomSet04;
	dm_pal_data[? _area + "04"] = _roomSet04;
	dm_pal_data[? _area + "05"] = _roomSet04;
	dm_pal_data[? _area + "06"] = _roomSet06; // outside
	dm_pal_data[? _area + "07"] = _roomSet04;
	dm_pal_data[? _area + "08"] = _roomSet04;
	dm_pal_data[? _area + "09"] = _roomSet04;
	dm_pal_data[? _area + "0A"] = _roomSet04;
	dm_pal_data[? _area + "0B"] = _roomSet04;
	dm_pal_data[? _area + "0C"] = _roomSet04;
	dm_pal_data[? _area + "0D"] = _roomSet04;
	dm_pal_data[? _area + "0E"] = _roomSet04;
	                                            // 
	//          -------------- PALACE 4 --------------
	              _area = Area_PalcD;
	dm_pal_data[? _area + "00"] = _roomSet07; // outside
	dm_pal_data[? _area + "01"] = _roomSet05;
	dm_pal_data[? _area + "02"] = _roomSet05;
	dm_pal_data[? _area + "03"] = _roomSet05;
	dm_pal_data[? _area + "04"] = _roomSet05;
	dm_pal_data[? _area + "05"] = _roomSet05;
	dm_pal_data[? _area + "06"] = _roomSet05;
	dm_pal_data[? _area + "07"] = _roomSet05;
	dm_pal_data[? _area + "08"] = _roomSet05;
	dm_pal_data[? _area + "09"] = _roomSet05;
	dm_pal_data[? _area + "0A"] = _roomSet05;
	dm_pal_data[? _area + "0B"] = _roomSet05;
	dm_pal_data[? _area + "0C"] = _roomSet05;
	dm_pal_data[? _area + "0D"] = _roomSet05;
	dm_pal_data[? _area + "0E"] = _roomSet05;
	dm_pal_data[? _area + "0F"] = _roomSet05;
	                                            // 
	dm_pal_data[? _area + "10"] = _roomSet05;
	dm_pal_data[? _area + "11"] = _roomSet05;
	dm_pal_data[? _area + "12"] = _roomSet05;
	dm_pal_data[? _area + "13"] = _roomSet05;
	dm_pal_data[? _area + "14"] = _roomSet05;
	                                            // 
	//          -------------- PALACE 5 --------------
	              _area = Area_PalcE;
	dm_pal_data[? _area + "00"] = _roomSet11; // outside
	dm_pal_data[? _area + "01"] = _roomSet02;
	dm_pal_data[? _area + "02"] = _roomSet02;
	dm_pal_data[? _area + "03"] = _roomSet02;
	dm_pal_data[? _area + "04"] = _roomSet02;
	dm_pal_data[? _area + "05"] = _roomSet02;
	dm_pal_data[? _area + "06"] = _roomSet02;
	dm_pal_data[? _area + "07"] = _roomSet02;
	dm_pal_data[? _area + "08"] = _roomSet02;
	dm_pal_data[? _area + "09"] = _roomSet02;
	dm_pal_data[? _area + "0A"] = _roomSet02;
	dm_pal_data[? _area + "0B"] = _roomSet02;
	dm_pal_data[? _area + "0C"] = _roomSet02;
	dm_pal_data[? _area + "0D"] = _roomSet02;
	dm_pal_data[? _area + "0E"] = _roomSet02;
	dm_pal_data[? _area + "0F"] = _roomSet02;
	                                            // 
	dm_pal_data[? _area + "10"] = _roomSet02;
	dm_pal_data[? _area + "11"] = _roomSet02;
	dm_pal_data[? _area + "12"] = _roomSet02;
	dm_pal_data[? _area + "13"] = _roomSet02;
	dm_pal_data[? _area + "14"] = _roomSet02;
	dm_pal_data[? _area + "15"] = _roomSet02;
	dm_pal_data[? _area + "16"] = _roomSet02;
	dm_pal_data[? _area + "17"] = _roomSet02;
	dm_pal_data[? _area + "18"] = _roomSet02;
	dm_pal_data[? _area + "19"] = _roomSet02;
	dm_pal_data[? _area + "1A"] = _roomSet02;
	dm_pal_data[? _area + "1B"] = _roomSet02;
	// dm_pal_data[? _area + "3F"] = _roomSet00;
	                                            // 
	//          -------------- PALACE 6 --------------
	              _area = Area_PalcF;
	dm_pal_data[? _area + "00"] = _roomSet0E; // outside
	dm_pal_data[? _area + "01"] = _roomSet03;
	dm_pal_data[? _area + "02"] = _roomSet03;
	dm_pal_data[? _area + "03"] = _roomSet03;
	dm_pal_data[? _area + "04"] = _roomSet03;
	dm_pal_data[? _area + "05"] = _roomSet03;
	dm_pal_data[? _area + "06"] = _roomSet03;
	dm_pal_data[? _area + "07"] = _roomSet03;
	dm_pal_data[? _area + "08"] = _roomSet03;
	dm_pal_data[? _area + "09"] = _roomSet03;
	dm_pal_data[? _area + "0A"] = _roomSet03;
	dm_pal_data[? _area + "0B"] = _roomSet03;
	dm_pal_data[? _area + "0C"] = _roomSet03;
	dm_pal_data[? _area + "0D"] = _roomSet03;
	dm_pal_data[? _area + "0E"] = _roomSet03;
	dm_pal_data[? _area + "0F"] = _roomSet03;
	                                            // 
	dm_pal_data[? _area + "10"] = _roomSet03;
	dm_pal_data[? _area + "11"] = _roomSet03;
	dm_pal_data[? _area + "12"] = _roomSet03;
	dm_pal_data[? _area + "13"] = _roomSet03;
	dm_pal_data[? _area + "14"] = _roomSet03;
	dm_pal_data[? _area + "15"] = _roomSet03;
	dm_pal_data[? _area + "16"] = _roomSet03;
	dm_pal_data[? _area + "17"] = _roomSet03;
	dm_pal_data[? _area + "18"] = _roomSet03;
	dm_pal_data[? _area + "19"] = _roomSet03;
	dm_pal_data[? _area + "1A"] = _roomSet03;
	dm_pal_data[? _area + "1B"] = _roomSet03;
	                                            // 
	//          -------------- PALACE 7 --------------
	              _area = Area_PalcG;
	dm_pal_data[? _area + "00"] = _roomSet24;
	dm_pal_data[? _area + "01"] = _roomSet25;
	dm_pal_data[? _area + "02"] = _roomSet25;
	dm_pal_data[? _area + "03"] = _roomSet25;
	dm_pal_data[? _area + "04"] = _roomSet25;
	dm_pal_data[? _area + "05"] = _roomSet25;
	dm_pal_data[? _area + "06"] = _roomSet25;
	dm_pal_data[? _area + "07"] = _roomSet25;
	dm_pal_data[? _area + "08"] = _roomSet25;
	dm_pal_data[? _area + "09"] = _roomSet25;
	dm_pal_data[? _area + "0A"] = _roomSet25;
	dm_pal_data[? _area + "0B"] = _roomSet25;
	dm_pal_data[? _area + "0C"] = _roomSet25;
	dm_pal_data[? _area + "0D"] = _roomSet25;
	dm_pal_data[? _area + "0E"] = _roomSet25;
	dm_pal_data[? _area + "0F"] = _roomSet25;
	                                            // 
	dm_pal_data[? _area + "10"] = _roomSet25;
	dm_pal_data[? _area + "11"] = _roomSet25;
	dm_pal_data[? _area + "12"] = _roomSet25;
	dm_pal_data[? _area + "13"] = _roomSet25;
	dm_pal_data[? _area + "14"] = _roomSet25;
	dm_pal_data[? _area + "15"] = _roomSet25;
	dm_pal_data[? _area + "16"] = _roomSet25;
	dm_pal_data[? _area + "17"] = _roomSet25;
	dm_pal_data[? _area + "18"] = _roomSet25;
	dm_pal_data[? _area + "19"] = _roomSet25;
	dm_pal_data[? _area + "1A"] = _roomSet25;
	dm_pal_data[? _area + "1B"] = _roomSet25;
	dm_pal_data[? _area + "1C"] = _roomSet25;
	dm_pal_data[? _area + "1D"] = _roomSet25;
	dm_pal_data[? _area + "1E"] = _roomSet25;
	dm_pal_data[? _area + "1F"] = _roomSet25;
	                                            // 
	dm_pal_data[? _area + "20"] = _roomSet25;
	dm_pal_data[? _area + "21"] = _roomSet25;
	dm_pal_data[? _area + "22"] = _roomSet25;
	dm_pal_data[? _area + "23"] = _roomSet25;
	dm_pal_data[? _area + "24"] = _roomSet25;
	dm_pal_data[? _area + "25"] = _roomSet25;
	dm_pal_data[? _area + "26"] = _roomSet25;
	dm_pal_data[? _area + "27"] = _roomSet25;
	dm_pal_data[? _area + "28"] = _roomSet25;
	dm_pal_data[? _area + "29"] = _roomSet25;
	dm_pal_data[? _area + "2A"] = _roomSet25;
	dm_pal_data[? _area + "2B"] = _roomSet25;
	dm_pal_data[? _area + "2C"] = _roomSet25;
	dm_pal_data[? _area + "2D"] = _roomSet25;
	dm_pal_data[? _area + "2E"] = _roomSet25;
	dm_pal_data[? _area + "2F"] = _roomSet25;
	                                            // 
	dm_pal_data[? _area + "30"] = _roomSet25;
	dm_pal_data[? _area + "31"] = _roomSet25;
	dm_pal_data[? _area + "32"] = _roomSet25;
	dm_pal_data[? _area + "33"] = _roomSet25;
	dm_pal_data[? _area + "34"] = _roomSet25;
	dm_pal_data[? _area + "35"] = _roomSet25;
	dm_pal_data[? _area + "36"] = _roomSet25;
	// dm_pal_data[? _area + "37"] = _roomSet25;
	                                            // 
	// dm_pal_data[? _area + "38"] = _roomSet25;
	// dm_pal_data[? _area + "39"] = _roomSet25;
	// dm_pal_data[? _area + "3A"] = _roomSet25;
	// dm_pal_data[? _area + "3B"] = _roomSet25;
	// dm_pal_data[? _area + "3C"] = _roomSet25;
	// dm_pal_data[? _area + "3D"] = _roomSet25;
	// dm_pal_data[? _area + "3E"] = _roomSet25;
	// dm_pal_data[? _area + "3F"] = _roomSet25;
	// ---------------------------------------------------------------------------
	// ---------------------------------------------------------------------------


	_area = Area_TownA;

	//          -------------- KINGS TOMB --------------
	dm_pal_data[? _area + "00"] = _roomSet08; // King's Tomb


	//          -------------- RAURU --------------
	dm_pal_data[? _area + "01"] = _roomSet08;
	dm_pal_data[? _area + "02"] = _roomSet08;


	//          -------------- BAGU --------------
	dm_pal_data[? _area + "03"] = _roomSet0D; // Bagu outside


	//          -------------- RUTO --------------
	dm_pal_data[? _area + "04"] = _roomSet09;
	dm_pal_data[? _area + "05"] = _roomSet09;


	//          -------------- SARIA --------------
	dm_pal_data[? _area + "06"] = _roomSet0A;
	dm_pal_data[? _area + "07"] = _roomSet0A;
	dm_pal_data[? _area + "08"] = _roomSet0A;


	//          -------------- MIDO --------------
	dm_pal_data[? _area + "09"] = _roomSet0D;
	dm_pal_data[? _area + "0A"] = _roomSet0D;
	dm_pal_data[? _area + "0B"] = _roomSet0D;


	//          -------------- NABOORU --------------
	dm_pal_data[? _area + "0C"] = _roomSet08;
	dm_pal_data[? _area + "0D"] = _roomSet08;
	dm_pal_data[? _area + "0E"] = _roomSet08;


	//          -------------- DARUNIA --------------
	dm_pal_data[? _area + "0F"] = _roomSet1B;
	dm_pal_data[? _area + "10"] = _roomSet1B;
	dm_pal_data[? _area + "11"] = _roomSet1B;


	//          -------------- NEW KASUTO --------------
	dm_pal_data[? _area + "12"] = _roomSet0A;
	dm_pal_data[? _area + "13"] = _roomSet0A;
	dm_pal_data[? _area + "14"] = _roomSet0A;


	//          -------------- KASUTO --------------
	dm_pal_data[? _area + "15"] = _roomSet1C;
	dm_pal_data[? _area + "16"] = _roomSet1C;
	dm_pal_data[? _area + "17"] = _roomSet1C;


	//          -------------- INSIDE HOUSE --------------
	dm_pal_data[? _area + "40"] = _roomSet0C;
	dm_pal_data[? _area + "41"] = _roomSet0C;
	dm_pal_data[? _area + "42"] = _roomSet0C;
	dm_pal_data[? _area + "43"] = _roomSet0C;
	dm_pal_data[? _area + "44"] = _roomSet0C;
	dm_pal_data[? _area + "45"] = _roomSet0C;
	dm_pal_data[? _area + "46"] = _roomSet0C;
	dm_pal_data[? _area + "47"] = _roomSet0C;
	dm_pal_data[? _area + "48"] = _roomSet0C;
	dm_pal_data[? _area + "49"] = _roomSet0C;
	dm_pal_data[? _area + "4A"] = _roomSet0C;
	dm_pal_data[? _area + "4B"] = _roomSet0C;
	dm_pal_data[? _area + "4C"] = _roomSet0C;
	dm_pal_data[? _area + "4D"] = _roomSet0C;
	dm_pal_data[? _area + "4E"] = _roomSet0C;
	dm_pal_data[? _area + "4F"] = _roomSet0C;

	dm_pal_data[? _area + "50"] = _roomSet0C;
	dm_pal_data[? _area + "51"] = _roomSet0C;
	dm_pal_data[? _area + "52"] = _roomSet0C;
	dm_pal_data[? _area + "53"] = _roomSet0C;
	dm_pal_data[? _area + "54"] = _roomSet0C;
	dm_pal_data[? _area + "55"] = _roomSet0C;
	dm_pal_data[? _area + "56"] = _roomSet0C;
	dm_pal_data[? _area + "57"] = _roomSet0C;
	dm_pal_data[? _area + "58"] = _roomSet0C;
	dm_pal_data[? _area + "59"] = _roomSet0C;
	dm_pal_data[? _area + "5A"] = _roomSet0C;
	dm_pal_data[? _area + "5B"] = _roomSet0C;
	dm_pal_data[? _area + "5C"] = _roomSet0C;
	dm_pal_data[? _area + "5D"] = _roomSet0C;
	dm_pal_data[? _area + "5E"] = _roomSet0C;
	dm_pal_data[? _area + "5F"] = _roomSet0C;

	//          -------------- BASEMENT --------------
	dm_pal_data[? _area + "60"] = _roomSet0B;
	dm_pal_data[? _area + "61"] = _roomSet0B;
	dm_pal_data[? _area + "62"] = _roomSet0B;
	dm_pal_data[? _area + "63"] = _roomSet0B;
	dm_pal_data[? _area + "64"] = _roomSet0B;
	dm_pal_data[? _area + "65"] = _roomSet0B;
	dm_pal_data[? _area + "66"] = _roomSet0B;
	dm_pal_data[? _area + "67"] = _roomSet0B;
	dm_pal_data[? _area + "68"] = _roomSet0B;
	dm_pal_data[? _area + "69"] = _roomSet0B;
	dm_pal_data[? _area + "6A"] = _roomSet0B;
	dm_pal_data[? _area + "6B"] = _roomSet0B;
	// dm_pal_data[? _area + "6C"] = _roomSet0B;
	// dm_pal_data[? _area + "6D"] = _roomSet0B;
	// dm_pal_data[? _area + "6E"] = _roomSet0B;
	// dm_pal_data[? _area + "6F"] = _roomSet0B;


	// ----------- MINIGAME -------------------
	dm_pal_data[? _area + "90"] = _roomSet0C;
	*/
	// ---------------------------------------------------------------------------
	// ---------------------------------------------------------------------------


	// -------- Template for starting a new area -------------------
	/*
	dm_pal_data[? _area + "00"] = _roomSet00; // 
	dm_pal_data[? _area + "01"] = _roomSet00; // 
	dm_pal_data[? _area + "02"] = _roomSet00; // 
	dm_pal_data[? _area + "03"] = _roomSet00; // 
	dm_pal_data[? _area + "04"] = _roomSet00; // 
	dm_pal_data[? _area + "05"] = _roomSet00; // 
	dm_pal_data[? _area + "06"] = _roomSet00; // 
	dm_pal_data[? _area + "07"] = _roomSet00; // 

	dm_pal_data[? _area + "08"] = _roomSet00; // 
	dm_pal_data[? _area + "09"] = _roomSet00; // 
	dm_pal_data[? _area + "0A"] = _roomSet00; // 
	dm_pal_data[? _area + "0B"] = _roomSet00; // 
	dm_pal_data[? _area + "0C"] = _roomSet00; // 
	dm_pal_data[? _area + "0D"] = _roomSet00; // 
	dm_pal_data[? _area + "0E"] = _roomSet00; // 
	dm_pal_data[? _area + "0F"] = _roomSet00; // 

	dm_pal_data[? _area + "10"] = _roomSet00; // 
	dm_pal_data[? _area + "11"] = _roomSet00; // 
	dm_pal_data[? _area + "12"] = _roomSet00; // 
	dm_pal_data[? _area + "13"] = _roomSet00; // 
	dm_pal_data[? _area + "14"] = _roomSet00; // 
	dm_pal_data[? _area + "15"] = _roomSet00; // 
	dm_pal_data[? _area + "16"] = _roomSet00; // 
	dm_pal_data[? _area + "17"] = _roomSet00; // 

	dm_pal_data[? _area + "18"] = _roomSet00; // 
	dm_pal_data[? _area + "19"] = _roomSet00; // 
	dm_pal_data[? _area + "1A"] = _roomSet00; // 
	dm_pal_data[? _area + "1B"] = _roomSet00; // 
	dm_pal_data[? _area + "1C"] = _roomSet00; // 
	dm_pal_data[? _area + "1D"] = _roomSet00; // 
	dm_pal_data[? _area + "1E"] = _roomSet00; // 
	dm_pal_data[? _area + "1F"] = _roomSet00; // 

	dm_pal_data[? _area + "20"] = _roomSet00; // 
	dm_pal_data[? _area + "21"] = _roomSet00; // 
	dm_pal_data[? _area + "22"] = _roomSet00; // 
	dm_pal_data[? _area + "23"] = _roomSet00; // 
	dm_pal_data[? _area + "24"] = _roomSet00; // 
	dm_pal_data[? _area + "25"] = _roomSet00; // 
	dm_pal_data[? _area + "26"] = _roomSet00; // 
	dm_pal_data[? _area + "27"] = _roomSet00; // 

	dm_pal_data[? _area + "28"] = _roomSet00; // 
	dm_pal_data[? _area + "29"] = _roomSet00; // 
	dm_pal_data[? _area + "2A"] = _roomSet00; // 
	dm_pal_data[? _area + "2B"] = _roomSet00; // 
	dm_pal_data[? _area + "2C"] = _roomSet00; // 
	dm_pal_data[? _area + "2D"] = _roomSet00; // 
	dm_pal_data[? _area + "2E"] = _roomSet00; // 
	dm_pal_data[? _area + "2F"] = _roomSet00; // 

	dm_pal_data[? _area + "30"] = _roomSet00; // 
	dm_pal_data[? _area + "31"] = _roomSet00; // 
	dm_pal_data[? _area + "32"] = _roomSet00; // 
	dm_pal_data[? _area + "33"] = _roomSet00; // 
	dm_pal_data[? _area + "34"] = _roomSet00; // 
	dm_pal_data[? _area + "35"] = _roomSet00; // 
	dm_pal_data[? _area + "36"] = _roomSet00; // 
	dm_pal_data[? _area + "37"] = _roomSet00; // 

	dm_pal_data[? _area + "38"] = _roomSet00; // 
	dm_pal_data[? _area + "39"] = _roomSet00; // 
	dm_pal_data[? _area + "3A"] = _roomSet00; // 
	dm_pal_data[? _area + "3B"] = _roomSet00; // 
	dm_pal_data[? _area + "3C"] = _roomSet00; // 
	dm_pal_data[? _area + "3D"] = _roomSet00; // 
	dm_pal_data[? _area + "3E"] = _roomSet00; // 
	dm_pal_data[? _area + "3F"] = _roomSet00; // 
	*/



	// temporary
	// addHeadersToPalettes();



	// ----------------------------------------------------------------------------
	// -----------  DEBUG  -----------------------------------------









}
