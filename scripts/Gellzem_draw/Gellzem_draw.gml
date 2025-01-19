/// @description  Gellzem_draw()
function Gellzem_draw() {


	if(!can_draw_self) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


	// --------------------------------------------------------------

	Geldarm_draw();

	var _i;
	for(_i=0; _i<EYE_CNT; _i++)
	{
	    if (        !dl_eye_spr[|_i]) continue;
	    draw_sprite_(dl_eye_spr[|_i],0, dl_xx[|_i]+EYE_SPR_XOFF, dl_yy[|_i]+EYE_SPR_YOFF, dl_pal_idx[|_i], dl_xscale[|_i]);
	}




	// eye hb
	if (g.DevTools_state 
	&&  state 
	&&  g.can_draw_hb 
	&&  canDraw_eye_hb )
	{
	    for(_i=0; _i<EYE_CNT; _i++)
	    {
	        if (dl_tmr_revive[|_i]) continue;
        
	        draw_rect_(EYE_HB_COLOR, dl_hb_x[|_i],dl_hb_y[|_i], EYE_HB_W,EYE_HB_H, 1,true);
	    }
	}







}
