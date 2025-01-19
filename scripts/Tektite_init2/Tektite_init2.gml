/// @description  Tektite_init2()
function Tektite_init2() {

	//TektA


	projectile_OBJ = Bullet2;
	projectile_VER = 1;
	projectile     = projectile_OBJ;
	projectile_ver = projectile_VER;


	dl_sprites[|1] = spr_Tektite2;
	dl_sprites[|0] = spr_Tektite1;
	GO_init_palidx(PI_MOB_BLU);
	Legs_sprite = spr_Tektite_legs;

	draw_yoff = 0;
	legsYOff = $10;

	VSPD_GRAV   = 2;
	vspd_grav   = VSPD_GRAV;

	BODY_HB_IDX_TALL = $02;
	BODY_HB_IDX_SHRT = $0A;
	BodyHB_idx       = BODY_HB_IDX_TALL;







}
