/// @description  Bubble_cling_update_3a()
function Bubble_cling_update_3a() {


	if(!ROTATION_USE) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


	if (hspd 
	&&  rotation&$1 ) // horz orientation
	{
	    rotation += (byte_dir(hspd) * sign_(dg_cling[#0,0]&$8));
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}

	if (vspd 
	&& !(rotation&$1) ) // vert orientation
	{
	    rotation += (byte_dir(vspd) * sign_(dg_cling[#0,0]&$1));
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}







}
