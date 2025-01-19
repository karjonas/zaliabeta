/// @description  GO_draw_sprite_outline()
function GO_draw_sprite_outline() {

	// Sequence with 'K'. An outline of 'sprite' or sprite_index


	if (g.canDrawSprOutline)
	{
	    // draw the spritesheet template frame guide
	    //if (id==g.pc) draw_sprite_(spr_SpritesheetTemplateGuideFrame01,0, drawX,drawY, -1, 1,1, c_fuchsia,.35);
    
	    if (g.canDrawSprOutline&$1) drawSprOutline(drawX,drawY, sprite, c_yellow,1);
	    else                        draw_sprite_index_outline();
	}







}
