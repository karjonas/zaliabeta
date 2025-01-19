/// @description  isVal(base value, compare values...)
function isVal() {

	// Return true if at least 1 compare value is equal to the base value


	if (argument_count<2) return false;

	for(var _i=1; _i<argument_count; _i++)
	{
	    if (argument[0]==argument[_i])
	    {
	        return true;
	    }
	}

	return false;







}
