/// @description  inst_collide_solid_type(inst id, x, y)
function inst_collide_solid_type(argument0, argument1, argument2) {


	var _INST = collide_solid_inst(argument1,argument2);
	if (_INST 
	&&  _INST.solid_type 
	&&  _INST!=argument0 )
	{
	    return _INST.solid_type;
	}


	return collide_solid_grid(argument1,argument2);







}
