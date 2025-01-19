/// @description  data_REFLECT_vuln(obj name + ver, projectile obj name + ver, *projectile obj name + ver..)
function data_REFLECT_vuln() {


	if (argument_count<2) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


	var _DATAKEY = argument[0]+STR_REFLECT+STR_Vulnerable;

	for(var _i=1; _i<argument_count; _i++)
	{
	    g.dm_go_prop[?_DATAKEY+hex_str( _i)] = argument[_i];
	    g.dm_go_prop[?_DATAKEY+argument[_i]] = true;
	}







}
