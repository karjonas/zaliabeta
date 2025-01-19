/// @description  Projectile_init()
function Projectile_init() {


	init_vars_go_A();

	init_vars_goc_1a(); // GOC/Projectile
	//BodyHB_COLOR = c_fuchsia;


	//GO_init_1a();       // set go_name
	GO_sprite_init(spr_Placement_08x16);
	GO_init_palidx(PI_MOB_BLU);
	GO_depth_init(DEPTH_PROJECTILE);
	GO_depth_init(DEPTH_PC_MAIN-1);
	// GO_depth_init(DEPTH_ENEMY_PROJECTILE);


	DRAW_YOFF = 1; // +1 for 1 pixel in ground
	update_idx = addToProjectileList(id);
	scr_step = Projectile_step;







}
