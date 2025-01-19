/// @description  IronKnuckle_update_ShieldHB_idx()
function IronKnuckle_update_ShieldHB_idx() {


	// 9D52, 9D67. ----------- SET ShieldHB_idx --------------------
	switch(g.mod_IronKnuckle_ShieldAI)
	{
	    // =============================================================================
	    // -------------------------------------------------------------------
	    case 0:{ // OG  ------------------------------------------------
	    if (yt != g.pc.yt)
	    {
	        if (g.pc.yt+$A >= yt) ShieldHB_idx = ShieldHB_IDX_LOW; // 1
	        else                  ShieldHB_idx = ShieldHB_IDX_HGH; // 2
	    }
	    else
	    {
	        if (Input.Attack_pressed 
	        &&  rand() & ($3>>is_ver(id,IrKnA,1)) ) // $3,1
	        {   // Chance to block PC's attack. (rand()&$3): 75%, (rand()&$1): 50%
	            if (Input.dHeld)  ShieldHB_idx = ShieldHB_IDX_LOW; // 1
	            else              ShieldHB_idx = ShieldHB_IDX_HGH; // 2
	        }
	    }
	    break;}
    
    
    
    
	    // =============================================================================
	    // -------------------------------------------------------------------
	    case 1:{ // MOD1  ----------------------------------------------
	    if (stun_timer)
	    {       delay_shield_chance = -1;  } // -1: 100% chance
    
	    if (tmr_delay_shield)
	    {
	        tmr_delay_shield--;
	        if(!tmr_delay_shield 
	        &&  _IN_DIST_ATK )
	        {   delay_shield_chance = -1;  } // -1: 100% chance
	    }
    
    
	    if (_IN_DIST_ATK)
	    {
	        if (g.pc.ogr) // OGR_OTHR, OGR_JUMP
	        {
	            if (g.pc.yt+$A >= yt) ShieldHB_idx = ShieldHB_IDX_LOW; // 1
	            else                  ShieldHB_idx = ShieldHB_IDX_HGH; // 2
            
	            delay_shield_chance = -1; // -1: 100% chance
	            tmr_delay_shield    =  0;
	        }
	        else
	        {
	            if ((Input.dHeld && ShieldHB_idx==ShieldHB_IDX_HGH) 
	            || (!Input.dHeld && ShieldHB_idx==ShieldHB_IDX_LOW) )
	            {
	                if(!tmr_delay_shield 
	                &&  _QUAL_ATCK )
	                {
	                    var _ar_CHANCES     = 0;
	                        _ar_CHANCES[3]  = $F0; // 93.75%
	                        _ar_CHANCES[2]  = $80; // 50%
	                        _ar_CHANCES[1]  = $40; // 25%
	                        _ar_CHANCES[0]  = $20; // 12.5%
	                    var _CHANCES_CNT = array_length_1d(_ar_CHANCES);
                    
	                    var             _chance = 0; // 100% chance
                    
	                    if (delay_shield_chance < 0)          delay_shield_chance = 0;
	                    else            _chance = _ar_CHANCES[delay_shield_chance];
                    
	                    if (behavior)   _chance = $80; // During attack
                    
                    
	                    if (rand() <    _chance)
	                    {
	                        delay_shield_chance = -1; // -1: 100% chance
	                        tmr_delay_shield    = DUR_DELAY_SHIELD1;
	                    }
	                    else
	                    {
	                        if (Input.dHeld) ShieldHB_idx = ShieldHB_IDX_LOW; // 1
	                        else             ShieldHB_idx = ShieldHB_IDX_HGH; // 2
                        
	                        // if ( delay_shield_chance + 1 >= string_length(CHANCES) >>1) 
	                        // {    delay_shield_chance = 0;  }
	                        // else delay_shield_chance++;
                        
	                        delay_shield_chance += (delay_shield_chance < _CHANCES_CNT-1);
	                        // delay_shield_chance += (delay_shield_chance < ((string_length(CHANCES) >>1)-1));
                        
	                        tmr_delay_shield     = 0;
	                        // tmr_delay_shield     = DUR_DELAY_SHIELD2;
	                    }
                    
	                    _ar_CHANCES = 0;
	                }
	            }
	            else if (tmr_delay_shield)
	            {
	                // Reseting here penalizes the player for not patiently 
	                // waiting to see if they had an open for the attack.
	                // Hopefully this incentivizes the player to be more 
	                // patient with the battle.
	                delay_shield_chance = 1; // Setting to 1 instead of 0 to lessen penalty.
	                tmr_delay_shield    = 0;
	            }
	            else
	            {
            
	            }
	        }
	    }
	    break;}
	}







}
