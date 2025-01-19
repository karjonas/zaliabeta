/// @description  collide_solid_grid(x, y)
function collide_solid_grid(argument0, argument1) {


	if (argument0    >= 0 
	&&  argument1    >= 0 
	&&  argument0>>3 <  ds_grid_width( g.dg_RmTile_solid) 
	&&  argument1>>3 <  ds_grid_height(g.dg_RmTile_solid) )
	{
	    return g.dg_RmTile_solid[#argument0>>3,argument1>>3];
	}
	    return 0;
	//







}
