/// @description  obj_start_Step()
function obj_start_Step() {


	if (g.counter1==7)
	{
	    goto_title_rm();
	}
	else
	{
	         if (g.counter0<3) g.surf.draw_clear_color = p.C_GRY3; // Grey 3. Mid grey. 3rd brightest grey. 2nd darkest grey.
	    else if (g.counter0>8) g.surf.draw_clear_color = p.C_BLK1;
	    else                   g.surf.draw_clear_color = p.dl_COLOR[|p.background_color_index];
	}







}
