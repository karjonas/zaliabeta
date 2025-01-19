/// @description  Megmat_udp()
function Megmat_udp() {


	can_draw_self = true;

	if (((vspd-2)&$FF) & $80) GO_set_sprite(id,dl_sprites[|1]);
	else                      GO_set_sprite(id,dl_sprites[|0]);







}
