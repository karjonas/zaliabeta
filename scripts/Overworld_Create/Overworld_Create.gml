/// @description  Overworld_Create()
function Overworld_Create() {

	if (DEV) sdm(" Overworld_Create()");




	var _i,_j, _a, _idx,_idx1,_idx2,_idx3, _count;
	var _val, _val1,_val2,_val3;
	var _clm,_row, _clms,_rows;
	var _str, _dk;
	var _tsrc_;

	var _dl_1 = ds_list_create();



	// 1: On app start, overworld info is built and from the Tiled overworld .json file
	// 2: On app start, overworld info is built in a script with preprocessed data
	//OVERWORLD_INIT_METHOD = 3;
	OVERWORLD_INIT_METHOD = 2;

	can_draw_exits = 1;


	GO_depth_init(DEPTH_BASE); // sets depth & depth_def
	              _a = depth+$16;
	//              _a = depth+$10;
	Tile_DEPTH1 = _a--;
	Tile_DEPTH2 = _a--;

	TILESET1           = ts_Overworld_1;
	TILESET_TILEMARKER = ts_tile_marker_1a_16x16; // For debug drawing exit outlines


	PC_DRAWY_OFF = -2;


	COLOR_IDX_BG1 = $11;
	color_idx_bg  = 0;

	DRAWX_OFF = 0; // default draw XOff
	DRAWY_OFF = 0; // default draw YOff. 
	drawX_off = 0;
	drawY_off = 0;
	drawX     = 0;
	drawY     = 0;




	T_SIZE = $10; // $08 or $10 only
	SHIFT  = clamp((T_SIZE>>3)+2, 3,4); // 3,4.  For T_SIZE $08 or $10 only


	// how many clms/rows pad each edge(RGT,LFT,BTM,TOP)
	VIEW_PAD = 1;


	DRAW_W  = BASE_GAME_RESOLUTION_W>>SHIFT;   // $100,$1E0 >>4  =  $10,$1E
	DRAW_W +=  (DRAW_W &$1) ^ $1; // round up to odd. ($10,$1E & $1) ^ $1 = 1,1
	DRAW_W += VIEW_PAD <<1;       // add (VIEW_PAD<<1) clms to each side
	DRAW_W  =   DRAW_W <<SHIFT;   // $13,$21 <<4 = $130,$210..  $18 pixel pad RGT & LFT
	DRAW_W_ =   DRAW_W >>1;       // FYI, THIS IS NOT THE CENTER OF THE SCREEN

	DRAW_H  = BASE_GAME_RESOLUTION_H>>SHIFT;   //  $E0,$10E >>4  =  $0E,$10
	DRAW_H +=  (DRAW_H &$1) ^ $1; // round up to odd. ($0E,$10 & $1) ^ $1 = 1,1
	DRAW_H += VIEW_PAD <<1;       // add (VIEW_PAD<<1) rows to each side
	DRAW_H  =   DRAW_H <<SHIFT;   // $11,$13 <<4 = $110,$130..  $18 pixel pad BTM & TOP
	DRAW_H_ =   DRAW_H >>1;       // FYI, THIS IS NOT THE CENTER OF THE SCREEN


	DRAW_CLMS = DRAW_W >>SHIFT; // $130,$210 >>4 = $13,$21
	DRAW_ROWS = DRAW_H >>SHIFT; // $110,$130 >>4 = $11,$13


	//OW_EDGE_PAD = $18;
	OW_CLMS_PAD = (DRAW_CLMS>>1) + 1; // +1 bc GRID_W is odd. $13 div 2 = 9 + 1 = $A
	OW_ROWS_PAD = (DRAW_ROWS>>1) + 1; // +1 bc GRID_H is odd. $11 div 2 = 8 + 1 = 9


	// Center cam on drawing area
	CAM_X = DRAW_W_ - g.VIEW_W_;
	CAM_Y = DRAW_H_ - g.VIEW_H_;


	// Based off .json file. Set in init_data_overworld()
	OW_CLMS = 0; // 
	OW_ROWS = 0; // 
	OW_W    = 0; // 
	OW_H    = 0; // 


	// PC CAM X/Y is relative to the cam/view x/y
	// It is how many pixels away from view_x/yview and in the center of pc spr
	// PC_CAM_X_DEF = g.WINW_HALF;
	// PC_CAM_Y_DEF = g.WINH_HALF;
	// pc_cam_x     = PC_CAM_X_DEF;
	// pc_cam_y     = PC_CAM_Y_DEF;
	// pc_cam_x_off = 0;
	// pc_cam_y_off = 0;


	// w & h of rmC_Overworld_A
	rmC_W  = g.VIEW_W; // 
	rmC_H  = g.VIEW_H; // 
	ROOM_W = DRAW_W;   // what room_width  get set to in Overworld_Room_Start()
	ROOM_H = DRAW_H;   // what room_height get set to in Overworld_Room_Start()



	// ------------------------------------------------
	pcrc       = 0; // current room's overworld grid xy
	pcrc_spawn = pcrc;
	pcrc_map   = pcrc;
	pc_ow_x    = 0;
	pc_ow_y    = 0;
	pc_dir     = $1; // $1,2,4,8
	dest_dist  = 0; // The remaining distance pc will move once movement starts

	move_SYS = 1;
	                 _a=0;
	MOVE_SPD_1 = $1<<_a++; // !(g.counter1 & (1-1)): every frame
	MOVE_SPD_2 = $1<<_a++; // !(g.counter1 & (2-1)): every other frame
	MOVE_SPD_3 = $1<<_a++; // !(g.counter1 & (4-1)): every 4 frames
	move_spd   = 0; // 0: no movement
	move_x     = 0;
	move_y     = 0;


	// Movement system using fractional values
	// 20240712. move_SPEED3 feels studdery.
	move_SPEED1   = 1.0;
	move_SPEED2   = 0.5;
	move_SPEED3   = move_SPEED2+((move_SPEED1-move_SPEED2)/2); // Faster swamp speed with BOOTS
	move_speed    = 0.0;
	move_distance = 0.0;
	//move_SYS=2; move_SPEED2=0.75; // testing






	exit_grid_xy = 0;


	/*
	var _ar_pc_spr = 0;
	    _ar_pc_spr[3,1] = spr_OW_Lonk_4b_WRB; // Facing UP.     right-leg frwd
	    _ar_pc_spr[3,0] = spr_OW_Lonk_4a_WRB; // Facing UP.      left-leg frwd
	    _ar_pc_spr[2,1] = spr_OW_Lonk_3b_WRB; // Facing DOWN.   right-leg frwd
	    _ar_pc_spr[2,0] = spr_OW_Lonk_3a_WRB; // Facing DOWN.    left-leg frwd
	    _ar_pc_spr[1,1] = spr_OW_Lonk_2b_WRB; // Facing LEFT.   legs open
	    _ar_pc_spr[1,0] = spr_OW_Lonk_2a_WRB; // Facing LEFT
	    _ar_pc_spr[0,1] = spr_OW_Lonk_1b_WRB; // Facing RIGHT.  legs open
	    _ar_pc_spr[0,0] = spr_OW_Lonk_1a_WRB; // Facing RIGHT
	_clms = array_height_2d(_ar_pc_spr);
	_rows = array_length_2d(_ar_pc_spr, 0);
	dg_pc_spr = ds_grid_create(_clms, max(_rows,3));

	for(_i=_clms-1; _i>=0; _i--)
	{
	    for(_j=_rows-1; _j>=0; _j--)
	    {
	        dg_pc_spr[#_i,_j] = _ar_pc_spr[_i,_j];
	    }
	}
	_ar_pc_spr = 0;
	*/

	USE_SPRITESHEETS = true;
	pc_sprite_idx = 0;
	//pc_spr = dg_pc_spr[#pc_sprite_idx,0];



	/*
	dg_RAFT_SPR = ds_grid_create(4,1);
	dg_RAFT_SPR[#0,0] = spr_ow_raft_1a_WRB; // RGT
	dg_RAFT_SPR[#1,0] = dg_RAFT_SPR[#0,0];  // LFT
	dg_RAFT_SPR[#2,0] = spr_ow_raft_2a;     // DWN
	dg_RAFT_SPR[#3,0] = spr_ow_raft_3a;     // UP
	*/

	pc_x_scale = 1;



	// mot: Mode Of Transportation. 
	           _a=1;
	MOT_WALK = _a++;
	MOT_RAFT = _a++;
	mot      =  0; // 0: not moving

	pc_step_counter = 0;


	FLUTE_DUR   = $88 + $8; // This is, at worst, an approximation
	flute_timer = 0; // 0566






	// These get set in init_data_overworld() using data from the OW Tiled file.
	dm_data = ds_map_create();
	dm_data[?MK_OWRC_NPAL1]     = 0; // 
	//                                  // 
	dm_data[?MK_OWRC_TWN_RAUR1] = 0; // 
	dm_data[?MK_OWRC_TWN_RUTO1] = 0; // 
	dm_data[?MK_OWRC_TWN_SARI1] = 0; // 
	dm_data[?MK_OWRC_TWN_SARI2] = 0; // 
	dm_data[?MK_OWRC_TWN_MIDO1] = 0; // 
	dm_data[?MK_OWRC_TWN_NABO1] = 0; // 
	dm_data[?MK_OWRC_TWN_DARU1] = 0; // 
	dm_data[?MK_OWRC_TWN_NEWK1] = 0; // 
	dm_data[?MK_OWRC_TWN_OLDK1] = 0; // 
	//                                  // 
	dm_data[?MK_OWRC_PAL_PRPA1] = 0; // 
	dm_data[?MK_OWRC_PAL_MDRO1] = 0; // 
	dm_data[?MK_OWRC_PAL_ISLD1] = 0; // 
	dm_data[?MK_OWRC_PAL_MAZE1] = 0; // 
	dm_data[?MK_OWRC_PAL_POTS1] = 0; // 
	dm_data[?MK_OWRC_PAL_THRE1] = 0; // 
	dm_data[?MK_OWRC_PAL_GRET1] = 0; // 
	/* datakey examples:
	MK_OWRC_PAL_PRPA1 = (STR_OWRC + STR_Parapa_Palace + "01")
	MK_OWRC_PAL_MDRO1 = (STR_OWRC + STR_Midoro_Palace + "01")
	MK_OWRC_PAL_ISLD1 = (STR_OWRC + STR_Island_Palace + "01")
	MK_OWRC_PAL_THRE1 = (STR_OWRC + STR_Three_Eye_Rock_Palace + "01")
	*/









	// each cell represents the tile type at that row & clmn of the overworld
	dg_solid_def = ds_grid_create(0,0); // def: default
	dg_solid     = ds_grid_create(0,0);

	// A ow room size grid of the tsrc for every tile
	dg_tsrc_def  = ds_grid_create(0,0); // def: default
	dg_tsrc      = ds_grid_create(0,0);

	dg_tid       = ds_grid_create(DRAW_CLMS, DRAW_ROWS);

	dg_area      = ds_grid_create(0,0);


	dg_ChangeTiles_Boots = ds_grid_create(0,8);
	TileChangeEvent_TYPE_BOOT1 = "BOOTS01";

	dg_boulders = ds_grid_create(0,4);

	BoulderCircle_center_OWRC    = 0; // set in init_data_overworld()
	BoulderCircle_center_TSRC    = TSRC_HOLE01; // $C8: Hole in ground
	dl_BoulderCircle_broke_order = ds_list_create();
	dl_BoulderCircle_OWRC        = ds_list_create();
	for(_i=0; _i<8; _i++) ds_list_add(dl_BoulderCircle_OWRC, 0);




	if (g.anarkhyaOverworld_MAIN)
	{
	    //            dl_anarkhya_ts = ds_list_create();
	    //ds_list_add(dl_anarkhya_ts, ts_Overworld_anark01);
	    //ds_list_add(dl_anarkhya_ts, ts_Overworld_anark02);
	    background_assign(ts_Overworld_anark01, ts_Overworld_anark01_00);
	    background_assign(ts_Overworld_anark02, ts_Overworld_anark02_00);
    
	    dg_anarkhya_tsrc_def        = ds_grid_create(0,0); // def: default
	    dg_anarkhya_tsrc            = ds_grid_create(0,0);
	    dg_anarkhya_tsrc_detail_def = ds_grid_create(0,0); // for details layer
	    dg_anarkhya_tsrc_detail     = ds_grid_create(0,0); // for details layer
    
	    dg_anarkhya_tsrc_boots  = ds_grid_create(0,2);
	    //dg_anarkhya_tsrc_newkasuto = ds_grid_create(0,2);
    
	    anarkhya_TSRC_BOULDER = $173; // this includes a +1 that Tiled assigns
	    anarkhya_TSRC_RUBBLE  = $146; // this includes a +1 that Tiled assigns
	    anarkhya_TSRC_PALACE  = $1F1; // this includes a +1 that Tiled assigns
	    anarkhya_TSRC_HOLE    = $161; // this includes a +1 that Tiled assigns
	    anarkhya_TSRC_NEWKAS  = $120; // this includes a +1 that Tiled assigns
    
	    anarkhya_TILE_DEPTH1 = Tile_DEPTH1-8;
	    anarkhya_TILE_DEPTH2 = anarkhya_TILE_DEPTH1-1; // the details layer
	}










	// -------------------------------------------------------------------------
	ENC_TRIG_HB_W = $0A;
	ENC_TRIG_HB_H = $10;




	var _type, _data;
	var _tsrc, _tsrc_count;
	var _area, _biome;

	dm_enc                     = ds_map_create();
	dl_biome_enc               = ds_list_create();
	//             
	dl_biome_battle            = ds_list_create();
	dl_biome_enc_spawn_trigger = ds_list_create();
	dl_enc_spawn_cooldown_dur  = ds_list_create();
	dl_enc_inst_life_dur       = ds_list_create();
	//
	var _dl_biome_tsrc         = ds_list_create();


	// $824D-8264:  $00,60,B0,D0,  00,60,D0,F0,  00,60,C0,E0,  00,50,BB,F0,  00,57,D7,F8,  00,57,D7,FF
	//   $00, 60, B0, D0,   // FIELD
	//   $00, 60, D0, F0,   // DESERT
	//   $00, 60, C0, E0,   // FOREST
	//   $00, 50, BB, F0,   // SWAMP
	//   $00, 57, D7, F8,   // CEMETERY
	//   $00, 57, D7, FF    // VOLCANO
	dg_enc_obj_id_spawn_data_1 = ds_grid_create(0,4);




	//STR_Primary, STR_Secondary, STR_Tertiary



	                              _biome = STR_FIELD;
	ds_list_add( dl_biome_enc,    _biome);
	ds_list_add( dl_biome_battle, _biome);
	ds_list_add( dl_biome_enc_spawn_trigger, _biome);
	ds_list_clear(_dl_1); ds_list_add(_dl_1,TSRC_GRAS01,TSRC_GRAS02,TSRC_GRAS03,TSRC_GRAS04);
	_val1=""; _count=ds_list_size(_dl_1);
	for(_i=0; _i<_count; _i++)
	{
	    _tsrc_ = hex_str(_dl_1[|_i]);
	    _val1 += _tsrc_;
	    dm_data[?STR_TSRC+_tsrc_+STR_Biome] = _biome;
	}
	ds_list_add(_dl_biome_tsrc, _val1);
	//ds_list_add(_dl_biome_tsrc, hexStr(TSRC_GRAS01,TSRC_GRAS02,TSRC_GRAS03,TSRC_GRAS04));
	ds_list_add( dl_enc_inst_life_dur, $0A); // 
	dm_enc[?_biome+STR_Spawn+STR_Cooldown] = $20; // OG: $20
	dm_enc[?STR_Rando+STR_Biome+_biome] = true;
	dm_enc[?STR_Rando+STR_Biome+_biome+STR_TSRC+STR_Special]   = TSRC_GRAS04;
	dm_enc[?STR_Rando+STR_Biome+_biome+STR_TSRC+STR_Primary]   = TSRC_GRAS01;
	//                                                  // 
	_idx=ds_grid_width( dg_enc_obj_id_spawn_data_1);
	     ds_grid_resize(dg_enc_obj_id_spawn_data_1, _idx+1, ds_grid_height(dg_enc_obj_id_spawn_data_1));
	                    dg_enc_obj_id_spawn_data_1[#_idx,0] = $00;    // 
	                    dg_enc_obj_id_spawn_data_1[#_idx,1] = $60;    // 
	                    dg_enc_obj_id_spawn_data_1[#_idx,2] = $B0;    // 
	                    dg_enc_obj_id_spawn_data_1[#_idx,3] = $D0;    // 
	//                                                  // 
	//                                                  // 
	//                                                  // 





	                              _biome = STR_DESER;
	ds_list_add( dl_biome_enc,    _biome);
	ds_list_add( dl_biome_battle, _biome);
	ds_list_add( dl_biome_enc_spawn_trigger, _biome);
	ds_list_clear(_dl_1); ds_list_add(_dl_1,TSRC_SAND01,TSRC_SAND02,TSRC_SAND03, TSRC_PATH03);
	_val1=""; _count=ds_list_size(_dl_1);
	for(_i=0; _i<_count; _i++)
	{
	    _tsrc_ = hex_str(_dl_1[|_i]);
	    _val1 += _tsrc_;
	    dm_data[?STR_TSRC+_tsrc_+STR_Biome] = _biome;
	}
	ds_list_add(_dl_biome_tsrc, _val1);
	//ds_list_add(_dl_biome_tsrc, hexStr(TSRC_SAND01,TSRC_SAND02,TSRC_SAND03, TSRC_PATH03));
	//ds_list_add(_dl_biome_tsrc, hexStr(TSRC_SAND01,TSRC_SAND02, TSRC_PATH03, TSRC_SNOW01,TSRC_SNOW02));
	ds_list_add( dl_enc_inst_life_dur, dl_enc_inst_life_dur[|ds_list_size(dl_enc_inst_life_dur)-1]); // 
	dm_enc[?_biome+STR_Spawn+STR_Cooldown] = $18; // OG: $18
	dm_enc[?STR_Rando+STR_Biome+_biome] = true;
	dm_enc[?STR_Rando+STR_Biome+_biome+STR_TSRC+STR_Special]   = TSRC_SAND02;
	dm_enc[?STR_Rando+STR_Biome+_biome+STR_TSRC+STR_Primary]   = TSRC_SAND01;
	dm_enc[?STR_Rando+STR_Biome+_biome+STR_TSRC+STR_Secondary] = TSRC_SAND03;
	//                                                  // 
	_idx=ds_grid_width( dg_enc_obj_id_spawn_data_1);
	     ds_grid_resize(dg_enc_obj_id_spawn_data_1, _idx+1, ds_grid_height(dg_enc_obj_id_spawn_data_1));
	                    dg_enc_obj_id_spawn_data_1[#_idx,0] = $00;    // 
	                    dg_enc_obj_id_spawn_data_1[#_idx,1] = $60;    // 
	                    dg_enc_obj_id_spawn_data_1[#_idx,2] = $D0;    // 
	                    dg_enc_obj_id_spawn_data_1[#_idx,3] = $F0;    // 
	//                                                  // 
	//                                                  // 
	//                                                  // 





	                              _biome = STR_BEACH;
	ds_list_add( dl_biome_enc,    _biome);
	ds_list_add( dl_biome_battle, _biome);
	ds_list_add( dl_biome_enc_spawn_trigger, _biome);
	ds_list_clear(_dl_1); ds_list_add(_dl_1,TSRC_SNOW01,TSRC_SNOW02,TSRC_SNOW03,TSRC_SNOW04);
	_val1=""; _count=ds_list_size(_dl_1);
	for(_i=0; _i<_count; _i++)
	{
	    _tsrc_ = hex_str(_dl_1[|_i]);
	    _val1 += _tsrc_;
	    dm_data[?STR_TSRC+_tsrc_+STR_Biome] = _biome;
	}
	ds_list_add(_dl_biome_tsrc, _val1);
	//ds_list_add(_dl_biome_tsrc, hexStr(TSRC_SNOW01,TSRC_SNOW02,TSRC_SNOW03,TSRC_SNOW04));
	ds_list_add( dl_enc_inst_life_dur, dl_enc_inst_life_dur[|ds_list_size(dl_enc_inst_life_dur)-1]); // 
	dm_enc[?_biome+STR_Spawn+STR_Cooldown] = $18; // OG: $18
	dm_enc[?STR_Rando+STR_Biome+_biome] = true;
	dm_enc[?STR_Rando+STR_Biome+_biome+STR_TSRC+STR_Special]   = TSRC_SNOW04;
	dm_enc[?STR_Rando+STR_Biome+_biome+STR_TSRC+STR_Primary]   = TSRC_SNOW02;
	dm_enc[?STR_Rando+STR_Biome+_biome+STR_TSRC+STR_Secondary] = TSRC_SNOW01;
	//                                                  // 
	_idx=ds_grid_width( dg_enc_obj_id_spawn_data_1);
	     ds_grid_resize(dg_enc_obj_id_spawn_data_1, _idx+1, ds_grid_height(dg_enc_obj_id_spawn_data_1));
	                    dg_enc_obj_id_spawn_data_1[#_idx,0] = $00;    // 
	                    dg_enc_obj_id_spawn_data_1[#_idx,1] = $60;    // 
	                    dg_enc_obj_id_spawn_data_1[#_idx,2] = $D0;    // 
	                    dg_enc_obj_id_spawn_data_1[#_idx,3] = $F0;    // 
	//                                                  // 
	//                                                  // 
	//                                                  // 





	                              _biome = STR_FORES;
	ds_list_add( dl_biome_enc,    _biome);
	ds_list_add( dl_biome_battle, _biome);
	ds_list_add( dl_biome_enc_spawn_trigger, _biome);
	ds_list_clear(_dl_1); ds_list_add(_dl_1,TSRC_TREE01,TSRC_TREE02,TSRC_TREE03,TSRC_TREE04);
	_val1=""; _count=ds_list_size(_dl_1);
	for(_i=0; _i<_count; _i++)
	{
	    _tsrc_ = hex_str(_dl_1[|_i]);
	    _val1 += _tsrc_;
	    dm_data[?STR_TSRC+_tsrc_+STR_Biome] = _biome;
	}
	ds_list_add(_dl_biome_tsrc, _val1);
	//ds_list_add(_dl_biome_tsrc, hexStr(TSRC_TREE01,TSRC_TREE02,TSRC_TREE03,TSRC_TREE04));
	ds_list_add( dl_enc_inst_life_dur, $18); // 
	dm_enc[?_biome+STR_Spawn+STR_Cooldown] = $18; // OG: $18
	dm_enc[?STR_Rando+STR_Biome+_biome] = true;
	//dm_enc[?STR_Rando+STR_Biome+_biome+STR_TSRC+STR_Special]   = TSRC_TREE01;
	dm_enc[?STR_Rando+STR_Biome+_biome+STR_TSRC+STR_Primary]   = TSRC_TREE01;
	//dm_enc[?STR_Rando+STR_Biome+_biome+STR_TSRC+STR_Secondary] = TSRC_TREE01;
	//                                                  // 
	_idx=ds_grid_width( dg_enc_obj_id_spawn_data_1);
	     ds_grid_resize(dg_enc_obj_id_spawn_data_1, _idx+1, ds_grid_height(dg_enc_obj_id_spawn_data_1));
	                    dg_enc_obj_id_spawn_data_1[#_idx,0] = $00;    // 
	                    dg_enc_obj_id_spawn_data_1[#_idx,1] = $60;    // 
	                    dg_enc_obj_id_spawn_data_1[#_idx,2] = $C0;    // 
	                    dg_enc_obj_id_spawn_data_1[#_idx,3] = $E0;    // 
	//                                                  // 
	//                                                  // 
	//                                                  // 





	                              _biome = STR_SWAMP;
	ds_list_add( dl_biome_enc,    _biome);
	ds_list_add( dl_biome_battle, _biome);
	ds_list_add( dl_biome_enc_spawn_trigger, _biome);
	ds_list_clear(_dl_1); ds_list_add(_dl_1,TSRC_SWAM01,TSRC_SWAM02,TSRC_SWAM03,TSRC_SWAM04);
	_val1=""; _count=ds_list_size(_dl_1);
	for(_i=0; _i<_count; _i++)
	{
	    _tsrc_ = hex_str(_dl_1[|_i]);
	    _val1 += _tsrc_;
	    dm_data[?STR_TSRC+_tsrc_+STR_Biome] = _biome;
	}
	ds_list_add(_dl_biome_tsrc, _val1);
	//ds_list_add(_dl_biome_tsrc, hexStr(TSRC_SWAM01,TSRC_SWAM02,TSRC_SWAM03,TSRC_SWAM04));
	ds_list_add( dl_enc_inst_life_dur, dl_enc_inst_life_dur[|ds_list_size(dl_enc_inst_life_dur)-1]); // 
	dm_enc[?_biome+STR_Spawn+STR_Cooldown] = $20; // OG: $20
	dm_enc[?STR_Rando+STR_Biome+_biome] = true;
	dm_enc[?STR_Rando+STR_Biome+_biome+STR_TSRC+STR_Special]   = TSRC_SWAM02;
	dm_enc[?STR_Rando+STR_Biome+_biome+STR_TSRC+STR_Primary]   = TSRC_SWAM01;
	//dm_enc[?STR_Rando+STR_Biome+_biome+STR_TSRC+STR_Secondary] = TSRC_SWAM01;
	//                                                  // 
	_idx=ds_grid_width( dg_enc_obj_id_spawn_data_1);
	     ds_grid_resize(dg_enc_obj_id_spawn_data_1, _idx+1, ds_grid_height(dg_enc_obj_id_spawn_data_1));
	                    dg_enc_obj_id_spawn_data_1[#_idx,0] = $00;    // 
	                    dg_enc_obj_id_spawn_data_1[#_idx,1] = $50;    // 
	                    dg_enc_obj_id_spawn_data_1[#_idx,2] = $BB;    // 
	                    dg_enc_obj_id_spawn_data_1[#_idx,3] = $F0;    // 
	//                                                  // 
	//                                                  // 
	//                                                  // 





	                              _biome = STR_CEMET;
	ds_list_add( dl_biome_enc,    _biome);
	ds_list_add( dl_biome_battle, _biome);
	ds_list_add( dl_biome_enc_spawn_trigger, _biome);
	ds_list_clear(_dl_1); ds_list_add(_dl_1,TSRC_GRAV01,TSRC_GRAV02,TSRC_GRAV03,TSRC_GRAV04);
	_val1=""; _count=ds_list_size(_dl_1);
	for(_i=0; _i<_count; _i++)
	{
	    _tsrc_ = hex_str(_dl_1[|_i]);
	    _val1 += _tsrc_;
	    dm_data[?STR_TSRC+_tsrc_+STR_Biome] = _biome;
	}
	ds_list_add(_dl_biome_tsrc, _val1);
	//ds_list_add(_dl_biome_tsrc, hexStr(TSRC_GRAV01,TSRC_GRAV02,TSRC_GRAV03,TSRC_GRAV04));
	//ds_list_add(_dl_biome_tsrc, hexStr(TSRC_GRAV01,TSRC_GRAV01+2,TSRC_GRAV01+3));
	ds_list_add( dl_enc_inst_life_dur, $30); // 
	dm_enc[?_biome+STR_Spawn+STR_Cooldown] = $09; // OG: $09
	dm_enc[?STR_Rando+STR_Biome+_biome] = true;
	dm_enc[?STR_Rando+STR_Biome+_biome+STR_TSRC+STR_Special]   = TSRC_GRAV02;
	dm_enc[?STR_Rando+STR_Biome+_biome+STR_TSRC+STR_Primary]   = TSRC_GRAV01;
	dm_enc[?STR_Rando+STR_Biome+_biome+STR_TSRC+STR_Secondary] = TSRC_GRAV03;
	dm_enc[?STR_Rando+STR_Biome+_biome+STR_TSRC+STR_Tertiary]  = TSRC_GRAV04;
	//                                                  // 
	_idx=ds_grid_width( dg_enc_obj_id_spawn_data_1);
	     ds_grid_resize(dg_enc_obj_id_spawn_data_1, _idx+1, ds_grid_height(dg_enc_obj_id_spawn_data_1));
	                    dg_enc_obj_id_spawn_data_1[#_idx,0] = $00;    // 
	                    dg_enc_obj_id_spawn_data_1[#_idx,1] = $57;    // 
	                    dg_enc_obj_id_spawn_data_1[#_idx,2] = $D7;    // 
	                    dg_enc_obj_id_spawn_data_1[#_idx,3] = $F8;    // 
	//                                                  // 
	//                                                  // 
	//                                                  // 





	                              _biome = STR_VOLCA;
	ds_list_add( dl_biome_enc,    _biome);
	ds_list_add( dl_biome_battle, _biome);
	ds_list_add( dl_biome_enc_spawn_trigger, _biome);
	ds_list_clear(_dl_1); ds_list_add(_dl_1,TSRC_VOLC01);
	_val1=""; _count=ds_list_size(_dl_1);
	for(_i=0; _i<_count; _i++)
	{
	    _tsrc_ = hex_str(_dl_1[|_i]);
	    _val1 += _tsrc_;
	    dm_data[?STR_TSRC+_tsrc_+STR_Biome] = _biome;
	}
	ds_list_add(_dl_biome_tsrc, _val1);
	//ds_list_add(_dl_biome_tsrc, hexStr(TSRC_VOLC01));
	ds_list_add( dl_enc_inst_life_dur, dl_enc_inst_life_dur[|ds_list_size(dl_enc_inst_life_dur)-1]); // 
	dm_enc[?_biome+STR_Spawn+STR_Cooldown] = $03; // OG: $03
	dm_enc[?STR_Rando+STR_Biome+_biome] = true;
	//dm_enc[?STR_Rando+STR_Biome+_biome+STR_TSRC+STR_Special]   = TSRC_VOLC01;
	dm_enc[?STR_Rando+STR_Biome+_biome+STR_TSRC+STR_Primary]   = TSRC_VOLC01;
	//dm_enc[?STR_Rando+STR_Biome+_biome+STR_TSRC+STR_Secondary] = TSRC_VOLC01;
	//                                                  // 
	_idx=ds_grid_width( dg_enc_obj_id_spawn_data_1);
	     ds_grid_resize(dg_enc_obj_id_spawn_data_1, _idx+1, ds_grid_height(dg_enc_obj_id_spawn_data_1));
	                    dg_enc_obj_id_spawn_data_1[#_idx,0] = $00;    // 
	                    dg_enc_obj_id_spawn_data_1[#_idx,1] = $57;    // 
	                    dg_enc_obj_id_spawn_data_1[#_idx,2] = $D7;    // 
	                    dg_enc_obj_id_spawn_data_1[#_idx,3] = $FF;    // 
	//                                                  // 
	//                                                  // 
	//                                                  // 





	                           _biome = STR_PATH_;
	ds_list_add( dl_biome_enc, _biome);
	ds_list_clear(_dl_1); ds_list_add(_dl_1,TSRC_PATH01,TSRC_PATH02);
	_val1=""; _count=ds_list_size(_dl_1);
	for(_i=0; _i<_count; _i++)
	{
	    _tsrc_ = hex_str(_dl_1[|_i]);
	    _val1 += _tsrc_;
	    dm_data[?STR_TSRC+_tsrc_+STR_Biome] = _biome;
	}
	ds_list_add(_dl_biome_tsrc, _val1);
	//ds_list_add(_dl_biome_tsrc, hexStr(TSRC_PATH01,TSRC_PATH02));
	//                                                  // 
	//                                                  // 
	//                                                  // 







	             _count = ds_list_size(dl_biome_enc);
	for(_i=0; _i<_count; _i++)
	{
	    _tsrc_count = 0;
	    _biome = dl_biome_enc[|_i];
    
	    if (ds_list_size(_dl_biome_tsrc) > _i)
	    {
	        _data =     _dl_biome_tsrc[|_i];
	               _tsrc_count = string_length(_data)>>1;
	        for(_j=_tsrc_count-1; _j>=0; _j--)
	        {
	                    _tsrc = string_copy(_data, (_j<<1)+1, 2);
	            dm_enc[?_tsrc +STR_Biome]             = _biome;
	            dm_enc[?_tsrc +STR_Biome+STR_Idx]     = _i;
	            dm_enc[?_biome+STR_TSRC+hex_str(_j+1)] = str_hex(_tsrc);
	        }
	    }
    
	    dm_enc[?_biome+STR_TSRC+STR_Count] = _tsrc_count;
    
    
    
	    // ----------------------------------------------------------
	    // Look up the enc biome's index by the _biome
	    dm_enc[?_biome+STR_Idx] = _i; // example: STR_FIELD + STR_Idx
    
	    // Look up the enc biome by its index
	    dm_enc[?STR_Biome+hex_str(_i)] = _biome; // example: dm_enc[?"00" + STR_Type]  =  STR_FIELD
	}

	ds_list_destroy(_dl_biome_tsrc); _dl_biome_tsrc=undefined;




	//dm_rando_biome=ds_map_create();









	// TODO: Each one of the areas needs it's own rm_name for each encounter, otherwise
	// getting into an encounter for that biome will reset any trees smashed by HAMMER.
	// This means you need to add each encounter biome to each rm_data_init_..

	                         _area = Area_WestA;
	dm_enc[?STR_Rm+STR_FIELD+_area+"01"] = _area+"22"; // WestA(All areas BEFORE JUMP cave)
	dm_enc[?STR_Rm+STR_FIELD+_area+"02"] = _area+"23"; // WestA(All areas AFTER  JUMP cave)
	//                                                  // 
	dm_enc[?STR_Rm+STR_DESER+_area+"01"] = _area+"1D"; // WestA(All areas BEFORE JUMP cave)
	dm_enc[?STR_Rm+STR_DESER+_area+"02"] = _area+"1E"; // WestA(All areas AFTER  JUMP cave)
	//                                                  // 
	dm_enc[?STR_Rm+STR_BEACH+_area+"01"] = _area+"46"; // WestA(All areas BEFORE JUMP cave)
	dm_enc[?STR_Rm+STR_BEACH+_area+"02"] = _area+"46"; // WestA(All areas AFTER  JUMP cave)
	//                                                  // 
	dm_enc[?STR_Rm+STR_FORES+_area+"01"] = _area+"27"; // WestA(All areas BEFORE JUMP cave)
	dm_enc[?STR_Rm+STR_FORES+_area+"02"] = _area+"28"; // WestA(All areas AFTER  JUMP cave)
	//                                                  // 
	dm_enc[?STR_Rm+STR_SWAMP+_area+"01"] = _area+"30"; // WestA(All areas BEFORE JUMP cave)
	dm_enc[?STR_Rm+STR_SWAMP+_area+"02"] = _area+"30"; // WestA(All areas AFTER  JUMP cave)
	//                                                  // 
	dm_enc[?STR_Rm+STR_CEMET+_area+"01"] = _area+"35"; // WestA(All areas BEFORE JUMP cave)
	dm_enc[?STR_Rm+STR_CEMET+_area+"02"] = _area+"35"; // WestA(All areas AFTER  JUMP cave)
	//                                                  // 
	dm_enc[?STR_Rm+STR_VOLCA+_area+"01"] = Area_EastA+"3C"; // WestA(All areas BEFORE JUMP cave)
	dm_enc[?STR_Rm+STR_VOLCA+_area+"02"] = Area_EastA+"3C"; // WestA(All areas AFTER  JUMP cave)
	//                                                  // 
	dm_enc[?STR_Rm+STR_PATH_+_area+"01"] = _area+"39"; // WestA(All areas BEFORE JUMP cave)
	dm_enc[?STR_Rm+STR_PATH_+_area+"02"] = _area+"39"; // WestA(All areas AFTER  JUMP cave)
	//                                                  // 
	//                                                  // 
	//                                                  // 
	//                                                  // 
	                         _area = Area_EastA;
	dm_enc[?STR_Rm+STR_FIELD+_area+"01"] = _area+"22"; // EastA(All areas BEFORE RiverDevil)
	dm_enc[?STR_Rm+STR_FIELD+_area+"02"] = _area+"22"; // EastA(All areas AFTER  RiverDevil)
	dm_enc[?STR_Rm+STR_FIELD+_area+"03"] = _area+"38"; // EastA(South continent)
	dm_enc[?STR_Rm+STR_FIELD+_area+"04"] = _area+"38"; // EastA(Dragon Island)
	//                                                  // 
	dm_enc[?STR_Rm+STR_DESER+_area+"01"] = _area+"1D"; // EastA(All areas BEFORE RiverDevil), MazIs
	dm_enc[?STR_Rm+STR_DESER+_area+"02"] = _area+"1E"; // EastA(All areas AFTER  RiverDevil), NewK, OldK)
	dm_enc[?STR_Rm+STR_DESER+_area+"03"] = _area+"1E"; // EastA(South continent)
	dm_enc[?STR_Rm+STR_DESER+_area+"04"] = _area+"1E"; // EastA(Dragon Island)
	//                                                  // 
	dm_enc[?STR_Rm+STR_BEACH+_area+"01"] = _area+"40"; // EastA(All areas BEFORE RiverDevil), MazIs
	dm_enc[?STR_Rm+STR_BEACH+_area+"02"] = _area+"3D"; // EastA(All areas AFTER  RiverDevil), NewK, OldK)
	dm_enc[?STR_Rm+STR_BEACH+_area+"03"] = _area+"3D"; // EastA(South continent)
	dm_enc[?STR_Rm+STR_BEACH+_area+"04"] = _area+"3D"; // EastA(Dragon Island)
	//                                                  // 
	dm_enc[?STR_Rm+STR_FORES+_area+"01"] = _area+"27"; // EastA(All areas BEFORE RiverDevil), MazIs
	dm_enc[?STR_Rm+STR_FORES+_area+"02"] = _area+"28"; // EastA(All areas AFTER  RiverDevil), NewK, OldK)
	dm_enc[?STR_Rm+STR_FORES+_area+"03"] = _area+"43"; // EastA(South continent)
	dm_enc[?STR_Rm+STR_FORES+_area+"04"] = _area+"44"; // EastA(Dragon Island)
	//                                                  // 
	dm_enc[?STR_Rm+STR_SWAMP+_area+"01"] = _area+"30"; // EastA(All areas BEFORE RiverDevil)
	dm_enc[?STR_Rm+STR_SWAMP+_area+"02"] = _area+"30"; // EastA(All areas AFTER  RiverDevil) 
	dm_enc[?STR_Rm+STR_SWAMP+_area+"03"] = _area+"32"; // EastA(South continent)
	dm_enc[?STR_Rm+STR_SWAMP+_area+"04"] = _area+"45"; // EastA(Dragon Island)
	//                                                  // 
	dm_enc[?STR_Rm+STR_CEMET+_area+"01"] = _area+"35"; // EastA(All areas BEFORE RiverDevil)
	dm_enc[?STR_Rm+STR_CEMET+_area+"02"] = _area+"35"; // EastA(All areas AFTER  RiverDevil) 
	dm_enc[?STR_Rm+STR_CEMET+_area+"03"] = _area+"35"; // EastA(South Continent)
	dm_enc[?STR_Rm+STR_CEMET+_area+"04"] = _area+"35"; // EastA(Dragon Island)
	//                                                  // 
	dm_enc[?STR_Rm+STR_VOLCA+_area+"01"] = _area+"3C"; // EastA(All areas BEFORE RiverDevil)
	dm_enc[?STR_Rm+STR_VOLCA+_area+"02"] = _area+"3C"; // EastA(All areas AFTER  RiverDevil) 
	dm_enc[?STR_Rm+STR_VOLCA+_area+"03"] = _area+"3C"; // EastA(South continent)
	dm_enc[?STR_Rm+STR_VOLCA+_area+"04"] = _area+"3C"; // EastA(Dragon Island)
	//                                                  // 
	dm_enc[?STR_Rm+STR_PATH_+_area+"01"] = _area+"39"; // EastA(All areas BEFORE RiverDevil)
	dm_enc[?STR_Rm+STR_PATH_+_area+"02"] = _area+"39"; // EastA(All areas AFTER  RiverDevil)
	dm_enc[?STR_Rm+STR_PATH_+_area+"03"] = _area+"39"; // EastA(South continent)
	dm_enc[?STR_Rm+STR_PATH_+_area+"04"] = _area+"39"; // EastA(Dragon Island)
	//                                                  // 
	//                                                  // 
	//                                                  // 
	//                                                  // 
	                         _area = Area_DthMt;
	dm_enc[?STR_Rm+STR_FIELD+_area+"01"] = _area+"32"; // DthMt(All)
	//                                                  // 
	dm_enc[?STR_Rm+STR_DESER+_area+"01"] = _area+"1D"; // DthMt(All)
	//                                                  // 
	dm_enc[?STR_Rm+STR_BEACH+_area+"01"] = val(dm_enc[?STR_Rm+STR_BEACH+Area_WestA+"01"]); // DthMt(All)
	//                                                  // 
	dm_enc[?STR_Rm+STR_FORES+_area+"01"] = _area+"27"; // DthMt(All)
	//                                                  // 
	dm_enc[?STR_Rm+STR_SWAMP+_area+"01"] = val(dm_enc[?STR_Rm+STR_SWAMP+Area_WestA+"01"]); // DthMt(All)
	//                                                  // 
	dm_enc[?STR_Rm+STR_CEMET+_area+"01"] = _area+"34"; // DthMt(All)
	//                                                  // 
	dm_enc[?STR_Rm+STR_VOLCA+_area+"01"] = _area+"33"; // DthMt(All)
	//                                                  // 
	dm_enc[?STR_Rm+STR_PATH_+_area+"01"] = _area+"39"; // DthMt(All)
	//                                                  // 
	//                                                  // 
	//                                                  // 
	//                                                  // 
	                         _area = Area_MazIs;
	dm_enc[?STR_Rm+STR_FIELD+_area+"01"] = val(dm_enc[?STR_Rm+STR_FIELD+Area_EastA+"01"]); // MazIs(All)
	//                                                  // 
	dm_enc[?STR_Rm+STR_DESER+_area+"01"] = val(dm_enc[?STR_Rm+STR_FIELD+Area_EastA+"01"]); // MazIs(All)
	//                                                  // 
	dm_enc[?STR_Rm+STR_BEACH+_area+"01"] = val(dm_enc[?STR_Rm+STR_BEACH+Area_EastA+"01"]); // MazIs(All)
	//                                                  // 
	dm_enc[?STR_Rm+STR_FORES+_area+"01"] = val(dm_enc[?STR_Rm+STR_FORES+Area_EastA+"01"]); // MazIs(All)
	//                                                  // 
	dm_enc[?STR_Rm+STR_SWAMP+_area+"01"] = val(dm_enc[?STR_Rm+STR_SWAMP+Area_EastA+"01"]); // MazIs(All)
	//                                                  // 
	dm_enc[?STR_Rm+STR_CEMET+_area+"01"] = val(dm_enc[?STR_Rm+STR_CEMET+Area_EastA+"01"]); // MazIs(All)
	//                                                  // 
	dm_enc[?STR_Rm+STR_VOLCA+_area+"01"] = val(dm_enc[?STR_Rm+STR_VOLCA+Area_DthMt+"01"]); // MazIs(All)
	//                                                  // 
	dm_enc[?STR_Rm+STR_PATH_+_area+"01"] = val(dm_enc[?STR_Rm+STR_PATH_+Area_DthMt+"01"]); // MazIs(All)
	//                                                  // 
	//                                                  // 
	//                                                  // 
	//                                                  // 






	dg_enc_inst = ds_grid_create(6,6);
	ENC_INST_TMR_IDX = ds_grid_width(dg_enc_inst)-1;





	            _a=0;
	dg_ENC_SPR = ds_grid_create(3,4);
	// Weak   enemy
	dg_ENC_SPR[#_a,0] = spr_OW_enc_char_1_1a;
	dg_ENC_SPR[#_a,1] = spr_OW_enc_char_1_1b;
	            _a++;
	// Strong enemy
	dg_ENC_SPR[#_a,0] = spr_OW_enc_char_2_1a;
	dg_ENC_SPR[#_a,1] = spr_OW_enc_char_2_1b;
	            _a++;
	// Fairy
	FAIRY_IDX = _a;
	dg_ENC_SPR[#_a,0] = g.dl_Fairy_SPRITES[|0]; // spr_FairyA
	dg_ENC_SPR[#_a,1] = g.dl_Fairy_SPRITES[|1]; // spr_FairyB
	            _a++;
	//
	for(_i=ds_grid_width(dg_ENC_SPR)-1; _i>=0; _i--)
	{
	    dg_ENC_SPR[#_i,2] = sprite_get_width( dg_ENC_SPR[#_i,0]);
	    dg_ENC_SPR[#_i,3] = sprite_get_height(dg_ENC_SPR[#_i,1]);
	}


	ENC_PI  = PI_MOB_PUR;
	ENC_PAL = p.CI_WHT1_+p.CI_BLK1_+p.CI_BLK1_;



	dg_AreaNames_DEF = ds_grid_create(0,0);
	dg_AreaNames     = ds_grid_create(0,0);


	dg_hidden_exits_help = ds_grid_create(0,2);
	hidden_exits_help_xoff=0;
	hidden_exits_help_yoff=0;
	hidden_exits_help_counter=0;









	// -------------------------------------------------------------------------
	Overworld_init_data();
	//init_data_overworld();
	// -------------------------------------------------------------------------






	// -------------------------------------------------------------------------
	// Draw indicator on walkable water tiles that are always deep water graphic.
	// BTI: Boots Tile Indicator
	BootsTileIndicator_VER = 2;

	WaterSparkle_CUE1       = $08;
	WaterSparkle_DURATION1  = $20;
	WaterSparkle_DURATION2  = $08;
	WaterSparkle_DURATION0  = WaterSparkle_CUE1;
	WaterSparkle_DURATION0 += ((WaterSparkle_DURATION1-WaterSparkle_DURATION2)*4) + WaterSparkle_DURATION2;
	WaterSparkle_DURATION0 += $10;
	WaterSparkle_timer      = 0;

	// The row&clm of each possible pixel sparkle w/in an 8x8 square
	dl_WaterSparkle_RC=ds_list_create();
	ds_list_add(dl_WaterSparkle_RC,$03);
	ds_list_add(dl_WaterSparkle_RC,$11);
	ds_list_add(dl_WaterSparkle_RC,$17);
	ds_list_add(dl_WaterSparkle_RC,$24);
	//                                      //
	ds_list_add(dl_WaterSparkle_RC,$30);
	ds_list_add(dl_WaterSparkle_RC,$42);
	ds_list_add(dl_WaterSparkle_RC,$45);
	ds_list_add(dl_WaterSparkle_RC,$57);
	//                                      //
	ds_list_add(dl_WaterSparkle_RC,$61);
	ds_list_add(dl_WaterSparkle_RC,$64);
	ds_list_add(dl_WaterSparkle_RC,$76);
	//ds_list_add(dl_WaterSparkle_RC,$);
	//                                      //
	// Grid clms 0-4 represent an overworld tile under and around the pc;
	// 0: under pc, 1: east of pc, 2: west of pc, 3: south of pc, 4: north of pc
	// Grid row 0 is the owrc of the overworld tile. A -1 value means it will NOT sparkle.
	// Grid rows 1-4 represent an 8x8 section of its overworld tile;
	// 0: owrc, 1: top left, 2: top right, 3: bottom left, 4: bottom right
	// The grid row values are the sparkles for the current sparkle cycle and 
	// will refresh each sparkle cycle picked randomly from dl_WaterSparkle_RC
	dg_WaterSparkle=ds_grid_create(5,5);
	ds_grid_clear(dg_WaterSparkle,-1);


	//dl_WaterSparkle_OWRC=ds_list_create();
	//dl_BTI_active=ds_list_create();
	//BTI_DURATION0 = $08;
	//BTI_DURATION1 = $14;
	//BTI_DURATION2 = BTI_DURATION0*3;
	//BTI_DURATION3 = $20;
	//BTI_DURATION4 = BTI_DURATION1+BTI_DURATION2;
	//BTI_DURATION5 = BTI_DURATION4+BTI_DURATION3;
	//BTI_CUE1 = BTI_DURATION1;
	BTI_DURATION0  = $0A;
	BTI_DURATION1  = $10;
	//BTI_DURATION0  = $04;
	//BTI_DURATION1  = $08;
	BTI_DURATION2  = $20;
	BTI_DURATION3  = BTI_DURATION0+BTI_DURATION1;
	BTI_DURATION4  =(BTI_DURATION3+BTI_DURATION0) * 3;
	//BTI_DURATION4  = BTI_DURATION3*3;
	//BTI_DURATION4 += BTI_DURATION0*2;
	BTI_DURATION5  = BTI_DURATION2+BTI_DURATION4;

	dl_BTI_OWRC=ds_list_create();
	_count=ds_grid_width(dg_ChangeTiles_Boots);
	dg_BTI=ds_grid_create(_count,8);
	for(_i=0; _i<_count; _i++)
	{
	    _owrc = dg_ChangeTiles_Boots[#_i,0];
	    ds_list_add(dl_BTI_OWRC, _owrc);
	    dg_BTI[#_i,0] = _owrc;
	}

	             dl_WaterSparkle_RC2=ds_list_create();
	ds_list_copy(dl_WaterSparkle_RC2,dl_WaterSparkle_RC);
	ds_list_add( dl_WaterSparkle_RC2,$53);

	var _dl_RC=ds_list_create();
	ds_list_copy(_dl_RC,dl_WaterSparkle_RC2);
	ds_list_shuffle(_dl_RC);

	for(_i=0; _i<_count; _i++)
	{
	    for(_j=0; _j<3; _j++)
	    {
	        _idx1 = _j<<2;
	        _idx2 = 2+(_j<<1);
	        _idx2++;
        
	        _val = (_dl_RC[|_idx1+0]+$00) <<$00;
	        dg_BTI[#_i,_idx2] |= _val;
        
	        _val = (_dl_RC[|_idx1+1]+$08) <<$08;
	        dg_BTI[#_i,_idx2] |= _val;
        
	        _val = (_dl_RC[|_idx1+2]+$80) <<$10;
	        dg_BTI[#_i,_idx2] |= _val;
        
	        _val = (_dl_RC[|_idx1+3]+$88) <<$18;
	        dg_BTI[#_i,_idx2] |= _val;
	    }
	}

	ds_list_destroy(_dl_RC); _dl_RC=undefined;


	dl_WaterSparkle_idx=ds_list_create();

	// 11111111    11111111    11111111    11111111    
	//     11111111    11111111    11111111    11111111
	// 1111    11111111    11111111    11111111    1111











	// -------------------------------------------------------------------------
	enc_reen     = undefined;
	exit_grid_xy = dm_data[?MK_OWRC_NPAL1];
	pcrc         = dm_data[?MK_OWRC_NPAL1];

	enc_spawn_timer     = 0; // 0516. OW encounter spawn cooldown
	enc_spawn_timer_add = 0;



	with(g)
	{
	    var _DEFAULT    = val(other.dm_data[?MK_OWRC_NPAL1], OWRC_DFL); // 
	    OWRC_TOWN_RAUR1 = val(other.dm_data[?MK_OWRC_TWN_RAUR1], _DEFAULT); // 
	    OWRC_TOWN_RUTO1 = val(other.dm_data[?MK_OWRC_TWN_RUTO1], _DEFAULT); // 
	    OWRC_TOWN_SARI1 = val(other.dm_data[?MK_OWRC_TWN_SARI1], _DEFAULT); // 
	    OWRC_TOWN_SARI2 = val(other.dm_data[?MK_OWRC_TWN_SARI2], _DEFAULT); // 
	    OWRC_TOWN_MIDO1 = val(other.dm_data[?MK_OWRC_TWN_MIDO1], _DEFAULT); // 
	    OWRC_TOWN_NABO1 = val(other.dm_data[?MK_OWRC_TWN_NABO1], _DEFAULT); // 
	    OWRC_TOWN_DARU1 = val(other.dm_data[?MK_OWRC_TWN_DARU1], _DEFAULT); // 
	    OWRC_TOWN_NEWK1 = val(other.dm_data[?MK_OWRC_TWN_NEWK1], _DEFAULT); // 
	    OWRC_TOWN_OLDK1 = val(other.dm_data[?MK_OWRC_TWN_OLDK1], _DEFAULT); // 
	    OWRC_TOWN_BULB1 = val(other.dm_data[?MK_OWRC_TWN_BULB1], _DEFAULT); // 
	    //                                                                  // 
	    OWRC_DNGN_PRPA1 = val(other.dm_data[?MK_OWRC_PAL_PRPA1], _DEFAULT); // 
	    OWRC_DNGN_MDRO1 = val(other.dm_data[?MK_OWRC_PAL_MDRO1], _DEFAULT); // 
	    OWRC_DNGN_ISLD1 = val(other.dm_data[?MK_OWRC_PAL_ISLD1], _DEFAULT); // 
	    OWRC_DNGN_MAZE1 = val(other.dm_data[?MK_OWRC_PAL_MAZE1], _DEFAULT); // 
	    OWRC_DNGN_POTS1 = val(other.dm_data[?MK_OWRC_PAL_POTS1], _DEFAULT); // 
	    OWRC_DNGN_THRE1 = val(other.dm_data[?MK_OWRC_PAL_THRE1], _DEFAULT); // 
	    OWRC_DNGN_GRET1 = val(other.dm_data[?MK_OWRC_PAL_GRET1], _DEFAULT); // 
    
	    dm_dungeon[?STR_Dungeon+"01"+STR_OWRC] = OWRC_DNGN_PRPA1;
	    dm_dungeon[?STR_Dungeon+"02"+STR_OWRC] = OWRC_DNGN_MDRO1;
	    dm_dungeon[?STR_Dungeon+"03"+STR_OWRC] = OWRC_DNGN_ISLD1;
	    dm_dungeon[?STR_Dungeon+"04"+STR_OWRC] = OWRC_DNGN_MAZE1;
	    dm_dungeon[?STR_Dungeon+"05"+STR_OWRC] = OWRC_DNGN_POTS1;
	    dm_dungeon[?STR_Dungeon+"06"+STR_OWRC] = OWRC_DNGN_THRE1;
	    dm_dungeon[?STR_Dungeon+"07"+STR_OWRC] = OWRC_DNGN_GRET1;
	    //dm_dungeon[?STR_Dungeon+"08"+STR_OWRC] = ;
    
	    OWRC_NO_EXIT_DATA = _DEFAULT + $10;
	}




	// OBJ IDs. $8265-8274: $01,02,01,01, 01,01,01,02, 02,01,02,01 ,01,03,01,03

	// _idx_obj:  0   1   2   3,    4   5   6   7,    8   9   A   B,    C   D   E   F
	// _TYPES:   01, 02, 01, 01,   01, 01, 01, 02,   02, 01, 02, 01,   01, 03, 01, 03

	var _ar_id = 0;
	//                              // 
	       _a=0;                // 
	_ar_id[_a,0] = g.ENC_WEAK; // _idx_obj:  0
	_ar_id[_a,1] = g.ENC_STRG; // _idx_obj:  1
	_ar_id[_a,2] = g.ENC_WEAK; // _idx_obj:  2
	_ar_id[_a,3] = g.ENC_WEAK; // _idx_obj:  3
	       _a++;                // 
	//                              // 
	_ar_id[_a,0] = g.ENC_WEAK; // _idx_obj:  4
	_ar_id[_a,1] = g.ENC_WEAK; // _idx_obj:  5
	_ar_id[_a,2] = g.ENC_WEAK; // _idx_obj:  6
	_ar_id[_a,3] = g.ENC_STRG; // _idx_obj:  7
	       _a++;                // 
	//                              // 
	_ar_id[_a,0] = g.ENC_STRG; // _idx_obj:  8
	_ar_id[_a,1] = g.ENC_WEAK; // _idx_obj:  9
	_ar_id[_a,2] = g.ENC_STRG; // _idx_obj:  A
	_ar_id[_a,3] = g.ENC_WEAK; // _idx_obj:  B
	       _a++;                // 
	//                              // 
	_ar_id[_a,0] = g.ENC_WEAK; // _idx_obj:  C
	_ar_id[_a,1] = g.ENC_FARY; // _idx_obj:  D
	_ar_id[_a,2] = g.ENC_WEAK; // _idx_obj:  E
	_ar_id[_a,3] = g.ENC_FARY; // _idx_obj:  F
	       _a++;                // 
	//                              // 
	// _ar_id[_a,0] = g.ENC_; // _idx_obj:  
	// _ar_id[_a,1] = g.ENC_; // _idx_obj:  
	// _ar_id[_a,2] = g.ENC_; // _idx_obj:  
	// _ar_id[_a,3] = g.ENC_; // _idx_obj:  
	//        _a++;           // 
	//                              // 
	//
	_clms = array_height_2d(_ar_id);
	_rows = array_length_2d(_ar_id,0);
	dg_enc_obj_id_spawn_data_2 = ds_grid_create(_clms,_rows);
	for(_i=_clms-1; _i>=0; _i--)
	{
	    for(_j=_rows-1; _j>=0; _j--)
	    {
	        dg_enc_obj_id_spawn_data_2[#_i,_j] = _ar_id[_i,_j];
	    }
	}

	_ar_id = 0;



	enc_objs_spawned_count = 0;
	MEAT_SPR   = val(g.dm_ITEM[?hex_str(bitNum(ITM_MEAT))+STR_Sprite], spr_Item_Meat_1a);
	MEAT_DUR   = $100;
	MEAT_timer = 0;
	MEAT_owrc  = $0000;
	MEAT_ow_x  = 0;
	MEAT_ow_y  = 0;
	MEAT_countdown = 2;






	dg_map = ds_grid_create($00,$0A);
	// -------------------------------------------------------------


	Pause_SOUND1 = get_audio_theme_track(dk_ChooseChar);
	Pause_SOUND2 = get_audio_theme_track(dk_CursorFileSelect);





	// -------------------------------------------------------------
	// 0: location num
	// 1: item id
	// 2: spawn datakey
	// 3: rm name
	// 4: owrc
	// 5: -
	dm_rando_locations = ds_map_create();


	dm_Rando_TSRC = ds_map_create();
	//dm_rando_biome = ds_map_create();












	                         _i=1;
	Warp_state_FLUTE       = _i++;
	Warp_state_SPIN_UP     = _i++;
	Warp_state_VANISH      = _i++;
	Warp_state_OWRC_CHANGE = _i++;
	Warp_state_APPEAR      = _i++;
	Warp_state_SPIN_DOWN   = _i++;
	Warp_state             = 0;

	Warp_is_warping = false;
	Warp_FLUTE_THEME = STR_Warp+STR_Flute;
	//Warp_FLUTE_THEME = dk_MagicalKeyHouse;
	//Warp_FLUTE_THEME = "_Jingle"+"01";

	Warp_DURATION1 = $70;
	Warp_DURATION2 = $40;
	Warp_DURATION3 = $30;
	Warp_timer     = 0;

	Warp_owrc = $0000;
	Warp_x    = 0;
	Warp_y    = 0;
	Warp_yoff = 0;

	Warp_speed     = 0;
	Warp_speed_MAX = 7;

	Warp_destination_num = 0;
	_i=0;
	var _GRID_HEIGHT = 3;
	dg_Warp_DESTINATIONS=ds_grid_create(_i,  _GRID_HEIGHT);
	//                                              //
	ds_grid_resize(dg_Warp_DESTINATIONS,_i+1,_GRID_HEIGHT);
	dg_Warp_DESTINATIONS[#_i,0] = STR_Rauru;
	dg_Warp_DESTINATIONS[#_i,1] = g.OWRC_TOWN_RAUR1;
	dg_Warp_DESTINATIONS[#_i,2] = MapAreaName_RAURU;
	_i++;
	//                                              //
	ds_grid_resize(dg_Warp_DESTINATIONS,_i+1,_GRID_HEIGHT);
	dg_Warp_DESTINATIONS[#_i,0] = STR_Ruto;
	dg_Warp_DESTINATIONS[#_i,1] = g.OWRC_TOWN_RUTO1;
	dg_Warp_DESTINATIONS[#_i,2] = MapAreaName_RUTO;
	_i++;
	//                                              //
	ds_grid_resize(dg_Warp_DESTINATIONS,_i+1,_GRID_HEIGHT);
	dg_Warp_DESTINATIONS[#_i,0] = STR_Saria;
	dg_Warp_DESTINATIONS[#_i,1] = g.OWRC_TOWN_SARI1;
	dg_Warp_DESTINATIONS[#_i,2] = MapAreaName_SARIA;
	_i++;
	//                                              //
	ds_grid_resize(dg_Warp_DESTINATIONS,_i+1,_GRID_HEIGHT);
	dg_Warp_DESTINATIONS[#_i,0] = STR_Mido;
	dg_Warp_DESTINATIONS[#_i,1] = g.OWRC_TOWN_MIDO1;
	dg_Warp_DESTINATIONS[#_i,2] = MapAreaName_MIDO;
	_i++;
	//                                              //
	ds_grid_resize(dg_Warp_DESTINATIONS,_i+1,_GRID_HEIGHT);
	dg_Warp_DESTINATIONS[#_i,0] = STR_Nabooru;
	dg_Warp_DESTINATIONS[#_i,1] = g.OWRC_TOWN_NABO1;
	dg_Warp_DESTINATIONS[#_i,2] = MapAreaName_NABOORU;
	_i++;
	//                                              //
	ds_grid_resize(dg_Warp_DESTINATIONS,_i+1,_GRID_HEIGHT);
	dg_Warp_DESTINATIONS[#_i,0] = STR_Darunia;
	dg_Warp_DESTINATIONS[#_i,1] = g.OWRC_TOWN_DARU1;
	dg_Warp_DESTINATIONS[#_i,2] = MapAreaName_DARUNIA;
	_i++;
	//                                              //
	ds_grid_resize(dg_Warp_DESTINATIONS,_i+1,_GRID_HEIGHT);
	dg_Warp_DESTINATIONS[#_i,0] = STR_New_Kasuto;
	dg_Warp_DESTINATIONS[#_i,1] = g.OWRC_TOWN_NEWK1;
	dg_Warp_DESTINATIONS[#_i,2] = MapAreaName_NEW_KASUTO;
	_i++;
	//                                              //
	ds_grid_resize(dg_Warp_DESTINATIONS,_i+1,_GRID_HEIGHT);
	dg_Warp_DESTINATIONS[#_i,0] = STR_Old_Kasuto;
	dg_Warp_DESTINATIONS[#_i,1] = g.OWRC_TOWN_OLDK1;
	dg_Warp_DESTINATIONS[#_i,2] = MapAreaName_KASUTO;
	_i++;
	//                                              //
	ds_grid_resize(dg_Warp_DESTINATIONS,_i+1,_GRID_HEIGHT);
	dg_Warp_DESTINATIONS[#_i,0] = STR_Bulblin;
	dg_Warp_DESTINATIONS[#_i,1] = g.OWRC_TOWN_BULB1;
	dg_Warp_DESTINATIONS[#_i,2] = MapAreaName_BULBLIN;
	_i++;
	//                                              //






	// -------------------------------------------------------------
	/*
	if (0){
	    sdm("dg_tid:        "+string(dg_tid));
	    sdm("dg_pc_spr:     "+string(dg_pc_spr));
	    sdm("dg_solid_def:  "+string(dg_solid_def));
	    sdm("dg_solid:      "+string(dg_solid));
	    sdm("dg_tsrc_def:   "+string(dg_tsrc_def));
	    sdm("dg_tsrc:       "+string(dg_tsrc));
	    sdm("dm_enc:        "+string(dm_enc));
	    sdm("dl_biome_enc:  "+string(dl_biome_enc));
	    sdm("dm_data:       "+string(dm_data));
    
	    sdm("dg_area:       "+string(dg_area));
	    sdm("dg_enc_obj_id_spawn_data_1:  "+string(dg_enc_obj_id_spawn_data_1));
	    sdm("dg_enc_obj_id_spawn_data_2:  "+string(dg_enc_obj_id_spawn_data_2));
	    sdm("dg_enc_inst:   "+string(dg_enc_inst));
	    sdm("dg_ENC_SPR:    "+string(dg_ENC_SPR));
	    //sdm("dg_owrc_area:  "+string(dg_owrc_area));
	}
	*/



	ds_list_destroy(_dl_1); _dl_1=undefined;







}
