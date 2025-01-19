/// @description  draw_sprite_index_outline()
function draw_sprite_index_outline() {


	//drawSprOutline(drawX, drawY, sprite_index, c_orange, 1);
	drawSprOutline(x,y, sprite_index, c_orange, 1);

	/*  Not sure I should use drawXY or xy here. I think the point of 
	    this script is to show the area a lot of hb are based off of, 
	    which xy would show. However, some draw data is updated before 
	    xy and hb so using xy would put this outline ahead one frame 
	    of the drawn sprite. Also, xy would not reflect any draw offsets.  
	    For an example: look at what happens when an iron knuckle orange 
	    gets close to PC. */
	//







}
