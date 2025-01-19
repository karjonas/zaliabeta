/// @description  FileSelect_change_rando_seed(file num, new seed)
function FileSelect_change_rando_seed() {


	var _i;
	var                      _arg=0;
	var _FILE_NUM = argument[_arg++];
	var _SEED1    = argument[_arg++];

	var _DATAKEY1 = get_file_seed_dk(_FILE_NUM,1);
	var _DATAKEY2 = get_file_seed_dk(_FILE_NUM,2);


	var    _CASE=1;
	switch(_CASE) // Leaving options here bc I'm not sure which method to use yet
	{
	    // ------------------------------------------------------------------------
	    default:{ // Quest 2 seed is simply Quest 1 seed's bits flipped
	    dm_RandoSeeds[?_DATAKEY1] = _SEED1; // Quest 1
	    dm_RandoSeeds[?_DATAKEY2] = _SEED1^$FFFFFFFF; // Quest 2
	    //dm_RandoSeeds[?_DATAKEY2] = ~_SEED1; // Quest 2
	    break;}
    
    
	    // ------------------------------------------------------------------------
	    case 2:{ // User won't know what Quest 2 seed is?
	    // Quest 1
	    dm_RandoSeeds[?_DATAKEY1] = _SEED1;
    
    
	    // Quest 2
	    random_set_seed(_SEED1); // Quest 2 seed is based off Quest 1 seed
	    var                         _SEED2  = 0;
	    for(_i=0; _i<8; _i++)       _SEED2 |= irandom($F)<<(_i<<2);
	    dm_RandoSeeds[?_DATAKEY2] = _SEED2;
	    break;}
	}


	set_saved_value(_FILE_NUM,_DATAKEY1,dm_RandoSeeds[?_DATAKEY1]);
	set_saved_value(_FILE_NUM,_DATAKEY2,dm_RandoSeeds[?_DATAKEY2]);







}
