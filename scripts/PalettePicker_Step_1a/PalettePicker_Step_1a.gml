/// @description  PalettePicker_Step_1a()
function PalettePicker_Step_1a() {


	//if(!PP) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!



	// --------------------------------------------------------------------------------------
	// ALL STATES -------------------------------------------------------------
	// Toggle palettes 1
	//if (PP0) g.canDrawPalette = !g.canDrawPalette;


	/*
	// Randomize background color
	if (state==STATE_PKM1 
	&&  Input.GP_Other5_held && Input.GP_Other2_pressed ) // Hold trigL, press Y.  // gp4: xbox Y, gp2: xbox B
	{
	    //p.background_color_index = (irandom(3)<<4) + irandom(p.CI_BLK1&$F); // $D: Last color in a clm. This assumes that black will always be the last color in a row.
	}
	*/

	// --------------------------------------------------------------------------------------
	// STATE_IDLE ONLY -------------------------------------------------------------
	if (isVal(state, STATE_PKM1,STATE_PKM2,STATE_BGR_COLOR)) // if in an edit mode
	{
	    g.canDrawPalette = false;
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}



	// Toggle show all palettes
	if (PP0) // PP0: Only 'P' pressed
	{
	    g.canDrawPalette = !g.canDrawPalette;
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}


	/*
	// Palette is randomized at Room Start
	if (PP && ALT0)
	{
	        g.canRandomizePalette = !g.canRandomizePalette;
	    if (g.canRandomizePalette) change_pal(dev_randomize_palette_1a(p.pal_rm_new)); // 
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}
	*/


	// Turn off palette randomizing & restore default palette
	if (PP && ALT && CTL)
	{
	    g.canRandomizePalette = false;
	    change_pal(p.pal_rm_def); // 
	    p.background_color_index = val(g.dm_rm[?g.rm_name+STR_Background_color], p.CI_ERR0);
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}


	// Randomize palette right now
	if ((PP && CTL && SHF) 
	|| (Input.GP_Other6_held && Input.GP_Other1_held && Input.GP_Other2_pressed) ) // Hold trigR + B, press Y
	{
	    change_pal(dev_randomize_palette_1a(p.pal_rm_new)); // 
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}







}
