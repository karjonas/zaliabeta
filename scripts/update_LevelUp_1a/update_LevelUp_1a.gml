/// @description  update_LevelUp_1a()
function update_LevelUp_1a() {


	// 9F3D
	if (g.level_up_idx==OPTION_CANCEL) // CANCEL selected
	{
	    // A08B
	    update_LevelUp_1b(get_xp_next(STAT_ATK) > f.xpNext, 
	                      get_xp_next(STAT_MAG) > f.xpNext, 
	                      get_xp_next(STAT_LIF) > f.xpNext );
    
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}



	// ---------------------------------------------------------------------------------------
	// 9F51

	f.xp -= get_xp_next(g.level_up_idx);



	// 9F81, 9FC3
	switch(g.level_up_idx)
	{
	    case STAT_ATK:{
	    if (f.level_atk<STAT_LEVEL_MAX) f.level_atk++;
	    else                            lives = clamp(lives+1, 1, f.LIVES_MAX);
	    break;}
    
	    case STAT_MAG:{
	    if (f.level_mag<STAT_LEVEL_MAX) f.level_mag++;
	    else                            lives = clamp(lives+1, 1, f.LIVES_MAX);
	    break;}
    
	    case STAT_LIF:{
	    if (f.level_lif<STAT_LEVEL_MAX) f.level_lif++;
	    else                            lives = clamp(lives+1, 1, f.LIVES_MAX);
	    break;}
	}





	update_LevelUp_1b(true, true, true);



	     if (g.level_up_idx==STAT_MAG) g.StatRestore_timer_mp = cont_cnt_mp()<<4;
	else if (g.level_up_idx==STAT_LIF) g.StatRestore_timer_hp = cont_cnt_hp()<<4;



	aud_play_sound(get_audio_theme_track(dk_LevelUp), -1,false,-1, dk_LevelUp);












	/*

	// 9F3D
	// var _c1 = Input.hld & Input.S; // Start button $10

	// if (_c1 && !(_c1 & Input.heldPrev)) // start pressed
	if (Input.hS && !(Input.heldPrev & Input.S)) // Start button $10 
	{
	    if (g.level_up_idx==3) // CANCEL selected
	    {
	        // 9FBD: JSR A088, A088: JSR A0CE
	        var _canCheckNextXP;
	            _canCheckNextXP[2] = get_xp_next(2) > f.xpNext;
	            _canCheckNextXP[1] = get_xp_next(1) > f.xpNext;
	            _canCheckNextXP[0] = get_xp_next(0) > f.xpNext;
        
	        // A08B
	        update_LevelUp_1b(_canCheckNextXP[0], _canCheckNextXP[1], _canCheckNextXP[2]);
	        _canCheckNextXP = 0;
	    }
	    else
	    {
	        // 9F51
	        // audio_group_stop_all(audiogroup_mus);
	        aud_play_sound(g.MUS_LEVL_UP_1);
	        Sound._00EB = $10;
        
	        // 9F58: JSR CB18
	             if (g.level_up_idx==1) f.mp = get_stat_max(f.magic_conts);
	        else if (g.level_up_idx==2) f.hp = get_stat_max(f.heart_conts);
        
	        // uptick_val = get_xp_next(g.level_up_idx);
        
	        // 9F5B
	        f.xp -= get_xp_next(g.level_up_idx);
	        // f.xp -= uptick_val;
        
        
	        var                      _stat_level = f.level_atk;
	             if (g.level_up_idx==1) _stat_level = f.level_mag;
	        else if (g.level_up_idx==2) _stat_level = f.level_lif;
        
	        if (_stat_level==STAT_LEVEL_MAX)
	        // if ((f.level_atk | f.level_mag | f.level_lif) >= 8)
	        {
	            // 9FC3
	            lives = clamp(lives + 1, 1, 99);
	        }
	        else
	        {
	            // 9F81
	                 if (g.level_up_idx==0) f.level_atk++;
	            else if (g.level_up_idx==1) f.level_mag++;
	            else if (g.level_up_idx==2) f.level_lif++;
	        }
        
        
	        update_LevelUp_1b(true, true, true);
	    }
    
    
	    // 9FC0: JMP 9FB9, 9F92, 9FB9
	    g.menuState = byte(g.menuState + 1);
	}


	*/






}
