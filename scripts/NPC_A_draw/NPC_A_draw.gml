/// @description  NPC_A_draw()
function NPC_A_draw() {

	// Triforce Keeper ------------------


	if (can_draw_self)
	{
	    GameObject_draw_1a(sprite, palidx);
	}


	if (tri_can_draw)
	{
	    tri_can_draw = 0;
	    draw_sprite_(TRI_SPR,0, drawX+tri_xOff, drawY+tri_yOff, get_pi(p.triforce_pi));
	}







}
