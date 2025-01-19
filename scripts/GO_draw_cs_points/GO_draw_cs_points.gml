/// @description  GO_draw_cs_points()
function GO_draw_cs_points() {

	// cs points. Toggle with 'H'


	if(!g.DevTools_state) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	//if(!DEV)           exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	if(!g.can_draw_cs) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!
	if(!canDrawCSHB)   exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!

	//canDrawCSHB = false;

	var _COLOR1 = c_lime;
	var _COLOR2 = c_purple;

	drawPointCross(csTop1X, csTop1Y, _COLOR1, _COLOR2); // CS_TOP
	drawPointCross(csBtm1X, csBtm1Y, _COLOR1, _COLOR2); // CS_BOT
	drawPointCross(csRgt1X, csRgt1Y, _COLOR1, _COLOR2); // CS_RGT top
	drawPointCross(csRgt2X, csRgt2Y, _COLOR1, _COLOR2); // CS_RGT bottom
	drawPointCross(csLft1X, csLft1Y, _COLOR1, _COLOR2); // CS_LFT top
	drawPointCross(csLft2X, csLft2Y, _COLOR1, _COLOR2); // CS_LFT bottom

	//if (id != g.pc && !isAncestor(oi, PushA, SpTrA, MagnA)) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!
	drawPointCross(csTop2X, csTop2Y, _COLOR1, _COLOR2); // CS_TOP right
	drawPointCross(csBtm2X, csBtm2Y, _COLOR1, _COLOR2); // CS_BOT right
	drawPointCross(cp1X   , cp1Y   , _COLOR1, _COLOR2); // CS_BOT mid




}
