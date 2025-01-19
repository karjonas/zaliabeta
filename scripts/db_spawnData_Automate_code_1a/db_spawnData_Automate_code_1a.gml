/// @description  db_spawnData_Automate_code_1a()
function db_spawnData_Automate_code_1a() {

	var _area_name_copy = g.area_name;
	var _rm_num_copy    = g.rm_num;
	var _enc_type_copy  = g.encounter_type;

	var i, j, k, _idx, _str, _str1;
	var _spawn_idx, _oi, _oi_name, _ver, _spawn_x, _spawn_y;
	var _go_id, _go_full_name;
	var _key, _area, _rm_name, _go_count, _STR_Enc_Strong;
	_STR_Enc_Strong = "";

	// g.area_name = AreaID_WestA;
	// g.area_name = AreaID_DthMt;
	// g.area_name = AreaID_EastA;
	// g.area_name = AreaID_MazIs;

	// g.area_name = Area_DngnA;
	// g.area_name = Area_DngnB;
	// g.area_name = Area_DngnC;
	// g.area_name = Area_DngnD;
	// g.area_name = Area_DngnE;
	// g.area_name = Area_DngnF;
	g.area_name = Area_PalcG;

	// g.area_name = AreaID_TownA;
	_area = g.area_name;


	// --------------------------------------------------------------------------------------------
	show_debug_message("");
	show_debug_message("");

	_str = "var _area, _rm;";
	show_debug_message(_str);

	show_debug_message("");
	show_debug_message("");
	show_debug_message("");

	show_debug_message("// *****************************************************************************");
	_str  = "// ";
	_str += "-----------------------------";
	_str += "  "+"_Area"+_area+"  ";
	_str += "-----------------------------";
	show_debug_message(_str);
	show_debug_message("// *****************************************************************************");

	show_debug_message("");

	_str  = "_area = "+"Area";
	_str += string_copy(_area,1,string_length(_area)-1);
	_str += ";";
	show_debug_message(_str);

	show_debug_message("");
	show_debug_message("");
	show_debug_message("");


	// --------------------------------------------------------------------------------------------
	for (i = 0; i < $100; i++) // Each possible rm
	{
	    g.rm_num = i;
	    db_spawnData_Automate_code_1b(true);
	}


	g.area_name      = _area_name_copy;
	g.rm_num         = _rm_num_copy;
	g.encounter_type = _enc_type_copy;





}
