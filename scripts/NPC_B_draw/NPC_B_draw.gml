/// @description  NPC_B_draw()
function NPC_B_draw() {

	// Minigame


	if(!can_draw_self) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


	depth = depth_def;
	GameObject_draw_1a(sprite, palidx);

	if (ver==3 
	&&  Minigame_display_timer_can_draw )
	{
	    depth = DEPTH_HUD;
	    var                 _TIME = 0;
	    if (Minigame_timer) _TIME = (Minigame_timer+ROOM_SPEED_BASE) div ROOM_SPEED_BASE;
    
	    var _TEXT = string(_TIME);
	        _TEXT = string_repeat("0", 3-string_length(_TEXT)) + _TEXT;
	    draw_text_($22<<3,viewYT()+($08<<3), _TEXT);
	}







}
