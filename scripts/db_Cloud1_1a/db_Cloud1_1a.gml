/// @description  db_Cloud1_1a(cloud idx, x, y)
function db_Cloud1_1a(argument0, argument1, argument2) {


	var _idx    = argument0;
	var _x      = argument1;
	var _y      = argument2;


	var  _str  = "cloud"+string(_idx+1)+":  ";
	     _str += "_x ";
	//
	if (abs(_x)<$100)
	{    _str += "  ";  }
	if (_x<0)
	{    _str += "-";  }
	else _str += " ";
	     _str += "$";
	     _str += hex_str(abs(_x))+", ";
	     _str += "  ";
	     _str += "dg_cloud[#_j,0] "
	//
	if (abs(dg_cloud[#_idx,0])<$100)
	{    _str += "  ";  }
	if (dg_cloud[#_idx,0]<0)
	{    _str += "-";  }
	else _str += " ";

	     _str += "$";
	     _str += hex_str(abs(dg_cloud[#_idx,0]))+", ";
	     _str += "  ";
	     _str += "dg_cloud[#_j,7]  ";
	if (abs(dg_cloud[#_idx,7])<$100)
	{    _str += "  ";  }
	     _str += " ";
	//
	     _str += "$";
	     _str += hex_str(dg_cloud[#_idx,7])+", ";
	     _str += "  ";
	//
	     _str += "_y  $"+hex_str(_y);
	sdm( _str);
	// sdm("g.rm_pages_x "+string(g.rm_pages_x)+", _COPY_COUNT "+string(_COPY_COUNT)+", _copy_count "+string(_copy_count));








}
