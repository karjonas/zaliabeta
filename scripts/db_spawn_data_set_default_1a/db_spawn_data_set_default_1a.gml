/// @description  db_spawn_data_set_default_1a(mapkey)
function db_spawn_data_set_default_1a(argument0) {
	var _mapkey = argument0;
	var _str = " ";
	// _str += "";
	_str += "mapkey '"+_mapkey+"'"+", ";
	_str += "Spawn Permission "+string(g.dm_spawn[? _mapkey + STR_Spawn_Permission     ])+", ";
	_str += "x $"    +hex_str(g.dm_spawn[? _mapkey + "_x"            ])+" ";
	_str += "def x $"+hex_str(g.dm_spawn[? _mapkey + "_x"+STR_Default])+", ";
	_str += "y $"    +hex_str(g.dm_spawn[? _mapkey + "_y"            ])+" ";
	_str += "def y $"+hex_str(g.dm_spawn[? _mapkey + "_y"+STR_Default])+", ";
	show_debug_message(_str);




}
