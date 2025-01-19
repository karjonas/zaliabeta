function csLftColliding() {
	// returns 0 or a combo of the 1st & 2nd bits. 0,1,2,3
	return inst_collide_solid_type(id,csLft1X,csLft1Y) | inst_collide_solid_type(id,csLft2X,csLft2Y);




}
