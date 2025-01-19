/// @description  Geldarm_update()
function Geldarm_update() {


	canDrawScrunchHB = false;


	// -------------------------------------------------------------------------------
	// ----------------------------------------------------------------------
	// 9BB5
	if (scrunch_dir != 0) // if NOT fully unscrunched
	{
	    if (scrunch_dir  // 1: DOWN
	    || !timer )
	    {
	        // 9BCA
	        // scrunch_dir. 1: schrunching down, -2: up
	        if (SEGMENTS>5    // 5: OG
	        &&  g.counter1&$1 )
	        {   set_xy(id, x, y + sign(scrunch_dir));  } // Faster bc longer dist to scrunch
	            set_xy(id, x, y +      scrunch_dir);
        
        
        
	        if (yt >= MAX_Y) // if fully scrunched DOWN
	        {
	            set_xlyt(id, xl, MAX_Y);
            
	            // 9C2C
	            scrunch_dir  = DIFF_UP; // -2 (move UP)
	            timer = $80; // delay unscrunching UP
	        }
	        else
	        {
	            if (yt <= MIN_Y)
	            {
	                // Why didn't I use setXY() here?
	                // Adding set_xlyt() and will have to test it.
	                set_xlyt(id, xl, MIN_Y);
	                //yt = MIN_Y; // Why didn't I use setXY() here?
                
	                scrunch_dir = 0; // 0: idle (fully stretched)
	            }
            
	            timer = 5;
	        }
	    }
    
    
    
	    //GOB_update_2a();
    
	    // DE51: JSR EF11
	    update_EF11();
	    // DE54 & DE6C, DD3D. Despawn check
	    GOB_update_2a(); // GOB body to proj/sword/body collision checks
    
	    if (cs&CS_BD1) enemy_collide_pc_body();
    
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}





	// -------------------------------------------------------------------------------
	// ----------------------------------------------------------------------
	if (ocsH1(id)) // fully unscrunched && any width is w/in ocs area width
	{
	    canDrawScrunchHB = true;
    
	    // 9BF2
	    Geldarm_update_scrunchHB();
    
	    if (collide_pc_sword(scrunchX1,scrunchY1, SCRUNCH_W,scrunch_h))
	    {
	        // 9C0F
	        scrunch_dir  = DIFF_DW; // +1 (move down)
        
	        timer = 1;
        
	        aud_play_sound(get_audio_theme_track(dk_StrikeEnemy));
	    }
	    else if (collide_pc_body(scrunchX1,scrunchY1, SCRUNCH_W,scrunch_h))
	    {
	        enemy_collide_pc_body();
	    }
    
    
    
    
	    //GOB_update_2a();
    
	    // DE51: JSR EF11
	    update_EF11();
	    // DE54 & DE6C, DD3D. Despawn check
	    GOB_update_2a(); // GOB body to proj/sword/body collision checks
    
	    if (cs&CS_BD1) enemy_collide_pc_body();
    
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}







}
