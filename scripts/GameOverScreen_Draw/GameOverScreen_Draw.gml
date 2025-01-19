/// @description  GameOverScreen_Draw()
function GameOverScreen_Draw() {


	set_background_color(p.GameOverScreen_BGR_COLOR);

	if (timer>2)
	{   draw_sprite_(GANON_SPR,0, x,y, get_pi(PI_MOB_ORG));  }



	draw_text_(LINE1_X, LINE1_Y, TEXT_LINE1, -1, TEXT_PI);
	draw_text_(LINE2_X, LINE2_Y, TEXT_LINE2, -1, TEXT_PI);







}
