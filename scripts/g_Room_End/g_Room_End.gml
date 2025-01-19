/// @description  g_Room_End()
function g_Room_End() {

	if (DEV){sdm(" g_Room_End()");  repeat(8) sdm("");}


	// D3E6: JMP E18A
	if (room_type=="A") GOB_rm_end_clean_up_1(); // allow rm's remaining gob to spawn if rm is visited again.


	// D2AE
	if(!area_is_ow(f.reen)) counter1 = 0; // if NOT going to ow


	pc_lock  = 0;
	pc.state = pc.state_NULL;


	gui_window_can_draw = 0;
	gui_state        = 0; // 074C. GUI Window. 1 PauseMenu, 2 LevelUp, 3 Dialogue
	menu_state       = 0;
	menu_built_count = 0;
	level_up_timer   = 0; // 
	dialogue_source  = noone;

	with(PAUSE_MENU)
	{
	    canDrawSections  = 0;
	    canDrawItems     = 0;
	    canDrawSpells    = 0;
	}


	with(LEVEL_MENU)
	{
	    canDrawSections = 0;
	    cnt_draw_rows   = 0;
	}


	with(DIALOGUE_WINDOW)
	{
	    dialogue           = dialogue_DEF;
	    dlg_line_cnt       = 0;
	    writ_char_pos      = 0;
	    writ_line_idx      = 0;
	    writ_line_char_pos = 0;
	    writ_dlg           = "";
	    cnt_draw_rows      = 0;
	}


	with(OPTIONS_MENU) // options menu
	{
	    cnt_draw_rows = 0;
	}

	with(QUIT_APP_MENU)
	{
	    cnt_draw_rows = 0;
	    cursor_option = 0;
	}



	if(!is_undefined(    exit_leave) 
	&&  instance_exists( exit_leave) )
	{   instance_destroy(exit_leave);  }
	exit_leave         = noone;
	exit_leave_pending = noone;


	ds_map_clear(dm_tile_file);


	NIAO_Room_End();


	ds_map_clear( dm_hidden_tiles);
	ds_list_clear(dl_hidden_tiles);




	if (DEV) sdm("--------------------------------------------------------------------");







}
