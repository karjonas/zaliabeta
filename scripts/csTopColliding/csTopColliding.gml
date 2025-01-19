function csTopColliding() {
	// returns 0 or a combo of the 1st & 2nd bits. 0,1,2,3
	return inst_collide_solid_type(id,csTop1X,csTop1Y) | inst_collide_solid_type(id,csTop2X,csTop2Y);




}
