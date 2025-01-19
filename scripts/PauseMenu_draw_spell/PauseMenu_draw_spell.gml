/// @description  PauseMenu_draw_spell(spell bit id, text, magic amount, base x, base y, pal idx)
function PauseMenu_draw_spell(argument0, argument1, argument2, argument3, argument4, argument5) {


	var _x,_y;

	argument3 += g.mod_MENU_SPELLS_XOFF;
	argument4 += g.mod_MENU_SPELLS_YOFF;
	if (g.mod_SHOW_MAGIC_REMAINING_NUM 
	&&  argument0 ) // if not "MAGIC" text amt at menu top
	{
	    argument4 += $02<<3;
	}

	if (g.spell_selected == argument0)
	{
	    _x = argument3 + ($01<<3);
	    _y = argument4 + ($01<<3);
	    draw_spr_aligned(SPR_ICON_SPL, _x,_y, -1,-1, PI_MENU);
	}


	// text --------------------------------
	     if (argument2 <  10) argument1 += "00";
	else if (argument2 < 100) argument1 += "0";
	                          argument1 += string(argument2);
	//
	_x  = argument3 + ($02<<3);
	_y  = argument4 + ($01<<3);
	draw_text_(_x,_y, argument1, -1, argument5);







}
