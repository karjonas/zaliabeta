/// @description  PC_set_behavior(behavior)
function PC_set_behavior(argument0) {


	if (is_string(argument0)) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

	with(g.pc) behavior = clamp(argument0, 0,behavior_LAST);







}
