/// @description  inst_collide_obj_solid_type(inst id, x, y)
function inst_collide_obj_solid_type(argument0, argument1, argument2) {


	var _SOLID = collide_solid_inst(argument1, argument2);

	if (_SOLID 
	&&  _SOLID != argument0 
	&&  _SOLID.solid_type 
	&&  isVal(_SOLID.solid_type, TID_SOLID1, TID_ONEWY1) 
	&& !(argument0.solid_type==TID_ONEWY1 && _SOLID.solid_type==TID_ONEWY1) )
	{
	    return _SOLID.solid_type;
	}

	return 0;







}
