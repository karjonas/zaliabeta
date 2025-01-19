/// @description  Torch_1_draw()
function Torch_1_draw() {


	if(!can_draw_self) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	    can_draw_self = false;
	//

	var _YOFF = -$11;
	//var _YOFF = -$10;
	drawY +=  _YOFF;
	GO_draw_sprite(spr_Flame1, PI_MOB_ORG);

	drawY += -_YOFF;
	xScale = 1;
	GO_draw_sprite(sprite, palidx);







}
