/// @description  data_NIAO_1a(instance key, xy data, version, init scr, *pal idx, *data..)
function data_NIAO_1a() {


	// xy data example $1352: x = ($1352&$FF)<<3, y = ($1352>>8)<<3
	var                                               _a=1;
	     g.dm_rm[?argument[0]+"_xy"]       = argument[_a++];
	     g.dm_rm[?argument[0]+STR_version] = argument[_a++];
	     g.dm_rm[?argument[0]+"_init"]     = argument[_a++];

	if (argument_count>4)
	{    g.dm_rm[?argument[0]+STR_pal_idx] = argument[_a++];  }
	else g.dm_rm[?argument[0]+STR_pal_idx] = -1;

	if (argument_count>_a)
	{
	    for(var _i=0; _i<argument_count-_a; _i++)
	    {
	        g.dm_rm[?argument[0]+STR_Data+hex_str(_i+1)] = argument[_a+_i];
	    }
	}







}
