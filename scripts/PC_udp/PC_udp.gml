/// @description  PC_udp()
function PC_udp() {

	// udp: Update Draw Properties


	var _i, _idx;
	var _c1,_c2,_c3;
	var _spr;
	var _datakey;


	Draw_can_rando1 = g._YwY_ || global.SloofLirpa_ENABLED;
	Draw_can_rando2 = Draw_can_rando1; // random rotation, random behavior

	if (Draw_can_rando2) Draw_behavior = dl_UwU_[|behavior];
	else                 Draw_behavior = behavior;
	/*
	if (Draw_can_rando2)
	{
	    if (use_disguise)
	    {
	        var _SIZE = ds_list_size(dl_UwU_);
	        for(_i=0; _i<_SIZE; _i++)
	        {
	            if (dl_UwU_[|_i]==behavior_WALK1 
	            ||  dl_UwU_[|_i]==behavior_WALK2 
	            ||  dl_UwU_[|_i]==behavior_WALK3 
	            ||  dl_UwU_[|_i]==behavior_IDLE )
	            {
	                Draw_behavior = dl_UwU_[|_i];
	                break;//_i
	            }
	        }
	    }
	    else
	    {
	        Draw_behavior = dl_UwU_[|behavior];
	    }
	}
	else
	{
	    Draw_behavior = behavior;
	}
	*/


	//HoldItem_can_draw = false;

	//var _SWORD_IDX  = sign(f.items&ITM_SWRD);
	////    _SWORD_IDX &= Sword2_SpriteTesting1;
	//var _SHIELD_IDX = sign(f.items&ITM_SHLD);


	// EC0A
	    draw_xoff =  0;
	if (ogr 
	&&  Draw_behavior==behavior_CROUCH )
	{
	    draw_yoff = -4;
	}
	else
	{
	    draw_yoff =  0;
	}


	Head_sprite = 0;
	Head_xoff   = 0;
	Head_yoff   = 0;



	// EC19 --------------------------------------------------------------
	if (is_cucco)
	{
	    PC_udp_cucco();
	}
	else if (is_fairy) // EBB8. Fairy PC ------------------------------------------------------
	{   // EBD7
	    fairy_sprite = g.dl_Fairy_SPRITES[|sign(g.counter1&$4)]; // spr_FairyA or spr_FairyB
	}
	else
	{ // EC22, EC40 -------------------------------------------------------------------------
	    GO_set_sprite(id,PC_PLACEMENT_SPR);
	    //GO_set_sprite(id,dg_SPRITES[#0,Draw_behavior]);
    
	    palidx = palidx_def;
    
	    if (Draw_behavior==behavior_HOLD_ITEM1 
	    ||  Draw_behavior==behavior_HOLD_ITEM2 
	    ||  Draw_behavior==behavior_HOLD_ITEM3 
	    ||  Draw_behavior==behavior_HOLD_ITEM4 
	    ||  Draw_behavior==behavior_HOLD_ITEM5 )
	    {   // ED21, 9364
	        //HoldItem_can_draw = true;
	        HoldItem_x_scale = HoldItem_X_SCALE;
	    }
	}







	// -------------------------------------------------------------------------
	// dg_PI_SEQ[#0,0] = PI_PC_1;
	// dg_PI_SEQ[#0,1] = PI_MOB1;
	// dg_PI_SEQ[#0,2] = PI_MOB2;
	// dg_PI_SEQ[#0,3] = PI_MOB3;
	     if (stun_timer)           palidx = p.dg_PI_SEQ[#0,(stun_timer>>1)&$3]; // changes color every 2 frames
	else if (is_cucco || is_fairy) palidx = p.dg_PI_SEQ[#0,sign(is_fairy)];
	else                           palidx = p.dg_PI_SEQ[#0,0];


	_c1 = stun_timer || p.SpellFlash_PC_timer;
	_c2 = rm_pal_qual_lit();
	_c3 = _c1 || _c2;
	//_c3 = p.Flash_Pal_timer || rm_pal_qual_lit();

	if (_c3) palidx += p.PI_LIT1;
	else     palidx += p.PI_DRK1;


	if (is_cucco 
	&&  _c3 )
	{    palidx_permut = 4;  }
	else palidx_permut = 0;

	// testing
	//palidx_permut = clamp((g.timer0&$3F) div ($40 div PI_PERMUTATIONS), 0, PI_PERMUTATIONS-1);


	Draw_palidx = get_pi(palidx, palidx_permut);



	if(!_c1   // no pc flash timers active
	&&  _c2 ) // room is lit
	{    sword_palidx = PI_PC_SWORD;  }
	else sword_palidx = palidx;




	// -------------------------------------------------------------------------
	// EC4F, EDF6
	if (state==state_DROWN) // For drowning in water/lava
	{
	    depth = max(depth, DrownLiquid_depth+1);
	}
	else if (pipe_sink_timer) // Pipe sink
	{
	    depth = g.TILE_DEPTH_MAX_BACK+1;
	}
	else
	{
	    depth = depth_def;
	}


	// -------------------------------------------------------------------------
	can_draw_self = true;
	update_draw_xy();







	if(!(f.items&ITM_FRY1) 
	||  (state==state_DROWN && !f.hp) 
	||  (state!=state_DROWN && !iframes_timer) )
	{
	    RescueFairy_sprite = 0;
	}
	else if (RescueFairy_sprite)
	{
	    RescueFairy_sprite = g.dl_Fairy_SPRITES[|sign(g.counter1&$4)];
	}



	    _c1 = !is_cucco && (is_fairy || (control&control_DRAW1 && hspd));
	if (RescueFairy_sprite 
	||  _c1 )
	{
	    var _YOFF = get_fairy_yoff(3 + !is_fairy);
	    if (_c1) draw_yoff = _YOFF;
    
	    if (RescueFairy_sprite)
	    {
	        RescueFairy_draw_x  = drawX;
	        //RescueFairy_draw_yoff = _YOFF + y_change + draw_yoff;
	        RescueFairy_draw_y  = drawY - hh_ - (sprite_get_height(RescueFairy_sprite)>>1);
	        RescueFairy_draw_y += _YOFF + y_change + draw_yoff;
	        //RescueFairy_draw_y += RescueFairy_draw_yoff;
	        RescueFairy_draw_y += 8;
	    }
	}






	// -------------------------  PC SHADOW DURING BOSS EXPLOSION  --------------------------
	Shadow_can_draw = false;
	Shadow_xoff = 8;
	with(Boss)
	{
	    if (state==state_EXPLODE 
	    &&  timer<g.BOSS_DEATH_FLASH_CUE )
	    {
	        facingDir = dir_to_pc_(id);
        
	        // Blink the shadow to emulate the OG blinking 
	        // effect the happens due to NES limitations.
	        //other.Shadow_can_draw = rand()  &$3 != $3; // testing
	        //other.Shadow_can_draw = g.timer0&$3 != $3; // testing
	        other.Shadow_can_draw = other.can_draw_self && g.counter1&$1;
	        other.Shadow_xoff *= facingDir;
        
	        break;//with(Boss)
	    }
	}









	if (is_fairy)
	{
	    Draw_surface_w = sprite_get_width( fairy_sprite);
	    Draw_surface_h = sprite_get_height(fairy_sprite);
	}
	else if (is_cucco)
	{
	    Draw_surface_w = sprite_get_width( Cucco_sprite_body);
	    Draw_surface_h = sprite_get_height(Cucco_sprite_body);
	}
	else
	{
	    Draw_surface_w = Spritesheet_W;
	    Draw_surface_h = Spritesheet_H;
	}

	Draw_surface_size = max(Draw_surface_w,Draw_surface_h);




	if (HoldItem_timer 
	//if ((is_cucco && HoldItem_timer) 
	||  Draw_behavior==behavior_HOLD_ITEM1 
	||  Draw_behavior==behavior_HOLD_ITEM2 
	||  Draw_behavior==behavior_HOLD_ITEM3 
	||  Draw_behavior==behavior_HOLD_ITEM4 
	||  Draw_behavior==behavior_HOLD_ITEM5 )
	//if (HoldItem_can_draw)
	{
	    Draw_xscale1 = HoldItem_x_scale;
	}
	else
	{
	    Draw_xscale1 = xScale;
	}
	Draw_yscale1 = yScale;

	if (Draw_can_rando1)
	{
	    Draw_xscale2 = dg_UwU_[#Draw_behavior,0];
	    Draw_yscale2 = dg_UwU_[#Draw_behavior,1];
	}
	else
	{
	    Draw_xscale2 = 1;
	    Draw_yscale2 = 1;
	}




	if (is_cucco)
	{
	    Draw_rotation1 = PC_draw_get_cucco_rot(Draw_xscale1);
	}
	else
	{
	    Draw_rotation1 = 0;
	}

	if (Draw_can_rando2)
	{
	    Draw_rotation2 = dg_UwU_[#Draw_behavior,4];
	}
	else
	{
	    Draw_rotation2 = 0;
	}




	_idx       = val(dm_skins[?STR_Current+STR_Idx]);
	_datakey   = val(dm_skins[?hex_str(_idx)+STR_Datakey], STR_undefined);
	Skin_image = val(dm_skins[?_datakey+STR_Sprite], PCSkin_DEFAULT_SPRITE);







}
