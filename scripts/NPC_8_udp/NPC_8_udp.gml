/// @description  NPC_8_udp()
function NPC_8_udp() {


	can_draw_self = true;

	GO_set_sprite(id, g.dl_Fairy_SPRITES[| !(g.counter1&4) ]);
	xScale = 1;
	draw_yoff = get_fairy_yoff(3);







}
