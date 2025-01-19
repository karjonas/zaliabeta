/// @description  FireRope_init1()
function FireRope_init1() {


	GameObjectB_init();


	SPR_A = spr_Fireball2;


	GO_init_palidx(PI_MOB_ORG); // orange
	//GO_pal_idx_init(PI_MOB_RED); // red
	//GO_pal_idx_init(PI_MOB_BLU); // blue


	FIREBALL_COUNT = 6;
	fireball_count = FIREBALL_COUNT;


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


	// 0: No rot, 1: 90 deg, 2: 180 deg, 3: 270 deg
	rotation = 0;







}
