var _x, _y, _width, _height, _str, _gmFix;
_str = string(displayVal);
_gmFix = 1;
_width = (8 * string_length(_str)) + (TEXT_X_OFF * 2) - _gmFix;
_height = 8 + (TEXT_Y_OFF * 2) - _gmFix;
_x = __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) - _width - X_OFF;
_y = __view_get( e__VW.YView, 0 ) + Y_OFF;

draw_set_colour(c_black);
draw_rectangle(_x, _y, _x + _width, _y + _height, false);
draw_text_(_x + TEXT_X_OFF, _y + TEXT_Y_OFF, _str);

