/// @description  Barrier_update_2a()
function Barrier_update_2a() {

	// Decide next barrier to be raised


	var _i;

	// dg_barrier[#0,1]: Current barrier num being raised.
	dg_barrier[#0,1] = 0;

	for(_i=1; _i<dg_barrier_W; _i++)
	{
	    if(!dg_barrier[#_i,0] 
	    &&  f.crystals & ($1<<(_i-1)) )
	    {
	        dg_barrier[#0,1] = _i;
	        break;//_i
	    }
	}


	if(!dg_barrier[#0,1] 
	&&  dg_barrier[#0,0]>=bitCount(f.crystals) 
	&&  dg_barrier[#0,0]>=PLACED_CRYSTALS_REQUIREMENT_COUNT )
	{
	    for(_i=1; _i<dg_barrier_W; _i++)
	    {
	        if(!dg_barrier[#_i,0])
	        {
	            dg_barrier[#0,1] = _i;
	            break;//_i
	        }
	    }
	}


	return dg_barrier[#0,1]; // dg_barrier[#0,1] (curr barrier num being raised)







}
