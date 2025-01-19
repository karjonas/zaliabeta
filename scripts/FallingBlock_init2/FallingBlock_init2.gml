/// @description  FallingBlock_init2()
function FallingBlock_init2() {


	GO_init_palidx(PI_BGR_1);
	LAND_DEPTH = DEPTH_BG1;

	facingDir = 1;


	vspd_grav = 2;
	vspd      = 0;


	switch(g.area_name){
	case Area_PalcG:{ATTACK_LEVEL=$03; attack_level=ATTACK_LEVEL; break;}
	}







}
