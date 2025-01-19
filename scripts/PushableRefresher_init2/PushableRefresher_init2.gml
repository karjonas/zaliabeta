/// @description  PushableRefresher_init2()
function PushableRefresher_init2() {


	var _i,_j, _val;


	GO_sprite_init(spr_PillarHead01a);

	var _PI = PI_BGR_1;
	if(!is_undefined(         dk_spawn))
	{   _PI = val(g.dm_spawn[?dk_spawn+STR_pal_idx], _PI);  }
	GO_init_palidx(_PI);


	DURATION1 = $20;
	DURATION2 = $100-DURATION1;


	Pushable_inst = noone;
	Pushable_SPAWN_DATAKEY = undefined;
	if(!is_undefined(dk_spawn))
	{
	    var _DATAKEY = object_get_name(PushA)+dk_SpawnDatakey;
	    for(_i=1; _i<$10; _i++)
	    {
	        _val = g.dm_spawn[?dk_spawn+STR_Data+hex_str(_i)];
	        if(!is_undefined(_val) 
	        &&  is_string(   _val) 
	        &&  string_pos(_DATAKEY,_val) )
	        {
	            Pushable_SPAWN_DATAKEY = string_copy(_val, string_length(_DATAKEY)+1, string_length(_val)-string_length(_DATAKEY));
	            break;//_i
	        }
	    }
	}



	for(_i=(hh>>3)-1; _i>=0; _i--)
	{
	    for(_j=(ww>>3)-1; _j>=0; _j--)
	    {
	        tile_change_1a(0, xl+(_j<<3),yt+(_i<<3), -1,0, TID_SOLID1);
	    }
	}







}
