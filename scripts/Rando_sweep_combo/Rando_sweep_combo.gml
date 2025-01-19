/// @description  Rando_sweep_combo(iterations)
function Rando_sweep_combo() {


	var _i;
	var _COUNT=argument[0];


	for(_i=0; _i<_COUNT; _i++)
	{
	    Rando_sweep_spells();
	    Rando_sweep_skills();
	    Rando_place_keys(!_i,true);
	}







}
