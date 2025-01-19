/// @description  FileSelect_Rando_cursor_reset(RandoState)
function FileSelect_Rando_cursor_reset() {


	var _i;
	var _dg_Options=ds_grid_create(0,0);

	switch(argument[0])
	{   //------------------------------------------
	    default:{
	    ds_grid_destroy(_dg_Options); _dg_Options=undefined;
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!
	    break;}
	    //------------------------------------------
	    case  RandoState_MAIN:{
	                RandoMAIN_cursor=0;
	    var _COUNT =RandoMAIN_COUNT;
	    ds_grid_copy(_dg_Options,dg_RandoMAIN_Options);
	    break;}
	    //------------------------------------------
	    case  RandoState_ITEM:{
	                RandoITEM_cursor=0;
	    var _COUNT =RandoITEM_COUNT;
	    ds_grid_copy(_dg_Options,dg_RandoITEM_Options);
	    break;}
	    //------------------------------------------
	    case  RandoState_SPELL:{
	                RandoSPELL_cursor=0;
	    var _COUNT =RandoSPELL_COUNT;
	    ds_grid_copy(_dg_Options,dg_RandoSPELL_Options);
	    break;}
	    //------------------------------------------
	    case  RandoState_DUNGEON:{
	                RandoDUNGEON_cursor=0;
	    var _COUNT =RandoDUNGEON_COUNT;
	    ds_grid_copy(_dg_Options,dg_RandoDUNGEON_Options);
	    break;}
	    //------------------------------------------
	    case  RandoState_ENEMY:{
	                RandoENEMY_cursor=0;
	    var _COUNT =RandoENEMY_COUNT;
	    ds_grid_copy(_dg_Options,dg_RandoENEMY_Options);
	    break;}
	    //------------------------------------------
	    case  RandoState_OTHER:{
	                RandoOTHER_MAIN_cursor=0;
	    var _COUNT =RandoOTHER_MAIN_cursor_COUNT;
	    ds_grid_copy(_dg_Options,dg_RandoOTHER_Options);
	    break;}
	    //------------------------------------------
	    case  RandoState_SEED:{
	                RandoSEED_cursor=0;
	    var _COUNT =RandoSEED_COUNT;
	    ds_grid_copy(_dg_Options,dg_RandoSEED_Options);
	    break;}
	}//switch(argument[0])



	if (argument[0]==RandoState_ITEM)
	{
	    if(!dg_RandoITEM_Options[#RandoITEM_LOCS,2]) // Must be turned on to interact with the other options
	    {
	        RandoITEM_cursor = RandoITEM_LOCS;
	    }
	    else
	    {
	        RandoITEM_cursor = 0;
	    }
	}
	else
	{
	    for(_i=0; _i<_COUNT-1; _i++) // _COUNT-1: skip "BACK" option
	    {
	        if (_dg_Options[#_i,2]>=0)
	        {   // option is available
	            switch(argument[0]){
	            case RandoState_MAIN:   {RandoMAIN_cursor =_i; break;}
	            case RandoState_SPELL:  {RandoSPELL_cursor=_i; break;}
	            case RandoState_DUNGEON:{if (_i!=RandoDUNGEON_LOCATION || dg_RandoITEM_Options[#RandoITEM_LOCS,2]){RandoDUNGEON_cursor=_i; break;}}
	            case RandoState_ENEMY:  {RandoENEMY_cursor=_i; break;}
	            case RandoState_OTHER:  {RandoOTHER_MAIN_cursor=_i; break;}
	            case RandoState_SEED:   {RandoSEED_cursor =_i; break;}
	            }
	            break;//for(_i
	        }
	    }
	}


	ds_grid_destroy(_dg_Options); _dg_Options=undefined;





	/*
	/// FileSelect_Rando_cursor_reset(RandoState)


	var _i, _val;
	var _dg_Options=ds_grid_create(0,0);

	switch(argument[0]){
	default:{
	ds_grid_destroy(_dg_Options); _dg_Options=undefined;
	exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!
	break;}
	case  RandoState_MAIN:{
	            RandoMAIN_cursor=0;
	var _cursor=RandoMAIN_cursor;
	var _COUNT =RandoMAIN_COUNT;
	ds_grid_copy(_dg_Options,dg_RandoMAIN_Options);
	break;}
	case  RandoState_ITEM:{
	            RandoITEM_cursor=0;
	var _cursor=RandoITEM_cursor;
	var _COUNT =RandoITEM_COUNT;
	ds_grid_copy(_dg_Options,dg_RandoITEM_Options);
	break;}
	case  RandoState_SPELL:{
	            RandoSPELL_cursor=0;
	var _cursor=RandoSPELL_cursor;
	var _COUNT =RandoSPELL_COUNT;
	ds_grid_copy(_dg_Options,dg_RandoSPELL_Options);
	break;}
	case  RandoState_ENEMY:{
	            RandoENEMY_cursor=0;
	var _cursor=RandoENEMY_cursor;
	var _COUNT =RandoENEMY_COUNT;
	ds_grid_copy(_dg_Options,dg_RandoENEMY_Options);
	break;}
	case  RandoState_OTHER:{
	            RandoOTHER_MAIN_cursor=0;
	var _cursor=RandoOTHER_MAIN_cursor;
	var _COUNT =RandoOTHER_COUNT;
	ds_grid_copy(_dg_Options,dg_RandoOTHER_Options);
	break;}
	case  RandoState_SEED:{
	            RandoSEED_cursor=0;
	var _cursor=RandoSEED_cursor;
	var _COUNT =RandoSEED_COUNT;
	ds_grid_copy(_dg_Options,dg_RandoSEED_Options);
	break;}
	}//switch(argument[0])




	for(_i=0; _i<_COUNT; _i++)
	{
	    if (_dg_Options[#_cursor,2]>=0)
	    {   // option is available
	        switch(argument[0]){
	        case RandoState_MAIN: {RandoMAIN_cursor =_cursor; break;}
	        case RandoState_ITEM: {RandoITEM_cursor =_cursor; break;}
	        case RandoState_SPELL:{RandoSPELL_cursor=_cursor; break;}
	        case RandoState_ENEMY:{RandoENEMY_cursor=_cursor; break;}
	        case RandoState_SEED: {RandoSEED_cursor =_cursor; break;}
	        }
	        break;//for(_i
	    }
    
	    _val    = 1;
	    _val   +=  _cursor+1 == _COUNT-1; // skip the "BACK" option
	    _cursor = (_cursor+_val+_COUNT) mod _COUNT;
	}

	ds_grid_destroy(_dg_Options); _dg_Options=undefined;
	*/









}
