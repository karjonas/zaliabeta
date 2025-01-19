/// @description  SpikeTrapC_init2()
function SpikeTrapC_init2() {


	DRAW_YOFF = 0;

	facingDir = 1;



	if(!is_undefined(dk_spawn))
	{
	    if(!is_undefined( g.dm_spawn[?dk_spawn+STR_Length])) 
	    {  CHAIN_LENGTH = g.dm_spawn[?dk_spawn+STR_Length];  }
	       chain_length = CHAIN_LENGTH;
	    //
    
	    if(!is_undefined( g.dm_spawn[?dk_spawn+STR_MoveDir])) 
	    {  SPIN_DIR     = g.dm_spawn[?dk_spawn+STR_MoveDir];  }
	       SPIN_DIR     = sign(SPIN_DIR);
	       spin_dir     =      SPIN_DIR;
	    //
    
	    if(!is_undefined( g.dm_spawn[?dk_spawn+STR_Duration])) 
	    {  REV_DUR      = g.dm_spawn[?dk_spawn+STR_Duration];  }
	       rev_dur = REV_DUR;
	    //
    
    
	    if(!is_undefined( g.dm_spawn[?dk_spawn+STR_Angle])) 
	    {  ANGLE        = g.dm_spawn[?dk_spawn+STR_Angle];  }
	       angle        = ANGLE;
	    //
	}



	SPEED1 = (360/rev_dur) / room_speed;
	speed1 = SPEED1;



	set_xy_len_ang(id, spawn_x,spawn_y, (chain_length<<3)+LEN_OFF, angle);







}
