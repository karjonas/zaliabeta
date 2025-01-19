/// @description  point_collide_solid_obj(px, py)
function point_collide_solid_obj(argument0, argument1) {


	var _SOLID = collide_solid_inst(argument0, argument1);
	if (_SOLID 
	&&  _SOLID.solid_type )
	{
	    return _SOLID;
	}
	    return noone;
	//







}
