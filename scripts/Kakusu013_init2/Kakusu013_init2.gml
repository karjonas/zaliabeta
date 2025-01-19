/// @description  Kakusu013_init2()
function Kakusu013_init2() {

	// Currently unused


	var                 _a=1;
	SUB_STATE_IDLE      = _a++;
	//SUB_STATE_CHLG_1A = _a++;
	//SUB_STATE_CHLG_1B = _a++;
	SUB_STATE_REVL    = _a++; // REVeaL
	SUB_STATE_ACTV    = _a++;
	sub_state         = SUB_STATE_IDLE;
	sub_state_timer     = 0;


	VSPD_REVEAL = vspd_jump;



	Kakusu_init2();






}
