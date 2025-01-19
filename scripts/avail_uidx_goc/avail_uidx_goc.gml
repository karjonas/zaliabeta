/// @description  avail_uidx_goc(check count)
function avail_uidx_goc(argument0) {


	argument0 = clamp(argument0, 1,ds_list_size(g.go_mgr.dl_goc1));
	for(var _i=0; _i<argument0; _i++)
	{
	    if (is_undefined(g.go_mgr.dl_goc1[|_i])) return _i;
	    if(!instance_exists(g.go_mgr.dl_goc1[|_i])) return _i;
	    if ( g.go_mgr.dl_goc1[|_i]<=0)           return _i;
	    if ( g.go_mgr.dl_goc1[|_i]==noone) return _i;
	    if (!g.go_mgr.dl_goc1[|_i].state)  return _i;
	}


	return UIDX_NULL;







}
