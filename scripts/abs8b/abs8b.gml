/// @description  abs8b(value)
function abs8b(argument0) {


	if (argument0&$80) return $100 - (argument0&$FF);
	                   return         argument0&$FF;
	//







}
