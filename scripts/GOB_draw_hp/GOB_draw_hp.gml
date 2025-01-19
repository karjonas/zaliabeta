/// @description  draws the entity's HP above the head
function GOB_draw_hp() {


	if(!g.DevTools_state) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	//if!(DEV && 1)                   exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!
	if(!g.can_draw_hp) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!


	var _x, _y;
	var _TEXT = hex_str(abs(hp));

	_x  = drawX - ((8 * string_length(_TEXT))>>1);
	_x -=          (8 * (hp<0)); // For negative char

	_y  = drawY - (hh>>1);


	if (hp<0) _TEXT = "-" + _TEXT;
	draw_text_(_x,_y, _TEXT);







}
