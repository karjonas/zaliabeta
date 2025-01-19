/// @description  TogglingPathDirectionA_init1()
function TogglingPathDirectionA_init1() {


	init_vars_go_A();

	init_vars_Challenge_1a();


	var           _a = 1;
	SUB_STATE_1 = _a++;
	SUB_STATE_2 = _a++;
	SUB_STATE_3 = _a++;
	sub_state = SUB_STATE_1;

	path_dir = 1; // 1: Forward, -1: Backward


	door_spr = g.Doorway1_SPR;
	/*
	var     _CASE = 1;
	switch (_CASE) {
	case 1: { door_spr = spr_doorway_1a_WRB;   break; }
	case 2: { door_spr = spr_doorway_1a_BRW_2; break; }
	case 3: { door_spr = g.Doorway1_SPR; break; }
	case 4: { door_spr = spr_doorway_1a_WBR_3; break; } // no btm graphic
	}
	*/

	PI_FRWD = PI_MOB_RED; // Red
	PI_BKWD = PI_MOB_BLU; // Blue
	// PI_BKWD = p.PI_MOB4; // Purple
	if (path_dir) GO_init_palidx(PI_FRWD);
	else          GO_init_palidx(PI_BKWD);
	GO_init_palidx(PI_BGR_2);


	DOOR_SPR_W  = sprite_get_width( door_spr);
	DOOR_SPR_H  = sprite_get_height(door_spr);

	DOOR_BGR_W  = DOOR_SPR_W;
	DOOR_BGR_H  = min(33, DOOR_SPR_H);
	DOOR_BGR_H  = DOOR_SPR_H;

	ARROW_SPR1  = spr_arrow_2a_RWB;
	ARROW_SPR2  = spr_arrow_2a_BRW;
	if (path_dir) arrow_pi = PI_FRWD;
	else          arrow_pi = PI_BKWD;


	dg_doors = ds_grid_create(0, 3);



	DOOR_HB_W = DOOR_SPR_W - 6;







}
