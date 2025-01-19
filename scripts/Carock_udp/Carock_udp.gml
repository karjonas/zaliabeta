/// @description  Carock_udp()
function Carock_udp() {


	can_draw_self = true;


	if (sub_state==sub_state_ATTACK_1A) // sub_state_ATTACK_1A: Fade in
	{    GO_set_sprite(id,SPRITE_IDLE);  }
	else GO_set_sprite(id,SPRITE_ATTACK);



	if (g.mod_CAROCK_ATK_2 
	&&  sub_state==sub_state_ATTACK_2A )
	{
	    if (sub_state_timer <  Attack2_CUE1+$18) // Attack2_CUE1($98) + $18 = $B0
	    {   // PRE FLAME SPAWNING
	        xScale = Attack2_dir;
	        GO_set_sprite(id,SPRITE_IDLE);
	    }
    
	    // ------------------------------------------
	    if (sub_state_timer <= Attack2_CUE1) // Attack2_CUE1=$98
	    {   // SPAWNING FLAMES
	        xScale = Attack2_dir;
	        GO_set_sprite(id,SPRITE_ATTACK);
	    }
    
	    // $98 - ($70 div 3) = $98 - $25 = $73
	    if (sub_state_timer <  Attack2_CUE1-((Attack2_CUE1-Attack2_CUE2) div 3))
	    {   // SPAWNING FLAMES
	        xScale = 1;
	        GO_set_sprite(id,SPRITE_FORWARD);
	    }
    
	    // $28 + ($70 div 3) = $28 + $25 = $4D
	    if (sub_state_timer <  Attack2_CUE2+((Attack2_CUE1-Attack2_CUE2) div 3))
	    {   // SPAWNING FLAMES
	        xScale = -Attack2_dir;
	        GO_set_sprite(id,SPRITE_ATTACK);
	    }
    
	    // ------------------------------------------
	    if (sub_state_timer <  Attack2_CUE2) // Attack2_CUE2=$28
	    {   // POST FLAME SPAWNING
	        xScale = -Attack2_dir;
	        GO_set_sprite(id,SPRITE_IDLE);
	    }
	}



	if (g.mod_CAROCK_ATK_3 
	&&  sub_state==sub_state_ATTACK_3A )
	{
	    xScale = 1;
	    GO_set_sprite(id,SPRITE_FORWARD);
	}






	if (ver==2)
	{
	    if (state==state_EXPLODE 
	    ||  (pending_death && stun_timer<EXPLODE_DELAY1-DURATION5 ) )
	    {
	        xScale = 1;
	        GO_set_sprite(id,SPRITE_FORWARD);
	    }
	}







}
