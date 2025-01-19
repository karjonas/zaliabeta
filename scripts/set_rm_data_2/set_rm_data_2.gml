/// @description  set_rm_data_2(rm name, tile file name)
function set_rm_data_2() {

	// Add alternate rm for alternate rm rando


	var _RM_NAME   = argument[0];
	var _FILE_NAME = argument[1];

	var      _dk = _RM_NAME+STR_Tile+STR_File;
	g.dm_rm[?_dk+STR_Count] = val(g.dm_rm[?_dk+STR_Count])+1;
	var _num =                val(g.dm_rm[?_dk+STR_Count]);

	g.dm_rm[?_dk+hex_str(_num)] = _FILE_NAME;



	_dk = STR_Alternate+STR_Tile+STR_File+STR_Rm;
	_num = val(g.dm_rm[?_RM_NAME+_dk]);
	if(!_num)
	{
	    g.dm_rm[?_dk+STR_Count] = val(g.dm_rm[?_dk+STR_Count])+1;
	    _num =                    val(g.dm_rm[?_dk+STR_Count]);
	    g.dm_rm[?_dk+hex_str(_num)+STR_Rm+STR_Name] = _RM_NAME;
	}







}
