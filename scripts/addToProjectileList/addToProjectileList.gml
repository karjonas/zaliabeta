/// @description  addToProjectileList(projectile instance id)
function addToProjectileList(argument0) {

	var _uIdx = UIDX_NULL;

	if (g.go_mgr.uIdxSwap_goc+1 
	&&  g.go_mgr.uIdxSwap_goc<MAX_GOC1 )
	//if (inRange(g.go_mgr.uIdxSwap_goc, 0, MAX_GOC1-1))
	{
	    _uIdx =         g.go_mgr.uIdxSwap_goc;
	    if (            g.go_mgr.dl_goc1[|_uIdx]!=noone 
	    &&              g.go_mgr.dl_goc1[|_uIdx]>0 
	    && !instance_exists(g.go_mgr.dl_goc1[|_i]) 
	    &&  is_ancestor(g.go_mgr.dl_goc1[|_uIdx].object_index, ProjectileHostile) )
	    {               g.go_mgr.dl_goc1[|_uIdx].update_idx = UIDX_NULL;  }
	}
	else
	{
	    _uIdx = avail_uidx_goc(MAX_GOC1);
	}

	if (_uIdx+1 
	&&  _uIdx<MAX_GOC1 )
	{
	    g.go_mgr.dl_goc1[|_uIdx] = argument0;
	}
	//if (inRange(_uIdx, 0, MAX_GOC1-1)) g.go_mgr.dl_goc1[|_uIdx] = argument0;

	g.go_mgr.uIdxSwap_goc = UIDX_NULL;


	return _uIdx;







}
