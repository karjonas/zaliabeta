/// @description  Mago_udp()
function Mago_udp() {


	can_draw_self = true;

	// ATK_CUE = $D2
	if (counter<=ATK_CUE) GO_set_sprite(id,spr_Mago2);
	else                  GO_set_sprite(id,spr_Mago1);







}
