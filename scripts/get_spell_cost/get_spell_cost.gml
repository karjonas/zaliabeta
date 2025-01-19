/// @description  get_spell_cost(spell bit)
function get_spell_cost(argument0) {


	var _return = 0;

	if (argument0==SPL_FARY 
	&&  g.CuccoSpell2_Acquired 
	&&  g.CuccoSpell2_Option )
	{
	    if (g.CuccoSpell2_Active) _return = 16; // 16: menu cost will show 08
	    else                      _return = 32; // 32: menu cost will show 16
	}
	else
	{
	    _return = g.dg_spell_cost[#bitNum(argument0), f.level_mag-1];
	}


	return _return;







}
