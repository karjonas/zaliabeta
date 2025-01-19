/// @description  PalettePicker_Room_Start()
function PalettePicker_Room_Start() {


	ds_list_clear(dl_hist_sess);
	ds_list_clear(dl_hist_room);
	ds_list_add(  dl_hist_room, p.pal_rm_curr);

	pal_at_sess_start = "";


	pal_curs_idx = pal_curs_idx_DEF;
	col_curs_idx = 0;



	timer = DELAY4_DUR; // Delay any input reaction in next state.


	state = STATE_IDLE;







}
