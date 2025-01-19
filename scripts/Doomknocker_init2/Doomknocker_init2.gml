/// @description  Doomknocker_init2()
function Doomknocker_init2() {


	projectile_OBJ = Mace2;
	projectile_VER = 1;
	projectile     = projectile_OBJ;
	projectile_ver = projectile_VER;

	dl_sprites[|0] = spr_Doomknocker_body1;
	GO_init_palidx(PI_MOB_BLU);

	VSPD_GRAV = 2;
	vspd_grav = VSPD_GRAV;


	Arm_sprite = 0;
	Arm_xoff   = 4;
	Arm_yoff   = 0;

	Legs_sprite = spr_Doomknocker_legs1;







}
