/// @description  can_blink_container_piece()
function can_blink_container_piece() {


	return g.pc.HoldItem_timer > round(g.pc.HoldItem_DURATION*.66) 
	   &&  g.pc.HoldItem_timer&$4;
	//







}
