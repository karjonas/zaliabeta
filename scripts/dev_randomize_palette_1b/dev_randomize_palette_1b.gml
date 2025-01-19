/// @description  dev_randomize_palette_1b(color tone)
function dev_randomize_palette_1b(argument0) {


	argument0  = clamp(argument0, 0,3);
	argument0  = argument0<<4;
	//argument0  = (argument0<<4) | irandom(p.CI_BLK1&$F); // $D: Last color in a clm. This assumes that black will always be the last color in a row.
	argument0 |= irandom(p.CI_BLK1&$F);

	return argument0;







}
