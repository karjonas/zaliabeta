/// @description  is_ancestor(child object_index, parent object_index)
function is_ancestor() {
	// shorter named, modified version of object_is_ancestor


	if (                   argument[0]==argument[1] 
	||  object_is_ancestor(argument[0], argument[1]) )
	{
	    return true;
	}


	return false;







}
