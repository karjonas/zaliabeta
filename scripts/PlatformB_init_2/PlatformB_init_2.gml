/// @description  PlatformB_init_2()
function PlatformB_init_2() {


	var _val;


	//SPAWN_XC = x;
	//SPAWN_YC = y;



	if(!is_undefined(dk_spawn))
	{
	    if(!is_undefined(   g.dm_spawn[?dk_spawn+STR_pal_idx])){
	            _val =      g.dm_spawn[?dk_spawn+STR_pal_idx];
	        if (_val+1) GO_init_palidx(_val);
	        palidx_permut = 4; // 4:SHM.  Sharing water palette
	    }
    
	    hspd_dir = sign(val(g.dm_spawn[?dk_spawn+STR_Direction]));
    
	    if(!is_undefined(   g.dm_spawn[?dk_spawn+STR_Path]))
	    {      _path  =     g.dm_spawn[?dk_spawn+STR_Path];  }
    
	    if(!is_undefined(   g.dm_spawn[?dk_spawn+STR_Start]))
	    {      _start = val(g.dm_spawn[?dk_spawn+STR_Start]);  }
	}


	hspd1   = $01<<3;
	hspd    =(hspd1*hspd_dir) &$FF;
	//hspd1   =(($01<<3)*hspd_dir) &$FF;
	//hspd    = hspd1;



	switch(ver)
	{
	    // ==================================================
	    // --------------------------------------------
	    case 1:{
	    GO_depth_init(DEPTH_FG4-1);
	    // GO_depth_init(g.DEPTH_CLOUD-1);
	    GO_sprite_init(spr_cloud_2a);
	    GO_init_palidx(PI_CLOUD_1);
	    palidx_permut = 2; // 2:MHS
	    //palidx_permut = 5; // 5:SMH
	    //palidx_permut = 3; // 3:MSH
	    //palidx_permut = 1; // 1:HSM
    
	    //solidy_ytoffset = 8;
	    // So that solid_clip_adj()
    
	    //DRAW_YOFF += -8;
	    //DRAW_YOFF += -bodyYOff;
	    break;}
    
    
	    // ==================================================
	    // --------------------------------------------
	    case 2:{ // RAFT
    
	    break;}
	}








}
