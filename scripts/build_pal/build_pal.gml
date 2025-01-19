/// @description  build_pal(bg pal 1, bg pal 2, bg pal 3, bg pal 4, fg pal 1, fg pal 2, fg pal 3, fg pal 4, *alt menu pal, *alt pc pal)
function build_pal() {

	// Give this (BGR_PAL_COUNT + MOB_PAL_COUNT) palettes and 
	// it will build and return a rm palette.
	// The string_length of each argument must be (COL_PER_PAL<<1) 
	// argument example 'FF30160D'


	with(p)
	{
	    var _return = PAL_BASE;
    
	    var _CI0 = hex_str(CI_GRN0);
	    var _CI1 = "FF";
	    var _COUNT1 = BGR_PAL_COUNT + MOB_PAL_COUNT; // 
	    var _COUNT2 = COL_PER_PAL<<1; // num of string chars in 1 palette
	    var _count  = 0;
    
    
    
	    if (argument_count>_COUNT1 
	    &&  argument[      _COUNT1] != -1 )
	    {   // alt menu pal
	        argument[      _COUNT1]  = string(argument[_COUNT1]);
	         _return +=           string_copy(argument[_COUNT1],1,_COUNT2);
	    }
	    else _return += PAL_MENU;
    
    
	    var _len = string_length(_return);
	    if (_len&1) {_len--; _return = string_copy(_return,1,_len);}
    
    
	    _count   = _len div _COUNT2;
	    _return  = string_copy(_return,1,_count);
	    _len     = string_length(_return);
	    _count   = _len div _COUNT2;
	    _count   = PI_PC_1 - _count;
	    for(_i=0; _i<_count; _i++) // Each missing pal
	    {
	        _return += string_repeat(_CI0, COL_PER_PAL);
	    }
    
	    /*
	    //
	             _count = _COUNT2<<1; // extra <<1 bc 2 palettes now
	    //if (_len mod _COUNT2) _count = (_len div _COUNT2) + _COUNT2;
	    //         _count = (_len div _COUNT2); // extra <<1 bc 2 palettes now
	    if (_len<_count)
	    {   _return += string_repeat(_CI0,  (_count-_len)>>1);  } // _CI0 has 2 chars
	        _return  = string_copy(_return,1,_count);
	    //
	    */
    
    
    
	    _return += PAL_SET_PC_A; // PAL_SET_PC_A: PC & CUCCO. rm LIT
	    for(var i=0; i<_COUNT1; i++)
	    {
	        _return += string(argument[i]);
	    }
    
    
    
	    /*
    
	                       _count = _COUNT1+1;
	    if (argument_count>_count 
	    &&  argument[      _count] != -1 )
	    {   // alt pc pal
	        argument[      _count] = string(argument[_count]);
	         _return +=         string_copy(argument[_count],1,_COUNT2);
	    }
	    else _return += PAL_SET_PC_A; // PAL_SET_PC_A: PC & CUCCO. rm LIT
	    */
    
    
    
	    /*
	    var _len = string_length(_return);
	    if (_len&1) {_len--; _return = string_copy(_return,1,_len);}
	    //
	             _count = _COUNT2<<1; // extra <<1 bc 2 palettes now
	    if (_len<_count)
	    {   _return += string_repeat(_CI0,  (_count-_len)>>1);  } // _CI0 has 2 chars
	    //    _return  = string_copy(_return,1,_count);
	    //
	    */
    
    
    
	    /*
	    for(var i=0; i<_COUNT1; i++)
	    {
	        argument[i] = string(argument[i]);
        
	            _len = string_length(argument[i]);
	        if (_len&1) {_len--; argument[i] = string_copy(argument[i],1,_len);}
	        //
	        if (_len<_COUNT2)
	        {   argument[i] += string_repeat(_CI0, (_COUNT2-_len)>>1);  } // _CI0 has 2 chars
	            argument[i]  = string_copy(argument[i],1,_COUNT2);
	        //
	        _return += argument[i];
	    }
    
	        _len = string_length(_return);
	    if (_len&1) {_len--; _return = string_copy(_return,1,_len);}
	    //
	             _count = COL_PER_SET<<1;
	    if (_len<_count)
	    {   _return += string_repeat(_CI0, (_count-_len)>>1);  } // _CI0 has 2 chars
	    */
    
    
    
    
	    return _return;
	}





	// PI_ERR0
	//hex_str(CI_GRN0)



}
