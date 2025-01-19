/// @description  dev_output_colors_1a()
function dev_output_colors_1a() {
	// output all dl_color values in hex


	var _i, _str;

	for(_i=0; _i<ds_list_size(p.dl_COLOR); _i++) // each possible color
	{
	    // var _str = " "+hex_str(_i)+":  "+hex_str(p.dl_color[|_i]);
	                              _str  = hex_str(p.dl_COLOR[|_i]);
	    if(string_length(_str)<6) _str  = "00" + _str;
	    if(string_length(_str)<6) _str  = "00" + _str;
	                              _str  = "dl_COLOR[|$"+hex_str(_i)+"] = $"+_str+", ";
	                              _str += "Luminosity: $"+hex_str(colour_get_value(p.dl_COLOR[|_i]));
	                              _str += ";      // ";
	    if!(_i&$F)
	    {   sdm("");  }
	        sdm(_str);
	    //
	}



	//if (_i&$F==$F) sdm("");



}
