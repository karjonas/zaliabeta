function init_Boomerang() {

	GO_sprite_init(spr_Boomerang1);
	GO_init_palidx(PI_MOB_BLU);

	vspd_adj = 2; // 

	counter          = $20;
	// enemy            =   0; // The enemy that created this instance
	facing_dir_spawn =   1; // 0452,X. set in creation
	// src_uIdx         =  -1; // 045E,X. set in creation
	isHighAttack     = false; // 0458,X. set in creation

	// for debug
	can_draw_catch_hb = true;
	CATCH_W     = $0C;
	CATCH_H     = $17;
	catchX      = 0;
	catchY      = 0;




}
