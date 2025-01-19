/// @description  Snaraa_draw()
function Snaraa_draw() {


	if(!can_draw_self) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


	if (sub_state==SUB_STATE_IDLE 
	||  sub_state==SUB_STATE_AGRO )
	{   draw_rect(p.dl_COLOR[|p.background_color_index], xl,yt,ww,hh);  }


	GO_draw_sprite(sprite, palidx);

	if (sprite==SPR_3)
	{   // Eye
	    draw_point_colour(drawX+((1+!xScale)*xScale), drawY-2, get_pal_color(get_pi(palidx),1));
	}







}
