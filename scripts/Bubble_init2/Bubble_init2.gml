/// @description  Bubble_init2()
function Bubble_init2() {


	var _i, _val, _len, _pos;
	var _datakey;


	VER_BIT_FAST = $02;
	VER_BIT_STAB = $04; // Changes dir on stab
	VER_BIT_GIAN = $08;
	VER_BIT_DORM = $10; // DORMant
	VER_BIT_CLNG = $20; // Cling to walls

	is_dormant  = ver & VER_BIT_DORM != 0;


	SPR_SKUL_1  = spr_Skull_1a_WRB;
	SPR_SKUL_2  = spr_Skull_2a_WRB;
	if (is_dormant)
	{    spr_skul = SPR_SKUL_2;  }
	else spr_skul = SPR_SKUL_1;


	SPR_AURA_1A = spr_Aura_1a_WRB;
	SPR_AURA_1B = spr_Aura_1a_WBR;
	if (is_dormant) spr_aura = 0;
	else            spr_aura = SPR_AURA_1A;

	SPR_GIAN_A  = spr_GiantBubble1A;
	SPR_GIAN_B  = spr_GiantBubble1B;

	DRAW_YOFF = 0;


	var _spawn_datakey = dk_spawn;
	if(!is_undefined(    dk_spawn))
	{   _spawn_datakey = val(f.dm_rando[?STR_Randomize+STR_Enemy+STR_Spawn+dk_spawn+STR_Spawn+STR_Datakey+STR_Randomized], dk_spawn);  }


	if(!is_undefined(               _spawn_datakey) 
	&& !is_undefined(   g.dm_spawn[?_spawn_datakey+STR_pal_idx]) )
	{    GO_init_palidx(g.dm_spawn[?_spawn_datakey+STR_pal_idx]);  }
	else GO_init_palidx(PI_MOB_BLU);


	var _DIR_DATA = $2|$8; // Default: $A = LFT($2) & UP($8)
	if(!is_undefined(_spawn_datakey))
	{
	    _DIR_DATA = val(g.dm_spawn[?_spawn_datakey+STR_Direction], _DIR_DATA);
	}



	hspd_dir_spawn  = bit_dir(_DIR_DATA&$3);
	hspd_dir        = hspd_dir_spawn;

	vspd_dir_spawn  = bit_dir(_DIR_DATA&$C);
	vspd_dir        = vspd_dir_spawn;



	mp_drain_counter = 0; // to help keep mp an even number
	//mp_drain_counter = 1; // start at 1 so the first collision frame takes mp guaranteeing at least some mp drain
	stab_changed_dir = 0;


	SPEED1 = $10;
	SPEED2 = $20;
	if (ver & VER_BIT_FAST) spdBase = SPEED2;
	else                    spdBase = SPEED1;

	if (is_dormant)
	{
	    hspd = 0;
	    vspd = 0;
	}
	else
	{
	    hspd = (spdBase*hspd_dir)&$FF;
	    vspd = (spdBase*vspd_dir)&$FF;
	}




	if (ver & VER_BIT_CLNG)
	{
	    Bubble_cling_init(_DIR_DATA);
	}






	if (g.area_name==Area_PalcG)
	{
	    if (ver==$01 
	    ||  ver==$02 
	    ||  ver==$04 
	    ||  ver==$06 
	    ||  ver==$10 
	    ||  ver==$12 
	    ||  ver==$20 
	    ||  ver==$22 )
	    {
	        GO_init_palidx(PI_MOB_BLU);
        
	        HP_IDX = $1F;
	        hp = g.dl_HP[|HP_IDX];
        
	        ATTACK_LEVEL = $04;
	        attack_level = ATTACK_LEVEL;
	    }
	}





	CS_OFF_IDX_DORM = $0C;
	if (is_dormant)
	{
	    cs_off_idx    = CS_OFF_IDX_DORM;
	    react_sword   = 0;
	    react_proj    = 0;
	    react_thunder = 0;
	    //react_spell  = 0;
	    xp_drain      = 0;
    
	    vspd_grav = 1;
	}







}
