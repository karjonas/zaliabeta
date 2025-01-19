/// @description  PC_update_attack_2()
function PC_update_attack_2() {


	// 9387 JSR: 9483
	if(!attack_phase) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!



	if (attack_timer)
	{
	    if (stab_type==1)  // 1: STAND STAB
	    {
	        switch(attack_phase){
	        case 1: {PC_set_behavior(behavior_DRAWBACK);   break;}
	        case 2: {PC_set_behavior(behavior_STAB_STAND); break;}
	        case 3: {PC_set_behavior(behavior_IDLE);       break;}
	        case 4: {PC_set_behavior(behavior_DRAWBACK);   break;}
	        }
	    }
	    else              // 0: CROUCH STAB
	    {
	        switch(attack_phase){
	        case 1: {PC_set_behavior(behavior_STAB_CROUCH); break;}
	        case 2: {PC_set_behavior(behavior_CROUCH);      break;}
	        }
	    }
	}
	else
	{   // 949E
	    if ((stab_type==1 && attack_phase==4)   // 1: STAND STAB
	    ||  (stab_type==0 && attack_phase==2) ) // 0: CROUCH STAB
	    {   // 9486
	        attack_phase = 0;
	        if(!ogr) hspd = 0;
	    }
	    else
	    {
	        attack_phase++;
        
	        if (attack_phase==4) attack_timer = attack_phase_DURATION2; // $20. for phase 4
	        else                 attack_timer = attack_phase_DURATION1; // $06. for phases other than 4
        
	        if (stab_type==1      // 0: CROUCH STAB, 1: STAND STAB
	        &&  attack_phase==2 ) // 2: stabbing
	        {   // 94B3: JMP 960B
	            aud_play_sound(get_audio_theme_track(STR_Stab));
	        }
	    }
	}







}
