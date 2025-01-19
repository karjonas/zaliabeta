/// @description  updateX()
function updateX() {


	if(!hspd)
	{
	    hspd = (hspd+hspd_grav) &$FF;
	    return 0;
	}



	var _hspd_sub_CARRY = 0;
	if ( hspd&$F)
	{
	     hspd_sub += (hspd&$F)<<4;
	    _hspd_sub_CARRY = hspd_sub>$FF;
	     hspd_sub &= $FF;
	}

	var            _HSPD  = hspd>>4;
	if ( hspd&$80) _HSPD |= $F0;



	var _X_CHANGE  = (_HSPD+_hspd_sub_CARRY) &$FF;
	    _X_CHANGE -= (_X_CHANGE&$80)<<1;
	if (_X_CHANGE != 0)
	{
	    set_xy(id, x+_X_CHANGE, y);
	     x_change += _X_CHANGE;
	}



	var _HSPD_PREV = hspd;

	hspd = (hspd+hspd_grav) &$FF;

	if (abs(hspd_grav))
	{   // 2023/06/03. Prevent potential springing back and forth
	    if (hspd_grav<0 && _HSPD_PREV&$80) hspd = clamp(hspd, $80,$FF);
	    if (hspd_grav>0 && _HSPD_PREV<$80) hspd = clamp(hspd, $00,$7F);
	}


	return (_HSPD+_hspd_sub_CARRY) > $FF;







}
