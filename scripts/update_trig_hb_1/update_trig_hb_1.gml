/// @description  update_trig_hb_1()
function update_trig_hb_1() {


	var _SOLID = (TID_SOLID1|TID_ONEWY1) &$F;

	var _CLM = round8(xl)>>3;
	var _ROW = round8(yt)>>3;

	// These are in case no solid is found
	var _CLM_MIN = cam_xl_min()>>3;
	var _CLM_MAX = cam_xr_max()>>3;
	var _ROW_MIN = cam_yt_min()>>3;
	var _ROW_MAX = cam_yb_max()>>3;

	// horizontal
	if (move_dirs&$3)
	{
	    trig_hori_x  = (max(find_clm_solid(_SOLID, _CLM-1,_ROW, -1,0,_CLM_MIN), find_clm_solid(_SOLID, _CLM-1,_ROW+1, -1,0,_CLM_MIN)) + 1) <<3;
	    trig_hori_w  =  min(find_clm_solid(_SOLID, _CLM+2,_ROW,  1,0,_CLM_MAX), find_clm_solid(_SOLID, _CLM+2,_ROW+1,  1,0,_CLM_MAX))      <<3;
	    trig_hori_w -= trig_hori_x;
    
	    trig_hori_h  = trig_hori_H;
	    trig_hori_y  = y-(trig_hori_h>>1);
	}

	// vertical
	if (move_dirs&$C)
	{
	    trig_vert_y  = (max(find_row_solid(_SOLID, _CLM,_ROW-1, -1,0,_ROW_MIN), find_row_solid(_SOLID, _CLM+1,_ROW-1, -1,0,_ROW_MIN)) + 1) <<3;
	    trig_vert_h  =  min(find_row_solid(_SOLID, _CLM,_ROW+2,  1,0,_ROW_MAX), find_row_solid(_SOLID, _CLM+1,_ROW+2,  1,0,_ROW_MAX))      <<3;
	    trig_vert_h -= trig_vert_y;
    
	    trig_vert_w  = trig_vert_W;
	    trig_vert_x  = x-(trig_vert_w>>1);
	}







}
