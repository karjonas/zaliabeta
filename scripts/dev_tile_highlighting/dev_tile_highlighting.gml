/// @description  dev_tile_highlighting()
function dev_tile_highlighting() {


	if (g.can_show_t_solid)  tile_layer_show(DEPTH_SOLIDS);
	else                     tile_layer_hide(DEPTH_SOLIDS);

	if (g.can_show_t_unique) tile_layer_show(DEPTH_UNIQUE);
	else                     tile_layer_hide(DEPTH_UNIQUE);







}
