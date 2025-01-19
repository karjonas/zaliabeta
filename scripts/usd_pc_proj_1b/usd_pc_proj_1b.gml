/// @description  usd_pc_proj_1b()
function usd_pc_proj_1b() {

	// discintegrating


	// 990B
	can_draw_self = true;

	palidx_base  = palidx_def;
	palidx_base += p.PI_LIT1;
	palidx       = palidx_base;

	if (disintegrate_counter&$8) GO_set_sprite(id,spr_Projectile_Disintegrate2);
	else                         GO_set_sprite(id,spr_Projectile_Disintegrate1);







}
