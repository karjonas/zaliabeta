/// @description  FileSelect_RandoStateSEED_update()
function FileSelect_RandoStateSEED_update() {


	var _AUDIO_COMBO_NUM = $E;

	switch(RandoSEED_EDIT_state)
	{
	    // ==============================================================================================
	    // ==================================================================================
	    default:{ // ----------------------  SEED MENU  ----------------------
	    if (InputBack_pressed 
	    ||  (RandoSEED_cursor==RandoSEED_BACK && InputConfirm_pressed) )
	    {
	        aud_play_sound(get_audio_theme_track(BACK_SOUND_THEME1));
	        RandoState = RandoState_MAIN;
	        break;
	    }
    
    
	    if (input_select_pressed 
	    ||  Input.pressedV )
	    {
	        var _DIR = sign_(input_select_pressed || input_down_pressed);
	        for(_i=0; _i<RandoSEED_COUNT; _i++)
	        {
	            RandoSEED_cursor = (RandoSEED_cursor+_DIR+RandoSEED_COUNT) mod RandoSEED_COUNT;
	            if (dg_RandoSEED_Options[#RandoSEED_cursor,2]>=0) break; // option is available
	        }
	        aud_play_sound(get_audio_theme_track(CURSOR_SOUND_THEME2));
	        break;
	    }
    
    
    
	    // ----------------------------------------------
	    switch(RandoSEED_cursor)
	    {
	        case RandoSEED_EDIT:{
	        if (InputConfirm_pressed)
	        {
	            RandoSEED_EDIT_state = 1;
	            RandoSeedChar_cursor = 0;
	            aud_play_sound(get_audio_theme_track(CONFIRM_SOUND_THEME1));
	        }
	        break;}
        
        
	        case RandoSEED_NEW:{
	        if (InputConfirm_pressed)
	        {
	            // Set cursor to diff option so user cant accidentally randomize the seed more than once
	            RandoSEED_cursor = RandoSEED_EDIT;
	            // Ranomize seed
	            var _SEED = Rando_get_new_seed();
	            //randomize();
	            //var _SEED = random_get_seed();
	            FileSelect_change_rando_seed(Register_file_num,_SEED);
            
	            aud_play_combo1(_AUDIO_COMBO_NUM);
	            //aud_play_sound(get_audio_theme_track(dk_ChooseChar));
	        }
	        break;}
        
        
	        case RandoITEM_BACK:{
	        if (InputConfirm_pressed)
	        {
	            aud_play_sound(get_audio_theme_track(BACK_SOUND_THEME1));
	            RandoState = RandoState_MAIN;
	        }
	        break;}
	    }
	    break;}//default:
    
    
    
    
    
    
	    // ==============================================================================================
	    // ==================================================================================
	    case 1:{ // ----------------------  EDITING SEED  ----------------------
	    if (InputBack_pressed 
	    ||  input_start_pressed )
	    {
	        RandoSEED_EDIT_state = 0;
	        aud_play_combo1(_AUDIO_COMBO_NUM);
	        break;
	    }
    
    
    
	    // ----------------------------------------------
	    if (input_select_pressed 
	    ||  Input.pressedH )
	    {
	        var _DIR = sign_(input_select_pressed || input_right_pressed);
	        RandoSeedChar_cursor = (RandoSeedChar_cursor+_DIR+g.RandoSeedChar_COUNT) mod g.RandoSeedChar_COUNT;
	        aud_play_sound(get_audio_theme_track(CURSOR_SOUND_THEME2));
	        break;
	    }
    
    
    
	    if (Input.pressedV) // if up or down were pressed
	    {   // Rando_SEED example: $5CE109F2. Each nibble is an index($0-F) for dl_Seed_SPRITES
	        var _char, _shift;
	        var _DATAKEY1 = get_file_seed_dk(Register_file_num,1);
	        var _DATAKEY2 = get_file_seed_dk(Register_file_num,2);
	        var _seed = dm_RandoSeeds[?_DATAKEY1];
	        //var _seed = val(dm_RandoSeeds[?_DATAKEY1],RUN_RANDOMIZATION_SEED);
	        if(!is_undefined(_seed))
	        //if (_seed!=RUN_RANDOMIZATION_SEED)
	        {
	            var _COUNT1 = ds_list_size(g.dl_rando_seed_SPRITES);
            
	            _shift  = (g.RandoSeedChar_COUNT-1)-RandoSeedChar_cursor; // the nybble idx
	            _shift  = _shift<<2; // the bit idx. <<2: bc 4 bits per char/nybble
            
	            _char   = (_seed>>_shift) &$F; // current char
	            _char   = (_char+sign_(input_down_pressed)+_COUNT1) mod _COUNT1; // new char
            
	            _seed &=  ~($F<<_shift); // clear the changed char's spot
	            _seed |= _char<<_shift; // replace empty spot with changed char
            
	            FileSelect_change_rando_seed(Register_file_num,_seed);
            
	            aud_play_sound(get_audio_theme_track(CONFIRM_SOUND_THEME1));
	        }
	    }
	    break;}//case 1:
	}//switch(RandoSEED_state)









	/*
	/// FileSelect_RandoStateSEED_update()


	// ----------------------------------------------
	if (InputBack_pressed 
	||  start_pressed )
	{
	    RandoState = RandoState_MAIN;
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}





	// ----------------------------------------------
	if (input_select_pressed 
	||  Input.prsH )
	{
	    var _DIR = sign_(input_select_pressed || Input.pR);
	    RandoSEED_cursor = (RandoSEED_cursor+_DIR+RandoSeedChar_COUNT) mod RandoSeedChar_COUNT;
	    aud_play_sound(Audio.SND_CRSR_MVE2);
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}





	// ----------------------------------------------
	if (Input.prsV) // if up or down were pressed
	{   // Rando_SEED example: $5CE109F2. Each nibble is an index($0-F) for dl_Seed_SPRITES
	    var _char, _shift;
	    //var _seed = FileSelect_get_file_seed(Register_file_num);
	    var _DATAKEY1 = get_file_seed_dk(Register_file_num);
	    var _seed = val(dm_RandoSeeds[?_DATAKEY1],RUN_RANDOMIZATION_SEED);
	    //var _seed = get_saved_value(Register_file_num, _DATAKEY1, RUN_RANDOMIZATION_SEED);
	    if (_seed!=RUN_RANDOMIZATION_SEED)
	    {
	        var _COUNT1 = ds_list_size(dl_Seed_SPRITES);
        
	        _shift  = (RandoSeedChar_COUNT-1)-RandoSEED_cursor; // the nybble idx
	        _shift  = _shift<<2; // the bit idx. <<2: bc 4 bits per char/nybble
        
	        _char   = (_seed>>_shift) &$F; // current char
	        _char   = (_char+sign_(Input.pD)+_COUNT1) mod _COUNT1; // new char
        
	        _seed &=  ~($F<<_shift); // clear the changed char's spot
	        _seed |= _char<<_shift; // replace empty spot with changed char
        
	        dm_RandoSeeds[?_DATAKEY1] = _seed;
	        //set_saved_value(Register_file_num, _DATAKEY1, _seed);
	        //dl_RandoSeeds[|Register_file_num-1] = _seed;
	        //Rando_SEED  = _seed;
        
	        aud_play_sound(Audio.SND_CRSR_MVE2);
	    }
	}
	*/







}
