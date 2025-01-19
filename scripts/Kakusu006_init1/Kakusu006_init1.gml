/// @description  Kakusu006_init1()
function Kakusu006_init1() {

	// WestA_32, Room above North Castle East entrance


	Kakusu_init();


	var                 _a = 1;
	SUB_STATE_CHLG_1A = _a++;
	SUB_STATE_CHLG_1B = _a++;
	SUB_STATE_ACTV    = _a++;
	sub_state         = SUB_STATE_CHLG_1A;
	sub_state_timer     = 0;


	hspd_jump   = HSPD_JUMP_2;
	VSPD_REVEAL = vspd_jump;


	projectile_OBJ = Flame1;
	projectile_VER = 1;
	projectile     = projectile_OBJ;
	projectile_ver = projectile_VER;







}
