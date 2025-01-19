/// @description  FileSelect_get_file_seed(save file num, quest num, *not found value)
function FileSelect_get_file_seed() {


	var                       _arg=0;
	var _FILE_NUM  = argument[_arg++];
	var _QUEST_NUM = argument[_arg++];

	var                      _DEFAULT = RUN_RANDOMIZATION_SEED;
	if (argument_count>_arg) _DEFAULT = argument[_arg++];


	with(FileSelect) // dm_RandoSeeds belongs to FileSelect
	{
	    return val(dm_RandoSeeds[?get_file_seed_dk(_FILE_NUM,_QUEST_NUM)], _DEFAULT);
	}


	return _DEFAULT;







}
