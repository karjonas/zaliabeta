/// @description  udp_OptionsMenu()
function udp_OptionsMenu() {


	switch(Menu_in_focus){
	case   Menu_MAIN:{        draw_clms_count=Main_CLMS; break;}
	case   Menu_INPUT_CONFIG:{draw_clms_count=InputConfig_CLMS; break;}
	default:{                 draw_clms_count=Main_CLMS; break;}
	}
	//draw_clms_count = draw_clms_COUNT;
	/*
	switch(Menu_in_focus){
	case   Menu_MAIN:{        draw_clms_max=Main_CLMS; break;}
	case   Menu_INPUT_CONFIG:{draw_clms_max=InputConfig_CLMS; break;}
	default:{                 draw_clms_max=Main_CLMS; break;}
	}
	draw_clms_count = draw_clms_max;
	*/


	drawX = ((g.view_xl_og+$28)>>4)<<4;
	drawX = clamp(drawX, ((viewXL()>>3)<<3)+($4<<3), (((viewXR()>>3)<<3)-($4<<3)) - (draw_clms_count<<3));
	//drawX = (g.camXL+$28) &$FF0;
	drawY = viewYT() + viewYT_OFF;
	//drawY = viewYT() + Y_BASE;



	switch(Menu_in_focus){
	case   Menu_MAIN:{        draw_rows_max=Main_ROWS; break;}
	case   Menu_INPUT_CONFIG:{draw_rows_max=InputConfig_ROWS; break;}
	default:{                 draw_rows_max=Main_ROWS; break;}
	}

	if (anim_frame==ANIM_FRAMES_DEF) draw_rows_count = draw_rows_max;
	else                             draw_rows_count = anim_frame<<1;
	/*
	if (anim_frame!=ANIM_FRAMES_DEF) draw_rows_count = ROWS;
	else                             draw_rows_count = anim_frame<<1;
	*/

	/*
	switch(Menu_in_focus)
	{
	    case Menu_MAIN:{
	    draw_rows_max=Main_ROWS;
	    break;}
    
	    case Menu_INPUT_CONFIG:{
	    draw_rows_count=InputConfig_ROWS;
	    break;}
    
	    default:{
	    draw_rows_count=Main_ROWS;
	    break;}
	}
	*/







}
