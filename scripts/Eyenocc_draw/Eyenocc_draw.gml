/// @description  Eyenocc_draw()
function Eyenocc_draw() {


	if(!can_draw_self) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


	var _PI = palidx;
	if (Eye_state==Eye_state_CLOSED) _PI = PI_DARKLONK;
	GameObject_draw_1a(sprite, _PI); // draw self

	if (Pupil_can_draw) draw_sprite_(spr_1x1_WHT,0, Pupil_xl,Pupil_yt, -1, 2,Pupil_h, p.C_BLK1);







}
