/// @description  Carock_draw()
function Carock_draw() {


	if (can_draw_self) GO_draw_sprite(sprite, palidx);


	if (ver==2 
	&&  g.mod_CAROCK_ATK_3 )
	{
	    if (sub_state != sub_state_ATTACK_3A 
	    ||  sub_state_timer <= Attack3_CUE4 )
	    {
	        for(var _i=ds_grid_width(dg_Attack3)-1; _i>=0; _i--)
	        {
	            if(!dg_Attack3[#_i,1]) continue;
            
	            if (dg_Attack3[#_i,1]<=$20 
	            ||  dg_Attack3[#_i,1]&$1 )
	            {
	                draw_sprite_(FlameSmall_SPRITE,0, dg_Attack3[#_i,0],FlameSmall_SPRITE_Y, PI_MOB_ORG, sign_(dg_Attack3[#_i,1]&$4));
	            }
	        }
	    }
	}







}
