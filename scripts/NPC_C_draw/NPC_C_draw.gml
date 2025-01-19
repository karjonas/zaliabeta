/// @description  NPC_C_draw()
function NPC_C_draw() {


	if (ver==1 
	||  ver==2 )
	{
	    if (sub_state==SUB_STATE_SEQ 
	    ||  sub_state==SUB_STATE_CMPL1 )
	    {
	        draw_sprite_(g.Block1_SPR1,0, Block_XL+8,Block_YT+8, palidx);
	    }
	}







}
