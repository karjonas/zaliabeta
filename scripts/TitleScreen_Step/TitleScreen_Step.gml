function TitleScreen_Step() {


	/*
	/// TitleScreen_Step()

	if (Input.pS) room_goto(rmB_FileSelect);

	if (!g.timer0)              counter++;
	if (counter == RESET_COUNT) counter = 0;




	// TITLE ---------------------------------------
	if !(g.timer0 & 3)
	{
	    // counter starts at -SCROLL1_DELAY_COUNT(-3)
	         if (counter >= SCROLL2_DELAY_COUNT) title_y--;
	    else if (counter >= 0 && title_y < 0)    title_y = TITLE_YSTART - 1;
	    else if (counter >= 0 && title_y > 0)    title_y--;
	}


	// STORY -----------------------------------------------------
	story_y = title_y + STORY_YOFFSET;



	// FG --------------------------------------------------------



	// COVER -------------------------------------------------------
	if (g.timer0 >= 4)  cover_can_draw = false;
	if (cover_can_draw) g.surf.frame_solid_col = p.C_BLK1;



	// ********** End Step ***********
	// SHOOTING STAR ---------------------------------------
	if (sstar_is_first_cycle 
	&&  counter == SSTAR_SHOOT_DELAY2 + 1 )
	{
	    sstar_is_first_cycle = false;
	}

	if (!sstar_is_first_cycle 
	&&  counter == SSTAR_SHOOT_DELAY2 - 1 
	&&  g.timer0 == SSTAR_VISIBLE_DELAY )
	{
	    sstar_can_draw = true;
	}

	if (isVal(counter, SSTAR_SHOOT_DELAY1, SSTAR_SHOOT_DELAY2))
	{
	    if (sstar_moveNum == SSTAR_MAX_MOVES)
	    {
	        sstar_moveNum  = 0;
	        sstar_can_draw = false;
	    }
    
	    if !(g.timer0 & 3) sstar_moveNum++;
	}
	else
	{
	    sstar_moveNum = 0;
	}
	*/









	/*
	/// TitleScreen_Step()

	if (Input.pS) room_goto(rmB_FileSelect);

	if (!g.timer0)              counter++;
	if (counter == RESET_COUNT) counter = 0;




	// TITLE ---------------------------------------
	if !(g.timer0 & 3)
	{
	    // counter starts at -SCROLL1_DELAY_COUNT(-3)
	         if (counter >= SCROLL2_DELAY_COUNT) title_y--;
	    else if (counter >= 0 && title_y < 0)    title_y = TITLE_YSTART - 1;
	    else if (counter >= 0 && title_y > 0)    title_y--;
	}


	// STORY -----------------------------------------------------
	story_y = title_y + STORY_YOFFSET;



	// FG --------------------------------------------------------



	// COVER -------------------------------------------------------
	if (g.timer0 >= 4)  cover_can_draw = false;
	if (cover_can_draw) g.surf.frame_solid_col = p.C_BLK1;



	// ********** End Step ***********
	// SHOOTING STAR ---------------------------------------
	if (sstar_is_first_cycle 
	&&  counter == SSTAR_SHOOT_DELAY2 + 1 )
	{
	    sstar_is_first_cycle = false;
	}

	if (!sstar_is_first_cycle 
	&&  counter == SSTAR_SHOOT_DELAY2 - 1 
	&&  g.timer0 == SSTAR_VISIBLE_DELAY )
	{
	    sstar_can_draw = true;
	}

	if (isVal(counter, SSTAR_SHOOT_DELAY1, SSTAR_SHOOT_DELAY2))
	{
	    if (sstar_moveNum == SSTAR_MAX_MOVES)
	    {
	        sstar_moveNum  = 0;
	        sstar_can_draw = false;
	    }
    
	    if !(g.timer0 & 3) sstar_moveNum++;
	}
	else
	{
	    sstar_moveNum = 0;
	}


	*/



}
