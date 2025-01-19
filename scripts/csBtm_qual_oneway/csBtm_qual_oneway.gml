/// @description  csBtm_qual_oneway(inst id, dist in tile)
function csBtm_qual_oneway(argument0, argument1) {


	with(argument0)
	{
	    if (vspd&$80) return false; // inst is currently moving upward
    
    
	    // if in 2nd half of tile && moving fast enough, then is colliding
	    var      _DIST = argument1&$7; // 0-7. How far into tile.
	         if (_DIST < 4)             return true;
	    else if (uses_vspd_sub)
	    {    if (_DIST-1 <= (vspd>>4))  return true;  } // this should be enough since faster than 8 would mean vspd > $7F
	    else         
	    {    if (_DIST-1 <=  vspd)      return true;  } // obj uses vspd as 'pixels per frame'
	}


	return false;







}
