/// @description  is_ver(inst id, object_index, version)
function is_ver(argument0, argument1, argument2) {

	// isVer: "is Version". 
	// Check if an instance is a specific object version.


	return argument0.object_index == argument1 
	    && argument0.ver          == argument2;
	//







}
