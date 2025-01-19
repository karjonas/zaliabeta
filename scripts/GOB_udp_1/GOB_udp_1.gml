/// @description  GOB_udp_1(timing)
function GOB_udp_1(argument0) {


	if (g.counter1&argument0) GO_set_sprite(id,dl_sprites[|1]);
	else                      GO_set_sprite(id,dl_sprites[|0]);







}
