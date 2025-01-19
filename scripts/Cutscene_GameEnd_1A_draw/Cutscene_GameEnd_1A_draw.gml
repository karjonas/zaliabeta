/// @description  Cutscene_GameEnd_1A_draw()
function Cutscene_GameEnd_1A_draw() {


	with(Zelda) other.depth = depth-1;
	for(var _i=ds_grid_width(dg_triforce)-1; _i>=0; _i--)
	{
	    draw_sprite_(dg_triforce[#_i,0],0,  // sprite & sub image
	                 dg_triforce[#_i,1],    // x
	                 dg_triforce[#_i,2],    // y
	                 p.triforce_pi );       // pi
	}







}
