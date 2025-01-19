/// @description  QuitAppMenu_trigger_open()
function QuitAppMenu_trigger_open() {


	anim_frame    = 0;
	cnt_draw_rows = 0;

	  gui_state_backup = g.gui_state;
	g.gui_state        = g.gui_state_QUIT_APP;

	timer = 0;
	sub_state = sub_state_OPENING1;







}
