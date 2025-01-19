/// @description  Ganon3_skull_update_1a()
function Ganon3_skull_update_1a() {


	var        _HSPD = (abs8b(Skull_hspd)>>4) &$F;
	var        _VSPD = (abs8b(Skull_vspd)>>4) &$F;
	Skull_x += _HSPD * byte_dir(Skull_hspd);
	Skull_y += _VSPD * byte_dir(Skull_vspd);







}
