/// @description  Goriya_udp()
function Goriya_udp() {


	can_draw_self = true;

	if(!behavior)
	{
	    if (hspd && g.counter1&$8) GO_set_sprite(id,SPR_IDL2); // 1 legs open
	    else                       GO_set_sprite(id,SPR_IDL1); // 0 legs closed
	}
	else
	{
	    if (behavior==3)           GO_set_sprite(id,SPR_ATK2); // 3 attack high 
	    else                       GO_set_sprite(id,SPR_ATK1); // 2 attack low 
	}







}
