/// @description  Capper_udp()
function Capper_udp() {


	Bot_udp();

	can_draw_self = true;



	switch(sub_state)
	{
	    // -------------------------------------------------------------------------
	    // -------------------------------------------------------------
	    case ST_SUB1_LURK:{
	    if (g.counter1&$C) GO_set_sprite(id,SPR_NORM);
	    else               GO_set_sprite(id,SPR_BALL);
    
	    switch(ver){
	    case 1:{yScale = -1; break;}
	    case 2:{yScale =  1; break;}
	    }
	    break;}
    
    
    
    
    
    
	    // -------------------------------------------------------------------------
	    // -------------------------------------------------------------
	    case ST_SUB1_DROP:{
	    GO_set_sprite(id,SPR_BALL);
    
	    if (yt-yy_ceil < 8 
	    &&  !yScale )
	    {    yScale   = -1;  }
	    else yScale   =  1;
	    break;}
    
    
    
    
    
    
	    // -------------------------------------------------------------------------
	    // -------------------------------------------------------------
	    case ST_SUB1_ATCK:{
	    yScale = 1;
	    break;}
	}//switch(sub_state)







	// -------------------------------------------------------------------------
	if(!yScale) draw_yoff = DRAW_YOFF_FLIPPED;
	else        draw_yoff = 0;


	if (sub_state==ST_SUB1_LURK 
	||  sub_state==ST_SUB1_DROP )
	{
	    if (spr_eyes) spr_eyes = SPR_EYE1;
    
	    if (sprite == SPR_BALL) eyes_yoff   = -2;
	    else                    eyes_yoff   =  0;
	                            eyes_yoff  *=  yScale;
    
	    if (sprite == SPR_BALL) mouth_yoff  =  1;
	    else                    mouth_yoff  =  3;
	                            mouth_yoff *=  yScale;
	    if(!yScale)             mouth_yoff -=  2;
	}







}
