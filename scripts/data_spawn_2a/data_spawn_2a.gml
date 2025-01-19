/// @description  data_spawn_2a(datakey base, object_index, version, x, y, palette idx, *data, ..)
function data_spawn_2a() {


	var                                        _count = 1;
	var _DATAKEY = rm_name+argument[0]+hex_str(_count++);
	while(!is_undefined(g.dm_spawn[?_DATAKEY+STR_obj_idx]))
	{   _DATAKEY = rm_name+argument[0]+hex_str(_count++);  }


	var                                          _arg=1;
	g.dm_spawn[?_DATAKEY+STR_obj_idx] = argument[_arg++];
	g.dm_spawn[?_DATAKEY+STR_version] = argument[_arg++];
	g.dm_spawn[?_DATAKEY+"_x"]        = argument[_arg++];
	g.dm_spawn[?_DATAKEY+"_y"]        = argument[_arg++];

	var                      _PAL_IDX = -1;
	if (argument_count>_arg) _PAL_IDX = argument[_arg++];
	if (_PAL_IDX+1) g.dm_spawn[?_DATAKEY+STR_pal_idx] = _PAL_IDX;

	_count=1;
	for(var _i=_arg; _i<argument_count; _i++)
	{   g.dm_spawn[?_DATAKEY+STR_Data+hex_str(_count++)] = argument[_arg++];  }


	return _DATAKEY;







}
