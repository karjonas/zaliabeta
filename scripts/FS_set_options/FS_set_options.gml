/// @description  FS_set_options()
function FS_set_options() {


	menu_options = 0;
	for(var _i=0; _i<SAVE_FILE_MAX; _i++)
	{
	    if ((state==State_REGISTER && !get_saved_value(_i+1, f.SDNAME_saveCreated, 0)) 
	    ||  (state!=State_REGISTER &&  get_saved_value(_i+1, f.SDNAME_saveCreated, 0)) )
	    {   menu_options |= ($1<<_i);  }
	}

	if (state        ==State_MAIN 
	||  state_pending==State_MAIN ){
	    if (menu_options&OPT_FILE != OPT_FILE) menu_options |= OPT_REGI;
	    if (menu_options&OPT_FILE)             menu_options |= OPT_ELIM;
	}
	else                                       menu_options |= OPT_END;







}
