/// @description  Bubble_udp()
function Bubble_udp() {


	can_draw_self = true;


	if (is_dormant)
	{
	    spr_aura = 0;
	    spr_skul = SPR_SKUL_2;
	    xScale = 1;
	}
	else
	{
	    palidx_base = GO_update_pal_flash(g.counter1, $1<<sign(ver&VER_BIT_GIAN));
    
	    if (ver & VER_BIT_STAB) spr_aura = SPR_AURA_1B; // WBR (reverse)
	    else                    spr_aura = SPR_AURA_1A; // WRB (normal)
    
	    spr_skul = SPR_SKUL_1;
	}

	/*
	cling 1 RGT, move  1: CCW, move -1:  CW
	cling 2 LFT, move  1:  CW, move -1: CCW
	cling 4 BTM, move  1:  CW, move -1: CCW
	cling 8 TOP, move  1: CCW, move -1:  CW
	*/







}
