/// @description  ContinueSaveScreen_init()
function ContinueSaveScreen_init() {


	var _i, _a, _x,_y;
	var _clm,_row, _clms,_rows;
	var _text;



	/*
	MAIN_SPR    = spr_ContinueSave_Screen;
	BOTTLE_SPR  = spr_menu_bottle_icon;
	SAVE_SPR    = spr_SaveTextRed;

	x  = viewXC() - (sprite_get_width( MAIN_SPR)>>1);  // centered
	y  = viewYC() - (sprite_get_height(MAIN_SPR)>>1); // centered


	BOTTLE_BASEX = x + ($0A<<3);
	BOTTLE_BASEY = y + ($05<<3);
	BOTTLE_SAVEY = BOTTLE_BASEY + ($02<<3);
	bottleX = BOTTLE_BASEX;
	bottleY = BOTTLE_BASEY;


	SAVEX = viewXC() - (sprite_get_width(SAVE_SPR)>>1) - ($02<<3);
	// SAVEX = BOTTLE_BASEX + ($02<<3);
	SAVEY = BOTTLE_BASEY + ($02<<3);
	*/




	BOTTLE_SPR  = spr_menu_bottle_icon;

	//Caution_SPR = spr_ContinueScreen_Warning;

	counter   = 0;
	READY_CUE = 2;


	SAVE_FLASH_LIMIT = 8;
	saveFlashCount   = 0;

	TITLE_SCREEN_CUE1    = $48; // 72
	TITLE_SCREEN_CUE2    = $20; // 
	NEXT_LIFE_SCREEN_CUE = 8;




	if (g.mod_ContinueScreen_Music==1)
	{
	    //aud_play_sound(get_music_theme_track(dk_GameOver), Audio.PRIORITY_TOP, true);
	}


	SaveFlash_PAL = p.CI_BLK1_ + p.CI_RED2_ + p.CI_RED3_ + p.CI_BLK1_;
	change_pal(strReplaceAt(p.pal_rm_curr, p.PAL_POS_BGR1, string_length(SaveFlash_PAL), SaveFlash_PAL));


	                  _a=0;
	ST_NUL          = _a++; // Only first couple frames draw solid black screen
	ST_FRE          = _a++; // Free to navigate options
	ST_SEL          = _a++; // An option has been selected
	state           = ST_NUL;

	/*
	                  _a=0;
	OP_CONT         = _a++; // Continue session. New set of lives
	OP_SAVE         = _a++; // Go to TitleScreen AND     save
	OP_QUIT         = _a++; // Go to TitleScreen WITHOUT save
	Options_idx     = OP_CONT;
	Options_COUNT   = _a;
	*/







	Caution_srf = 0;
	Caution_dl_text = ds_list_create();
	ds_list_add(Caution_dl_text,"CAUTION");
	ds_list_add(Caution_dl_text,"TO AVOID DAMAGING GAME");
	ds_list_add(Caution_dl_text,"INFO  SAVED,  HOLD  IN");
	ds_list_add(Caution_dl_text,"RESET  BUTTON  AS  YOU");
	ds_list_add(Caution_dl_text,"TURN POWER OFF.");
	_clms = 0;
	for(_i=ds_list_size(Caution_dl_text)-1; _i>=0; _i--)
	{
	    _clms = max(_clms, string_length(Caution_dl_text[|_i]));
	}
	_clms += _clms&$1;

	Caution_dl_text[|0] = string_repeat(" ",(_clms>>1)-(string_length(Caution_dl_text[|0])>>1)) + Caution_dl_text[|0];

	_clms += $4;

	Caution_W  = _clms<<3;
	Caution_H  = ds_list_size(Caution_dl_text) + (ds_list_size(Caution_dl_text)-1);
	Caution_H += $4;
	Caution_H  = Caution_H<<3;







	dg_Options = ds_grid_create(0,4);
	//                                              //
	//                                              //
	   ds_grid_resize(dg_Options, ds_grid_width(dg_Options)+1, ds_grid_height(dg_Options));
	_i=ds_grid_width( dg_Options)-1;
	Option_CONT=_i;
	dg_Options[#_i,0] = "CONTINUE";
	//                                              //
	//                                              //
	   ds_grid_resize(dg_Options, ds_grid_width(dg_Options)+1, ds_grid_height(dg_Options));
	_i=ds_grid_width( dg_Options)-1;
	Option_SAVE=_i;
	dg_Options[#_i,0] = "SAVE & QUIT";
	//                                              //
	//                                              //
	   ds_grid_resize(dg_Options, ds_grid_width(dg_Options)+1, ds_grid_height(dg_Options));
	_i=ds_grid_width( dg_Options)-1;
	Option_QUIT=_i;
	dg_Options[#_i,0] = "QUIT ONLY";
	//                                              //
	//                                              //

	Options_idx     = Option_CONT;
	Options_COUNT   = ds_grid_width(dg_Options);





	var _ROWS1 = $2;
	PAD1 = $02<<3;

	CLMS  = Caution_W>>3;

	ROWS  = Caution_H>>3;
	ROWS += Options_COUNT<<1;
	ROWS += _ROWS1; // pad between option text and warning

	Options_XL = viewXC() - ($05<<3);
	Options_YT = viewYC() - ((ROWS<<3)>>1);

	Caution_XL  = viewXC() - (Caution_W>>1);
	Caution_YT  = Options_YT;
	Caution_YT +=(Options_COUNT<<1)<<3;
	Caution_YT += _ROWS1<<3; // pad between option text and warning
	/*
	PAD1 = $02<<3;

	CLMS  = sprite_get_width( Caution_SPR)>>3;

	ROWS  = sprite_get_height(Caution_SPR)>>3;
	ROWS += Options_COUNT<<1;
	ROWS += 2; // pad between option text and warning

	Options_XL = viewXC() - ($05<<3);
	Options_YT = viewYC() - ((ROWS<<3)>>1);

	Caution_XC = viewXC();
	Caution_XL =  Caution_XC -              (sprite_get_width( Caution_SPR)>>1);
	Caution_YC = (Options_YT + (ROWS<<3)) - (sprite_get_height(Caution_SPR)>>1);
	*/








	Cursor_XC           = Options_XL - ($01<<3);
	Cursor_XC          += 4;
	Cursor_XC          -= 1; // Text padding

	Cursor_YC           = Options_YT + 4;
	Cursor_yc           = Cursor_YC + (Options_idx*PAD1);





	for(_i=0; _i<Options_COUNT; _i++)
	{
	    dg_Options[#_i,1] = Options_XL;
	    dg_Options[#_i,2] = Options_YT + (PAD1*_i);
	    dg_Options[#_i,3] = PI_GUI_1;
	}







}
