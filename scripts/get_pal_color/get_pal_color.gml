/// @description  get_pal_color(pal idx, col idx of pal)
function get_pal_color(argument0, argument1) {


	// Pass argument0 with get_pi(pal idx)
	argument0  = clamp(argument0, 0,p.PI_LAST);
	argument1  = clamp(argument1, 0,COL_PER_PAL-1);

	argument0  = (argument0*COL_PER_PAL) + argument1; // idx of color requested in pal_rm_curr
	argument0  = (argument0<<1)+1; // string position of color requested
	//
	return p.dl_COLOR[|str_hex(string_copy(p.pal_rm_curr,argument0,2))];

	// p.PI_BASE   - p.PI_MENU   - p.PI_BGR1   - p.PI_BGR2   - p.PI_BGR3   - p.PI_BGR4
	// FF FF FF FF - FF FF FF FF - FF FF FF FF - FF FF FF FF - FF FF FF FF - FF FF FF FF

	//               p.PI_PC_1   - p.PI_MOB1   - p.PI_MOB2   - p.PI_MOB3   - p.PI_MOB4
	//               FF FF FF FF - FF FF FF FF - FF FF FF FF - FF FF FF FF - FF FF FF FF







}
