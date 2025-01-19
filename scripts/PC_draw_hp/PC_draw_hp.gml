/// @description  PC_draw_hp()
function PC_draw_hp() {

	// draws HP above the head


	if(!g.DevTools_state) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	//if!(DEV && 1)       exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!
	if!(g.can_draw_hp)   exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!


	var _text, _x,_y;
	_text = hex_str(abs(f.hp));

	_x  = drawX - ((8 * string_length(_text))>>1);
	_x -=          (8 * (f.hp<0)); // For negative char

	_y  = drawY - (hh>>1) - 8 - 2;


	if (f.hp<0) _text = "-" + _text;
	draw_text_(_x,_y, _text);







}
