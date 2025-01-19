/// @description  SwitchB_update()
function SwitchB_update() {


	if (complete) pressed = true;


	update_EF11();


	if (complete) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!



	// ------------------------------------------------------------------
	update_body_hb_2a();

	// *** yt is 8 ABOVE the ground.


	if (g.dg_RmTile_solid[# xl>>3,    yt>>3]&$FF == TID_SOLID1  // if solid tile on top
	||  g.dg_RmTile_solid[#(xl>>3)+1, yt>>3]&$FF == TID_SOLID1  // if solid tile on top
	||  collide_solid_inst(x,y-1) 
	//|| (g.pc.cs&CS_BTM && pointInRect(g.pc.x,g.pc.y+g.pc.hh_, xx+2,GROUND_Y,$C,3)) ) // if PC on top
	|| (g.pc.cs&CS_BTM && pointInRect(g.pc.cp1X,g.pc.cp1Y, BodyHB_x,BodyHB_y,BodyHB_w,BodyHB_h)) ) // if PC on top
	{
	    if(!pressed)
	    {
	        pressed_count++;
	        aud_play_sound(snd_press);
	    }
    
	    pressed = true;
	}
	else
	{
	    if (pressed)
	    {
	        aud_play_sound(snd_press);
	    }
    
	    pressed = false;
	}







}
