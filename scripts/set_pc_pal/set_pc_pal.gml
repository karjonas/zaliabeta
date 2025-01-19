/// @description  set_pc_pal(pc pal str LIT, *pc pal str DARK)
function set_pc_pal() {


	var                               _arg=0;
	var _len = string_length(argument[_arg]);
	var _pos = p.PAL_POS_PC_1 + ((COL_PER_PAL<<1)-_len);
	change_pal(strReplaceAt(p.pal_rm_new, _pos, _len, argument[_arg++]));


	if (argument_count<=_arg) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

	_len = string_length(argument[_arg]);
	_pos = p.PAL_POS_PC_1_DARK + ((COL_PER_PAL<<1)-_len);
	change_pal(strReplaceAt(p.pal_rm_new, _pos, _len, argument[_arg++]));







}
