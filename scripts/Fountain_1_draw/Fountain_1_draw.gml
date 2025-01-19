/// @description  Fountain_1_draw()
function Fountain_1_draw() {


	if(!can_draw_self) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


	var                        _SPR = Water_SPR1;
	if (g.counter1&ANIM_SPEED) _SPR = Water_SPR2;
	draw_sprite_(_SPR,0, x,y, PALIDX);







}
