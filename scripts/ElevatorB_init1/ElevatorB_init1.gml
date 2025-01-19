/// @description  ElevatorB_init1()
function ElevatorB_init1() {


	GameObjectB_init();

	ElevatorA_init_1();

	BODY_SPR = spr_Elevator_3a_WRB;


	// Current moving dir. 0: Not moving, 1: RGT, 2: LFT, 4: DWN, 8: UP
	moving_dir  = 0;

	// Last moving_dir. 1: RGT, 2: LFT, 4: DWN, 8: UP
	// move_dir    = moving_dir;


	// pc x diff from elev when, and if, pc x movement is 
	// locked during elevator movement.
	// pc_xoff = 0;







}
