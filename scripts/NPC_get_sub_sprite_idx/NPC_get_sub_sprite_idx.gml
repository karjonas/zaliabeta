/// @description  NPC_get_sub_sprite_idx()
function NPC_get_sub_sprite_idx() {


	// return 0: use primary   sprite
	// return 1: use secondary sprite

	if(!is_talking 
	&&  hspd 
	&& !(g.counter1&($8 <<(abs8b(hspd)<$10))) ) // every 8 or $10 frames.
	{   // 9B0A
	    return 1; // use secondary sprite
	}
	    return 0; // use primary sprite
	//







}
