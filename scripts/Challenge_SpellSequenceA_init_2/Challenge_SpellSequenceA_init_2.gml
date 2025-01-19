/// @description  Challenge_SpellSequenceA_init_2()
function Challenge_SpellSequenceA_init_2() {


	//var _i;





	switch(ver)
	{
	    // -------------------------------------------------------------------------------
	    // -------------------------------------------------------------------------------
	    case 1:{
	    if (val(f.dm_challenges[?challenge_id+STR_Complete]))
	    {
	        instance_destroy();
	    }
	    else
	    {
	        var _i, _x,_y;
	        for(_i=0; _i<4; _i++)
	        {   // Change tiles to solid to block shaft.
	            _x = xl + ((_i&1)<<3);
	            _y = yt + ((_i>1)<<3);
	            tile_change_1a(0, _x,_y, -1,0, TID_SOLID1);
	        }
	    }
    
    
	    break;}
    
    
    
    
    
	    // -------------------------------------------------------------------------------
	    // -------------------------------------------------------------------------------
	    case 2:{
    
	    break;}
    
    
    
    
    
    
	}







}
