/// @description  PCProj_init_vars()
function PCProj_init_vars() {


	var _i, _a;


	//pID         = 1; // 008D & 008E
	update_idx  = 0;
	disintegrate_counter  = 0; // counter disintegrate


	DURATION0     = $0E;
	DURATION1     = $20;
	CUE1          = $100 -  DURATION0; // $F2;
	timeout_BEAM1 = CUE1 -  DURATION1;
	timeout_BEAM2 = CUE1 - (DURATION1+$1C);
	timeout_FIRE1 = $00;
	timeout       = timeout_BEAM1; // 05CA

	//CUE2          = timeout_BEAM2 + (DURATION1+1);
	CUE2          = timeout_BEAM2 + (DURATION1+(DURATION0>>2));
	//CUE2          = timeout_BEAM2 + (DURATION1+(DURATION0>>1));
	//CUE2          = timeout_BEAM2 + DURATION1;
	//CUE2          = timeout_BEAM2 + (DURATION1+DURATION0);



	BIT_BEM1    =  $01; // BEAM
	BIT_FIR1    =  $02; // FIRE
	type_bits   =  BIT_BEM1;


	              _i=1;
	TypeID_BEAM = _i++;
	TypeID_FIRE = _i++;
	TypeID      = TypeID_BEAM;







}
