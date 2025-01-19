/// @description  TogglingPathDirectionA_draw()
function TogglingPathDirectionA_draw() {


	var i, _x, _y, _idx, _spr, _rot;

	for (i = ds_grid_width(dg_doors)-1; i >= 0; i--)
	{
	    _x = dg_doors[# i,1]-(DOOR_BGR_W>>1);
	    _y = dg_doors[# i,2]- DOOR_BGR_H;
	    draw_sprite_(spr_1x1_WHT,0, _x,_y, -1, DOOR_BGR_W,DOOR_BGR_H, c_black);
	    //draw_rect(c_black,   _x,_y, DOOR_BGR_W,DOOR_BGR_H);
    
	    _x = dg_doors[# i,1];
	    _y = dg_doors[# i,2]-(DOOR_SPR_H>>1);
	    draw_sprite_(door_spr,0, _x, _y, palidx);
    
    
	    // ** NOTE: assumes there are 4 doors. Diff code needed for 
	    // any other number of doors.
	                   _idx  = (g.counter1>>4)&$3;
	    if(!path_dir)  _idx ^= $3;
	    if (_idx == i) _spr  = ARROW_SPR2;
	    else           _spr  = ARROW_SPR1;
    
	    _rot  = (i ^ 3) + !(!path_dir);
	    _rot &= 3;
	    _rot *= 90;
    
	    // _x = 
	    _y = dg_doors[# i,2]-DOOR_SPR_H-3;
	    draw_sprite_(_spr,0, _x,_y, arrow_pi, 1,1, c_white, 1, _rot);
	}







}
