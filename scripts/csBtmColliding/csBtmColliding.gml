/// @description  csBtmColliding()
function csBtmColliding() {


	// returns 0 or a combo of the 1st & 2nd bits. 0,1,2,3
	// clamp() here to prevent GO from falling down past room bounds.
	return inst_collide_solid_type(id, clamp(csBtm1X,0,room_width-1),csBtm1Y) 
	     | inst_collide_solid_type(id, clamp(csBtm2X,0,room_width-1),csBtm2Y);
	//







}
