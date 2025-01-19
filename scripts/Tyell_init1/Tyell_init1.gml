/// @description  Tyell_init1()
function Tyell_init1() {


	GameObjectB_init();

	GO_depth_init(DEPTH_ENEMY);
	DEPTH_BG    = DEPTH_BG1;
	//DEPTH_BG    = DEPTH_BG3;

	DRAW_YOFF   = 0;


	var               _a=1;
	SUB_STATE_IDLE1 = _a++; // IDLE
	SUB_STATE_LAUNCH_COUNTDOWN  = _a++; // 
	//SUB_STATE_LAUNCH  = _a++; // 
	SUB_STATE_AIM   = _a++; // 
	SUB_STATE_ATK1  = _a++; // ATtacK 1
	SUB_STATE_ATK2  = _a++; // ATtacK 2
	SUB_STATE_BREAK = _a++; // BREaKing up
	SUB_STATE_DONE1 = _a++; // 
	SUB_STATE_DONE  = _a++; // 
	sub_state       = SUB_STATE_IDLE1;


	use_tiles = true;
	//use_tiles = false;

	UNIQUE = TID_BREAK1;

	anim_frame  = 0;
	anim_ctr    = 0;

	dg_anim = ds_grid_create(4,3);



	IDL1_DUR                = $80;
	AGRO_DUR                = $00;
	HOVR_DUR                = $C0;
	ATK_DELAY1_DUR          = $10;
	LaunchCountdown_DUR     = $50 + irandom($40);
	LaunchCountdown_timer   = LaunchCountdown_DUR;


	RISE_DIST       = $06;
	RISE_VSPD_MAX   = $10;
	RISE_VSPD_INC   = $02;


	aim_move_dir    =   1; // 1: RGT, 2: LFT, 4: DWN, 8: UP
	aim_axis        =   0; // 0: Horizontal, 1: Vertical
	AIM_SPD         = $10;
	AGRO_DIST       = $C0;
	ATCK_SPD        = $30;


	ATK_LEVEL       = irandom(1); // 0 High, 1 Low
	//ATK_HEIGHT      = 







}
