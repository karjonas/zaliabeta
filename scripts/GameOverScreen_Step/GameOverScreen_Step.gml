/// @description  GameOverScreen_Step()
function GameOverScreen_Step() {


	    timer--;
	if(!timer)
	{
	    set_background_color(p.C_BLK1); // MOD. Avoid 1 frame of solid red screen w/ no spr drawn.
	    room_goto_(rmB_ContinueSave);
	}







}
