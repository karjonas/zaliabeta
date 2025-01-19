/// @description  rol(byte)
function rol(argument0) {
	// Mimics 6502 Roll Left
	return ((argument0<<1) | ((argument0&$80)>>7)) &$FF;




}
