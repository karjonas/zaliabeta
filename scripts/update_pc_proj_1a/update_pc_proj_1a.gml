/// @description  update_pc_proj_1a()
function update_pc_proj_1a() {

	// SPAWN BEAM


	// D50D: JSR 9847
	var _qual = false;

	var _MAX=get_stat_max(STR_Heart);
	var _MIN=_MAX;
	if (g.mod_PCBeamHP 
	&&  f.items&ITM_SWRD 
	&&  f.level_atk>=4 )
	{
	    _MIN=_MAX-Container_AMT;
	}

	if (f.hp>=_MIN 
	&&  f.hp<=_MAX )
	{
	        _qual = !(g.spells_active&SPL_FIRE);
	    if(!_qual  // if FIRE active
	    &&  pc_is_cucco() )
	    {   // if cucco has only beam ability and NOT fire ability
	        var _BEAM = f.CuccoSkill_PROJ1 * g.CUCCO_CAN_BEAM;
	        var _FIRE = f.CuccoSkill_PROJ2 * g.CUCCO_CAN_FIRE;
	        _qual = f.Cucco_skills&(_BEAM|_FIRE) == f.CuccoSkill_PROJ1;
	    }
	}


	if (_qual) spawn_pc_proj_2a();







}
