/// @description  Snaraa_update_2()
function Snaraa_update_2() {


	var _DIR = bit_dir(path_dir&$3);
	var _ROW = (y>>3)<<8;

	rc_a  = _ROW | ((x+0)               >>3);
	rc_b  = _ROW | ((x+(path_dist*_DIR))>>3);
	rc_a2 = rc_a + -_DIR - (!!_DIR);
	rc_b2 = rc_b +  _DIR -   !_DIR;







}
