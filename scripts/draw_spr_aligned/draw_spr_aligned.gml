/// @description  draw_spr_aligned(sprite, x, y, alignx 0_cen 1_rgt -1_lft, aligny 0_cen 1_btm -1_top, *palette index, *x scale, *y scale)
function draw_spr_aligned() {

	// Does all the offset calculations for you making sprite placement easier.
	// Good work-around for scenarios with sprites using different origin offsets.


	switch(argument_count-5)
	{
	    // ------------------------------------------------------------------------
	    case 0:{
	    draw_sprite_(           argument[0],0,                         // sprite, sub image
	                 spr_x_at_x(argument[0],argument[1],argument[3]),  // x
	                 spr_y_at_y(argument[0],argument[2],argument[4]) );// y
	    break;}
    
    
	    // ------------------------------------------------------------------------
	    case 1:{
	    draw_sprite_(           argument[0],0,                         // sprite, sub image
	                 spr_x_at_x(argument[0],argument[1],argument[3]),  // x
	                 spr_y_at_y(argument[0],argument[2],argument[4]),  // y
	                            argument[5] );                         // pal index
	    break;}
    
    
	    // ------------------------------------------------------------------------
	    case 2:{
	    draw_sprite_(           argument[0],0,                         // sprite, sub image
	                 spr_x_at_x(argument[0],argument[1],argument[3]),  // x
	                 spr_y_at_y(argument[0],argument[2],argument[4]),  // y
	                            argument[5],                           // pal index
	                            argument[6] );                         // x scale
	    break;}
    
    
	    // ------------------------------------------------------------------------
	    case 3:{
	    draw_sprite_(           argument[0],0,                         // sprite, sub image
	                 spr_x_at_x(argument[0],argument[1],argument[3]),  // x
	                 spr_y_at_y(argument[0],argument[2],argument[4]),  // y
	                            argument[5],                           // pal index
	                            argument[6],argument[7] );             // x scale, y scale
	    break;}
	}







}
