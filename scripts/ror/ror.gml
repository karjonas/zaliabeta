/// @description  ror(byte)
function ror(argument0) {
	// Mimics 6502 Roll Right
	return (((argument0&$FF)>>1) | ((argument0&$1)<<7)) &$FF;




}
