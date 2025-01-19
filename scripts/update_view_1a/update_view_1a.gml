/// @description  update_view_1a(default, use smooth view, coord 1, coord 2)
function update_view_1a(argument0, argument1, argument2, argument3) {


	if (argument1) // use smooth moving
	{   //   pc coord==view coord
	    if (argument2==argument3) return 0;
	    //                  pc coord-view coord
	    var    _DIFF = abs(argument2-argument3);
	           _DIFF = round(_DIFF/5);
	           //_DIFF = max(1,_DIFF);
	    //                   pc coord-view coord
	    return _DIFF * sign(argument2-argument3);
	}


	return argument0;







}
