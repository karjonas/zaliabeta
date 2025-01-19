/// @description  FileSelect_cursor_move(state, direction)
function FileSelect_cursor_move() {


	switch(argument[0])
	{   // -----------------------------------------------------
	    default:{
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	    break;}//default
    
	    // -----------------------------------------------------
	    case State_MAIN:{
	    var _i,_j;
	    var _DIR = sign_(argument[1]);
	    for(_i=0; _i<MainOption_COUNT; _i++)
	    {
	        Main_cursor += _DIR;
	        Main_cursor += MainOption_COUNT;
	        Main_cursor  = Main_cursor mod MainOption_COUNT;
        
	        if (Main_cursor<SAVE_FILE_MAX)
	        {
	            if (get_saved_value(Main_cursor+1, f.SDNAME_saveCreated, 0))
	            {
	                break;//_i
	            }
	        }
	        else if (Main_cursor==MainOption_REGISTER)
	        {
	            for(_j=0; _j<SAVE_FILE_MAX; _j++)
	            {
	                if(!get_saved_value(_j+1, f.SDNAME_saveCreated, 0))
	                {
	                    _j = -1;
	                    break;//_j
	                }
	            }
            
	            if (_j==-1) break;//_i
	        }
	        else if (Main_cursor==MainOption_ELIMINATE)
	        {
	            for(_j=0; _j<SAVE_FILE_MAX; _j++)
	            {
	                if (get_saved_value(_j+1, f.SDNAME_saveCreated, 0))
	                {
	                    _j = -1;
	                    break;//_j
	                }
	            }
            
	            if (_j==-1) break;//_i
	        }
	    }
	    break;}//case State_MAIN
    
    
    
    
    
    
    
    
    
	    // -----------------------------------------------------
	    case State_REGISTER:{
	    var _DIR = sign_(argument[1]);
	    for(var _i=0; _i<RegisterOption_COUNT; _i++)
	    {
	        Register_cursor += _DIR;
	        Register_cursor += RegisterOption_COUNT;
	        Register_cursor  = Register_cursor mod RegisterOption_COUNT;
        
	        if (Register_cursor>=SAVE_FILE_MAX 
	        ||  Register_cursor+1==Register_file_num )
	        {
	            break;//_i
	        }
	    }
	    break;}//case State_REGISTER
    
    
    
    
    
    
    
    
    
	    // -----------------------------------------------------
	    case State_ELIMINATE:{
	    var _DIR = sign_(argument[1]);
	    for(var _i=0; _i<EliminateOption_COUNT; _i++)
	    {
	        Eliminate_cursor += _DIR;
	        Eliminate_cursor += EliminateOption_COUNT;
	        Eliminate_cursor  = Eliminate_cursor mod EliminateOption_COUNT;
        
	        if (Eliminate_cursor>=SAVE_FILE_MAX 
	        ||  get_saved_value(Eliminate_cursor+1, f.SDNAME_saveCreated, 0) )
	        {
	            break;//_i
	        }
	    }
	    break;}//case State_ELIMINATE
	}//switch(argument[0])
	/*
	var                   _count = SAVE_FILE_MAX;
	switch(argument[0]){
	default:{exit; break;} // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	case State_MAIN:{     _count+=2; break;} // REGISTER and ELIMINATE
	case State_REGISTER:{ _count+=2; break;} // RANDO and END
	case State_ELIMINATE:{_count+=1; break;} // END
	}

	var _i;
	var _DIR = sign_(argument[1]);
	for(_i=0; _i<_count; _i++)
	{
	    menu_cursor += _DIR;
	    menu_cursor += _count;
	    menu_cursor  = menu_cursor mod _count;
    
	    if (menu_cursor>=SAVE_FILE_MAX) break;//_i
    
	    if (argument[0]==State_MAIN)
	    {
	        if (get_saved_value(menu_cursor+1, f.SDNAME_saveCreated, 0)) break;//_i
	    }
	    else if (argument[0]==State_REGISTER)
	    {
	        if (menu_cursor+1==Register_file_num) break;//_i
	    }
	    else if (argument[0]==State_ELIMINATE)
	    {
	        if (get_saved_value(menu_cursor+1, f.SDNAME_saveCreated, 0)) break;//_i
	    }
	}
	*/







}
