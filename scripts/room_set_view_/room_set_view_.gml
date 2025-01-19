/// @description  room_set_view_(room_index, view w, view h)
function room_set_view_(argument0, argument1, argument2) {

	// Set camera for next room


	var _ROOM   = argument0;
	var _VIEW_W = argument1;
	var _VIEW_H = argument2;

	if (1)
	{
	    // TODO: Find alternative to room_set_view() since 
	    // it is obsolete. Not sure if using it will/is cause issues.
	    room_set_view_enabled(_ROOM, true);
	    room_set_view(_ROOM, 0, true,    // ind, vind, vis
	                   0,  0,            // xview, yview
	                  _VIEW_W, _VIEW_H,  // wview, hview
	                   0,  0,            // xport, yport
	                  //g.VIEW_PORT_W, g.VIEW_PORT_H,  // wport, hport
	                  _VIEW_W, _VIEW_H,  // wport, hport
	                   0,  0,            // hborder, vborder
	                  -1, -1,            // hspeed, vspeed
	                  noone);            // obj
	}
	else
	{
	    room_set_view_enabled(_ROOM, true);
	    /*
	    _ROOM.view_visible[0] = true;
	    _ROOM.view_xview[0] = 0;
	    _ROOM.view_yview[0] = 0;
	    _ROOM.view_wview[0] = _VIEW_W;
	    _ROOM.view_hview[0] = _VIEW_H;
	    _ROOM.view_xport[0] = 0;
	    _ROOM.view_yport[0] = 0;
	    _ROOM.view_wport[0] = _VIEW_W;
	    _ROOM.view_hport[0] = _VIEW_H;
	    _ROOM.view_hborder[0] = 0;
	    _ROOM.view_vborder[0] = 0;
	    _ROOM.view_hspeed[0] = -1;
	    _ROOM.view_vspeed[0] = -1;
	    _ROOM.view_object[0] = noone;
	    */
	}







}
