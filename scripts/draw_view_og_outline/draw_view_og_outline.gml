/// @description  draw_view_og_outline()
function draw_view_og_outline() {


	if(!g.can_draw_og_cam_outline) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


	// Toggle with 'L'. Outline representing the og camera
	draw_rect_(c_aqua, g.view_xl_og,g.view_yt_og, VIEW_W_OG,VIEW_H_OG, 1, true);







}
