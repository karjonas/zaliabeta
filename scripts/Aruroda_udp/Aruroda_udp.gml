/// @description  Aruroda_udp()
function Aruroda_udp() {


	// 9E84
	can_draw_self = true;


	if (tmr_eye_open)     Head_sprite = spr_Aruroda_head2;
	else                  Head_sprite = spr_Aruroda_head1;

	if (tmr_tail_forward) tail_spr = spr_Aruroda_tail2;
	else                  tail_spr = spr_Aruroda_tail1;


	if (hspd 
	&& !(g.counter1&$4) )
	{    GO_set_sprite(id,SPR_WALK);  }
	else GO_set_sprite(id,SPR_IDLE);







}
