/// @description  data_go_scr(obj name, *init 1, *init 2, *update, *udp, *draw, *instance end, *destroy, *room end)
function data_go_scr() {


	var                  _a=0;
	if (argument_count>++_a && argument[_a]) g.dm_go_scr[?STR_ini1+argument[0]] = argument[_a];
	if (argument_count>++_a && argument[_a]) g.dm_go_scr[?STR_ini2+argument[0]] = argument[_a];
	if (argument_count>++_a && argument[_a]) g.dm_go_scr[?STR_updt+argument[0]] = argument[_a];
	if (argument_count>++_a && argument[_a]) g.dm_go_scr[?STR_udp +argument[0]] = argument[_a];
	if (argument_count>++_a && argument[_a]) g.dm_go_scr[?STR_draw+argument[0]] = argument[_a];
	if (argument_count>++_a && argument[_a]) g.dm_go_scr[?STR_iend+argument[0]] = argument[_a];
	if (argument_count>++_a && argument[_a]) g.dm_go_scr[?STR_dstr+argument[0]] = argument[_a];
	if (argument_count>++_a && argument[_a]) g.dm_go_scr[?STR_rmen+argument[0]] = argument[_a];







}
