/// @description  SpikeTrapC_init1()
function SpikeTrapC_init1() {

	// Spike ball on spinning chain


	GameObjectB_init();


	SPR_A = spr_Spike_ball_1a;
	SPR_B = spr_Spike_ball_1b;
	dl_sprites[|1] = SPR_B;
	dl_sprites[|0] = SPR_A;
	GO_set_sprite(id, dl_sprites[|0]);

	GO_init_palidx(PI_MOB_RED);


	CHAIN_SPR = spr_Chain_link_01a;


	CHAIN_LENGTH = 6; // units of 8
	chain_length = CHAIN_LENGTH;


	// 0: No spin. 1: Clockwise, -1: Counter-Clockwise
	SPIN_DIR = 1;
	spin_dir = SPIN_DIR;


	// Duration (in seconds) it takes to make a full revolution
	REV_DUR = 6;
	rev_dur = REV_DUR;

	// degree change per frame
	SPEED1 = 1;
	speed1 = SPEED1;


	ANGLE   = 0; // in degrees
	angle   = ANGLE;
	LEN_OFF = 8;







	/*
	/// SpikeTrapC_ini1()


	SPR_A = spr_Spike_ball_1a;
	SPR_B = spr_Spike_ball_1b;
	dl_sprites[|1] = SPR_B;
	dl_sprites[|0] = SPR_A;
	GO_set_sprite(id, dl_sprites[|0]);

	GO_pal_idx_init(p.PI_MOB2); // red
	// GO_pal_idx_init(p.PI_MOB3); // blue


	// ANCHOR_X = 0;
	// ANCHOR_Y = 0;

	CHAIN_LENGTH = 8 <<3;
	chain_length = CHAIN_LENGTH;


	// 0: No spin. 1: Clockwise, -1: Counter-Clockwise
	SPIN_DIR = 1;
	spin_dir = SPIN_DIR;


	SPD_MAX     = $20;
	spd_max     = SPD_MAX;

	SPD_CHANGE  = 1;
	hspd_change = SPD_CHANGE;
	vspd_change = SPD_CHANGE;



	// 1: RGT, 2: LFT, 4: DWN, 8: UP
	SPAWN_POS = 1;

	hspd_change = -SPD_CHANGE;
	vspd_change =  SPD_CHANGE * spin_dir;
	hspd        =  0;
	vspd        =  ( spd_max  * spin_dir) & $FF;
	*/







}
