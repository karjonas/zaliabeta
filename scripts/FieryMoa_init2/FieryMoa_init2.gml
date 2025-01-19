/// @description  FieryMoa_init2()
function FieryMoa_init2() {


	var _i, _val, _len, _pos;


	GO_init_palidx(PI_MOB_ORG);
	GO_depth_init(DEPTH_FLYER);

	sprL = spr_Moa2;
	sprR = spr_Moa1;
	sprRXOff = 0;


	projectile_OBJ = Flame1;
	projectile_VER = 1;
	projectile     = projectile_OBJ;
	projectile_ver = projectile_VER;


	hspd_dir = byte_dir(hspd);
	hspd_dir_reset = hspd_dir; // 0081[eIndex]

	timer = 0;


	RESET_Y = room_height-$6B;

	var _spawn_datakey = dk_spawn;
	if(!is_undefined(    dk_spawn))
	{   _spawn_datakey = val(f.dm_rando[?STR_Randomize+STR_Enemy+STR_Spawn+dk_spawn+STR_Spawn+STR_Datakey+STR_Randomized], dk_spawn);  }

	var _DATAKEY=STR_Reset+"_y";
	if(!is_undefined(_spawn_datakey))
	{
	    for(_i=$1; _i<=$F; _i++)
	    {
	        _val=val(g.dm_spawn[?_spawn_datakey+STR_Data+hex_str(_i)]);
	        if (is_string(_val))
	        {
	                _pos =string_pos(   _DATAKEY,_val);
	            if (_pos)
	            {   _pos+=string_length(_DATAKEY);
	                _val =string_copy(_val, _pos, string_length(_val)-(_pos-1));
	                RESET_Y = str_hex(_val);
	                break;//_i
	            }
	        }
	    }
	}







}
