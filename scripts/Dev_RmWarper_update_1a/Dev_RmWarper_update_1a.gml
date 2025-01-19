/// @description  Dev_RmWarper_update_1a(rm name)
function Dev_RmWarper_update_1a(argument0) {


	var _DEBUG = false;


	var _RM_NAME = argument0;


	var _i,_j, _idx, _val;
	var _exit_id, _exit_name;

	ds_list_clear(dl_Rm_ExitIDs);

	if (_DEBUG) sdm("");
	for(_i=0; _i<5; _i++) // each exit type
	{
	    for(_j=0; _j<$10; _j++) // each exit id
	    {
	        _exit_id  = $08<<_i;
	        _exit_id &= $F0; // $00,$10,$20,$40,$80
	        _exit_id |= _j&$F;
	        _exit_name = _RM_NAME + hex_str(_exit_id);
	        if (is_undefined(g.dm_rm[?_exit_name+STR_Num]))
	        {   break;  } // No more exits for _i's exit type
        
        
	        ds_list_add(dl_Rm_ExitIDs, _exit_id);
	        if (_DEBUG) sdm(_RM_NAME+", "+_exit_name+", _exit_id $"+hex_str(_exit_id));
	    }
	}
	if (_DEBUG) sdm("");







}
