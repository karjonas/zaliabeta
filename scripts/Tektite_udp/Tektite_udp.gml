/// @description  Tektite_udp()
function Tektite_udp() {


	can_draw_self = true;

	if (BodyHB_idx==BODY_HB_IDX_TALL) GO_set_sprite(id,dl_sprites[|0]); // tall
	else                              GO_set_sprite(id,dl_sprites[|1]); // short

	if (counter&$80) draw_yoff = counter ^ $FF;
	else             draw_yoff = counter;







}
