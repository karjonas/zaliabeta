/// @description  Overworld_Room_Start_debug_1a(ow x, ow y, pc clm, pc row)
function Overworld_Room_Start_debug_1a(argument0, argument1, argument2, argument3) {
	var _ow_x   = argument0;
	var _ow_y   = argument1;
	var _pc_clm = argument2;
	var _pc_row = argument3;

	var _owrc = (_ow_x >> SHIFT) + ((_ow_y >> SHIFT) << 8);

	var _str = " ";
	// _str += "";
	_str += "CAM_X "+hex_str(CAM_X)+" CAM_Y "+hex_str(CAM_Y)+", ";
	_str += "view_xview[0] "+hex_str(__view_get( e__VW.XView, 0 ))+" view_yview[0] "+hex_str(__view_get( e__VW.YView, 0 ))+", ";
	// _str += "$B5 << 4 = "+hex_str($B5 << 4)+"("+string($B5 << 4)+")"+" $91 << 4 = "+hex_str($91 << 4)+"("+string($91 << 4)+")"+", ";
	_str += "T_SIZE "+string(T_SIZE)+", SHIFT "+string(SHIFT)+", ";
	_str += "g.VIEW_W_ "+hex_str(g.VIEW_W_)+" g.VIEW_H_ "+hex_str(g.VIEW_H_)+", ";
	_str += "HALF DRAW_W "+hex_str(DRAW_W_)+" HALF DRAW_H "+hex_str(DRAW_H_)+", ";
	show_debug_message(_str);

	_str = "";
	_str += " ";
	// _str  = 'DRAWX_BASE '+hex_str(DRAWX_BASE)+'('+string(DRAWX_BASE)+')'+' DRAWY_BASE '+hex_str(DRAWY_BASE)+'('+string(DRAWY_BASE)+')'+", ";
	_str += "DRAW_ROWS "+hex_str(DRAW_ROWS)+" DRAW_CLMS "+hex_str(DRAW_CLMS)+", ";
	_str += "pcrc "+hex_str(pcrc)+" ow_x "+hex_str(_ow_x)+" ow_y "+hex_str(_ow_y)+", ";
	_str += "owrc "+hex_str(_owrc)+"("+string(_owrc)+")"+", _pc_clm "+hex_str(_pc_clm)+" _pc_row "+hex_str(_pc_row)+", ";
	// _str += "owrc "+hex_str(_owrc)+"("+string(_owrc)+")"+", _pc_clm "+hex_str(_pc_clm)+" _pc_row "+hex_str(_pc_row)+", ";
	// _str += "";
	show_debug_message(_str);




}
