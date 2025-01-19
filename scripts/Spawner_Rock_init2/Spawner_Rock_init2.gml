/// @description  Spawner_Rock_init2()
function Spawner_Rock_init2() {


	var _i, _val, _len, _pos, _datakey;


	projectile_OBJ = Rock1;
	projectile_VER = 1;
	projectile     = projectile_OBJ;
	projectile_ver = projectile_VER;


	var _YOFF=0;

	if(!is_undefined(dk_spawn))
	{
	    for(_i=$1; _i<=$F; _i++)
	    {
	        _val=val(g.dm_spawn[?dk_spawn+STR_Data+hex_str(_i)]);
	        if (is_string(_val))
	        {//"_YOFF"+"-16"
	                _pos =string_pos(   "_YOFF",_val);
	            if (_pos)
	            {   _pos+=string_length("_YOFF");
	                _val =string_copy(_val, _pos, string_length(_val)-(_pos-1));
	                _YOFF=string(_val);
	                break;//_i
	            }
	        }
	    }
	}


	// y offset values are stored in $DC47-DC4E.
	            dl_YOFF = ds_list_create();
	ds_list_add(dl_YOFF, $00);
	ds_list_add(dl_YOFF, $10);
	ds_list_add(dl_YOFF,-$10); // $F0
	ds_list_add(dl_YOFF,-$20); // $E0
	ds_list_add(dl_YOFF,-$30); // $D0
	ds_list_add(dl_YOFF,-$40); // $C0
	ds_list_add(dl_YOFF, $00);
	ds_list_add(dl_YOFF, $10);
	for(_i=ds_list_size(dl_YOFF)-1; _i>=0; _i--)
	{
	    dl_YOFF[|_i] += $3;
	    dl_YOFF[|_i] += _YOFF;
	}







}
