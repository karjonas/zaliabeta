/// @description  PC_update_stab_frenzy_1()
function PC_update_stab_frenzy_1() {


	if(!Input.Attack_held)
	{
	    StabFrenzy_charge_counter = 0;
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}


	if (f.items&ITM_SWRD 
	&& !(g.pc_lock&PC_LOCK_CSTB) )
	{
	    // attack_phase_DURATION1 = $06;
	    // attack_phase_DURATION2 = $20;
	    // StabFrenzy_charge_counter_DURATION  = (attack_phase_DURATION1 * 3) + attack_phase_DURATION2; // $32(50)
	    if (StabFrenzy_charge_counter < StabFrenzy_charge_counter_DURATION)
	    {
	        StabFrenzy_charge_counter++;
	        exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	    }
    
	    if (StabFrenzy_charge_counter==StabFrenzy_charge_counter_DURATION) // Only on this frame
	    {
	        if (attack_phase==0 
	        ||  attack_phase==4 )
	        {   // attack_phase_DURATION1: $06 (num of frenzy stabs)
	            StabFrenzy_charge_counter = $80 + attack_phase_DURATION1;
	        }
	    }
	}







}
