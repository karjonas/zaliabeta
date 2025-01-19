/// @description  Ganon1_cs4()
function Ganon1_cs4() {


	for(_i=(ww>>3)-1; _i>=0; _i--)
	{
	    if (collide_solid_grid((xl+3)+(_i<<3),yb) & TID_SOLID1)
	    {
	        return true;
	    }
	}

	return false;







}
