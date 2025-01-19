/// @description  Fokkeru_udp()
function Fokkeru_udp() {


	can_draw_self = true;

	if (counter&$10) sprite = spr_Fokkeru_top2; // mouth open
	else             sprite = spr_Fokkeru_top1; // mouth closed

	if (counter&$08) sprBtm = spr_Fokkeru_btm2; // legs open
	else             sprBtm = spr_Fokkeru_btm1; // legs closed







}
