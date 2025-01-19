/// @description  init_vars_Bot()
function init_vars_Bot() {

	// Bot, Myu

	counter     = 0; // 0444,X

	// behavior == 1: spr_Bot_Norm
	// behavior == 0: spr_Bot_Ball
	behavior    = 0; // 0081,X

	is_idle     = 1; // $00AF,X. 1: still, 0: moving horizontal
	walk_dir    = 1; // 0401,X

	HSPD_JUMP_DEF   = $10;
	HSPD_JUMP_1     = $20;
	HSPD_JUMP_2     = $30;
	hspd_jump       = HSPD_JUMP_DEF;

	HSPD_WALK1      = $20;
	HSPD_WALK2      = $40;
	hspd_walk       = 0;

	hspd            = 0; // 0071,X


	// JUMP DIRECTION WILL ALWAYS BE TOWARD LINK
	INIT_VEL_DEF    = $E5;
	INIT_VEL_HGH    = $9E; // 158. higher jump

	TERM_VEL_DEF    = $50;
	term_vel        = TERM_VEL_DEF;

	VSPD_INC_DEF    = 2;
	VSPD_INC_HGH    = 3; // higher jump
	vspd_grav       = VSPD_INC_DEF;







}
