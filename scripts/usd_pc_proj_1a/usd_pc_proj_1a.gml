/// @description  usd_pc_proj_1a()
function usd_pc_proj_1a() {


	// 98C0
	GO_udp_1(); // drawX=x; drawY=y; xScale=facingDir;

	can_draw_self = true;

	var      _BEAM = type_bits & BIT_BEM1;
	var      _FIRE = type_bits & BIT_FIR1;

	     if (_BEAM) GO_set_sprite(id,dl_sprites[|0]); // Beam
	else if (_FIRE) GO_set_sprite(id,dl_sprites[|1]); // Fire
	else            GO_set_sprite(id,dl_sprites[|0]); // Default(Beam)


	if (_FIRE && g.counter1&$4)  yScale = -1;
	else                         yScale =  1;

	if(!_FIRE && g.counter1&$2) 
	{
	     if (rm_pal_qual_lit()) palidx_base  = PI_MOB_BLU;
	     else                   palidx_base  = PI_PC_1;
	}
	else                        palidx_base  = palidx_def;  // PI_MOB1: orange

	     if (rm_pal_qual_lit()) palidx_base += p.PI_LIT1;
	else if(!_FIRE)             palidx_base += p.PI_DRK1;

	palidx = get_pi(palidx_base,palidx_permut);

	update_draw_xy();







}
