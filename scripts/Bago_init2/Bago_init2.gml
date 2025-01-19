/// @description  Bago_init2()
function Bago_init2() {


	switch(ver){
	case 1:{projectile_OBJ=Rock2;     projectile_VER=1; break;}
	case 2:{projectile_OBJ=Fireball1; projectile_VER=1; break;}
	}
	projectile     = projectile_OBJ;
	projectile_ver = projectile_VER;


	ds_list_add(dl_sprites,spr_Bago1);
	ds_list_add(dl_sprites,spr_Bago2);
	GO_init_palidx(PI_MOB_BLU);
	GO_depth_init(DEPTH_FLYER);

	HSPD1 = $10; // Normal
	HSPD2 = $20; // Launch speed only
	hspd  = HSPD1;

	VSPD_GRAV   = 1;
	vspd_grav   = VSPD_GRAV;
	VSPD1 = $C0 + vspd_grav; // Bago spawner sets vspd using VSPD1


	has_landed      = false;
	is_from_spawner = false;


	switch(g.area_name){
	case Area_WestA:{ATTACK_LEVEL=$02; attack_level=ATTACK_LEVEL; break;}
	}
	switch(g.area_name){
	case Area_WestA:{XP_IDX=$03; xp=g.dl_XP[|XP_IDX]; break;}
	}







}
