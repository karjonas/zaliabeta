/// @description  update_shaders_surf_resize()
function update_shaders_surf_resize() {

	//exit; // testing diff method
	if (global.RetroShaders_enabled) surface_resize(application_surface, BASE_GAME_RESOLUTION_W*global.RetroShaders_surface_scale, BASE_GAME_RESOLUTION_H*global.RetroShaders_surface_scale);
	else                             surface_resize(application_surface, BASE_GAME_RESOLUTION_W, BASE_GAME_RESOLUTION_H);







}
