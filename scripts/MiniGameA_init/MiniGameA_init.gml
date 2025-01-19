/// @description  MiniGameA_init()
function MiniGameA_init() {

	// Mini Game A.  Target game 1


	var _i,_j,_k, _a, _idx, _val, _count, _dir, _data;
	var _x,_y;
	var _datakey;


	GO_depth_init(DEPTH_HUD);


	sub_state = ST_SUB1_PRE1;


	SND_GAME_START = get_audio_theme_track(STR_Encounter+STR_Enter);
	SND_GAME_DONE  = get_audio_theme_track(STR_Encounter+STR_Leave);

	MUS_GAME_THEME = dk_Minigame+"01";
	MUS_GAME_PLAY  = get_audio_theme_track(MUS_GAME_THEME);
	//MUS_GAME_PLAY = get_audio_theme_track(STR_Boss+"01");





	// GAME_PAGE        = xx >>8;
	// GAME_CENTER_X    = (GAME_PAGE <<8) + (g.RM_PAGE_W>>1);
	PC_START_GAME_X = x;
	// PC_START_GAME_XX = xx - g.pc.ww_;
	// PC_START_GAME_XX = GAME_CENTER_X - (PC_W>>1);
	// PC_START_GAME_XX = xx - (PC_W>>1);


	// Center sprite_index w/ minigame center. Properly positions body hb.
	//var _XOFF = -sprite_get_xoffset(sprite_index);
	//set_xy(id, x+_XOFF, y);
	update_body_hb_1a();



	GROUND_Y    =(((viewYC()>>8)+1)<<8) - ($3<<3);
	GROUND_Y    = get_ground_y(PC_START_GAME_X,GROUND_Y, -1, GROUND_Y);

	//sdm("GROUND_Y $"+hex_str(GROUND_Y));
	var              _ADD = $02;
	var              _a   = $04;
	Y_00 = GROUND_Y-(_a<<3);  _a+=_ADD; // $20
	Y_01 = GROUND_Y-(_a<<3);  _a+=_ADD; // $30
	Y_02 = GROUND_Y-(_a<<3);  _a+=_ADD; // $40
	Y_03 = GROUND_Y-(_a<<3);  _a+=_ADD; // $50
	//Y_04 = GROUND_Y - (_a <<3);  _a += _ADD; // $60
	//Y_05 = GROUND_Y - (_a <<3);  _a += _ADD; // $70
	//Y_06 = GROUND_Y - (_a <<3);  _a += _ADD; // $80
	//Y_07 = GROUND_Y - (_a <<3);  _a += _ADD; // $90
	Y_08 = GROUND_Y-(2<<3);
	Y_09 = GROUND_Y-(4<<3);



	var _DIR_RGT =   1;
	var _DIR_LFT =  -1;




	POINTS_X_OFF = $08<<3; // 
	POINTS_Y_OFF = $10<<3; // 
	//POINTS_Y_OFF = $08<<3; // 









	// ------------------------------------------------------------------------
	// ------------------------------------------------------------------------
	// ------------------------------------------------------------------------
	/*
	HSPD_0 = $00; // None
	HSPD_1 = $08; // 0.5 pixel per frame
	HSPD_2 = $10; // 1   pixel per frame
	HSPD_3 = $18; // 1.5 pixel per frame
	HSPD_4 = $20; // 2   pixel per frame
	HSPD_5 = $28; // 2.5 pixel per frame
	HSPD_6 = $30; // 3   pixel per frame
	HSPD_7 = $38; // 3.5 pixel per frame
	HSPD_8 = $40; // 4   pixel per frame
	HSPD_A = $FF; // Varying speeds 1
	HSPD_B = $FE; // Varying speeds 2

	VSPD_0 = $00; // None
	VSPD_A = $FF; // Curve down 1
	VSPD_B = $FE; // Curve down 2
	VSPD_C = $FD; // Curve up 1
	VSPD_D = $FC; // Curve up 2
	VSPD_E = $FB; // Wave 1
	VSPD_F = $FA; // Wave 2
	VSPD_G = $F9; // Wave 3
	VSPD_H = $F8; // Wave 4


	DELAY_0 = $00; // 
	DELAY_1 = $05; // 
	DELAY_2 = $0A; // 
	DELAY_3 = $10; // 
	DELAY_4 = $20; // 
	DELAY_5 = $40; // 
	DELAY_6 = $80; // 
	DELAY_7 = $C0; // 
	*/
	switch(ver)
	{
	    // ------------------------------------------------------------------------
	    // ------------------------------------------------------------------------
	    case 1:{
	    TARGET_OBJ = TargA;
	    TARGET_VER = 1;
    
	    TARGET_W        = $02<<3;
	    SPAWN_DIST_HOR  = viewW_() + (TARGET_W>>1);
    
    
	    pc_allow = PC_LOCK_ATK1|PC_LOCK_ATK2;
	    //pc_allow = PC_LOCK_ATK1|PC_LOCK_ATK2|PC_LOCK_JUMP;
	    //pc_allow = $3E;
    
	    var _difficulty=0;
    
    
	    var _SPAWN_COUNT = 30;
	    var _PROP_COUNT  = 06;
	    var _Dir_IDX     = 01;
	    var _Y_IDX       = 02;
	    var _HSPD_IDX    = 03;
	    var _Delay_IDX   = 05;
	    ds_grid_resize(dg_SEQ, 0,_PROP_COUNT);
    
	    // difficulty 1: $2,$6,$9,$A,$B
	    // difficulty 2: $4,$5,$8
	    // difficulty 3: $3,$7,$D
	    var _CASE=g.TargetGame_case; // g.TargetGame_case is for testing cases
	    if(!_CASE)
	    {
	        var _DATAKEY=STR_Target+STR_Game+STR_Order;
	        _data = f.dm_quests[?_DATAKEY];
	        if(!is_undefined( _data) 
	        &&  is_string(    _data) 
	        &&  string_length(_data) )
	        {
	            _CASE=string_copy(_data,1,2);
	            _CASE=str_hex(_CASE);
	            _data=string_copy(_data,3,string_length(_data)-2);
	             f.dm_quests[?_DATAKEY]=_data;
	        }
	        else f.dm_quests[?_DATAKEY] = val(f.dm_quests[?_DATAKEY+STR_Reset],"00");
	    }
    
	    switch(choose(_CASE))
	    {
	        // ================================================================================
	        // ------------------------------------------------------------------------
	        //case $01:{                _i=-1;
	        default:{                 _i=-1;
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $00
	        //ds_grid_set(   dg_SEQ, $00,$00, 0);        // Target inst
	        ds_grid_set(   dg_SEQ, _i,$01, _DIR_RGT); // Move right or left
	        ds_grid_set(   dg_SEQ, _i,$02, Y_09);     // Spawn y
	        ds_grid_set(   dg_SEQ, _i,$03, HSPD_1);   // hspd
	        ds_grid_set(   dg_SEQ, _i,$04, VSPD_0);   // vspd
	        ds_grid_set(   dg_SEQ, _i,$05, choose(DELAY_5,DELAY_6,DELAY_7));  // Time until next spawn
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $01
	        ds_grid_set(   dg_SEQ, _i,$01, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,$02, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,$03, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,$04, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,$05, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $02
	        ds_grid_set(   dg_SEQ, _i,$01, _DIR_RGT); // 
	        ds_grid_set(   dg_SEQ, _i,$02, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,$03, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,$04, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,$05, DELAY_6);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $03
	        ds_grid_set(   dg_SEQ, _i,$01, _DIR_RGT); // 
	        ds_grid_set(   dg_SEQ, _i,$02, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,$03, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,$04, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,$05, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $04
	        ds_grid_set(   dg_SEQ, _i,$01, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,$02, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,$03, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,$04, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,$05, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $05
	        ds_grid_set(   dg_SEQ, _i,$01, _DIR_RGT); // 
	        ds_grid_set(   dg_SEQ, _i,$02, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,$03, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,$04, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,$05, DELAY_3);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $06
	        ds_grid_set(   dg_SEQ, _i,$01, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,$02, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,$03, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,$04, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,$05, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $07
	        ds_grid_set(   dg_SEQ, _i,$01, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,$02, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,$03, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,$04, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,$05, DELAY_6);  // 
	        //                                                       // 
	        //                                                       // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $08
	        ds_grid_set(   dg_SEQ, _i,$01, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,$02, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,$03, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,$04, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,$05, DELAY_3);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $09
	        ds_grid_set(   dg_SEQ, _i,$01, _DIR_RGT); // 
	        ds_grid_set(   dg_SEQ, _i,$02, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,$03, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,$04, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,$05, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0A
	        ds_grid_set(   dg_SEQ, _i,$01, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,$02, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,$03, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,$04, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,$05, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0B
	        ds_grid_set(   dg_SEQ, _i,$01, _DIR_RGT); // 
	        ds_grid_set(   dg_SEQ, _i,$02, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,$03, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,$04, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,$05, DELAY_2);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0C
	        ds_grid_set(   dg_SEQ, _i,$01, _DIR_RGT); // 
	        ds_grid_set(   dg_SEQ, _i,$02, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,$03, HSPD_1);   // 
	        ds_grid_set(   dg_SEQ, _i,$04, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,$05, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0D
	        ds_grid_set(   dg_SEQ, _i,$01, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,$02, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,$03, HSPD_5);   // 
	        ds_grid_set(   dg_SEQ, _i,$04, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,$05, DELAY_3);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0E
	        ds_grid_set(   dg_SEQ, _i,$01, _DIR_RGT); // 
	        ds_grid_set(   dg_SEQ, _i,$02, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,$03, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,$04, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,$05, DELAY_3);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0F
	        ds_grid_set(   dg_SEQ, _i,$01, _DIR_RGT); // 
	        ds_grid_set(   dg_SEQ, _i,$02, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,$03, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,$04, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,$05, DELAY_7);  // 
	        //                                                       // 
	        //                                                       // 
	        //                                                       // 
	        //                                                       // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $10
	        ds_grid_set(   dg_SEQ, _i,$01, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,$02, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,$03, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,$04, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,$05, DELAY_3);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $11
	        ds_grid_set(   dg_SEQ, _i,$01, _DIR_RGT); // 
	        ds_grid_set(   dg_SEQ, _i,$02, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,$03, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,$04, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,$05, DELAY_2);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $12
	        ds_grid_set(   dg_SEQ, _i,$01, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,$02, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,$03, HSPD_5);   // 
	        ds_grid_set(   dg_SEQ, _i,$04, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,$05, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $13
	        ds_grid_set(   dg_SEQ, _i,$01, _DIR_RGT); // 
	        ds_grid_set(   dg_SEQ, _i,$02, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,$03, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,$04, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,$05, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $14
	        ds_grid_set(   dg_SEQ, _i,$01, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,$02, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,$03, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,$04, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,$05, DELAY_2);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $15
	        ds_grid_set(   dg_SEQ, _i,$01, _DIR_RGT); // 
	        ds_grid_set(   dg_SEQ, _i,$02, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,$03, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,$04, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,$05, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $16
	        ds_grid_set(   dg_SEQ, _i,$01, _DIR_RGT); // 
	        ds_grid_set(   dg_SEQ, _i,$02, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,$03, HSPD_5);   // 
	        ds_grid_set(   dg_SEQ, _i,$04, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,$05, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $17
	        ds_grid_set(   dg_SEQ, _i,$01, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,$02, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,$03, HSPD_1);   // 
	        ds_grid_set(   dg_SEQ, _i,$04, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,$05, DELAY_2);  // 
	        //                                                       // 
	        //                                                       // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $18
	        ds_grid_set(   dg_SEQ, _i,$01, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,$02, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,$03, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,$04, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,$05, DELAY_3);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $19
	        ds_grid_set(   dg_SEQ, _i,$01, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,$02, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,$03, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,$04, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,$05, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $1A
	        ds_grid_set(   dg_SEQ, _i,$01, _DIR_RGT); // 
	        ds_grid_set(   dg_SEQ, _i,$02, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,$03, HSPD_5);   // 
	        ds_grid_set(   dg_SEQ, _i,$04, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,$05, DELAY_6);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $1B
	        ds_grid_set(   dg_SEQ, _i,$01, _DIR_RGT); // 
	        ds_grid_set(   dg_SEQ, _i,$02, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,$03, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,$04, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,$05, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $1C
	        ds_grid_set(   dg_SEQ, _i,$01, _DIR_RGT); // 
	        ds_grid_set(   dg_SEQ, _i,$02, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,$03, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,$04, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,$05, DELAY_3);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $1D
	        ds_grid_set(   dg_SEQ, _i,$01, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,$02, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,$03, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,$04, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,$05, DELAY_2);  // 
	        //                                                       // 
	        break;}//case 1:{
        
        
	        // ================================================================================
	        // ------------------------------------------------------------------------
	        case $02:{                _i=-1; _difficulty=1;
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $00
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_7);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $01
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $02
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_6);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $03
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $04
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $05
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_5);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $06
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $07
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_1);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_6);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $08
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        //                                                       // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $09
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0A
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0B
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0C
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0D
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_5);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0E
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0F
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_7);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $10
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        //                                                       // 
	        //                                                       // 
	        //                                                       // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $11
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $12
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_1);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $13
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $14
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, $1C);   // hspd
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $15
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $16
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_5);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $17
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $18
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        //                                                       // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $19
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_1);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $1A
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_6);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $1B
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $1C
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_5);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $1D
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        break;}//case 2:{
        
        
	        // ================================================================================
	        // ------------------------------------------------------------------------
	        case $03:{                _i=-1; _difficulty=3;
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $00
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_5);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $01
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $02
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_6);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $03
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $04
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $05
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $06
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $07
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_1);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_6);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $08
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_1);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        //                                                       // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $09
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0A
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0B
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0C
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, $24);   // hspd
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0D
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0E
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_5);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0F
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_7);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $10
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        //                                                       // 
	        //                                                       // 
	        //                                                       // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $11
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $12
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, $0C);   // hspd
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $13
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $14
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_5);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $15
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $16
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_1);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $17
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $18
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        //                                                       // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $19
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $1A
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_6);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $1B
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $1C
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $1D
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_5);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        break;}//case 3:{
        
        
	        // ================================================================================
	        // ------------------------------------------------------------------------
	        case $04:{                _i=-1; _difficulty=2;
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $00
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_5);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_7);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $01
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_5);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $02
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_6);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $03
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $04
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $05
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $06
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $07
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, $0C);   // hspd
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_6);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $08
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_1);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        //                                                       // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $09
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0A
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0B
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0C
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0D
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0E
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0F
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, $1C);   // hspd
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_7);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $10
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        //                                                       // 
	        //                                                       // 
	        //                                                       // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $11
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $12
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $13
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_5);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $14
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $15
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $16
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_1);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $17
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $18
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_5);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        //                                                       // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $19
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $1A
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_6);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $1B
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $1C
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $1D
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        break;}//case 4:{
        
        
	        // ================================================================================
	        // ------------------------------------------------------------------------
	        case $05:{                _i=-1; _difficulty=2;
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $00
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_6);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $01
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $02
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_5);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_6);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $03
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, $24);   // hspd
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $04
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $05
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $06
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $07
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_6);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $08
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        //                                                       // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $09
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0A
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0B
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0C
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_5);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0D
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0E
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, $1C);   // hspd
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0F
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_7);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $10
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        //                                                       // 
	        //                                                       // 
	        //                                                       // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $11
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $12
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $13
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $14
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_1);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $15
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_1);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $16
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $17
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $18
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        //                                                       // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $19
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $1A
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_5);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_6);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $1B
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $1C
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $1D
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        break;}//case 5:{
        
        
	        // ================================================================================
	        // ------------------------------------------------------------------------
	        case $06:{                _i=-1; _difficulty=1;
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $00
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_6);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $01
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $02
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_6);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $03
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $04
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $05
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, $24);   // hspd
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $06
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $07
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_6);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $08
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        //                                                       // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $09
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_1);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0A
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0B
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0C
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_5);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0D
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0E
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0F
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_7);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $10
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        //                                                       // 
	        //                                                       // 
	        //                                                       // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $11
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $12
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $13
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $14
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_1);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $15
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $16
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $17
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $18
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        //                                                       // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $19
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_1);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $1A
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_6);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $1B
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $1C
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $1D
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        break;}//case 6:{
        
        
	        // ================================================================================
	        // ------------------------------------------------------------------------
	        case $07:{                _i=-1; _difficulty=3;
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $00
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_1);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_6);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $01
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_1);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $02
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_6);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $03
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $04
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, $14);   // hspd
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $05
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_1);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $06
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $07
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_6);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $08
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        //                                                       // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $09
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_5);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0A
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0B
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_5);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0C
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0D
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0E
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, $24);   // hspd
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0F
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_7);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $10
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        //                                                       // 
	        //                                                       // 
	        //                                                       // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $11
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $12
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_5);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $13
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $14
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $15
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $16
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $17
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_5);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $18
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        //                                                       // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $19
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, $1C);   // hspd
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $1A
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_6);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $1B
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, $0C);   // hspd
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $1C
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $1D
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        break;}//case 7:{
        
        
	        // ================================================================================
	        // ------------------------------------------------------------------------
	        case $08:{                _i=-1; _difficulty=2;
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $00
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_7);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $01
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $02
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, $0C);   // hspd
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_6);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $03
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $04
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4+$4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $05
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_1);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $06
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $07
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_6);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $08
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        //                                                       // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $09
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0A
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0B
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0C
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0D
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0E
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0F
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_7);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $10
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_5);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        //                                                       // 
	        //                                                       // 
	        //                                                       // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $11
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $12
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $13
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_5);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $14
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $15
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_5);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $16
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $17
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_5);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $18
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        //                                                       // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $19
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $1A
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, $0C);   // hspd
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_6);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $1B
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3+$4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $1C
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, $14);   // hspd
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $1D
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_5);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        break;}//case 8:{
        
        
	        // ================================================================================
	        // ------------------------------------------------------------------------
	        case $09:{                _i=-1; _difficulty=1;
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $00
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_6);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $01
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $02
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_6);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $03
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_5);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $04
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $05
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_5);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $06
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $07
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, $1C);   // hspd
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_6);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $08
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        //                                                       // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $09
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_1);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0A
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0B
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0C
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0D
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0E
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0F
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_7);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $10
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_5);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        //                                                       // 
	        //                                                       // 
	        //                                                       // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $11
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $12
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $13
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_1);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $14
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $15
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $16
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $17
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_5);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $18
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        //                                                       // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $19
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $1A
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_6);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $1B
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $1C
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $1D
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_5);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        break;}//case 9:{
        
        
	        // ================================================================================
	        // ------------------------------------------------------------------------
	        case $0A:{                _i=-1; _difficulty=1;
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $00
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_6);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $01
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_1);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $02
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_6);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $03
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $04
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $05
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $06
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $07
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_6);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $08
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_5);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        //                                                       // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $09
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0A
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_5);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0B
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0C
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0D
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_5);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0E
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_5);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0F
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_7);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $10
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        //                                                       // 
	        //                                                       // 
	        //                                                       // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $11
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $12
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $13
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $14
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $15
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_1);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $16
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $17
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $18
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_1);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        //                                                       // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $19
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $1A
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_6);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $1B
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $1C
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $1D
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        break;}//case 10:{
        
        
	        // ================================================================================
	        // ------------------------------------------------------------------------
	        case $0B:{                _i=-1; _difficulty=1;
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $00
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_6);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $01
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $02
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_6);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $03
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $04
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_5);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $05
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $06
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $07
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, $1C);   // hspd
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_6);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $08
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_5);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        //                                                       // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $09
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0A
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0B
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, $1C);   // hspd
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0C
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0D
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_5);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0E
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0F
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_1);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_7);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $10
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        //                                                       // 
	        //                                                       // 
	        //                                                       // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $11
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $12
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $13
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, $14);   // hspd
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $14
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_1);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $15
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $16
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $17
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, $1C);   // hspd
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $18
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        //                                                       // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $19
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_1);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $1A
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_6);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $1B
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $1C
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_5);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $1D
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        break;}//case 11:{
        
        
	        // ================================================================================
	        // ------------------------------------------------------------------------
	        case $0C:{                _i=-1; _difficulty=2;
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $00
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $01
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $02
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_6);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $03
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_1);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $04
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $05
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $06
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_5);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $07
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, $24);   // hspd
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_6);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $08
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        //                                                       // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $09
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_5);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0A
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0B
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_5);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0C
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0D
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0E
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0F
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_7);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $10
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        //                                                       // 
	        //                                                       // 
	        //                                                       // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $11
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $12
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, $24);   // hspd
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $13
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $14
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $15
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, $14);   // hspd
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $16
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_1);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $17
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $18
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        //                                                       // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $19
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $1A
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_6);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $1B
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_1);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $1C
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $1D
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        break;}//case 12:{
        
        
	        // ================================================================================
	        // ------------------------------------------------------------------------
	        case $0D:{                _i=-1; _difficulty=3;
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $00
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_7);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $01
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $02
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_5);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_6);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $03
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, $24);   // hspd
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $04
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $05
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $06
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, $1C);   // hspd
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $07
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_6);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $08
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        //                                                       // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $09
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0A
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0B
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0C
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0D
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_5);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0E
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $0F
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, $14);   // hspd
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_7);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $10
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_1);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        //                                                       // 
	        //                                                       // 
	        //                                                       // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $11
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $12
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $13
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $14
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $15
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $16
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $17
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_1);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $18
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, $0C);   // hspd
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        //                                                       // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $19
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $1A
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $1B
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $1C
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // direction
	        ds_grid_set(   dg_SEQ, _i,2, Y_09);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // 
	        //                                                       // 
	        ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $1D
	        ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // 
	        ds_grid_set(   dg_SEQ, _i,2, Y_08);     // 
	        ds_grid_set(   dg_SEQ, _i,3, HSPD_5);   // 
	        ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // 
	        ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // 
	        //                                                       // 
	        break;}//case 13:{
        
        
	        // ================================================================================
	        // ------------------------------------------------------------------------
	        case $0E:{                 _i=-1; // Difficulty: 
        
	        break;}//case 14:{
	    }//switch(case num)
    
	    Targets_COUNT = ds_grid_width(dg_SEQ);
	    POINTS_MAX    = Targets_COUNT;
    
    
    
    
	    var _idx1;
	    var _PAD = 4;
	    var _COUNT0 = 8;
	    var _COUNT1 = Targets_COUNT div _COUNT0;
	    var _COUNT2 = Targets_COUNT mod _COUNT0;
	    var _dl_RAND = ds_list_create();
	    var _dl_list = ds_list_create();
    
    
    
	    if (_CASE==1)
	    {
	        if (1)
	        { // Each game attempt will be randomized.
	            for(_i=0; _i<_PROP_COUNT; _i++)
	            {
	                if (_i==_Delay_IDX) continue;
                
	                for(_j=0; _j<_SPAWN_COUNT; _j++)
	                {   ds_list_add(_dl_RAND, dg_SEQ[#_j,_i]);  }
	                ds_list_shuffle(_dl_RAND);
                
	                for(_j=0; _j<_SPAWN_COUNT; _j++)
	                {   dg_SEQ[#_j,_i] = _dl_RAND[|_j];  }
	                ds_list_clear(_dl_RAND);
	            }
	        }
        
        
	        if (1)
	        {   // Attemping to make game less difficult
	            for(_i=0; _i<Targets_COUNT; _i++)
	            {
	                dg_SEQ[#_i,_Delay_IDX] = max(dg_SEQ[#_i,_Delay_IDX], DELAY_4); // remove any delay smaller than DELAY_4
	            }
	        }
        
        
	        if (1)
	        {   // if 2 next to each other are same speed and dir, adjust one speed for variance
	            _val=$4;
	            for(_i=1; _i<Targets_COUNT; _i++)
	            {
	                if (dg_SEQ[#_i,_Dir_IDX]  == dg_SEQ[#_i-1,_Dir_IDX] 
	                &&  dg_SEQ[#_i,_HSPD_IDX] == dg_SEQ[#_i-1,_HSPD_IDX] )
	                {
	                    dg_SEQ[#_i,_HSPD_IDX] += _val*sign_(irandom(1));
	                    dg_SEQ[#_i,_HSPD_IDX]  = clamp(dg_SEQ[#_i,_HSPD_IDX], HSPD_1+_val, HSPD_5-_val);
	                }
	            }
            
	            // if _MAX in a row are same dir & y, adjust one dir for variance
	            var _MAX = $4;
	            _count = 0;
	            _dir   = dg_SEQ[#0,_Dir_IDX];
	            _y     = dg_SEQ[#0,_Y_IDX];
	            for(_i=1; _i<Targets_COUNT; _i++)
	            {
	                if (dg_SEQ[#_i,_Dir_IDX] == _dir 
	                &&  dg_SEQ[#_i,_Y_IDX]   == _y )
	                {
	                        _count++;
	                    if (_count==_MAX)
	                    {
	                        _count=0;
                        
	                        _i -= _MAX>>1;
	                        dg_SEQ[#_i,_Dir_IDX] = -dg_SEQ[#_i,_Dir_IDX];
                        
	                        _i++;
	                        _dir = dg_SEQ[#_i,_Dir_IDX];
	                        _y   = dg_SEQ[#_i,_Y_IDX];
	                    }
	                }
	            }
	        }
        
        
	        if (1)
	        {   // 
	            if (dg_SEQ[#Targets_COUNT-1,_HSPD_IDX]==HSPD_1)
	            {   dg_SEQ[#Targets_COUNT-1,_HSPD_IDX] = choose(HSPD_3,HSPD_4,HSPD_5);  }
	        }
        
        
        
	        if (0)
	        {   // Attemping to make game less difficult
	            // Direction -------------------------------------------------
	            ds_list_clear(_dl_RAND);
	            ds_list_clear(_dl_list);
	            for(_i=0; _i<_COUNT1; _i++)
	            {
	                _count  = _COUNT0>>1;
	                _count += irandom(2)*sign_(irandom(1));
	                for(_j=0; _j<_COUNT0; _j++)
	                {   ds_list_add(_dl_RAND, sign_(_j<_count));  }
	                ds_list_shuffle(_dl_RAND);
                
	                _idx = _i*_COUNT0;
	                for(_j=0; _j<_COUNT0; _j++) dg_SEQ[#_idx+_j,_Dir_IDX] = _dl_RAND[|_j];
	                ds_list_clear(_dl_RAND);
	            }
            
	            ds_list_clear(  _dl_RAND);
	            for(_i=0; _i<_COUNT2; _i++)
	            {   ds_list_add(_dl_RAND, sign_(_i<_COUNT2>>1));  }
	            ds_list_shuffle(_dl_RAND);
	            _idx=Targets_COUNT-_COUNT2;
	            for(_i=0; _i<_COUNT2; _i++) dg_SEQ[#_idx+_i,_Dir_IDX] = _dl_RAND[|_i];
            
            
            
            
	            // Delay -------------------------------------------------
	            var _DELAY1 = $40;
	            ds_list_clear(_dl_RAND);
	            ds_list_clear(_dl_list);
	            ds_list_add(  _dl_list, _DELAY1,_DELAY1-$18,_DELAY1-$08);
	            for(_i=0; _i<Targets_COUNT; _i++) dg_SEQ[#_i,_Delay_IDX]=_dl_list[|0];
            
	            for(_i=0; _i<_COUNT1; _i++)
	            {
	                _count  = 4 - !irandom($2);
	                for(_j=0; _j<_count; _j++) ds_list_add(_dl_RAND, _dl_list[|0]);
	                _count  = 1;
	                _count += (!!irandom($5));
	                _count +=   !irandom($2F);
	                for(_j=0; _j<_count; _j++) ds_list_add(_dl_RAND, _dl_list[|2]);
	                _count  = _COUNT0-ds_list_size(_dl_RAND);
	                for(_j=0; _j<_count; _j++) ds_list_add(_dl_RAND, _dl_list[|1]-(irandom(1)<<3));
	                ds_list_shuffle(_dl_RAND);
                
	                _idx = _i*_COUNT0;
	                for(_j=0; _j<_COUNT0; _j++) dg_SEQ[#_idx+_j,_Delay_IDX] = _dl_RAND[|_j];
	                ds_list_clear(_dl_RAND);
	            }
            
	            for(_i=0; _i<Targets_COUNT; _i++) dg_SEQ[#_i,_Delay_IDX]=$40;
	            _i  = Targets_COUNT>>1;
	            _i += irandom(5)*sign_(irandom(1));
	            dg_SEQ[#_i,_Delay_IDX] = $80; // Long delay near middle
	            //dg_SEQ[#_i,_Delay_IDX] = $C0; // Long delay near middle
            
            
            
            
	            // HSPD -------------------------------------------------
	            ds_list_clear(_dl_RAND);
	            ds_list_clear(_dl_list);
	            ds_list_add(  _dl_list, HSPD_4,HSPD_3,HSPD_5);
	            for(_i=0; _i<Targets_COUNT; _i++) dg_SEQ[#_i,_HSPD_IDX]=_dl_list[|0];
            
	            for(_i=0; _i<_COUNT1; _i++)
	            {
	                _count  = 4 - !irandom($4);
	                for(_j=0; _j<_count; _j++) ds_list_add(_dl_RAND, _dl_list[|0]);
	                _count  = 1;
	                _count += (!!irandom($5));
	                _count +=   !irandom($2F);
	                for(_j=0; _j<_count; _j++) ds_list_add(_dl_RAND, _dl_list[|2]);
	                _count  = _COUNT0-ds_list_size(_dl_RAND);
	                for(_j=0; _j<_count; _j++) ds_list_add(_dl_RAND, _dl_list[|1]);
	                ds_list_shuffle(_dl_RAND);
                
	                _idx = _i*_COUNT0;
	                for(_j=0; _j<_COUNT0; _j++)
	                {
	                        _idx1 = _idx+_j;
	                    if (_idx1 
	                    &&   dg_SEQ[#_idx1-1,_HSPD_IDX] == _dl_RAND[|_j] )
	                    {    dg_SEQ[#_idx1,  _HSPD_IDX]  = _dl_RAND[|_j] + ($4*sign_(irandom(1)));  }
	                    else dg_SEQ[#_idx1,  _HSPD_IDX]  = _dl_RAND[|_j];
	                }
	                ds_list_clear(_dl_RAND);
	            }
            
            
	            _count  = (Targets_COUNT>>1) - (_PAD<<1);
	            for(_i=0; _i<2; _i++)
	            {
	                _idx  = ((Targets_COUNT>>1)*_i) + _PAD
	                _idx += irandom(_count-1);
	                dg_SEQ[#_idx,_HSPD_IDX] = HSPD_2;
	            }
            
            
            
	            // Spawn Y -------------------------------------------------
	            ds_list_clear(_dl_RAND);
	            ds_list_clear(_dl_list);
	            ds_list_add(  _dl_list, Y_08,Y_09);
	            for(_i=0; _i<_COUNT1; _i++)
	            {
	                _count  = _COUNT0>>1;
	                _count += irandom(2)*sign_(irandom(1));
	                for(_j=0; _j<_COUNT0; _j++)
	                {   ds_list_add(_dl_RAND, _dl_list[|_j<_count]);  }
	                ds_list_shuffle(_dl_RAND);
                
	                _idx = _i*_COUNT0;
	                for(_j=0; _j<_COUNT0; _j++) dg_SEQ[#_idx+_j,_Y_IDX] = _dl_RAND[|_j];
	                ds_list_clear(_dl_RAND);
	            }
            
	            ds_list_clear(  _dl_RAND);
	            for(_i=0; _i<_COUNT2; _i++)
	            {   ds_list_add(_dl_RAND, _dl_list[|_i<_COUNT2>>1]);  }
	            ds_list_shuffle(_dl_RAND);
	            _idx=Targets_COUNT-_COUNT2;
	            for(_i=0; _i<_COUNT2; _i++) dg_SEQ[#_idx+_i,_Y_IDX] = _dl_RAND[|_i];
	        }
	    }
    
    
    
	    if (_CASE) sdm( "case $"+hex_str(_CASE)+", _difficulty "+string(_difficulty));
	    if (_CASE==1)
	    {
	        var _INDENT=string_repeat("    ",2);
	        var _COMMENT=_INDENT+"//                                                       // ";
	        sdm(_INDENT+"case $"+hex_str(_CASE)+":{");
	        for(_i=0; _i<Targets_COUNT; _i++){
	            sdm(_INDENT+"ds_grid_resize(dg_SEQ, (++_i)+1,_PROP_COUNT); // $"+hex_str(_i));
	            // ----------------------------------------------------------------
	            switch(dg_SEQ[#_i,1]){
	            case _DIR_RGT:{ sdm(_INDENT+"ds_grid_set(   dg_SEQ, _i,1, _DIR_RGT); // "); break;}
	            case _DIR_LFT:{ sdm(_INDENT+"ds_grid_set(   dg_SEQ, _i,1, _DIR_LFT); // "); break;}
	            }
	            // ----------------------------------------------------------------
	            switch(dg_SEQ[#_i,2]){
	            default:  {     sdm(_INDENT+"ds_grid_set(   dg_SEQ, _i,2, $"+hex_str(dg_SEQ[#_i,2])+");     // y"); break;}
	            case Y_08:{     sdm(_INDENT+"ds_grid_set(   dg_SEQ, _i,2, Y_08);     // "); break;}
	            case Y_09:{     sdm(_INDENT+"ds_grid_set(   dg_SEQ, _i,2, Y_09);     // "); break;}
	            }
	            // ----------------------------------------------------------------
	            switch(dg_SEQ[#_i,3]){
	            default:    {   sdm(_INDENT+"ds_grid_set(   dg_SEQ, _i,3, $"+hex_str(dg_SEQ[#_i,3])+");   // hspd"); break;}
	            case HSPD_1:{   sdm(_INDENT+"ds_grid_set(   dg_SEQ, _i,3, HSPD_1);   // "); break;}
	            case HSPD_2:{   sdm(_INDENT+"ds_grid_set(   dg_SEQ, _i,3, HSPD_2);   // "); break;}
	            case HSPD_3:{   sdm(_INDENT+"ds_grid_set(   dg_SEQ, _i,3, HSPD_3);   // "); break;}
	            case HSPD_4:{   sdm(_INDENT+"ds_grid_set(   dg_SEQ, _i,3, HSPD_4);   // "); break;}
	            case HSPD_5:{   sdm(_INDENT+"ds_grid_set(   dg_SEQ, _i,3, HSPD_5);   // "); break;}
	            case HSPD_6:{   sdm(_INDENT+"ds_grid_set(   dg_SEQ, _i,3, HSPD_6);   // "); break;}
	            case HSPD_7:{   sdm(_INDENT+"ds_grid_set(   dg_SEQ, _i,3, HSPD_7);   // "); break;}
	            case HSPD_8:{   sdm(_INDENT+"ds_grid_set(   dg_SEQ, _i,3, HSPD_8);   // "); break;}
	            case HSPD_A:{   sdm(_INDENT+"ds_grid_set(   dg_SEQ, _i,3, HSPD_A);   // "); break;}
	            case HSPD_B:{   sdm(_INDENT+"ds_grid_set(   dg_SEQ, _i,3, HSPD_B);   // "); break;}
	            }
	            // ----------------------------------------------------------------
	            switch(dg_SEQ[#_i,4]){
	            default:    {   sdm(_INDENT+"ds_grid_set(   dg_SEQ, _i,4, $"+hex_str(dg_SEQ[#_i,4])+");   // vspd"); break;}
	            case VSPD_0:{   sdm(_INDENT+"ds_grid_set(   dg_SEQ, _i,4, VSPD_0);   // "); break;}
	            case VSPD_A:{   sdm(_INDENT+"ds_grid_set(   dg_SEQ, _i,4, VSPD_A);   // "); break;}
	            case VSPD_B:{   sdm(_INDENT+"ds_grid_set(   dg_SEQ, _i,4, VSPD_B);   // "); break;}
	            case VSPD_C:{   sdm(_INDENT+"ds_grid_set(   dg_SEQ, _i,4, VSPD_C);   // "); break;}
	            case VSPD_D:{   sdm(_INDENT+"ds_grid_set(   dg_SEQ, _i,4, VSPD_D);   // "); break;}
	            case VSPD_E:{   sdm(_INDENT+"ds_grid_set(   dg_SEQ, _i,4, VSPD_E);   // "); break;}
	            case VSPD_F:{   sdm(_INDENT+"ds_grid_set(   dg_SEQ, _i,4, VSPD_F);   // "); break;}
	            case VSPD_G:{   sdm(_INDENT+"ds_grid_set(   dg_SEQ, _i,4, VSPD_G);   // "); break;}
	            case VSPD_H:{   sdm(_INDENT+"ds_grid_set(   dg_SEQ, _i,4, VSPD_H);   // "); break;}
	            }
	            // ----------------------------------------------------------------
	            switch(dg_SEQ[#_i,5]){
	            default:     {  sdm(_INDENT+"ds_grid_set(   dg_SEQ, _i,5, $"+hex_str(dg_SEQ[#_i,5])+");   // delay"); break;}
	            case DELAY_0:{  sdm(_INDENT+"ds_grid_set(   dg_SEQ, _i,5, DELAY_0);  // "); break;}
	            case DELAY_1:{  sdm(_INDENT+"ds_grid_set(   dg_SEQ, _i,5, DELAY_1);  // "); break;}
	            case DELAY_2:{  sdm(_INDENT+"ds_grid_set(   dg_SEQ, _i,5, DELAY_2);  // "); break;}
	            case DELAY_3:{  sdm(_INDENT+"ds_grid_set(   dg_SEQ, _i,5, DELAY_3);  // "); break;}
	            case DELAY_4:{  sdm(_INDENT+"ds_grid_set(   dg_SEQ, _i,5, DELAY_4);  // "); break;}
	            case DELAY_5:{  sdm(_INDENT+"ds_grid_set(   dg_SEQ, _i,5, DELAY_5);  // "); break;}
	            case DELAY_6:{  sdm(_INDENT+"ds_grid_set(   dg_SEQ, _i,5, DELAY_6);  // "); break;}
	            case DELAY_7:{  sdm(_INDENT+"ds_grid_set(   dg_SEQ, _i,5, DELAY_7);  // "); break;}
	            }
	            // ----------------------------------------------------------------
	            sdm(_COMMENT);
	            if (_i && !(_i&$7)){sdm(_COMMENT);sdm(_COMMENT);}
	            if (_i && !(_i&$F)){sdm(_COMMENT);sdm(_COMMENT);}
	        }
	        sdm(_INDENT+"break;}//case 1:{");
	    }
    
    
	    ds_list_destroy(_dl_RAND); _dl_RAND=undefined;
	    ds_list_destroy(_dl_list); _dl_list=undefined;
	    break;}
    
    
    
    
    
    
    
    
	    // ------------------------------------------------------------------------
	    // ------------------------------------------------------------------------
	    case 2:{
	    TARGET_OBJ = TargA;
	    TARGET_VER = 2;
    
    
	    pc_allow = $13E;
    
    
    
	    ds_grid_resize(dg_SEQ, $20, $06);
	    ds_grid_clear( dg_SEQ, 0);
    
    
	    POINTS_MAX = ds_grid_width(dg_SEQ);
    
	    // var _Y_00 = $D8;
	    var _X_00 = $00;
	    var _X_01 = $01;
	    var _X_02 = $02;
	    var _X_03 = $03;
	    var _X_04 = $04;
	    var _X_05 = $05; // body of water center
	    var _X_06 = $06;
	    var _X_07 = $07;
	    var _X_08 = $08;
	    var _X_09 = $09;
	    var _X_0A = $0A;
    
	    var _VSPD_A = $C0;
    
    
	    // ds_grid_set(dg_SEQ, $00,$00, 0);        // Target inst
	    ds_grid_set(dg_SEQ, $00,$01, _DIR_RGT); // Spawn right or left
	    ds_grid_set(dg_SEQ, $00,$02, _X_02);    // Spawn x
	    ds_grid_set(dg_SEQ, $00,$03, HSPD_0);   // hspd
	    ds_grid_set(dg_SEQ, $00,$04, _VSPD_A);  // vspd
	    ds_grid_set(dg_SEQ, $00,$05, DELAY_7);  // Time until next spawn
	    //                                                       // 
	    ds_grid_set(dg_SEQ, $01,$01, _DIR_LFT); // 
	    ds_grid_set(dg_SEQ, $01,$02, _X_02);    // 
	    ds_grid_set(dg_SEQ, $01,$03, HSPD_0);   // 
	    ds_grid_set(dg_SEQ, $01,$04, _VSPD_A);  // 
	    ds_grid_set(dg_SEQ, $01,$05, DELAY_5);  // 
	    //                                                       // 
	    ds_grid_set(dg_SEQ, $02,$01, _DIR_RGT); // 
	    ds_grid_set(dg_SEQ, $02,$02, _X_02);    // 
	    ds_grid_set(dg_SEQ, $02,$03, HSPD_0);   // 
	    ds_grid_set(dg_SEQ, $02,$04, _VSPD_A);  // 
	    ds_grid_set(dg_SEQ, $02,$05, DELAY_6);  // 
	    //                                                       // 
	    ds_grid_set(dg_SEQ, $03,$01, _DIR_RGT); // 
	    ds_grid_set(dg_SEQ, $03,$02, _X_02);    // 
	    ds_grid_set(dg_SEQ, $03,$03, HSPD_0);   // 
	    ds_grid_set(dg_SEQ, $03,$04, _VSPD_A);  // 
	    ds_grid_set(dg_SEQ, $03,$05, DELAY_4);  // 
	    //                                                       // 
	    ds_grid_set(dg_SEQ, $04,$01, _DIR_LFT); // 
	    ds_grid_set(dg_SEQ, $04,$02, _X_02);    // 
	    ds_grid_set(dg_SEQ, $04,$03, HSPD_0);   // 
	    ds_grid_set(dg_SEQ, $04,$04, _VSPD_A);  // 
	    ds_grid_set(dg_SEQ, $04,$05, DELAY_5);  // 
	    //                                                       // 
	    ds_grid_set(dg_SEQ, $05,$01, _DIR_RGT); // 
	    ds_grid_set(dg_SEQ, $05,$02, _X_02);    // 
	    ds_grid_set(dg_SEQ, $05,$03, HSPD_0);   // 
	    ds_grid_set(dg_SEQ, $05,$04, _VSPD_A);  // 
	    ds_grid_set(dg_SEQ, $05,$05, DELAY_3);  // 
	    //                                                       // 
	    ds_grid_set(dg_SEQ, $06,$01, _DIR_LFT); // 
	    ds_grid_set(dg_SEQ, $06,$02, _X_02);    // 
	    ds_grid_set(dg_SEQ, $06,$03, HSPD_0);   // 
	    ds_grid_set(dg_SEQ, $06,$04, _VSPD_A);  // 
	    ds_grid_set(dg_SEQ, $06,$05, DELAY_4);  // 
	    //                                                       // 
	    ds_grid_set(dg_SEQ, $07,$01, _DIR_LFT); // 
	    ds_grid_set(dg_SEQ, $07,$02, _X_02);    // 
	    ds_grid_set(dg_SEQ, $07,$03, HSPD_0);   // 
	    ds_grid_set(dg_SEQ, $07,$04, _VSPD_A);  // 
	    ds_grid_set(dg_SEQ, $07,$05, DELAY_6);  // 
	    //                                                       // 
	    //                                                       // 
	    //                                                       // 
	    ds_grid_set(dg_SEQ, $08,$01, _DIR_LFT); // 
	    ds_grid_set(dg_SEQ, $08,$02, _X_02);    // 
	    ds_grid_set(dg_SEQ, $08,$03, HSPD_0);   // 
	    ds_grid_set(dg_SEQ, $08,$04, _VSPD_A);  // 
	    ds_grid_set(dg_SEQ, $08,$05, DELAY_3);  // 
	    //                                                       // 
	    ds_grid_set(dg_SEQ, $09,$01, _DIR_RGT); // 
	    ds_grid_set(dg_SEQ, $09,$02, _X_02);    // 
	    ds_grid_set(dg_SEQ, $09,$03, HSPD_0);   // 
	    ds_grid_set(dg_SEQ, $09,$04, _VSPD_A);  // 
	    ds_grid_set(dg_SEQ, $09,$05, DELAY_5);  // 
	    //                                                       // 
	    ds_grid_set(dg_SEQ, $0A,$01, _DIR_LFT); // 
	    ds_grid_set(dg_SEQ, $0A,$02, _X_02);    // 
	    ds_grid_set(dg_SEQ, $0A,$03, HSPD_0);   // 
	    ds_grid_set(dg_SEQ, $0A,$04, _VSPD_A);  // 
	    ds_grid_set(dg_SEQ, $0A,$05, DELAY_4);  // 
	    //                                                       // 
	    ds_grid_set(dg_SEQ, $0B,$01, _DIR_RGT); // 
	    ds_grid_set(dg_SEQ, $0B,$02, _X_02);    // 
	    ds_grid_set(dg_SEQ, $0B,$03, HSPD_0);   // 
	    ds_grid_set(dg_SEQ, $0B,$04, _VSPD_A);  // 
	    ds_grid_set(dg_SEQ, $0B,$05, DELAY_2);  // 
	    //                                                       // 
	    ds_grid_set(dg_SEQ, $0C,$01, _DIR_RGT); // 
	    ds_grid_set(dg_SEQ, $0C,$02, _X_02);    // 
	    ds_grid_set(dg_SEQ, $0C,$03, HSPD_0);   // 
	    ds_grid_set(dg_SEQ, $0C,$04, _VSPD_A);  // 
	    ds_grid_set(dg_SEQ, $0C,$05, DELAY_4);  // 
	    //                                                       // 
	    ds_grid_set(dg_SEQ, $0D,$01, _DIR_LFT); // 
	    ds_grid_set(dg_SEQ, $0D,$02, _X_02);    // 
	    ds_grid_set(dg_SEQ, $0D,$03, HSPD_0);   // 
	    ds_grid_set(dg_SEQ, $0D,$04, _VSPD_A);  // 
	    ds_grid_set(dg_SEQ, $0D,$05, DELAY_3);  // 
	    //                                                       // 
	    ds_grid_set(dg_SEQ, $0E,$01, _DIR_RGT); // 
	    ds_grid_set(dg_SEQ, $0E,$02, _X_02);    // 
	    ds_grid_set(dg_SEQ, $0E,$03, HSPD_0);   // 
	    ds_grid_set(dg_SEQ, $0E,$04, _VSPD_A);  // 
	    ds_grid_set(dg_SEQ, $0E,$05, DELAY_3);  // 
	    //                                                       // 
	    ds_grid_set(dg_SEQ, $0F,$01, _DIR_RGT); // 
	    ds_grid_set(dg_SEQ, $0F,$02, _X_02);    // 
	    ds_grid_set(dg_SEQ, $0F,$03, HSPD_0);   // 
	    ds_grid_set(dg_SEQ, $0F,$04, _VSPD_A);  // 
	    ds_grid_set(dg_SEQ, $0F,$05, DELAY_7);  // 
	    //                                                       // 
	    //                                                       // 
	    //                                                       // 
	    //                                                       // 
	    //                                                       // 
	    ds_grid_set(dg_SEQ, $10,$01, _DIR_LFT); // 
	    ds_grid_set(dg_SEQ, $10,$02, _X_02);    // 
	    ds_grid_set(dg_SEQ, $10,$03, HSPD_0);   // 
	    ds_grid_set(dg_SEQ, $10,$04, _VSPD_A);  // 
	    ds_grid_set(dg_SEQ, $10,$05, DELAY_3);  // 
	    //                                                       // 
	    ds_grid_set(dg_SEQ, $11,$01, _DIR_LFT); // 
	    ds_grid_set(dg_SEQ, $11,$02, _X_02);    // 
	    ds_grid_set(dg_SEQ, $11,$03, HSPD_0);   // 
	    ds_grid_set(dg_SEQ, $11,$04, _VSPD_A);  // 
	    ds_grid_set(dg_SEQ, $11,$05, DELAY_3);  // 
	    //                                                       // 
	    ds_grid_set(dg_SEQ, $12,$01, _DIR_RGT); // 
	    ds_grid_set(dg_SEQ, $12,$02, _X_02);    // 
	    ds_grid_set(dg_SEQ, $12,$03, HSPD_0);   // 
	    ds_grid_set(dg_SEQ, $12,$04, _VSPD_A);  // 
	    ds_grid_set(dg_SEQ, $12,$05, DELAY_1);  // 
	    //                                                       // 
	    ds_grid_set(dg_SEQ, $13,$01, _DIR_LFT); // 
	    ds_grid_set(dg_SEQ, $13,$02, _X_02);    // 
	    ds_grid_set(dg_SEQ, $13,$03, HSPD_0);   // 
	    ds_grid_set(dg_SEQ, $13,$04, _VSPD_A);  // 
	    ds_grid_set(dg_SEQ, $13,$05, DELAY_2);  // 
	    //                                                       // 
	    ds_grid_set(dg_SEQ, $14,$01, _DIR_RGT); // 
	    ds_grid_set(dg_SEQ, $14,$02, _X_02);    // 
	    ds_grid_set(dg_SEQ, $14,$03, HSPD_0);   // 
	    ds_grid_set(dg_SEQ, $14,$04, _VSPD_A);  // 
	    ds_grid_set(dg_SEQ, $14,$05, DELAY_4);  // 
	    //                                                       // 
	    ds_grid_set(dg_SEQ, $15,$01, _DIR_LFT); // 
	    ds_grid_set(dg_SEQ, $15,$02, _X_02);    // 
	    ds_grid_set(dg_SEQ, $15,$03, HSPD_0);   // 
	    ds_grid_set(dg_SEQ, $15,$04, _VSPD_A);  // 
	    ds_grid_set(dg_SEQ, $15,$05, DELAY_2);  // 
	    //                                                       // 
	    ds_grid_set(dg_SEQ, $16,$01, _DIR_RGT); // 
	    ds_grid_set(dg_SEQ, $16,$02, _X_02);    // 
	    ds_grid_set(dg_SEQ, $16,$03, HSPD_0);   // 
	    ds_grid_set(dg_SEQ, $16,$04, _VSPD_A);  // 
	    ds_grid_set(dg_SEQ, $16,$05, DELAY_1);  // 
	    //                                                       // 
	    ds_grid_set(dg_SEQ, $17,$01, _DIR_RGT); // 
	    ds_grid_set(dg_SEQ, $17,$02, _X_02);    // 
	    ds_grid_set(dg_SEQ, $17,$03, HSPD_0);   // 
	    ds_grid_set(dg_SEQ, $17,$04, _VSPD_A);  // 
	    ds_grid_set(dg_SEQ, $17,$05, DELAY_5);  // 
	    //                                                       // 
	    //                                                       // 
	    //                                                       // 
	    ds_grid_set(dg_SEQ, $18,$01, _DIR_LFT); // 
	    ds_grid_set(dg_SEQ, $18,$02, _X_02);    // 
	    ds_grid_set(dg_SEQ, $18,$03, HSPD_0);   // 
	    ds_grid_set(dg_SEQ, $18,$04, _VSPD_A);  // 
	    ds_grid_set(dg_SEQ, $18,$05, DELAY_2);  // 
	    //                                                       // 
	    ds_grid_set(dg_SEQ, $19,$01, _DIR_LFT); // 
	    ds_grid_set(dg_SEQ, $19,$02, _X_02);    // 
	    ds_grid_set(dg_SEQ, $19,$03, HSPD_0);   // 
	    ds_grid_set(dg_SEQ, $19,$04, _VSPD_A);  // 
	    ds_grid_set(dg_SEQ, $19,$05, DELAY_3);  // 
	    //                                                       // 
	    ds_grid_set(dg_SEQ, $1A,$01, _DIR_LFT); // 
	    ds_grid_set(dg_SEQ, $1A,$02, _X_02);    // 
	    ds_grid_set(dg_SEQ, $1A,$03, HSPD_0);   // 
	    ds_grid_set(dg_SEQ, $1A,$04, _VSPD_A);  // 
	    ds_grid_set(dg_SEQ, $1A,$05, DELAY_4);  // 
	    //                                                       // 
	    ds_grid_set(dg_SEQ, $1B,$01, _DIR_RGT); // 
	    ds_grid_set(dg_SEQ, $1B,$02, _X_02);    // 
	    ds_grid_set(dg_SEQ, $1B,$03, HSPD_0);   // 
	    ds_grid_set(dg_SEQ, $1B,$04, _VSPD_A);  // 
	    ds_grid_set(dg_SEQ, $1B,$05, DELAY_6);  // 
	    //                                                       // 
	    ds_grid_set(dg_SEQ, $1C,$01, _DIR_LFT); // 
	    ds_grid_set(dg_SEQ, $1C,$02, _X_02);    // 
	    ds_grid_set(dg_SEQ, $1C,$03, HSPD_0);   // 
	    ds_grid_set(dg_SEQ, $1C,$04, _VSPD_A);  // 
	    ds_grid_set(dg_SEQ, $1C,$05, DELAY_2);  // 
	    //                                                       // 
	    ds_grid_set(dg_SEQ, $1D,$01, _DIR_RGT); // 
	    ds_grid_set(dg_SEQ, $1D,$02, _X_02);    // 
	    ds_grid_set(dg_SEQ, $1D,$03, HSPD_0);   // 
	    ds_grid_set(dg_SEQ, $1D,$04, _VSPD_A);  // 
	    ds_grid_set(dg_SEQ, $1D,$05, DELAY_5);  // 
	    //                                                       // 
	    ds_grid_set(dg_SEQ, $1E,$01, _DIR_RGT); // 
	    ds_grid_set(dg_SEQ, $1E,$02, _X_02);    // 
	    ds_grid_set(dg_SEQ, $1E,$03, HSPD_0);   // 
	    ds_grid_set(dg_SEQ, $1E,$04, _VSPD_A);  // 
	    ds_grid_set(dg_SEQ, $1E,$05, DELAY_3);  // 
	    //                                                       // 
	    ds_grid_set(dg_SEQ, $1F,$01, _DIR_LFT); // 
	    ds_grid_set(dg_SEQ, $1F,$02, _X_02);    // 
	    ds_grid_set(dg_SEQ, $1F,$03, HSPD_0);   // 
	    ds_grid_set(dg_SEQ, $1F,$04, _VSPD_A);  // 
	    ds_grid_set(dg_SEQ, $1F,$05, DELAY_1);  // 
	    //                                                       // 
	    break;}
    
    
    
    
    
    
    
    
	    // ------------------------------------------------------------------------
	    // ------------------------------------------------------------------------
	    case 3:{
    
	    break;}
	}







}
