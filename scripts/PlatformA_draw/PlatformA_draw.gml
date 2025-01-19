/// @description  PlatformA_draw()
function PlatformA_draw() {


	if(!can_draw_self) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


	draw_sprite_(BODY_SPR,0, drawX,drawY, palidx);




	// ------------------------------------------------------------------------------
	if(!g.DevTools_state) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	if(!g.can_draw_cs) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


	depth = DEPTH_BASE_HUD;

	for(var _i=ds_grid_width(dg_path)-1; _i>=0; _i--)
	{
	    drawPointCross(dg_path[#_i,1],dg_path[#_i,2], c_lime , c_purple);
	}
	    drawPointCross(x             ,y             , c_white, c_orange);
	//







}
