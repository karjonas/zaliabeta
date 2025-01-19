/// @description  update_Pallete_1a()
function update_Pallete_1a() {


	// 8E23: JSR 9235.  Update Link's palette
	// 0: Green, 1: Red(SHIELD active || have RING), 2: Blue(SHIELD active && have RING)
	                          var _PI1 = PI_PC_1 + sign(f.items        &ITM_RING);
	                          var _pi  = _PI1    + sign(g.spells_active&SPL_PRTC); // Normal
	if (g.pc.use_disguise)        _pi  = PI_PC_3;
	if (g.game_end_state)         _pi  = PI_PC_1; // Switch to tradisional green tunic for end game.
	if (g.FallScene_timer)        _pi  = _PI1; // Falling scene
	else if (SpellFlash_PC_timer) _pi  = dg_PI_SEQ[#$4,(SpellFlash_PC_timer-1)&$3]; // Spell flash
	if (pc_is_cucco())            _pi += PC_PAL_COUNT;


	dg_PI_SEQ[#0,0] = _pi;




	// Update background color
	var _color = dl_COLOR[|background_color_index];

	if (g.all_bg_black_only)
	{
	    _color = c_black; // For patreon user Guardian's bg color issue
	}
	else
	{
	    if (Flash_Bgr_timer 
	    ||  Flash_Bgr_timer2 ) // for Ganon3 spell and boss explosion
	    {
	        if (Flash_Bgr_timer2) // Ganon3_ProjRain_update() updates the bgr color
	        {
	            _color = C_RED3; // C_RED3: $16, Mob red
	        }
	        else if(!BackgroundFlash_setting)
	        {
	            _color = dg_color_seq[#0,(Flash_Bgr_timer-1)&$3]; // Spell flash
	        }
	        else
	        {
	            _color = dl_BackgroundFlash_COLORS[|BackgroundFlash_setting];
	        }
	    }
	}

	set_background_color(_color);


	// Update spell flash timer 074B.  9245
	if (Flash_Pal_timer)        Flash_Pal_timer--;
	if (Flash_Bgr_timer)        Flash_Bgr_timer--;
	if (Flash_Bgr_timer2)       Flash_Bgr_timer2--;
	if (SpellFlash_PC_timer)    SpellFlash_PC_timer--;
	if (SpellFlash_GOB_timer)   SpellFlash_GOB_timer--;
	if (SpellReady_flash_timer) SpellReady_flash_timer--;


	update_rm_brightness();


	//color_tiles();


	/*
	//  Lava glow
	var _TIME = g.counter0&$FF;
	if!(_TIME&$1F)
	{
	    if(!_TIME 
	    ||  _TIME&$80 )
	    {
	        if (rm_pal_qual_lit() 
	        &&  ds_grid_width(g.dg_t_anim_liquid) )
	        {
	            var _depth = g.dg_t_anim_liquid[#0,0];
	            var _idx   = ds_list_find_index(g.dl_t_depth,_depth);
	            var _pi    = dg_depth_pi[#_idx,1];
            
	            // if lava colors
	            if (isVal(get_pal_color(_pi,2), C_RED3,C_RED4,C_PNK3,C_PNK4,C_ORG3,C_ORG4))
	            {
	                var _COLOR_IDX = CI_WHT0_;
	                if (g.counter0&$100)
	                {
	                    if(!_TIME)
	                    {
	                        _COLOR_IDX = CI_ORG4_;
	                    }
	                    else if!(_TIME&$3F)
	                    {
                    
	                    }
	                }
	                else
	                {
	                    if(!_TIME)
	                    {
                    
	                    }
	                    else
	                    {
                    
	                    }
	                }
	                //change_pal(strReplaceAt(p.pal_rm_new, midtone_PALDATA_POS, 2, midtone_colorID_cur));
	            }
	        }
	    }
	}
	*/









}
