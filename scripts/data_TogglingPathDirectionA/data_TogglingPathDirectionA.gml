function data_TogglingPathDirectionA() {
	/*
	/// data_TogglingPathDirectionA(version, x, y, direction, data, door1 rc, door2 rc, door3 rc, *door4 rc, ..)

	// Must have at least 3 doors


	var i, _count, _rc;
	var                           _arg = 0;
	var _VER     =       argument[_arg++];
	var _X       =       argument[_arg++];
	var _Y       =       argument[_arg++];
	var _DIR     = sign_(argument[_arg++]);   // 1: Forward, -1: Backward
	var _DATA    =       argument[_arg++];    // Unique data to this spawn. Pass -1 if none.

	var _DATAKEY = data_spawn_2a(STR_Challenge,TogglingPathDirectionA,_VER, _X,_Y, -1, _DATA);

	// ----------------------------------------------------------------------------------
	g.dm_spawn[?_DATAKEY+STR_Direction] = _DIR;
	//g.dm_spawn[?_DATAKEY+STR_Data]       = _DATA;

	                _count = argument_count - _arg;
	g.dm_spawn[?_DATAKEY+STR_Door+STR_Count] = _count;
	for (i = 0; i < _count; i++)
	{
	    // xy is at the bottom center of the door in case 
	    // I change door dimensions in the future.
	    _rc = argument[_arg++];
	    g.dm_spawn[?_DATAKEY+STR_Door+hex_str(i+1)+"_x"] = ((_rc>>0)&$FF)<<3;
	    g.dm_spawn[?_DATAKEY+STR_Door+hex_str(i+1)+"_y"] = ((_rc>>8)&$FF)<<3;
	}
	*/







}
