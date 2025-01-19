/// @description  Deeler_init2()
function Deeler_init2() {


	var _i, _val, _len, _pos;


	dl_sprites[|0] = spr_Deeler1;

	counter = 0;

	drawYOff_DROPPED = 2;
	HANG_DIST_DEF    = $60; // $5E: $8E - $30(spawnY)
	//SPAWN_Y = $50;


	var _spawn_datakey = dk_spawn;
	if(!is_undefined(    dk_spawn))
	{   _spawn_datakey = val(f.dm_rando[?STR_Randomize+STR_Enemy+STR_Spawn+dk_spawn+STR_Spawn+STR_Datakey+STR_Randomized], dk_spawn);  }


	if(!is_undefined(_spawn_datakey))
	{
	    for(_i=1; _i<=$F; _i++)
	    {
	        _val=val(g.dm_spawn[?_spawn_datakey+STR_Data+hex_str(_i)]);
	        if (is_string(_val))
	        {
	                _pos=string_pos(    STR_Distance,_val);
	            if (_pos)
	            {   _pos+=string_length(STR_Distance);
	                _val =string_copy(_val, _pos, string_length(_val)-(_pos-1));
	                HANG_DIST_DEF=str_hex(_val);
	                break;//_i
	            }
	        }
	    }
	}


	HANG_DIST_DEF -= drawYOff_DROPPED;


	hangDist        = HANG_DIST_DEF;

	SPAWN_Y         = yt;
	//climbYA
	targetY_up      = SPAWN_Y;          // 05DD. spawnY
	targetY_dw      = targetY_up + hangDist; // 05DC. spawnY + $60
	set_xlyt(id, xl, targetY_up);

	Web_can_draw = false;
	            dl_Web_y=ds_list_create();
	ds_list_add(dl_Web_y,targetY_up);
	ds_list_add(dl_Web_y,targetY_up);
	ds_list_add(dl_Web_y,targetY_up);


	switch(ver)
	{
	    case 1:{
	    switch(g.area_name){
	    case Area_EastA:{ATTACK_LEVEL=$03; attack_level=ATTACK_LEVEL; break;}
	    }
    
	    switch(g.area_name){
	    case Area_EastA:{HP_IDX=$08; hp=g.dl_HP[|HP_IDX]; break;}
	    }
    
	    switch(g.area_name){
	    case Area_EastA:{XP_IDX=$05; xp=g.dl_XP[|XP_IDX]; break;}
	    }
	    break;}
    
    
	    case 2:{
	    switch(g.area_name){
	    case Area_EastA:{HP_IDX=$08; hp=g.dl_HP[|HP_IDX]; break;}
	    }
    
	    switch(g.area_name){
	    case Area_EastA:{XP_IDX=$0A; xp=g.dl_XP[|XP_IDX]; break;}
	    }
	    break;}
	}







}
