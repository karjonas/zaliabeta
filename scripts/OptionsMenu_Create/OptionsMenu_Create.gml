/// @description  OptionsMenu_Create()
function OptionsMenu_Create() {


	var _i, _a, _val, _count,_count1,_count2, _len;
	var _x,_y, _w,_h;
	var _first;
	var _text, _font, _size;
	var _theme;

	//RandoOptionsMenu_IS_LIVE      = false;
	RandoOptionsMenu_is_available = false;


	Font1 = spr_Font1;
	Font1_CHAR_SIZE = sprite_get_width(Font1);

	Font2 = spr_Font2;
	Font2_CHAR_SIZE = sprite_get_width(Font2);



	CONFIRM_SOUND_THEME1 = dk_ChooseChar;
	CONFIRM_SOUND_THEME2 = dk_ItemDrop;
	BACK_SOUND_THEME1    = STR_Stab;
	//BACK_SOUND_THEME1    = dk_StrikeEnemy;
	CURSOR_SOUND_THEME1  = dk_CursorSpellMenu;
	/*
	aud_play_sound(get_audio_theme_track(CURSOR_SOUND_THEME1));
	aud_play_sound(get_audio_theme_track(CONFIRM_SOUND_THEME1));
	aud_play_sound(get_audio_theme_track(BACK_SOUND_THEME1));
	*/
	can_play_boss_music_at_open_RandomCustom = false;

	timer2=0;


	PI_MENU  = PI_GUI_1;
	PI_DARK1 = get_pi(PI_DARKLONK,1);
	PI_DARK2 = get_pi(PI_DARKLONK,3);

	OpenClose_Key_KEY = ord("O");
	OpenClose_Key_pressed = false;

	//Backout_BUTTON = 0;
	Backout_requested = false;

	start_button_pressed  = false;
	select_button_pressed = false;
	a_button_pressed      = false; // equivilent to NES-A and xbox-A
	b_button_pressed      = false; // equivilent to NES-B and xbox-B
	right_input_pressed   = false;
	left_input_pressed    = false;
	down_input_pressed    = false;
	up_input_pressed      = false;


	// oc: Open Close
	//state_oc            = 0;
	gui_state_backup    = 0;




	_first=1;                _a=_first;
	sub_state_IDLE_CLOSED  = _a++;
	sub_state_OPENING1     = _a++;
	sub_state_OPENING2     = _a++;
	sub_state_OPENING_ANIM = _a++;
	sub_state_OPEN1        = _a++;
	sub_state_CLOSING1     = _a++;
	sub_state_CLOSING2     = _a++;
	sub_state_CLOSING_ANIM = _a++;
	sub_state_CLOSING3     = _a++;
	sub_state              = _first;




	_first=1;            _a=_first;
	Menu_MAIN          = _a++;
	Menu_INPUT_CONFIG  = _a++;
	Menu_DEV_TOOLS     = _a++;
	Menu_AUDIO_CUSTOM  = _a++;
	Menu_RANDO_OPTIONS = _a++;
	//Menu_OTHER = _a++;
	Menu_in_focus      = _first;
	//MenuInFocusState















	//var _dg_MainOptions_H = 8;
	dg_MainOptions = ds_grid_create(0,8);

	                                  _i=-1;
	MainOption_SND_VOL           = ds_grid_width(dg_MainOptions);
	//ds_grid_resize(dg_MainOptions,    _i+1,_dg_MainOptions_H);
	ds_grid_resize(dg_MainOptions, ds_grid_width(dg_MainOptions)+1,ds_grid_height(dg_MainOptions));
	dg_MainOptions[#ds_grid_width(dg_MainOptions)-1,0] = "SOUND ";
	dg_MainOptions[#ds_grid_width(dg_MainOptions)-1,1] = Font1;
	//                                          //
	MainOption_MUS_VOL           = ds_grid_width(dg_MainOptions);
	ds_grid_resize(dg_MainOptions, ds_grid_width(dg_MainOptions)+1,ds_grid_height(dg_MainOptions));
	dg_MainOptions[#ds_grid_width(dg_MainOptions)-1,0] = "MUSIC ";
	dg_MainOptions[#ds_grid_width(dg_MainOptions)-1,1] = Font1;
	//                                          //
	MainOption_MUSIC_SET         = ds_grid_width(dg_MainOptions);
	ds_grid_resize(dg_MainOptions, ds_grid_width(dg_MainOptions)+1,ds_grid_height(dg_MainOptions));
	dg_MainOptions[#ds_grid_width(dg_MainOptions)-1,0] = "AUDIO SET";
	dg_MainOptions[#ds_grid_width(dg_MainOptions)-1,1] = Font2;
	//                                          //
	MainOption_INPUT_CONFIG      = ds_grid_width(dg_MainOptions);
	ds_grid_resize(dg_MainOptions, ds_grid_width(dg_MainOptions)+1,ds_grid_height(dg_MainOptions));
	dg_MainOptions[#ds_grid_width(dg_MainOptions)-1,0] = "CONTROLS";
	dg_MainOptions[#ds_grid_width(dg_MainOptions)-1,1] = Font2;
	//                                          //
	MainOption_DEV_TOOLS         = ds_grid_width(dg_MainOptions);
	ds_grid_resize(dg_MainOptions, ds_grid_width(dg_MainOptions)+1,ds_grid_height(dg_MainOptions));
	dg_MainOptions[#ds_grid_width(dg_MainOptions)-1,0] = "DEV TOOLS";
	dg_MainOptions[#ds_grid_width(dg_MainOptions)-1,1] = Font2;
	//                                          //
	MainOption_PC_SPRITES        = ds_grid_width(dg_MainOptions);
	ds_grid_resize(dg_MainOptions, ds_grid_width(dg_MainOptions)+1,ds_grid_height(dg_MainOptions));
	dg_MainOptions[#ds_grid_width(dg_MainOptions)-1,0] = "PLAYER SKIN ";
	//dg_MainOptions[#ds_grid_width(dg_MainOptions)-1,0] = "PLAYER SKIN: ";
	//dg_MainOptions[#ds_grid_width(dg_MainOptions)-1,0] = "PLAYER SPRITE SET: ";
	dg_MainOptions[#ds_grid_width(dg_MainOptions)-1,1] = Font2;
	//                                          //
	MainOption_FULLSCREEN        = ds_grid_width(dg_MainOptions);
	ds_grid_resize(dg_MainOptions, ds_grid_width(dg_MainOptions)+1,ds_grid_height(dg_MainOptions));
	dg_MainOptions[#ds_grid_width(dg_MainOptions)-1,0] = "FULLSCREEN STATE";
	dg_MainOptions[#ds_grid_width(dg_MainOptions)-1,1] = Font2;
	//                                          //
	MainOption_APP_SCALE         = ds_grid_width(dg_MainOptions);
	ds_grid_resize(dg_MainOptions, ds_grid_width(dg_MainOptions)+1,ds_grid_height(dg_MainOptions));
	dg_MainOptions[#ds_grid_width(dg_MainOptions)-1,0] = "APP SCALE";
	dg_MainOptions[#ds_grid_width(dg_MainOptions)-1,1] = Font2;
	//                                          //
	MainOption_FLASHING          = ds_grid_width(dg_MainOptions);
	ds_grid_resize(dg_MainOptions, ds_grid_width(dg_MainOptions)+1,ds_grid_height(dg_MainOptions));
	dg_MainOptions[#ds_grid_width(dg_MainOptions)-1,0] = "BACKGROUND FLASHING";
	dg_MainOptions[#ds_grid_width(dg_MainOptions)-1,1] = Font2;
	//                                          //
	MainOption_SCREEN_SHAKE      = ds_grid_width(dg_MainOptions);
	ds_grid_resize(dg_MainOptions, ds_grid_width(dg_MainOptions)+1,ds_grid_height(dg_MainOptions));
	dg_MainOptions[#ds_grid_width(dg_MainOptions)-1,0] = "SCREEN SHAKE      ";
	dg_MainOptions[#ds_grid_width(dg_MainOptions)-1,1] = Font2;
	//                                          //
	MainOption_DIALOGUE_SPEED    = ds_grid_width(dg_MainOptions);
	ds_grid_resize(dg_MainOptions, ds_grid_width(dg_MainOptions)+1,ds_grid_height(dg_MainOptions));
	dg_MainOptions[#ds_grid_width(dg_MainOptions)-1,0] = "DIALOGUE SPEED    ";
	dg_MainOptions[#ds_grid_width(dg_MainOptions)-1,1] = Font2;
	//                                          //
	//MainOption_SHOW_ACTIVE_SPELLS= ds_grid_width(dg_MainOptions);
	//ds_grid_resize(dg_MainOptions, ds_grid_width(dg_MainOptions)+1,ds_grid_height(dg_MainOptions));
	//dg_MainOptions[#ds_grid_width(dg_MainOptions)-1,0] = "SHOW ACTIVE SPELL ";
	//dg_MainOptions[#ds_grid_width(dg_MainOptions)-1,1] = Font2;
	//                                          //
	//MainOption_HUD_STATE         = ds_grid_width(dg_MainOptions);
	//ds_grid_resize(dg_MainOptions, ds_grid_width(dg_MainOptions)+1,ds_grid_height(dg_MainOptions));
	//dg_MainOptions[#ds_grid_width(dg_MainOptions)-1,0] = "HUD";
	//dg_MainOptions[#ds_grid_width(dg_MainOptions)-1,1] = Font2;
	//                                          //
	MainOption_TORCH_LIGHTING    = ds_grid_width(dg_MainOptions);
	ds_grid_resize(dg_MainOptions, ds_grid_width(dg_MainOptions)+1,ds_grid_height(dg_MainOptions));
	dg_MainOptions[#ds_grid_width(dg_MainOptions)-1,0] = "TORCH LIGHTING    ";
	dg_MainOptions[#ds_grid_width(dg_MainOptions)-1,1] = Font2;
	//                                          //
	//MainOption_RENDER_DELAY      = ds_grid_width(dg_MainOptions);
	//ds_grid_resize(dg_MainOptions, ds_grid_width(dg_MainOptions)+1,ds_grid_height(dg_MainOptions));
	//dg_MainOptions[#ds_grid_width(dg_MainOptions)-1,0] = "RENDER DELAY      ";
	//dg_MainOptions[#ds_grid_width(dg_MainOptions)-1,1] = Font2;
	//                                          //
	MainOption_STAB_FRENZY       = ds_grid_width(dg_MainOptions);
	ds_grid_resize(dg_MainOptions, ds_grid_width(dg_MainOptions)+1,ds_grid_height(dg_MainOptions));
	dg_MainOptions[#ds_grid_width(dg_MainOptions)-1,0] = "STAB FRENZY       ";
	dg_MainOptions[#ds_grid_width(dg_MainOptions)-1,1] = Font2;
	//                                          //
	//MainOption_CUCCO_PERMANANT   = ds_grid_width(dg_MainOptions);
	//ds_grid_resize(dg_MainOptions, ds_grid_width(dg_MainOptions)+1,ds_grid_height(dg_MainOptions));
	//dg_MainOptions[#ds_grid_width(dg_MainOptions)-1,0] = "LVL2 CUCCO SPELL  ";
	//dg_MainOptions[#ds_grid_width(dg_MainOptions)-1,1] = Font2;
	//                                          //
	MainOption_RANDO_OPTIONS     = ds_grid_width(dg_MainOptions);
	ds_grid_resize(dg_MainOptions, ds_grid_width(dg_MainOptions)+1,ds_grid_height(dg_MainOptions));
	dg_MainOptions[#ds_grid_width(dg_MainOptions)-1,0] = "RANDO OPTIONS";
	dg_MainOptions[#ds_grid_width(dg_MainOptions)-1,1] = Font2;
	//                                          //
	MainOption_ANARKHYA_OW       = ds_grid_width(dg_MainOptions);
	ds_grid_resize(dg_MainOptions, ds_grid_width(dg_MainOptions)+1,ds_grid_height(dg_MainOptions));
	dg_MainOptions[#ds_grid_width(dg_MainOptions)-1,0] = "ANARKHYA OVERWORLD";
	dg_MainOptions[#ds_grid_width(dg_MainOptions)-1,1] = Font2;
	//                                          //
	MainOption_HALLOWEEN1        = ds_grid_width(dg_MainOptions);
	ds_grid_resize(dg_MainOptions, ds_grid_width(dg_MainOptions)+1,ds_grid_height(dg_MainOptions));
	dg_MainOptions[#ds_grid_width(dg_MainOptions)-1,0] = "IT'S HALLOWEEN?";
	dg_MainOptions[#ds_grid_width(dg_MainOptions)-1,1] = Font2;
	//                                          //
	/*
	MainOption_OTHER             = ds_grid_width(dg_MainOptions);
	ds_grid_resize(dg_MainOptions, ds_grid_width(dg_MainOptions)+1,ds_grid_height(dg_MainOptions));
	dg_MainOptions[#ds_grid_width(dg_MainOptions)-1,0] = "OTHER";
	dg_MainOptions[#ds_grid_width(dg_MainOptions)-1,1] = Font2;
	//                                          //
	*/
	MainOption_FORCE_GAMEOVER    = ds_grid_width(dg_MainOptions);
	ds_grid_resize(dg_MainOptions, ds_grid_width(dg_MainOptions)+1,ds_grid_height(dg_MainOptions));
	dg_MainOptions[#ds_grid_width(dg_MainOptions)-1,0] = "FORCE GAMEOVER";
	dg_MainOptions[#ds_grid_width(dg_MainOptions)-1,1] = Font2;
	//                                          //
	MainOption_CLOSE             = ds_grid_width(dg_MainOptions);
	ds_grid_resize(dg_MainOptions, ds_grid_width(dg_MainOptions)+1,ds_grid_height(dg_MainOptions));
	dg_MainOptions[#ds_grid_width(dg_MainOptions)-1,0] = "CLOSE";
	dg_MainOptions[#ds_grid_width(dg_MainOptions)-1,1] = Font2;
	//                                          //
	MainOption = 0;


	MainOption_COUNT = ds_grid_width(dg_MainOptions);


	//TEXT_METR  = "....." + "....."; // broke in 5's so easy to read/count

	TEXT_LENGTH1 = 1;
	for(_i=0; _i<MainOption_COUNT; _i++)
	{
	    _len = string_length(dg_MainOptions[#_i,0]);
	    if (_len>TEXT_LENGTH1) TEXT_LENGTH1 = _len;
	}

	TEXT_LENGTH2 = TEXT_LENGTH1-2;
	TEXT_LENGTH3 = TEXT_LENGTH1+6;














	PCSpriteWalk_DURATION = 4;
	PCSpriteWalk_timer    = PCSpriteWalk_DURATION;
	PCSpriteWalk_frame    = 0;













	// --------------------------------------------------------
	_first=1;                     _a=_first;
	InputConfigState_MAIN       = _a++;
	InputConfigState_EDITING    = _a++;
	InputConfigState            = _first;
	//InputConfigState_EDIT       = _a++;
	//InputConfigState_SET        = _a++;
	//InputConfigState_SETTING    = _a++;


	_first=0;                     _a=_first;
	InputConfigOption_RIGHT     = _a++;
	InputConfigOption_LEFT      = _a++;
	InputConfigOption_DOWN      = _a++;
	InputConfigOption_UP        = _a++;
	InputConfigOption_MAGIC     = _a++; // NES SELECT
	InputConfigOption_PAUSE     = _a++; // NES START
	InputConfigOption_ATTACK    = _a++; // NES B
	InputConfigOption_JUMP      = _a++; // NES A
	InputConfigOption_DEFAULT   = _a++;
	InputConfigOption_BACK      = _a++;
	InputConfigOption           = _first;

	InputConfigOption_COUNT     = _a;



	_font = Font2;
	_size = sprite_get_width(_font);

	dg_InputConfigOptions = ds_grid_create(InputConfigOption_COUNT,8);
	//                                          //
	//ds_grid_resize(dg_InputConfigOptions, ds_grid_width(dg_InputConfigOptions)+1, ds_grid_height(dg_InputConfigOptions));
	_a=0;                  _i=InputConfigOption_RIGHT;
	dg_InputConfigOptions[#_i,0] =  "RIGHT";
	dg_InputConfigOptions[#_i,1] = _font;
	//                                          //
	_a+=2;                 _i=InputConfigOption_LEFT;
	dg_InputConfigOptions[#_i,0] =  "LEFT";
	dg_InputConfigOptions[#_i,1] = _font;
	//                                          //
	_a+=2;                 _i=InputConfigOption_DOWN;
	dg_InputConfigOptions[#_i,0] =  "DOWN";
	dg_InputConfigOptions[#_i,1] = _font;
	//                                          //
	_a+=2;                 _i=InputConfigOption_UP;
	dg_InputConfigOptions[#_i,0] =  "UP";
	dg_InputConfigOptions[#_i,1] = _font;
	//                                          //
	_a+=2;                 _i=InputConfigOption_MAGIC;
	dg_InputConfigOptions[#_i,0] =  "MAGIC";
	dg_InputConfigOptions[#_i,1] = _font;
	//                                          //
	_a+=2;                 _i=InputConfigOption_PAUSE;
	dg_InputConfigOptions[#_i,0] =  "PAUSE";
	dg_InputConfigOptions[#_i,1] = _font;
	//                                          //
	_a+=2;                 _i=InputConfigOption_ATTACK;
	dg_InputConfigOptions[#_i,0] =  "ATTACK";
	dg_InputConfigOptions[#_i,1] = _font;
	//                                          //
	_a+=2;                 _i=InputConfigOption_JUMP;
	dg_InputConfigOptions[#_i,0] =  "JUMP";
	dg_InputConfigOptions[#_i,1] = _font;
	//                                          //
	_a+=3;                 _i=InputConfigOption_DEFAULT;
	dg_InputConfigOptions[#_i,0] =  "SET DEFAULTS";
	dg_InputConfigOptions[#_i,1] = _font;
	//                                          //
	_a+=2;                 _i=InputConfigOption_BACK;
	dg_InputConfigOptions[#_i,0] =  "BACK";
	dg_InputConfigOptions[#_i,1] = _font;
	//                                          //


	InputConfigOption_COUNT = ds_grid_width(dg_InputConfigOptions);







	// --------------------------------------------------------
	_first=1;                  _a=_first;
	DevToolsState_MAIN       = _a++;
	//DevToolsState_EDITING    = _a++;
	DevToolsState            = _first;


	_first=0;                  _a=_first;
	DevTools_DEV_TOOLS_STATE = _a++;
	DevTools_SET_DEFAULT     = _a++; // Turn all options off
	DevTools_APP_PERFORMANCE = _a++; // App Performance. show_debug_overlay()
	DevTools_HITBOXES        = _a++; // Show hitboxes
	DevTools_SCP             = _a++; // Solid Collision Points
	DevTools_XY              = _a++; // Show xy points
	DevTools_OCS             = _a++; // Off Camera State
	DevTools_OG_CAM          = _a++; // Original Game Camera outline
	DevTools_HP              = _a++; // Show HP
	DevTools_SPRITE_OUTLINE  = _a++; // Show sprite outlines
	DevTools_FRAME_COUNT     = _a++; // App frame count
	DevTools_BGR_BLACK       = _a++; // All rm background color black
	DevTools_EXITS           = _a++; // Show exits
	DevTools_SOLID_TILES     = _a++; // Highlight solid tiles
	DevTools_UNIQUE_TILES    = _a++; // Highlight unique tiles
	DevTools_DUNGEON_MAP     = _a++; // Full dungeon map
	DevTools_ADD_ITEMS       = _a++; // Add items by stabbing them
	DevTools_DOUBLE_JUMP     = _a++; // Gives player FEATHER item (Double Jump)
	DevTools_PC_DASH         = _a++; // Toggle ability to move faster
	DevTools_INVULNERABILITY = _a++; // Invulnerability state
	DevTools_BACK            = _a++;
	DevTools_cursor          = _first;

	DevTools_COUNT = _a;



	_font = Font2;
	_size = sprite_get_width(_font);

	dg_DevTools = ds_grid_create(DevTools_COUNT,8);
	//                                          //
	_a=0;        _i=DevTools_DEV_TOOLS_STATE;
	dg_DevTools[#_i,0] =  "DEV TOOLS STATE";
	dg_DevTools[#_i,1] = _font;
	//dg_DevTools[#_i,2] =  0; // state
	//                                          //
	_a+=2;       _i=DevTools_SET_DEFAULT;
	dg_DevTools[#_i,0] =  "SET ALL TO DEFAULT";
	dg_DevTools[#_i,1] = _font;
	//dg_DevTools[#_i,2] =  1;
	//                                          //
	_a+=2;       _i=DevTools_APP_PERFORMANCE;
	dg_DevTools[#_i,0] =  "APP PERFORMANCE";
	dg_DevTools[#_i,1] = _font;
	//dg_DevTools[#_i,2] =  g.can_show_debug_overlay;
	//                                          //
	_a+=2;       _i=DevTools_HITBOXES;
	dg_DevTools[#_i,0] =  "HITBOXES";
	dg_DevTools[#_i,1] = _font;
	//dg_DevTools[#_i,2] =  g.can_draw_hb;
	//                                          //
	_a+=2;       _i=DevTools_SCP;
	dg_DevTools[#_i,0] =  "SOLID COLLISION POINTS";
	dg_DevTools[#_i,1] = _font;
	//dg_DevTools[#_i,2] =  g.can_draw_cs;
	//                                          //
	_a+=2;       _i=DevTools_XY;
	dg_DevTools[#_i,0] =  "XY POINTS";
	dg_DevTools[#_i,1] = _font;
	//dg_DevTools[#_i,2] =  g.canDraw_ogXY;
	//                                          //
	_a+=2;       _i=DevTools_OCS;
	dg_DevTools[#_i,0] =  "OFF-CAMERA LINES";
	dg_DevTools[#_i,1] = _font;
	//dg_DevTools[#_i,2] =  g.can_draw_ocs;
	//                                          //
	_a+=2;       _i=DevTools_OG_CAM;
	dg_DevTools[#_i,0] =  "OG CAMERA OUTLINE";
	//dg_DevTools[#_i,0] =  "ORIGINAL GAME CAMERA OUTLINE";
	dg_DevTools[#_i,1] = _font;
	//dg_DevTools[#_i,2] =  g.can_draw_og_cam_outline;
	//                                          //
	_a+=2;       _i=DevTools_HP;
	dg_DevTools[#_i,0] =  "HP";
	dg_DevTools[#_i,1] = _font;
	//dg_DevTools[#_i,2] =  g.can_draw_hp;
	//                                          //
	_a+=2;       _i=DevTools_SPRITE_OUTLINE;
	dg_DevTools[#_i,0] =  "SPRITE OUTLINES";
	dg_DevTools[#_i,1] = _font;
	//dg_DevTools[#_i,2] =  g.canDrawSprOutline;
	//                                          //
	_a+=2;       _i=DevTools_FRAME_COUNT;
	dg_DevTools[#_i,0] =  "APP FRAME COUNT";
	dg_DevTools[#_i,1] = _font;
	//dg_DevTools[#_i,2] =  global.App_frame_count_can_draw;
	//                                          //
	_a+=2;       _i=DevTools_BGR_BLACK;
	dg_DevTools[#_i,0] =  "ALL ROOM BGR BLACK";
	dg_DevTools[#_i,1] = _font;
	//dg_DevTools[#_i,2] =  g.all_bg_black_only;
	//                                          //
	_a+=2;       _i=DevTools_EXITS;
	dg_DevTools[#_i,0] =  "EXITS";
	dg_DevTools[#_i,1] = _font;
	//dg_DevTools[#_i,2] =  g.can_draw_Exit_hb;
	//                                          //
	_a+=2;       _i=DevTools_SOLID_TILES;
	dg_DevTools[#_i,0] =  "HIGHLIGHT SOLID TILES";
	dg_DevTools[#_i,1] = _font;
	//dg_DevTools[#_i,2] =  g.can_show_t_solid;
	//                                          //
	_a+=2;       _i=DevTools_UNIQUE_TILES;
	dg_DevTools[#_i,0] =  "HIGHLIGHT UNIQUE TILES";
	dg_DevTools[#_i,1] = _font;
	//dg_DevTools[#_i,2] =  g.can_show_t_unique;
	//                                          //
	_a+=2;       _i=DevTools_DUNGEON_MAP;
	dg_DevTools[#_i,0] =  "COMPLETE DUNGEON MAPS";
	dg_DevTools[#_i,1] = _font;
	//dg_DevTools[#_i,2] =  g.dev_DungeonMapShowAll;
	//                                          //
	_a+=2;       _i=DevTools_ADD_ITEMS;
	dg_DevTools[#_i,0] =  "ADD ITEMS CHEAT";
	dg_DevTools[#_i,1] = _font;
	//dg_DevTools[#_i,2] =  g.use_StabToCheat;
	//                                          //
	_a+=2;       _i=DevTools_DOUBLE_JUMP;
	dg_DevTools[#_i,0] =  "DOUBLE JUMP";
	dg_DevTools[#_i,1] = _font;
	//                                          //
	_a+=2;       _i=DevTools_PC_DASH;
	dg_DevTools[#_i,0] =  "FASTER PC HSPD";
	dg_DevTools[#_i,1] = _font;
	//                                          //
	_a+=2;       _i=DevTools_INVULNERABILITY;
	dg_DevTools[#_i,0] =  "INVULNERABILITY STATE";
	dg_DevTools[#_i,1] = _font;
	//dg_DevTools[#_i,2] =  g.dev_invState;
	//                                          //
	_a+=2;       _i=DevTools_BACK;
	dg_DevTools[#_i,0] =  "BACK";
	dg_DevTools[#_i,1] = _font;
	//dg_DevTools[#_i,2] =  1;
	//                                          //
















	// -------------------------------------------------------------
	// -------------------------------------------------------------
	// -------------------------------------------------------------
	_first=1;               _a=_first;
	AudioCustomState_MAIN = _a++;
	AudioCustomState      = _first;

	_first=0;                _a=_first;
	AudioCustom_BACK       = _a++;
	AudioCustom_TOGGLE_ALL = _a++;
	AudioCustom_TOGGLE_SET = _a++;
	AudioCustom_Themes_IDX = _a;
	//AudioCustom_BACK       = _a++;
	//_count = val(Audio.dm[?STR_Theme+STR_Count+STR_Music]);
	//for(_i=0; _i<_count; _i++)
	AudioCustom_cursor     = _first;

	//AudioCustom_COUNT = _a + val(Audio.dm[?STR_Theme+STR_Count+STR_Music]);
	//AudioCustom_COUNT = _a;

	dm_AudioCustom = ds_map_create();

	// 0: all off, 1: at least 1 on, 2: all on
	OptionsMenu_AudioCustom_refresh_indicator_states();


	_font = Font2;
	_size = sprite_get_width(_font);
	var _dg_w = 0;
	var _dg_H = 5;
	dg_AudioCustom = ds_grid_create( _dg_w,_dg_H);
	//                                          //
	ds_grid_resize(dg_AudioCustom, ++_dg_w,_dg_H);
	dg_AudioCustom[#_dg_w-1,0] = "BACK";
	dg_AudioCustom[#_dg_w-1,1] = _font;
	dg_AudioCustom[#_dg_w-1,4] = dg_AudioCustom[#_dg_w-1,0];
	//                                          //
	ds_grid_resize(dg_AudioCustom, ++_dg_w,_dg_H);
	dg_AudioCustom[#_dg_w-1,0] = "TOGGLE ALL";
	dg_AudioCustom[#_dg_w-1,1] = _font;
	dg_AudioCustom[#_dg_w-1,3] = 3; // 3: state indicator
	dg_AudioCustom[#_dg_w-1,4] = dg_AudioCustom[#_dg_w-1,0];
	//                                          //
	ds_grid_resize(dg_AudioCustom, ++_dg_w,_dg_H);
	dg_AudioCustom[#_dg_w-1,0] = "TOGGLE SETS";
	//dg_AudioCustom[#_dg_w-1,0] = "TOGGLE ALL BY SET";
	dg_AudioCustom[#_dg_w-1,1] = _font;
	dg_AudioCustom[#_dg_w-1,2] = false; // 2: open state
	dg_AudioCustom[#_dg_w-1,4] = dg_AudioCustom[#_dg_w-1,0];
	//                                          //
	//ds_grid_resize(dg_AudioCustom, ++_dg_w,_dg_H); // divider
	//dg_AudioCustom[#_dg_w-1,0] = "DIVIDER";
	//                                          //
	_count = val(Audio.dm[?STR_Theme+STR_Count+STR_Music]);
	//sdm(STR_Theme+STR_Count+STR_Music+": $"+hex_str(_count));
	for(_i=1; _i<=_count; _i++)
	{
	    _theme = Audio.dm[?STR_Theme+STR_Music+hex_str(_i)];
	    if(!is_undefined(_theme))
	    {
	        ds_grid_resize(dg_AudioCustom, ++_dg_w,_dg_H);
	        dg_AudioCustom[#_dg_w-1,0] = _theme;
	        dg_AudioCustom[#_dg_w-1,1] = _font;
	        dg_AudioCustom[#_dg_w-1,2] = false; // 2: open state
	        dg_AudioCustom[#_dg_w-1,3] = 3; // 3: state indicator
        
	        _text = val(Audio.dm[?_theme+STR_Description], _theme);
	        dg_AudioCustom[#_dg_w-1,4] = _text;
	    }
	}
	//                                          //

	AudioCustom_COUNT = _dg_w;


	AudioCustom_cursor2 = 0;
	AudioCustom_track_inst = 0;

	AudioCustom_Scroll_Cursor_y = 0;


	AudioCustom_PLAY_KEY = vk_space;
	//AudioCustom_PLAY_KEY = ord("Y");


	//StateIndicator_SIZE = $6;













	// -------------------------------------------------------------
	// -------------------------------------------------------------
	// -------------------------------------------------------------
	_first=1;                 _a=_first;
	RandoOptions_state_MAIN = _a++;
	RandoOptions_state      = _first;


	_font = Font2;
	_size = sprite_get_width(_font);

	dg_RandoOptions = ds_grid_create(0,8);
	//                                          //
	RandoOptions_MARK_ACQUIRED    = ds_grid_width(dg_RandoOptions);
	ds_grid_resize(dg_RandoOptions, ds_grid_width(dg_RandoOptions)+1,ds_grid_height(dg_RandoOptions));
	dg_RandoOptions[#ds_grid_width(dg_RandoOptions)-1,0] = "MARK ACQUIRED ITEM";
	dg_RandoOptions[#ds_grid_width(dg_RandoOptions)-1,1] = _font;
	//                                          //
	RandoOptions_MAPS_SHOW_KEYS   = ds_grid_width(dg_RandoOptions);
	ds_grid_resize(dg_RandoOptions, ds_grid_width(dg_RandoOptions)+1,ds_grid_height(dg_RandoOptions));
	dg_RandoOptions[#ds_grid_width(dg_RandoOptions)-1,0] = "KEYSANITY - MAPS SHOW KEYS";
	dg_RandoOptions[#ds_grid_width(dg_RandoOptions)-1,1] = _font;
	//                                          //
	RandoOptions_RANDO_ENEMY      = ds_grid_width(dg_RandoOptions);
	ds_grid_resize(dg_RandoOptions, ds_grid_width(dg_RandoOptions)+1,ds_grid_height(dg_RandoOptions));
	dg_RandoOptions[#ds_grid_width(dg_RandoOptions)-1,0] = "ENEMY RANDO       ";
	dg_RandoOptions[#ds_grid_width(dg_RandoOptions)-1,1] = _font;
	//                                          //
	RandoOptions_RANDO_OW_TILES   = ds_grid_width(dg_RandoOptions);
	ds_grid_resize(dg_RandoOptions, ds_grid_width(dg_RandoOptions)+1,ds_grid_height(dg_RandoOptions));
	dg_RandoOptions[#ds_grid_width(dg_RandoOptions)-1,0] = "RANDO OW TILES    ";
	dg_RandoOptions[#ds_grid_width(dg_RandoOptions)-1,1] = _font;
	//                                          //
	RandoOptions_SCENES           = ds_grid_width(dg_RandoOptions);
	ds_grid_resize(dg_RandoOptions, ds_grid_width(dg_RandoOptions)+1,ds_grid_height(dg_RandoOptions));
	dg_RandoOptions[#ds_grid_width(dg_RandoOptions)-1,0] = "RANDO ROOMS";
	dg_RandoOptions[#ds_grid_width(dg_RandoOptions)-1,1] = _font;
	//                                          //
	RandoOptions_RANDO_PALETTE    = ds_grid_width(dg_RandoOptions);
	ds_grid_resize(dg_RandoOptions, ds_grid_width(dg_RandoOptions)+1,ds_grid_height(dg_RandoOptions));
	dg_RandoOptions[#ds_grid_width(dg_RandoOptions)-1,0] = "PALETTE RANDO     ";
	dg_RandoOptions[#ds_grid_width(dg_RandoOptions)-1,1] = _font;
	//                                          //
	RandoOptions_MARK_HIDDEN_EXIT = ds_grid_width(dg_RandoOptions);
	ds_grid_resize(dg_RandoOptions, ds_grid_width(dg_RandoOptions)+1,ds_grid_height(dg_RandoOptions));
	dg_RandoOptions[#ds_grid_width(dg_RandoOptions)-1,0] = "MARK ITEM HIDDEN EXITS";
	//dg_RandoOptions[#ds_grid_width(dg_RandoOptions)-1,0] = "MARK HIDDEN EXITS";
	//dg_RandoOptions[#ds_grid_width(dg_RandoOptions)-1,0] = "HIDDEN EXIT HELP";
	dg_RandoOptions[#ds_grid_width(dg_RandoOptions)-1,1] = _font;
	//                                          //
	RandoOptions_BACK             = ds_grid_width(dg_RandoOptions);
	ds_grid_resize(dg_RandoOptions, ds_grid_width(dg_RandoOptions)+1,ds_grid_height(dg_RandoOptions));
	dg_RandoOptions[#ds_grid_width(dg_RandoOptions)-1,0] = "BACK";
	dg_RandoOptions[#ds_grid_width(dg_RandoOptions)-1,1] = _font;
	//                                          //
	RandoOptions_cursor = 0;
	RandoOptions_COUNT = ds_grid_width(dg_RandoOptions);
















	// -------------------------------------------------------------
	// -------------------------------------------------------------
	// -------------------------------------------------------------
	YOFF_HEAD = 1;
	YOFF_OPTN = YOFF_HEAD + 3; // 1st option y


	// CURS: CURSor
	XOFF_CURS = 1; // tile units
	//XOFF_CURS = 2; // tile units
	XOFF_TEXT  = XOFF_CURS + 1; // tile units
	XOFF_TEXT1 = $10; // tile units
	//XOFF_TEXT2 = 



	MAX_OPTION_TEXT_LEN = 1;
	for(_i=0; _i<MainOption_COUNT; _i++)
	{
	        _len=string_length(dg_MainOptions[#_i,0]);
	    if (_len>MAX_OPTION_TEXT_LEN) MAX_OPTION_TEXT_LEN=_len;
	}

	for(_i=0; _i<InputConfigOption_COUNT; _i++)
	{
	        _len=string_length(dg_InputConfigOptions[#_i,0]);
	    if (_len>MAX_OPTION_TEXT_LEN) MAX_OPTION_TEXT_LEN=_len;
	}

	for(_i=0; _i<DevTools_COUNT; _i++)
	{
	        _len=string_length(dg_DevTools[#_i,0]);
	    if (_len>MAX_OPTION_TEXT_LEN) MAX_OPTION_TEXT_LEN=_len;
	}

	for(_i=ds_grid_width(dg_RandoOptions)-1; _i>=0; _i--)
	{
	        _len=string_length(dg_RandoOptions[#_i,0]);
	    if (_len>MAX_OPTION_TEXT_LEN) MAX_OPTION_TEXT_LEN=_len;
	}

	OPTION_STATE_TEXT_XOFF = (MAX_OPTION_TEXT_LEN+1)*_size;









	// ------------------------------------------------------------
	// OP: OPtion
	//OP_SND = 0;
	//OP_MUS = 1;
	//cursor_op = 0;

	/*
	// CURS: CURSor
	XOFF_CURS = 1; // tile units
	//XOFF_CURS = 2; // tile units
	XOFF_TEXT  = XOFF_CURS + 1; // tile units
	XOFF_TEXT1 = $10; // tile units
	//XOFF_TEXT2 = 


	YOFF_HEAD = 1;
	YOFF_OPTN = YOFF_HEAD + 3; // 1st option y
	*/

	/*
	var _HEAD  = "-OPTIONS-";
	_count = ((CLMS>>1) - (string_length(_HEAD)>>1)) - XOFF_TEXT;
	TEXT_HEAD  = "";
	TEXT_HEAD  = string_repeat(" ", max(0,_count));
	TEXT_HEAD += _HEAD;
	*/

	//viewYT_OFF = ($1<<3) + ($8-(viewH()&$7));
	//viewYT_OFF = $1<<3;

	Window_W  = (g.GUI_WIN_CLMS2+2)<<3; // g.GUI_WIN_CLMS2 = 24
	//Window_W  = g.GUI_WIN_CLMS2<<3; // g.GUI_WIN_CLMS2 = 24
	Window_H  = viewH();
	//Window_H -= $1<<3;
	//Window_H  = viewH() - ($1<<3) - viewYT_OFF;
	Window_H  = (Window_H>>3)<<3;

	CLMS = Window_W>>3;
	ROWS = Window_H>>3;
	// 8 pixel width/height
	//CLMS = g.GUI_WIN_CLMS2; // g.GUI_WIN_CLMS2 = 24
	//ROWS = g.PAUSE_MENU.ROWS_WIN_DEF; // 8p tall

	viewYT_OFF = ((viewH()>>3)<<3) - Window_H;
	//viewYT_OFF = (viewH()-($1<<3)) - Window_H;



	Main_CLMS        = CLMS+$A;
	//Main_CLMS        = CLMS+$3;
	InputConfig_CLMS = CLMS+$3;
	//draw_clms_COUNT  = Main_CLMS;
	//draw_clms_COUNT  = CLMS+$3;
	//draw_clms_max    = draw_clms_COUNT;
	draw_clms_count  = Main_CLMS;
	//draw_clms_count  = draw_clms_COUNT;

	Main_ROWS = ROWS;
	/*
	if (viewYT_OFF+(Main_ROWS<<3) >= viewH())
	{
	    _val  = viewH()-$8;
	    _val += viewYT_OFF&$7;
	    _val -= viewYT_OFF;
	    Main_ROWS = _val>>3;
	    Main_ROWS++;
	}
	*/

	//Main_ROWS        = (MainOption_COUNT<<1);
	//Main_ROWS        = (MainOption_COUNT<<1) + $05;

	InputConfig_ROWS = (InputConfigOption_COUNT<<1) + $06;
	if (viewYT_OFF+(InputConfig_ROWS<<3) >= viewH())
	{
	    _val  = viewH()-$8;
	    _val += viewYT_OFF&$7;
	    _val -= viewYT_OFF;
	    InputConfig_ROWS = _val>>3;
	    InputConfig_ROWS++;
	}

	draw_rows_count = 0;
	draw_rows_max   = 0;


	var _PAD=$8;
	ScrollArea_Y_MIN  = $8; // frame
	ScrollArea_Y_MIN += Font1_CHAR_SIZE; // menu title
	ScrollArea_Y_MIN += _PAD; // title padding

	ScrollArea_Y_MAX  = Window_H;
	ScrollArea_Y_MAX -= $8; // frame
	ScrollArea_Y_MAX -= _PAD; // frame padding

	ScrollArea_H = ScrollArea_Y_MAX-ScrollArea_Y_MIN;


	ANIM_FRAMES_DEF = g.PAUSE_MENU.ROWS_WIN_DEF>>1; // 11
	anim_frame      = 0;



	BackgroundFlash_W = $18;
	BackgroundFlash_H = $08;





	/*
	_count = CLMS-2;
	// Top & Bottom
	var _TSRC_DATA1  =               "2";           // 2: corner
	    _TSRC_DATA1 += string_repeat("0", _count);  // 0: bar hor
	    _TSRC_DATA1 +=               "2";           // 2: corner
	// Mid                                          
	var _TSRC_DATA2  =               "1";           // 1: bar ver
	    _TSRC_DATA2 += string_repeat("&", _count);  // &: blank
	    _TSRC_DATA2 +=               "1";           // 1: bar ver
	// Hor section bar                              
	var _TSRC_DATA3  =               "1";           // 1: bar ver
	    _TSRC_DATA3 += string_repeat("0", _count);  // 0: bar hor
	    _TSRC_DATA3 +=               "1";           // 1: bar ver
	//                                              
	       _count = ROWS-1;
	for(_i=_count; _i>=0; _i--)
	{   ar_TSRC_DATA[_i]     = _TSRC_DATA2;  } // Mids
	    ar_TSRC_DATA[0]      = _TSRC_DATA1; // Top
	    ar_TSRC_DATA[2]      = _TSRC_DATA3; // Hor bar
	    ar_TSRC_DATA[_count] = _TSRC_DATA1; // Bottom
	// 
	*/







}
