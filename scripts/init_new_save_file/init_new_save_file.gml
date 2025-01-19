/// @description  init_new_save_file(file num, *quest num)
function init_new_save_file() {


	var                                           _i=0;
	var _FILE_NUM                = clamp(argument[_i++], 1,SAVE_FILE_MAX);
	set_save_props_def();
	if (argument_count>_i) f.quest_num = argument[_i++];

	// Set at 1st rm's g_Room_Start()
	f.dm_quests[?STR_Quest+STR_Started] = 0; // 0: New quest initialized but not started.

	file_save(_FILE_NUM,false);







}
