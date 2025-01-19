/// @description  PC_update_attack_1()
function PC_update_attack_1() {


	// 95DC
	var _C1 = g.mod_StabFrenzy && StabFrenzy_charge_counter>$80 && Input.Attack_held;


	if(!Input.Attack_pressed 
	&& !_C1 )
	{
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}


	if((!Input.dHeld && (g.pc_lock&PC_LOCK_ATK1))   // $10 Lock stab high
	|| ( Input.dHeld && (g.pc_lock&PC_LOCK_ATK2)) ) // $20 Lock stab low
	{
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}



	// ------------------------------------------------------------------
	if(!ogr 
	&& !g.control1_timer 
	&& !_C1 ) // if(!_C1): allows retention of some momentum during stab frenzy
	{
	    hspd = 0;
	}



	if (use_disguise)
	{
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}



	var _PHASE0 = attack_phase==0; // not attacking
	var _PHASE4 = attack_phase==4; // 4: drawback after stab

	if (_PHASE0 
	||  _PHASE4 )
	{
	    var _C2 =  _PHASE0 
	           || (_PHASE4 && attack_timer<attack_phase_DURATION2-1); // attack_phase_DURATION2: $20
	    //
	    if (Input.Attack_pressed 
	    ||  (_C1 && _C2) )
	    {
	        if (_PHASE4 
	        ||  Input.dHeld 
	        ||  Cucco_crouching_state==2 )
	        {   // Going strait to stab instead of draw.
	            aud_play_sound(get_audio_theme_track(STR_Stab));
	        }
        
	        attack_phase = 1 + _PHASE4;    // Result 1 or 2
	        attack_timer = attack_phase_DURATION1; // attack_phase_DURATION1: $06
        
	        // Cucco_crouching_state==2:  Cucco crouch forced bc in 1 tile high passage.
	        stab_type = !Input.dHeld && Cucco_crouching_state!=2; // Result 0(stab low) or 1(stab high)
        
        
	        if (_C1) StabFrenzy_charge_counter--;
	    }
	}







}
