/// @description  Challenge_DefeatAllA_init_1()
function Challenge_DefeatAllA_init_1() {


	Challenge_init();


	var                _a = 1;
	SUB_STATE_INCM_1 = _a++; // INCM: INCoMplete
	SUB_STATE_CMPL_1 = _a++; // CMP1: CoMPlete 1
	SUB_STATE_CMPL_2 = _a++; // CMP2: CoMPlete 2
	SUB_STATE_CMPL_3 = _a++; // CMP2: CoMPlete 3
	sub_state = SUB_STATE_INCM_1;


	DUR_DELAY_CMP1 = $40; // Delay completion start
	DUR_DELAY_CMP2 = $20; // Delay completion reward


	locked_door = noone;


	dg_status = ds_grid_create(0,4);







}
