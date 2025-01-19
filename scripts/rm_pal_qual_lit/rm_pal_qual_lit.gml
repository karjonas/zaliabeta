/// @description  rm_pal_qual_lit()
function rm_pal_qual_lit() {


	switch(g.mod_RM_BRIGHTNESS_SYS)
	{
	    // ------------------------------------------
	    // OG
	    case 0:{return p.pal_rm_dark_idx==-1 || f.items&ITM_CAND; break;}
    
    
	    // ------------------------------------------
	    // Light torches to brighten rm
	    case 1:{return g.rm_brightness>=g.RM_BRIGHTNESS_MAX; break;}
	    //case 1:{return g.rm_brightness==g.RM_BRIGHTNESS_MAX; break;}
	    //case 1:{return g.rm_brightness; break;}
    
    
	    // ------------------------------------------
	    // CANDLE gives +1 brightness. Light torches to brighten rm
	    case 2:{return g.rm_brightness>=g.RM_BRIGHTNESS_MAX; break;}
	}



	return false;







}
