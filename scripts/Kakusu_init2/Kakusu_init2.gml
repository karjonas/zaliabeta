/// @description  Kakusu_init2()
function Kakusu_init2() {


	var _i, _val, _len, _pos;


	    TEST_A1 = false;
	if (TEST_A1)
	{
	    body_type = 1 + (irandom($FF)&$1);
	    eyes_type = 1 + (irandom($FF)&$1);
	}



	switch(body_type)
	{
	    case 1:{
	    BODY1_SPR_NORM = spr_Bot2_Norm;
	    BODY1_SPR_SQSH = spr_Bot2_Squish;
	    BODY1_SPR_BALL = spr_Bot2_Ball;
	    break;}
    
	    case 2:{
	    BODY1_SPR_NORM = spr_Slime_Transparent_1a_WRB;
	    BODY1_SPR_SQSH = spr_Slime_Transparent_1b_WRB;
	    BODY1_SPR_BALL = spr_Slime_Transparent_1c_WRB;
	    break;}
	}



	if (abilities&ABL_RUN_)
	{
	    RPB = irandom($F)<<4;
	    //sdm("RPB: "+hex_str(RPB));
	}







}
