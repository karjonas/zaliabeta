/// @description  PalettePicker_update_cursor(cursor index, clms, rows)
function PalettePicker_update_cursor(argument0, argument1, argument2) {


	if(!Input.pressedHV) return argument0;



	var _curs_idx   = argument0;
	var _CLMS       = argument1;
	var _ROWS       = argument2;
	var _CELLS      = _CLMS*_ROWS;

	                         _curs_idx += _CELLS; // in case it goes negative
	     if (Input.pressedH) _curs_idx  = ((_curs_idx div _CLMS)*_CLMS) + ((_curs_idx+bit_dir(Input.pressedH))mod _CLMS); // wraps to beginning/end of row
	//      if (Input.prsH) _curs_idx += bit_dir(Input.prsH); // wraps to first or last if carries
	else if (Input.pressedV) _curs_idx += bit_dir(Input.pressedV) * _CLMS;


	             _curs_idx  = _curs_idx mod _CELLS;
	return clamp(_curs_idx, 0,_CELLS-1);







}
