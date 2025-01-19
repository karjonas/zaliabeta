/// @description  data_spin_trap(object_index, version, anchor x, anchor y, *palette index, *length, *spin dir, *revolution duration, *spawn angle)
function data_spin_trap() {


	var                      _arg=0;
	var _OBJECT   = argument[_arg++];
	var _VERSION  = argument[_arg++];
	var _X_ANCHOR = argument[_arg++];
	var _Y_ANCHOR = argument[_arg++];

	var                      _PAL_IDX = -1;
	if (argument_count>_arg) _PAL_IDX = argument[_arg++];

	var _SPAWN_DATAKEY = data_spawn_3a(rm_name+STR_PRIO, _OBJECT,_VERSION, _X_ANCHOR,_Y_ANCHOR, _PAL_IDX);

	if (argument_count>_arg) g.dm_spawn[?_SPAWN_DATAKEY+STR_Length]   = argument[_arg++]; // Length in 8-uints
	if (argument_count>_arg) g.dm_spawn[?_SPAWN_DATAKEY+STR_MoveDir]  = argument[_arg++]; // spin dir (1: clockwise, -1: counter-clockwise)
	if (argument_count>_arg) g.dm_spawn[?_SPAWN_DATAKEY+STR_Duration] = argument[_arg++]; // dur to move 1 revolution
	if (argument_count>_arg) g.dm_spawn[?_SPAWN_DATAKEY+STR_Angle]    = argument[_arg++] mod 360; // spawn angle (in degrees)







}
