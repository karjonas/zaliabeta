/// @description  Kakusu014_update()
function Kakusu014_update() {


	with(Spawner_FallingBlock)
	{
	    is_active = other.sub_state==other.SUB_STATE_SWITCH1;
	}

	// Falling blocks will kill.
	with(BlckB)
	{
	    if (vspd 
	    &&  body_collide_body(id,other) )
	    {
	        with(other)
	        {
	            damage_gob(id, max(hp,0), false);
	            Kakusu_update_defeated();
	        }
	        exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	    }
	}




	switch(sub_state)
	{
	    // ---------------------------------------------------------------------
	    // --------------------------------------------------------------
	    case SUB_STATE_SWITCH0:{ // NOT creating blocks
	    is_idle = false;
	    update_EF11();
	    if (sub_state_timer){sub_state_timer--; break;}
    
	    GOB_update_2a(); // GOB body to proj/sword/body collision checks
    
	    stun_timer = 0;
	    hspd = 0;
    
	    hp = g.dl_HP[|HP_IDX];
    
	    if (cs&CS_SW1)
	    {
	        sub_state_timer = $40 * $8;
	        sub_state = SUB_STATE_SWITCH1;
	    }
	    break;}
    
    
    
    
	    // ---------------------------------------------------------------------
	    // --------------------------------------------------------------
	    case SUB_STATE_SWITCH1:{ // Creating blocks
	    is_idle = true;
	    update_EF11();
	    if (sub_state_timer){sub_state_timer--; break;}
    
	    sub_state_timer = $10; // 
	    sub_state = SUB_STATE_SWITCH0;
	    break;}
	}







}
