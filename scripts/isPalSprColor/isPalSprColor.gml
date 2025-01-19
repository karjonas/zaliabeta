/// @description  isPalSprColor(palSpr pal index, pal color index, color ID)
function isPalSprColor(argument0, argument1, argument2) {
	var _palInd      = argument0;
	var _palColorInd = argument1;
	var _colorID     = argument2;   // This is the (string formatted) grid index of the color from spr_color_grid_1a

	var _palStr = string_copy(p.pal_rm_curr, (_palInd <<3)+1, 8);
	return string_copy(_palStr, (_palColorInd <<1)+1, 2) == _colorID;



}
