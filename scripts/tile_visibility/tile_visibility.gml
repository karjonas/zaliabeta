/// @description  tile_visibility(hide value)
function tile_visibility(argument0) {

	// Tiles that aren't drawn due to certain conditions
	// Bits of the stored value determine what hides the tile:
	// TID_HIDE_1&$F: Hidden if room is NOT lit
	// TID_HIDE_2&$F: Hidden if room IS lit
	// 4: ...
	// 8: ...


	if (g.rm_brightness>=1) return !(argument0 & (TID_HIDE_2&$F)); // Hidden when room IS     lit
	                        return !(argument0 & (TID_HIDE_1&$F)); // Hidden when room is NOT lit
	//







}
