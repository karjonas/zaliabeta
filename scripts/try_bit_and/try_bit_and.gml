function try_bit_and(argument0, argument1) {
	if (is_undefined(argument0) || is_undefined(argument1)) {
	    return undefined;
	}
	return argument0&argument1;
}