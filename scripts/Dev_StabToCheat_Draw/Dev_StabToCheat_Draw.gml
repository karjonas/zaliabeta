/// @description  Dev_StabToCheat_Draw()
function Dev_StabToCheat_Draw() {


	if(!g.use_StabToCheat 
	|| !is_active )
	{
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}



	var i, _x, _y;

	for (i = 0; i < OPTION_CNT; i++)
	{
	    // _x  = (CLM_BASE + (i    <<2)) <<3;
	    // _y  = (ROW_BASE + ((i&1)<<2)) <<3;
	    // _x += 4;
	    // _y += 4;
    
	    _x = ar_hb[i,0] + 2;
	    _y = ar_hb[i,1] + 2;
    
	    draw_sprite_(dl_sprites[|i],0, _x, _y, ar_pi[i]);
    
	    if (g.can_draw_hb) draw_rect_(c_lime, _x-2,_y-2, ar_hb[i,2],ar_hb[i,3], 1, true);
    
    
	    if (inRange(i, 10,17))
	    {
	        _y -= 14;
	        draw_sprite(g.dl_rising_xp_spr[| i-9],0, _x,_y);
	    }
	}







}
