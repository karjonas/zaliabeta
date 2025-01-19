/// @description  PlatformA_init_1()
function PlatformA_init_1() {


	Platform_init_1();

	//BODY_SPR = spr_Elevator_1A;
	BODY_SPR = spr_Elevator_2a_WRB;

	GEAR_SPR = spr_Elevator_gear_1a_WRB;


	HSPD    = $10;
	VSPD    = $10;
	hspd1   = HSPD;
	vspd1   = VSPD;


	dg_path = ds_grid_create(1,3);


	DELAY1_DUR = $40;
	DELAY2_DUR = $10;


	radius  = 0;
	angle   = 0;

	// Duration (in seconds) it takes to make a full revolution
	REV_DUR = 6;
	rev_dur = REV_DUR;

	// degree change per frame
	SPEED1 = 1;







}
