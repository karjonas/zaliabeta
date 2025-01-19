/// @description  DeathScreen_Draw()
function DeathScreen_Draw() {


	// -------------------------------------------------------------------------------
	// Before Flashing ---------------------------------------------------
	if (counter<DEATH_FLASH_START_CUE)
	{
	    set_background_color(p.dl_COLOR[|p.background_color_index]);
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}



	// -------------------------------------------------------------------------------
	// During Flashing ---------------------------------------------------
	if (deathFlashTimer>0)
	{
	    if(!p.BackgroundFlash_setting)
	    {    set_background_color(p.dg_color_seq[#0,g.counter1&$3]);  }
	    else set_background_color(p.C_RED3); // 11/07/23. I think this should only be red for death and matches the game over bgr color
	    //else set_background_color(p.dl_BackgroundFlash_COLORS[|p.BackgroundFlash_setting]);
    
    
	    with(g.pc)
	    {
	        var _PAD = $09;
	        var _X = clamp(g.last_dist_from_view_x, viewXL()+_PAD,viewXR()-_PAD);
	        var _Y = clamp(g.last_dist_from_view_y, viewYT()+_PAD,viewYB()-_PAD);
	        if (pc_is_cucco())
	        {
	            draw_sprite_(spr_chicken_1a_damage_1a,0, _X,_Y, -1, g.last_pc_xscale,1, p.C_BLK1);
	            /*
	            var _Y2 = _Y+Cucco_sprite_wing_yoff;
	            draw_sprite_(Cucco_sprite_legs,0, _X,_Y,  -1, g.last_pc_xscale,1, p.C_BLK1);
	            draw_sprite_(Cucco_sprite_body,0, _X,_Y,  -1, g.last_pc_xscale,1, p.C_BLK1);
	            draw_sprite_(Cucco_sprite_wing,0, _X,_Y2, -1, g.last_pc_xscale,1, p.C_BLK1);
	            */
	        }
	        else if (pc_is_fairy())
	        {
	            draw_sprite_(fairy_sprite,0,   _X,_Y, -1, g.last_pc_xscale,1, p.C_BLK1);
	        }
	        else
	        {
	            draw_pc_skin(_X,_Y, g.last_pc_xscale,1, behavior_DAMAGE, false, 1,1, -1,-1, p.C_BLK1);
	            /*
	            var _val     = val(dm_spritesheets[?STR_Current+STR_Idx]);
	                _val     = val(dm_spritesheets[?hex_str(_val)+STR_Datakey], "Default");
	            var _SPRITE  = val(dm_spritesheets[?_val+STR_Sprite], spritesheet_PC_Default01);
            
	            var _W       = val(dm_spritesheets[?STR_Frame+STR_Width]);
	            var _H       = val(dm_spritesheets[?STR_Frame+STR_Height]);
	            var _Sheet_X = val(dm_spritesheets[?STR_Clm+hex_str(behavior_DAMAGE)]) * _W;
	            var _Sheet_y = 0;
	            _X -= _W>>1;
	            _X += sign(!g.last_pc_xscale)*_W;
	            _Y -= _H>>1;
            
	            _Sheet_y = val(dm_spritesheets[?STR_Row+STR_Shield+"01"]) * _H;
	            draw_sprite_part_(_SPRITE,0, _Sheet_X,_Sheet_y, _W,_H, _X,_Y, -1, g.last_pc_xscale,1, p.C_BLK1);
            
	            _Sheet_y = val(dm_spritesheets[?STR_Row+STR_Body+"01"]) * _H;
	            draw_sprite_part_(_SPRITE,0, _Sheet_X,_Sheet_y, _W,_H, _X,_Y, -1, g.last_pc_xscale,1, p.C_BLK1);
            
	            _Sheet_y = val(dm_spritesheets[?STR_Row+STR_Head+"01"]) * _H;
	            draw_sprite_part_(_SPRITE,0, _Sheet_X,_Sheet_y, _W,_H, _X,_Y, -1, g.last_pc_xscale,1, p.C_BLK1);
            
	            _Sheet_y = val(dm_spritesheets[?STR_Row+STR_Sword+"01"]) * _H;
	            draw_sprite_part_(_SPRITE,0, _Sheet_X,_Sheet_y, _W,_H, _X,_Y, -1, g.last_pc_xscale,1, p.C_BLK1);
	            */
	        }
	    }
    
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}



	// -------------------------------------------------------------------------------
	// After Flashing ----------------------------------------------------
	if (deathScreenEndTimer==DEATH_SCREEN_END_DUR) // DEATH_SCREEN_END_DUR=3
	{
	    set_background_color(p.C_BLK1);
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}







}
