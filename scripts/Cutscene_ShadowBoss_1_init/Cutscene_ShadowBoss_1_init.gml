/// @description  Cutscene_ShadowBoss_1_init()
function Cutscene_ShadowBoss_1_init() {


	var _i, _a;


	Cutscene_init();
	Cutscene_ShadowBoss_init();


	scr_step = Cutscene_ShadowBoss_1_update;
	//scr_draw = Cutscene_ShadowBoss_1_draw;
	//scr_iend = ;

	                     BOSS_SPAWN_DK   = undefined;
	with(BOSS_OBJ) other.BOSS_SPAWN_DK   = dk_spawn;


	var _obj, _spawn_dk;
	var _GO_COUNT = ds_grid_width(g.dg_spawn_prxm);
	for(_i=0; _i<_GO_COUNT; _i++)
	{
	    _spawn_dk   = g.dg_spawn_prxm[#_i,0];
	    _obj        = g.dg_spawn_prxm[#_i,1];
	    if (_obj==BOSS_OBJ)
	    {
	        BOSS_SPAWN_DK = _spawn_dk;
	        break;
	    }
	}

	if (Cutscene_ShadowBoss_update_1a()) // if boss already defeated
	{
	    var _DATAKEY  = string_copy(dk_spawn, 1, string_length(dk_spawn)-2);
	        _DATAKEY += hex_str(str_hex(string_copy(dk_spawn, string_length(dk_spawn)-1, 2)) + 1);
	    with(GameObject_create(0,0, Cutscene_ShadowBoss_2,1, _DATAKEY))
	    {
	        if (is_undefined(         BOSS_SPAWN_DK) 
	        && !is_undefined(   other.BOSS_SPAWN_DK) )
	        {   BOSS_SPAWN_DK = other.BOSS_SPAWN_DK;  }
        
	        ARENA_X = g.rm_w_;
	        sub_state = sub_state_DONE;
	    }
    
	    instance_destroy();
	}







}
