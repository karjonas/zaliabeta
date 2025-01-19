/// @description  TogglingPathDirectionB_init1()
function TogglingPathDirectionB_init1() {


	init_vars_go_A();

	init_vars_Challenge_1a();


	var           _a = 1;
	SUB_STATE_1 = _a++; // PC controls Elevator
	SUB_STATE_2 = _a++; // self controls Elevator
	SUB_STATE_3 = _a++; // 
	SUB_STATE_4 = _a++; // 
	// SUB_STATE_5 = _a++; // 
	// SUB_STATE_6 = _a++; // 
	sub_state = SUB_STATE_1;


	DUR_DELAY_1 = $14;
	DUR_SELF_CONTROL1_DELAY = $20 - DUR_DELAY_1;
	// DUR_SELF_CONTROL1_DELAY = $20;
	DUR_SELF_CONTROL2_DELAY = $00;
	DUR_PLYR_CONTROL1_DELAY = $08;


	// RADIUS = $06 <<3; // 4 arrows each quadrant
	RADIUS = $08 <<3; // 6 arrows each quadrant
	RADIUS = $07 <<3; // 


	path_dir = 1; // 1: Forward, -1: Backward



	// 1: TOP, 2: RGT, 3: BTM, 4: LFT
	// var       _a = 1;
	LOC_TOP = 1; // 
	LOC_RGT = 2; // 
	LOC_BTM = 3; // 
	LOC_LFT = 4; // 


	// The current location(out of 4).
	location_a = LOC_TOP;
	// Which location the current one will take you to.
	location_b = LOC_RGT;

	// target_pos_reached = false;
	loc_b_reached = false;


	SPEED1 = $10;
	// SPEED1 = $18;


	PI_FRWD = PI_MOB_RED; // Red
	PI_BKWD = PI_MOB_BLU; // Blue
	// PI_BKWD = p.PI_MOB4; // Purple
	if (path_dir) GO_init_palidx(PI_FRWD);
	else          GO_init_palidx(PI_BKWD);


	ARROW_SPR_A1    = spr_arrow_4a_RWB;
	ARROW_SPR_A1    = spr_arrow_4a_BWR;
	ARROW_SPR_A2    = spr_arrow_4a_WRB;
	ARROW_CNT       = ((RADIUS>>3) - 2) <<2; // 
	dg_arrows = ds_grid_create(ARROW_CNT, 3); ds_grid_clear(dg_arrows, 0);
	arrow_lit_idx = 0;

	ARROW_SPR_B1    = spr_arrow_5a_BWR;
	ARROW_SPR_B2    = spr_arrow_5a_WRB;


	dg_a = ds_grid_create(4, 3); ds_grid_clear(dg_a, 0);







}
