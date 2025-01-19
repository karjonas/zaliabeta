/// @description  PC_draw_get_cucco_rot(x scale)
function PC_draw_get_cucco_rot(argument0) {


	if (use_disguise 
	||  Draw_behavior==behavior_DAMAGE )
	{
	    return 0;
	}


	var _THRUST_D = Draw_behavior==behavior_STAB_DOWN 
	             && f.Cucco_skills & f.CuccoSkill_THRUST_D 
	             && sign(g.CUCCO_CAN_THRUST_D);
	//
	var _THRUST_U = Draw_behavior==behavior_STAB_UP 
	             && f.Cucco_skills & f.CuccoSkill_THRUST_U 
	             && sign(g.CUCCO_CAN_THRUST_U);
	//

	if (_THRUST_D 
	||  _THRUST_U )
	{
	    if ((_THRUST_D && !argument0) 
	    ||  (_THRUST_U &&  argument0) )
	    {   return 90;  }
    
	    if ((_THRUST_D &&  argument0) 
	    ||  (_THRUST_U && !argument0) )
	    {   return 90*3;  }
	}

	return 0;







}
