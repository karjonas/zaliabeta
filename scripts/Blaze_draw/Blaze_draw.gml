/// @description  Blaze_draw()
function Blaze_draw() {


	if (can_leave_kid)
	{
	    for(var _i=ds_grid_width(dg_kids)-1; _i>=0; _i--)
	    {
	        if(!dg_kids[#_i,0] 
	        || (dg_kids[#_i,0]<KID_CUE1 && g.counter1&(ANIM_SPEED>>1)) )
	        {
	            continue;
	        }
        
	        draw_sprite_(SPR_KID,0, dg_kids[#_i,1],dg_kids[#_i,2], palidx, sign_(!(g.counter1&ANIM_SPEED)));
	    }
	}


	if(!can_draw_self) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


	GO_draw_sprite(sprite, palidx);







}
