/// @description  Atta_udp()
function Atta_udp() {


	can_draw_self = true;


	if (counter>=DUR_COOLDOWN-$04 
	&&  counter<=DUR_COOLDOWN+$20 )
	{    GO_set_sprite(id,dl_sprites[|1]);  }
	else GO_set_sprite(id,dl_sprites[|0]);







}
