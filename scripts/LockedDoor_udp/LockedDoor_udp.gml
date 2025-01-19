/// @description  LockedDoor_udp()
function LockedDoor_udp() {


	can_draw_self = true;


	switch(ver){
	case 1:{sprite=SPR_1A; break;} // Need key -----------------------
	case 2:{sprite=SPR_1B; break;} // Switch --------------------------
	case 3:{sprite=SPR_1B; break;} // Challenge --------------------------
	}


	xScale = 1;

	             openYOff  = YOFF;
	if (counter) openYOff -= counter;







}
