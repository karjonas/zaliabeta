/// @description  PalettePicker_pal_col_pos()
function PalettePicker_pal_col_pos() {


	// ** Remember, in p.pal_rm_new, clms & rows are reversed.
	var    _POS  = (pal_curs_idx mod PAL_CNT) + PI_OFFSET;
	       _POS *= COL_PER_PAL;
	       _POS += (pal_curs_idx div PAL_CNT) + (COL_PER_PAL-COL_PER_PAL_);
	       _POS  = (_POS<<1)+1; // because string pos
	return _POS;







}
