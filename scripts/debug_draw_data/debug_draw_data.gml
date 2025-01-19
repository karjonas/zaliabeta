/// @description  debug_draw_data()
function debug_draw_data() {

	var _PAD1 = 2;
	// var _PAD2 = 8;
	var _SIZE = 8; // text char w & h

	var _xl = __view_get( e__VW.XView, 0 );
	var _yt = $24;
	var _x = _xl + _PAD1;
	var _y = _yt + _PAD1;


	var _text  = "";
	//    _text += "";

	var _bgW = (_PAD1 <<1) + (_SIZE * string_length(_text));
	var _bgH = (_PAD1 <<1) +  _SIZE;

	draw_sprite_(spr_1x1_WHT,0, _xl,_yt, -1, _bgW,_bgH, c_black);
	draw_text_(_x, _y, _text);





}
