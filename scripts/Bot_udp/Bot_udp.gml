/// @description  Bot_udp()
function Bot_udp() {


	// SPR_NORM    = 0;
	// SPR_SQUISH  = 1;
	// SPR_BALL    = 2;

	can_draw_self = true;


	xScale = 1;

	// EFA2
	if (is_idle) // 00AF
	{
	    if (g.counter1&$4) GO_set_sprite(id,SPR_NORM);
	    else               GO_set_sprite(id,SPR_SQSH);
	}
	else
	{   // EF91
	    if (counter&$C)    GO_set_sprite(id,SPR_NORM); // When $C bits are set    ($4-F).  75% of the time
	    else               GO_set_sprite(id,SPR_BALL); // When $C bits are clear  ($0-3).  25% of the time
	}

	if (sprite==SPR_SQSH) spr_eyes  = SPR_EYE2;
	else                  spr_eyes  = SPR_EYE1;
	//                      spr_eyes  = SPR_EYE1; // TESTING

	if (sprite==SPR_BALL) eyes_yoff = -2;
	else                  eyes_yoff =  0;

	/*
	if (ver==4)
	{
	    switch(sprite){
	    case SPR_NORM:{GO_set_sprite(id,spr_Bot2_Norm); break;}
	    case SPR_SQSH:{GO_set_sprite(id,spr_Bot2_Squish); break;}
	    case SPR_BALL:{GO_set_sprite(id,spr_Bot2_Ball); break;}
	    }
	}
	*/







}
