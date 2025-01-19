/// @description  Boon_init2()
function Boon_init2() {


	DRAW_YOFF = 0;

	GO_init_palidx(PI_MOB_BLU);
	GO_depth_init(DEPTH_FLYER);

	ds_list_add(dl_sprites,spr_Boon1);
	ds_list_add(dl_sprites,spr_Boon2);


	projectile_OBJ = Rock3;
	projectile_VER = 1;
	projectile     = projectile_OBJ;
	projectile_ver = projectile_VER;


	GROUND_Y = g.rm_h - ($03<<3);
	GROUND_Y = get_ground_y(x,GROUND_Y, -1,GROUND_Y);

	HSPD = $20;
	VSPD = $20;







}
