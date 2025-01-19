/// @description  update_LevelUp_1b(canCheckNextXP 0 attack, canCheckNextXP 1 magic, canCheckNextXP 2 life)
function update_LevelUp_1b(argument0, argument1, argument2) {

	// A08B
	if(!argument0 
	&& !argument1 
	&& !argument2 )
	{
	    argument0 = 1;
	    argument1 = 1;
	    argument2 = 1;
	}


	// *** Order right here matters!
	                                                  f.xpNext = XP_MAX;
	if (argument2 && f.xpNext>=get_xp_next(STAT_LIF)) f.xpNext = get_xp_next(STAT_LIF);
	if (argument1 && f.xpNext>=get_xp_next(STAT_MAG)) f.xpNext = get_xp_next(STAT_MAG);
	if (argument0 && f.xpNext>=get_xp_next(STAT_ATK)) f.xpNext = get_xp_next(STAT_ATK);








	/*
	/// update_LevelUp_1b(canCheckNextXP 0 attack, canCheckNextXP 1 magic, canCheckNextXP 2 life)

	var _canCheckNextXP;
	_canCheckNextXP[2] = argument2;
	_canCheckNextXP[1] = argument1;
	_canCheckNextXP[0] = argument0;

	// A08B
	if !(_canCheckNextXP[0] | _canCheckNextXP[1] | _canCheckNextXP[2])
	{
	    _canCheckNextXP[0] = 1;
	    _canCheckNextXP[1] = 1;
	    _canCheckNextXP[2] = 1;
	}

	f.xpNext = $FFFF;

	var i, _srcNext;
	for (i = 2; i >= 0; i--)
	{
	    if (_canCheckNextXP[i])
	    {
	        _srcNext = get_xp_next(i);
	        if (f.xpNext >= _srcNext) f.xpNext = _srcNext;
	    }
	}

	_canCheckNextXP = 0;

	*/





}
