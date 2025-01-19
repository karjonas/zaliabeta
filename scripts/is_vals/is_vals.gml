/// @description  is_vals(base value, compare values...)
function is_vals() {

	// Return true if all compare values are equal to the base value


	if (argument_count<2) return false;


	for(var _i=1; _i<argument_count; _i++)
	{
	    if (argument[0]!=argument[_i])
	    {
	        return false;
	    }
	}

	return true;







}
