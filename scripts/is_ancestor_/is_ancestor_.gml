/// @description  is_ancestor_(child object_index, parent object_index, *parent object_index..)
function is_ancestor_() {
	// shorter named, modified version of object_is_ancestor


	for(var _i=1; _i<argument_count; _i++)
	{   //                        child     parent
	    if (                   argument[0]==argument[_i] 
	    ||  object_is_ancestor(argument[0], argument[_i]) )
	    {
	        return true;
	    }
	}


	return false;







}
