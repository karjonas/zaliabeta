/// @description  Bot_draw_cover()
function Bot_draw_cover() {


	if (ver!=3)      exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	if(!Cover_state) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!



	if (              Cover_SPR==0 
	|| !sprite_exists(Cover_SPR) )
	{
	    switch(Cover_NUM){
	    case 1:{
	    var _TSIDX       = max(0, ds_list_find_index(g.dl_tileset,g.ts_Natural1_HMS));
	    //var _TSIDX       = max(0, ds_list_find_index(g.dl_ts,ts_Natural_1a_WRB));
	        _TSIDX       = hex_str(_TSIDX);
	    var _TSRC_BASE   = $70; // $70,71,72, $80,81,82:  Bush 1
	    //                                          // 
	    // Tile TOP 1                               // 
	    var _TSIDX_DATA  = _TSIDX;
	    var _TSRC_DATA   = hex_str(_TSRC_BASE);
	    var _RCOFF_DATA  = "00";
	    // Tile TOP 2                               // 
	        _TSIDX_DATA += _TSIDX;
	        _TSRC_DATA  += hex_str(_TSRC_BASE+1);
	        _RCOFF_DATA += "01";
	    // Tile TOP 3                               // 
	        _TSIDX_DATA += _TSIDX;
	        _TSRC_DATA  += hex_str(_TSRC_BASE+2);
	        _RCOFF_DATA += "02";
	    // Tile BTM 1                               // 
	        _TSIDX_DATA += _TSIDX;
	        _TSRC_DATA  += hex_str(_TSRC_BASE+$10);
	        _RCOFF_DATA += "10";
	    // Tile BTM 2                               // 
	        _TSIDX_DATA += _TSIDX;
	        _TSRC_DATA  += hex_str(_TSRC_BASE+$10+1);
	        _RCOFF_DATA += "11";
	    // Tile BTM 3                               // 
	        _TSIDX_DATA += _TSIDX;
	        _TSRC_DATA  += hex_str(_TSRC_BASE+$10+2);
	        _RCOFF_DATA += "12";
	    //                                          // 
	    Cover_SPR = sprite_create_with_tiles(_TSIDX_DATA, _TSRC_DATA, _RCOFF_DATA);
	    Cover_H   = sprite_get_height(Cover_SPR);
	    break;}
	    }
	}








	if (depth == Hide_DEPTH 
	&& !ogr )
	{
	    if (Cover_tmr)
	    {
	        Cover_tmr--;
	    }
	    else
	    {   // 0: NO cover, 1: NO shake, 2: shake
	        switch(Cover_state){
	        case 1:{
	        Cover_state = 2;
	        Cover_tmr   = $10        + irandom(Cover_DUR1);
	        Cover_xoff  = sign_(irandom(1));
	        Cover_xoff  = 1;
	        break;}
        
	        case 2:{
	        Cover_state = 1;
	        Cover_tmr   = Cover_DUR1 + irandom(Cover_DUR2);
	        Cover_xoff  = 0;
	        break;}
	        // Cover_state += sign_(Cover_state&1);
	        // Cover_state = !(Cover_state-1) + 1;
	        }
	    }
	}
	else
	{
	    Cover_tmr   = 0;
	    Cover_state = !!Cover_state; // 0,1
	}



	if ( Cover_state==2 
	// &&   Cover_xoff !=0 
	&& !(g.counter1&$3) )
	{    Cover_xoff = !Cover_xoff;  }
	// {    Cover_xoff = -Cover_xoff;  }
	// else Cover_xoff = 0;

	var _x = Cover_X              +Cover_xoff;
	var _y = Cover_YB-(Cover_H>>1)+Cover_yoff;
	//var _y = Cover_YB-(Cover_H>>1);

	draw_sprite_(Cover_SPR,0, _x,_y, Cover_PI);








}
