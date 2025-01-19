/// @description  usd_LevelUpMenu()
function usd_LevelUpMenu() {


	drawX = get_menu_x();
	drawY = viewYT() + Y_BASE + $10; // $28
	cnt_draw_rows   = g.menu_built_count<<1;
	canDrawSections = g.menu_built_count;


	// Blink stat icons that are leveling up
	if (g.menu_state == 7) canDrawStatIcon = !(g.gui_timer1 & 8);
	// if (g.menu_state == 7) canDrawStatIcon = g.gui_tmr_1 & $F < 8;
	else                  canDrawStatIcon = 1;


	if (g.menu_state == 4) // Building window
	{
	    for (var i=0; i<=2; i++)
	    {   statXPNext[i] = get_xp_next(i);  }
	}


	/*
	// MOD  --------------------------------------------
	// Uptick xpnext value for stat chosen to level up
	if (g.menu_state == 7 
	&&  g.luTimer  
	&&  g.luIndex != 3 )
	{
	    var      _DIFF = get_stat_xp_next(g.luIndex) - statXPNext[g.luIndex];
	         if (_DIFF >= 10)  statXPNext[g.luIndex] += 10;
	    else if (_DIFF)        statXPNext[g.luIndex] +=  1;
    
	    // Uptick sound?
	    // if (_DIFF) Sound.
	}
	*/








}
