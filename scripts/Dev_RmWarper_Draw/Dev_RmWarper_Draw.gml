/// @description  Dev_RmWarper_Draw()
function Dev_RmWarper_Draw() {


	if (isVal(state, STATE_IDLE,STATE_GOTO)) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!



	var _i,_j, _a, _idx, _val;
	var _x,_y, _y_base, _DrawArea_yt,_DrawArea_yc;
	var _w,_h;
	var _VIEW_XL = viewXL();
	var _VIEW_YT = viewYT();
	var _VIEW_YC = viewYC();
	var _DRAWAREA_W = viewW() - (TEXT_DRAWAREA_PAD_X<<1);
	var _DRAWAREA_H = viewH() - (TEXT_DRAWAREA_PAD_Y<<1);
	var _DRAWAREA_X = _VIEW_XL + TEXT_DRAWAREA_PAD_X;
	var _DRAWAREA_Y = _VIEW_YT + TEXT_DRAWAREA_PAD_Y;
	var _PI1 = get_pi(PI_GUI_1);    // HMS.     Current option
	var _PI2 = get_pi(PI_GUI_1,4);  // SHM. NOT Current option
	var _PI3 = get_pi(PI_GUI_1,3);  // MSH. Rm/Exit doesn't  exist.
	var _pi = _PI1;
	var _alpha = 1;
	var _text;
	//




	// Shade the screen for the text.
	draw_rect_(c_black, viewXL(),viewYT(),viewW(),viewH(), .75);


	// Current exit pick in upper left of view.
	_x = _VIEW_XL  + (ExitName_CLM<<3);
	_y =  viewYT() + (ExitName_ROW<<3);
	draw_text_(_x,_y, ExitName_goto);








	//  AREA  ------------------------------------------------------------
	    _x  = viewXL() + AreaID_DrawArea_X;
	    _DrawArea_yc = viewYC();
	    _DrawArea_yt = _DrawArea_yc - AreaID_DrawArea_H_;
	for(_i=0; _i<AREA_COUNT; _i++) // each area
	{
	    _y  = _DrawArea_yt + (_i * TEXT_DIST_Y);
    
	    if!(hINh(_y,8,_DRAWAREA_Y,_DRAWAREA_H)) continue;
    
    
	    _idx  = (area_idx+AREA_COUNT) - (AREA_COUNT>>1);
	    _idx  = (_idx+_i) mod AREA_COUNT;
    
    
	    if (_idx==area_idx) _pi = _PI1;
	    else                _pi = _PI2;
    
	    _text = ar_area[_idx];
	    // if (_idx==AREA_COUNT-1)
	    // {    _text = "TITLE";  }
	    // else _text = g.dl_area_name[|_idx];
	    draw_text_(_x,_y, _text, -1, _pi);
	}









	//  RM ID  ------------------------------------------------------------
	    _x   = viewXL() + RmID_DrawArea_X;
	    _DrawArea_yc = viewYC();
	    _DrawArea_yt = _DrawArea_yc - RmID_DrawArea_H_;
	for(_i=0; _i<RmID_COUNT; _i++) // each rm
	{
	    _y   = _DrawArea_yt + (_i * TEXT_DIST_Y);
    
	    if!(hINh(_y,8,_DRAWAREA_Y,_DRAWAREA_H)) continue;
    
    
	    // _idx  = (rm_id+_i) mod RmID_COUNT;
	    _idx  = (rm_id+RmID_COUNT) - (RmID_COUNT>>1);
	    _idx  = (_idx+_i) mod RmID_COUNT;
    
	    if (_idx==rm_id) _pi = _PI1;
	    else             _pi = _PI2;
    
	    _mapkey  = ar_area[area_idx] + hex_str(_idx);
	    if (is_undefined(g.dm_rm[?_mapkey+STR_Rm+STR_Num+STR_Game]))
	    {
	        _pi = _PI3; // rm does NOT exist
	    }
    
	    draw_text_(_x,_y, hex_str(_idx), -1, _pi);
	}









	//  EXIT ID  ------------------------------------------------------------
	    _x   = viewXL() + ExitID_DrawArea_X;
	    _DrawArea_yc = viewYC();
	    _DrawArea_yt = _DrawArea_yc - ExitID_DrawArea_H_;
	for(_i=0; _i<ExitID_COUNT; _i++) // each exit
	{
	    _y   = _DrawArea_yt + (_i * TEXT_DIST_Y);
    
	    if!(hINh(_y,8,_DRAWAREA_Y,_DRAWAREA_H)) continue;
    
    
	    _idx  = ds_list_find_index(dl_ExitID, ExitID);
	    _idx  = (_idx+ExitID_COUNT) - (ExitID_COUNT>>1);
	    _idx  = (_idx+_i) mod ExitID_COUNT;
    
	    _idx  = dl_ExitID[|_idx];
    
    
	    if (_idx==ExitID) _pi = _PI1;
	    else              _pi = _PI2;
    
	    _mapkey  = ar_area[area_idx] + hex_str(rm_id) + hex_str(_idx);
	    if (is_undefined(g.dm_rm[? _mapkey + STR_Num]))
	    {
	        _pi = _PI3; // exit does NOT exist
	    }
    
    
	    draw_text_(_x,_y, hex_str(_idx), -1, _pi);
	}









	//                                  // 
	_val = 4;
	_dg_INFO = ds_grid_create(3,4);
	//                                  // 
	_dg_INFO[#0,0] = STATE_AREA; // 
	_dg_INFO[#0,1] = AreaID_DrawArea_W; // 
	_dg_INFO[#0,2] = AreaID_DrawArea_X; // 
	//                                  // 
	_dg_INFO[#1,0] = STATE_RM1; // 
	_dg_INFO[#1,1] = RmID_DrawArea_W; // 
	_dg_INFO[#1,2] = RmID_DrawArea_X; // 
	//                                  // 
	_dg_INFO[#2,0] = STATE_EXIT; // 
	_dg_INFO[#2,1] = ExitID_DrawArea_W; // 
	_dg_INFO[#2,2] = ExitID_DrawArea_X; // 
	//                                  // 
	//                                  // 
	//                                  // 
	var _PAD = 2;
	_h   =  viewH();
	_y   =  viewYT();
	for(_i=ds_grid_width(_dg_INFO)-1; _i>=0; _i--)
	{
	    if (state==_dg_INFO[#_i,0]) continue;
    
	    // -----------------------------------------
	    _w  = _dg_INFO[#_i,1] + (_PAD<<1);
	    _x  = (viewXL() + _dg_INFO[#_i,2]) - _PAD;
	    draw_rect_(c_black, _x,_y,_w,_h, .7, false);
	}
	//                                  // 
	ds_grid_destroy(_dg_INFO); _dg_INFO = undefined;
	//                                  // 












	/*
	    var    _CASE=4;
	    switch(_CASE){
	    // -----------------------------------------------------------------
	    // -----------------------------------------------------------
	    case 1:{
	    _idx  = (exit_idx+ExitID_COUNT) - (ExitID_COUNT>>1);
	    _idx  = (_idx+_i) mod ExitID_COUNT;
	    break;}
    
	    // -----------------------------------------------------------------
	    // -----------------------------------------------------------
	    case 2:{
	    _idx  = (ExitID+ExitID_COUNT) - (ExitID_COUNT>>1);
	    _idx  = (_idx+_i) mod ExitID_COUNT;
    
	    // _idx  = (_i+ExitID_COUNT) - (ExitID_COUNT>>1);
	    _idx  = (_idx&$F0)>>4; // 0,1,2,3,4
	    _idx  = $08<<_idx;  // $08,$10,$20,$40,$80
	    _idx &= $F0;        // $00,$10,$20,$40,$80
	    _idx |= _i&$F;
	    break;}
    
	    // -----------------------------------------------------------------
	    // -----------------------------------------------------------
	    case 3:{
	    _idx  = (_i&$F0)>>4; // 0,1,2,3,4
	    _idx  = $08<<_idx;  // $08,$10,$20,$40,$80
	    _idx &= $F0;        // $00,$10,$20,$40,$80
	    _idx |= _i&$F;
	    break;}
    
	    // -----------------------------------------------------------------
	    // -----------------------------------------------------------
	    case 4:{
	    _idx  = (exit_idx+ExitID_COUNT) - (ExitID_COUNT>>1);
	    _idx  = (_idx+_i) mod ExitID_COUNT;
	    _idx  = dl_ExitID[|_idx];
	    break;}
	    } // switch(_CASE){
	*/










}
