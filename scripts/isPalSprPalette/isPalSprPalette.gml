/// @description  isPalSprPalette(palSpr pal index, palette str)
function isPalSprPalette(argument0, argument1) {
	return string_copy(p.pal_rm_curr, (argument0<<3)+1, $01<<3) == argument1;




}
