/// @description  Bubble_cling_update_4a()
function Bubble_cling_update_4a() {


	if(!ROTATION_USE) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


	// Orient vertical or sideways so orientation 
	// is correct when finding next wall.
	if (hspd)
	{    rotation +=  ((rotation&$1) * -byte_dir(hspd));  }
	else rotation += (!(rotation&$1) * -byte_dir(vspd));
	     rotation &= $3;
	//







}
