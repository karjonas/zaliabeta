/// @description  update_EF11()
function update_EF11() {


	// EF11
	if (stun_timer) stun_timer--;

	// EF19
	GO_udp_1(); // drawX=x; drawY=y; xScale=facingDir;
	palidx_base = palidx_def;

	// udp: Update Draw Properties
	if(!is_undefined(  scr_udp))
	{   script_execute(scr_udp);  }


	update_draw_xy();

	// F1BD
	GO_add_palidx_set(); // add p.PI_LIT1 or p.PI_DRK1 to palidx_base
	if (stun_timer) palidx_base = GO_update_pal_flash(stun_timer, 2);
	palidx = get_pi(palidx_base, palidx_permut);







}
