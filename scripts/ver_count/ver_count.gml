/// @description  ver_count(GO object_index, GO ver)
function ver_count(argument0, argument1) {

	// Version Count


	var             _count  = 0;
	with(argument0) _count += (ver==argument1);
	return          _count;







}
