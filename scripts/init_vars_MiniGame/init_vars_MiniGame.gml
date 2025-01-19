/// @description  init_vars_MiniGame()
function init_vars_MiniGame() {


	timer = 0;

	// ST_NORM = 1;
	// state   = 0;

	var            _a = 1;
	ST_SUB1_PRE1 = _a++; // PRE: Pre-game
	ST_SUB1_PRE2 = _a++;
	ST_SUB1_PRE3 = _a++;
	ST_SUB1_PRE4 = _a++;
	ST_SUB1_PLY1 = _a++; // PLY: Playing game
	ST_SUB1_PLY2 = _a++; // PLY: Playing game
	ST_SUB1_PST1 = _a++; // PST: Post game
	ST_SUB1_PST2 = _a++; // 
	ST_SUB1_PST3 = _a++; // 
	ST_SUB1_END1 = _a++; // 
	ST_SUB1_NPC1 = _a++; // Result dlg
	sub_state    = ST_SUB1_PRE1;


	SND_GAME_START  = get_audio_theme_track(STR_Encounter+STR_Enter);
	//SND_GAME_START  = Audio.SND_ENC_ENTER;
	SND_GAME_DONE   = get_audio_theme_track(STR_Encounter+STR_Leave);
	//SND_GAME_DONE = Audio.SND_LOCK_OPN1;

	MUS_GAME_THEME = dk_Minigame+"01";
	MUS_GAME_PLAY  = get_audio_theme_track(MUS_GAME_THEME);
	//MUS_GAME_PLAY = get_audio_theme_track(STR_Boss+"01");
	//var _THEME = STR_Boss+"01";
	//MUS_GAME_PLAY = get_audio_theme_track(_THEME);
	//var _INTRO = get_music_theme_track_intro(MUS_GAME_PLAY);



	pc_allow    = 0; // What actions pc allowed to do.
	points      = 0;


	DUR_DELAY_START = $20;
	DUR_DELAY_FIRST = $40;
	tmr_next    = 0;


	seq_idx     = -1;

	GROUND_Y    = 0;

	PC_START_GAME_X = 0;
	// PC_START_GAME_XX = 0;


	points_can_draw = 0;
	POINTS_X_OFF = $08 <<3; // dist from camXL
	POINTS_Y_OFF = $08 <<3; // dist from camYT


	dl_SEQ  = ds_list_create();
	dg_SEQ  = ds_grid_create(0,0);


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







}
