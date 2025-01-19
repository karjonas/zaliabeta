/// @description  update_BossExplosion()
function update_BossExplosion() {


	// 9767
	if (timer)
	{   // 976E
	    GO_udp_1(); // drawX=x; drawY=y; xScale=facingDir;
    
	    if(!is_undefined(  scr_udp))
	    {   script_execute(scr_udp);  }
    
	    update_draw_xy(); // drawX=x+DRAW_XOFF+drawXOff, drawY=y+DRAW_YOFF+drawYOff
	}
	else
	{   // 995A
	    state = 0;
	}







}
