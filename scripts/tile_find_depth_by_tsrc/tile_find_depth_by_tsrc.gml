/// @description  tile_find_depth_by_tsrc(clm, row, tileset, tsrc, *tsrc..)
function tile_find_depth_by_tsrc() {


	var                     _arg=0;
	var _X       = argument[_arg++]<<3;
	var _Y       = argument[_arg++]<<3;
	var _TILESET = argument[_arg++];


	var _i,_j, _depth, _tile_id, _tsrc;

	for(_i=ds_list_size(g.dl_pal_swap_depths)-1; _i>=0; _i--)
	{
	    _depth =        g.dl_pal_swap_depths[|_i];
	    _tile_id = tile_layer_find(_depth, _X,_Y);
    
	    if (_tile_id==-1 
	    ||  tile_get_background(_tile_id)!=_TILESET )
	    {
	        continue;
	    }
    
    
	    _tsrc = ((tile_get_top(_tile_id)>>3)<<4) | (tile_get_left(_tile_id)>>3);
	    for(_j=_arg; _j<argument_count; _j++)
	    {
	        if (_tsrc==argument[_j]) return _depth;
	    }
	}


	return -1;







}
