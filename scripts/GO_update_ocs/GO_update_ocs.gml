/// @description  GO_update_ocs()
function GO_update_ocs() {

	// ocs: Off Camera State


	var _DEBUG1 = g.can_draw_ocs && g.DevTools_state;


	ocs = 0;



	// -------------------------------------------------------------------------------
	// 0001 1111. X axis bits --------------------------------

	// uw: unit width
	// spr [L edge -> uw    ctr    uw <- edge R]
	// 000     1      1      1     1      1
	// bit  $04 is spr horizontal center, 
	// bits $10,$01 outer most left & right edge of spr, 
	// bits $08,$02 are one 8 or 4 pixels toward the 
	// center from the edge, which could also be the center
	var _x    = 0;
	var _xOff = 0;
	for(var _i=0; _i<3; _i++)
	{
	    switch(_i){
	    case 0:{_xOff=ww_;        break;} // bit   $4      (center)
	    case 1:{_xOff=8>>(ww==8); break;} // bits  $8 & $2 (1 uw from edge)
	    case 2:{_xOff=0;          break;} // bits $10 & $1 (edges)
	    }
    
	    // LEFT
	        _x = (x-ww_) + _xOff;
	    if (_x>=viewXR() 
	    ||  _x<=viewXL() )
	    {   ocs |= ($4<<_i);  } // bits $4, $8, $10
    
	    if (_DEBUG1) db_GO_update_cam_vars("x", 2-_i, _x); // ocs_draw_x[0],[1],[2],[3],[4].  bits $10, $8, $4
    
	    // RIGHT
	        _x = (x+ww_) - _xOff;
	    if (_x>=viewXR() 
	    ||  _x<=viewXL() )
	    {   ocs |= ($4>>_i);  } // bits $4, $2, $1
    
	    if (_DEBUG1) db_GO_update_cam_vars("x", 2+_i, _x); // ocs_draw_x[0],[1],[2],[3],[4].  bits  $4, $2, $1
	}




	// -------------------------------------------------------------------------------
	// 1110 0000. Y axis bits --------------------------------

	// bit $80: top pixel             outside of ocs area height
	// bit $40: more than half height outside of ocs area height
	// bit $20: btm pixel             outside of ocs area height
	var _YT = viewYT()-8; //   0. Y Top
	var _YB = viewYB()+8; // $F0. Y Bot
	if ((y-hh_ >= _YB)  ||  (y-hh_ < _YT)) ocs |= $80; // top above or below
	if ((y+hh_ <= _YT)  ||  (y+hh_ > _YB)) ocs |= $20; // btm above or below
	if ((y     <  _YT)  ||  (y     > _YB)) ocs |= $40; // mid above or below


	if (_DEBUG1)
	{
	    db_GO_update_cam_vars("y", 0, y-hh_); // ocs_draw_y[0] (bit $80)
	    db_GO_update_cam_vars("y", 1, y);     // ocs_draw_y[1] (bit $40)
	    db_GO_update_cam_vars("y", 2, y+hh_); // ocs_draw_y[2] (bit $20)
	}







}
