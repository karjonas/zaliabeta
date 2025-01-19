/// @description  CrystalHolder_udp()
function CrystalHolder_udp() {


	// 9AD7
	if(!canDrawCrystal  // 0081[eIndex]
	&&  counter ) // stat restoration NOT finished
	//&&  counter < $80 ) // stat restoration NOT finished
	{
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}



	// 9ADB: JSR 9A8B
	can_draw_self = true;
	update_draw_xy();
	palidx = GO_update_pal_flash(g.counter1,1);







}
