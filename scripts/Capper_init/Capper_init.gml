/// @description  Capper_init()
function Capper_init() {

	// v1. Waits UPSIDE-DOWN on ceiling and falls on PC when w/in range
	// v2. Waits RIGHTSIDE-UP on ground and aggros when w/in range
	// After aggro'd and dropped on floor, just update_Bot() is called.


	var _i, _a;

	Bot_init2();
	GO_init_palidx(PI_MOB_PUR);


	VSPD_BOUNCE = (-$20)&$FF;

	abilities  = ABL_WALK;
	abilities |= ABL_JUMP;

	                  _a=1;
	ST_SUB1_LURK    = _a++;
	// ST_SUB1_CEIL    = _a++;
	ST_SUB1_DROP    = _a++;
	ST_SUB1_ATCK    = _a++;
	sub_state       = ST_SUB1_LURK;


	AGRO_DIST         = $06<<3; // 
	DRAW_YOFF_FLIPPED = 2;
	yy_ceil = (yt>>3)<<3;


	switch(ver){
	    // -------------------------------------------------------------------------
	    // -------------------------------------------------------------
	    case 1:{
	    AGRO_DIST         = $06<<3;
	    DRAW_YOFF_FLIPPED = 2;
	    yy_ceil = (yt>>3)<<3;
	    set_xlyt(id, xl, yy_ceil-(DRAW_YOFF_FLIPPED+1));
	    break;}
    
    
	    // -------------------------------------------------------------------------
	    // -------------------------------------------------------------
	    case 2:{
	    AGRO_DIST = $06<<3;
	    break;}
	}







}
