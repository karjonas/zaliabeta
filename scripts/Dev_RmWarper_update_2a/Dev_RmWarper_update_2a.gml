/// @description  Dev_RmWarper_update_2a(difference)
function Dev_RmWarper_update_2a(argument0) {


	var _COUNT  = ds_list_size(dl_Rm_ExitIDs);
	if(!_COUNT) return ExitID;

	var _DIFF   = argument0;
	var _idx    = clamp(ds_list_find_index(dl_Rm_ExitIDs, ExitID), 0,_COUNT-1);
	    _idx    = (_idx+_COUNT) + _DIFF;
	    _idx    = _idx mod _COUNT;
	return dl_Rm_ExitIDs[|_idx];







}
