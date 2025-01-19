/// @description  Ache_udp()
function Ache_udp() {


	// F17E
	can_draw_self = true;
	yScale        = 1;
	draw_yoff     = 0;

	if (ver==2 
	&&  acheManTimer )
	{   // Acheman
	    GO_set_sprite(id,spr_Acheman1);
	    draw_yoff = 8 + 2;
	}
	else
	{   // Ache
	    if (behavior 
	    &&  g.counter1&$8 )
	    {    GO_set_sprite(id,SPR_FLAP);  }
	    else GO_set_sprite(id,SPR_IDLE);
    
	    if(!behavior) yScale = -1;
	}







}
