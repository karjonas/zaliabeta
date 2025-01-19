/// @description  sign8b(int)
function sign8b(argument0) {
	if!(argument0&$FF) return  0;
	if (argument0&$80) return -1;
	                   return  1;



}
