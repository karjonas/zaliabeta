function init_Spear() {



	dl_sprites[|1] = spr_Spear_piece2; // pole
	dl_sprites[|0] = spr_Spear_piece1; // tip
	GO_set_sprite(id, dl_sprites[|0]);

	vspd_adj = 2; // 

	spr_L = dl_sprites[|facingDir == 1]; // 
	spr_R = dl_sprites[|facingDir != 1]; // 

	// palIndex_def set in Projectile_create() before init_Spear()
	palIdx_L = palidx_def;
	palIdx_R = palidx_def;

	xScale_L = facingDir;
	xScale_R = facingDir;







}
