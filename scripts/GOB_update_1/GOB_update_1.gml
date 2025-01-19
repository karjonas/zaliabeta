/// @description  GOB_update_1(can update hspd_pushback)
function GOB_update_1(argument0) {


	if(!hspd_pushback) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!



	hspd = hspd_pushback;

	if (argument0) // if can update push-back
	{
	    if ( hspd_pushback&$80)
	    {    hspd_pushback = (hspd_pushback+1)&$FF;  }
	    else hspd_pushback = (hspd_pushback-1)&$FF;
	}







}
