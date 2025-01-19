/// @description  PC_create(object_index, x, y)
function PC_create(argument0, argument1, argument2) {


	with(instance_create(argument1, argument2, argument0))
	{
	    g.pc = id;
	    GameObjectA_init();
	}







}
