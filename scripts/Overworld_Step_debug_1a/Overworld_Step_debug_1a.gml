/// @description  Overworld_Step_debug_1a(pc clm, pc row, ow clm, ow row, dir x, dir y)
function Overworld_Step_debug_1a(argument0, argument1, argument2, argument3, argument4, argument5) {
	var _pc_clm = argument0;
	var _pc_row = argument1;
	var _ow_clm = argument2;
	var _ow_row = argument3;
	var _dir_x  = argument4;
	var _dir_y  = argument5;

	show_debug_message("");
	var _c0 = dg_solid[# _pc_clm, _pc_row];
	var _c1 = !_c0 || !isVal(_c0, OST_SOLID1, OST_SOLID2);
	var _c2 = !isVal(_c0, OST_BOOTS1, OST_BOOTS2) || f.items & ITM_BOOT;

	var _str = " ";
	// _str += "";
	_str += "heldHV "   +string(Input.heldHV)+", ";
	_str += "dirx "     +string(_dir_x)+" diry "+string(_dir_y)+", ";
	_str += "movedir "  +string(pc_dir)+", ";
	_str += "rc "       +hex_str(_ow_row)+hex_str(_ow_clm)+", ";
	_str += "pcrc "     +hex_str(pcrc)+", ";
	// _str += "c"+hex_str(_ow_clm)+" r"+hex_str(_ow_row)+", ";
	_str += "in grid? " +string(is_in_grid(_ow_clm, _ow_row, OW_CLMS, OW_ROWS))+", ";
	_str += "solid "    +hex_str(dg_solid[# _pc_clm, _pc_row])+", ";
	_str += "c1 "       +string(_c1)+" c2 "+string(_c2)+", ";
	show_debug_message(_str);




}
