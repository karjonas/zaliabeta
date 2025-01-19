/// @description  db_Overworld_Draw_2a()
function db_Overworld_Draw_2a() {

	var _str;
	_str = "";
	// _str += "";
	_str += " added tid "+string(_tid)+", ";
	_str += " owrc "+hex_str(_ow_clm+((_ow_row)<<8))+", ";

	_str += "tsrc_raw ";
	if (!(dg_tsrc[# _ow_clm, _ow_row]>>8)) _str += "  ";
	_str += hex_str(dg_tsrc[# _ow_clm, _ow_row]);
	_str += " tsrc "+hex_str(_tsrc)+", ";
	show_debug_message(_str);

	if (j+1 == DRAW_CLMS 
	&&  i+1 == DRAW_ROWS ) 
	{
	    show_debug_message("------------------------------------------------------");
	}



}
