/// @description  round_(real)
function round_(argument0) {
	if (abs(argument0%1)==.5)
	{
	    if (argument0>0) return ceil( argument0);
	    else             return floor(argument0);
	}
	                     return round(argument0);
	//




	/*
	/// round_(real)
	if (abs(argument0%1)==.5)
	{
	    if (argument0) return ceil( argument0);
	    else           return floor(argument0);
	}
	                   return round(argument0);
	//
	*/







}
