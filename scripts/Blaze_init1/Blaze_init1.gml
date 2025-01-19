/// @description  Blaze_init1()
function Blaze_init1() {


	GameObjectB_init();


	HSPD_JUMP_DEF   = $10;
	HSPD_JUMP_1     = $20;
	HSPD_JUMP_2     = $30;
	hspd_jump       = HSPD_JUMP_DEF;

	VSPD_JUMP_1     = $E5;
	VSPD_JUMP_2     = $D0;
	vspd_jump       = VSPD_JUMP_1;
	vspd_MAX        = $7<<4;

	DUR_DELAY_JUMP  = $80;


	ANIM_SPEED      = $04;
	DUR_FADE1       = $30;
	//DUR_FADE1       = $40;
	DRAW_CUE1       = (DUR_FADE1>>3) * 3;


	can_leave_kid = false;

	size = 2;







}
