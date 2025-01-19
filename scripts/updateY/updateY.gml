/// @description  updateY()
function updateY() {


	if(!vspd)
	{
	    vspd = (vspd+vspd_grav) &$FF;
	    return 0;
	}



	var _vspd_sub_CARRY = 0;
	if ( vspd&$F)
	{
	     vspd_sub += (vspd&$F)<<4;
	    _vspd_sub_CARRY = vspd_sub>$FF;
	     vspd_sub &= $FF;
	}

	var            _VSPD  = vspd>>4;
	if ( vspd&$80) _VSPD |= $F0;



	var _Y_CHANGE  = (_VSPD+_vspd_sub_CARRY) &$FF;
	    _Y_CHANGE -= (_Y_CHANGE&$80)<<1;
	if (_Y_CHANGE != 0)
	{
	    set_xy(id, x, y+_Y_CHANGE);
	     y_change +=    _Y_CHANGE;
	}



	var _VSPD_PREV = vspd;

	vspd = (vspd+vspd_grav) &$FF;

	if (abs(vspd_grav))
	{   // 2023/06/03. Prevent springing up and down in midair in tall rooms
	    if (vspd_grav<0 && _VSPD_PREV&$80) vspd = clamp(vspd, $80,$FF);
	    if (vspd_grav>0 && _VSPD_PREV<$80) vspd = clamp(vspd, $00,$7F);
	}


	// D247, D249
	return (_VSPD+_vspd_sub_CARRY) > $FF;







}
