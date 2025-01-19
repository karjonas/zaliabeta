/// @description  val(value, *value if undefined)
function val() {

	// val: value
	// For avoiding checking things like; is_undefined()
	// If value passed is undefined, returns 0 or argument[1] if specified.
	// Returns argument[0] if anything else.


	if(!is_undefined(argument[0])) return argument[0];
	else if (argument_count>1)     return argument[1];


	return 0;







}
