/// @description  Enemy_update_3()
function Enemy_update_3() {

	// Used by: Aruroda, Tonne, Zora, 


	// 9B45
	if (vspd<$80 
	&&  cs&$4 )
	{
	    solid_clip_correction(vspd && vspd<$80);
	    vspd=0;
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}


	if (vspd&$80 
	|| !(cs&$4) )
	{
	    if (vspd&$80 && cs&$8) vspd=0; // MOD
	    updateY();
	}







}
