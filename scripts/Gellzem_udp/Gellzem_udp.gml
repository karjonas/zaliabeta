/// @description  Gellzem_udp()
function Gellzem_udp() {


	Geldarm_udp();


	var _i;

	for(_i=0; _i<EYE_CNT; _i++)
	{
	         if (state!=state_NORMAL) dl_eye_spr[|_i] = 0;
	    else if (dl_tmr_revive[|_i])  dl_eye_spr[|_i] = EYE_CLSD_SPR;
	    else                          dl_eye_spr[|_i] = EYE_OPEN_SPR;
    
	    if (stun_timer)               dl_pal_idx[|_i] = GO_update_pal_flash(g.counter1,2);
	    else                          dl_pal_idx[|_i] = palidx_def;
	}


	if (state==state_NORMAL 
	&&  inRange(stun_timer, 1,DELAY_EXPL) ) // dur of eye removal sequence
	{
	                              var   _time = 0;
	    for(_i=0; _i<EYE_CNT; _i++)
	    {                               _time = _i<<3; // last frame this eye can draw
	        if (    inRange(stun_timer, _time,  DELAY_EXPL)) 
	        {
	            if (inRange(stun_timer, _time+4,DELAY_EXPL)) 
	            {
	                dl_eye_spr[|_i] = EYE_CLSD_SPR;
	            }
	            else
	            {   
	                dl_eye_spr[|_i] = EYE_OPEN_SPR; // Open for 4 frames before stops drawing
	                dl_pal_idx[|_i] = palidx_def; // Easier to see it opened
	            }
	        }
	        else    dl_eye_spr[|_i] = 0;
	    }
	}







}
