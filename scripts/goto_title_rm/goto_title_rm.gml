/// @description  goto_title_rm()
function goto_title_rm() {


	// There's also a bunch of TitleScreen property resets 
	// in g_Room_Start(). Not sure if they should go here.

	if (g.MaskWideView_RESPAWN)
	{
	    g.MaskWideView = 1;
	    g.MaskWideView_w = g.MaskWideView_W;
	}

	set_go_can_draw_self(false);

	g.counter1 = 0;

	g.pc_lock        = 0;
	g.cutscene       = 0;
	g.game_end_state = 0;
	f.reen           = EXIT_NAME_GAME_START;

	//g.coming_from = g.coming_from_FILE;
	ds_map_clear(g.dm_room_history);


	audio_group_stop_all(audiogroup_mus);

	room_goto_(rmB_Title);







}
