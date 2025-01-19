/// @description  Overworld_tile_change_1a(rm clm, rm row, ow clm, ow row, tsrc, *solid)
function Overworld_tile_change_1a() {


	//               rm clm      rm row
	if(!is_in_grid(argument[0],argument[1], DRAW_CLMS,DRAW_ROWS))
	{
	    return 0;
	}



	var _RM_CLM = argument[0];
	var _RM_ROW = argument[1];
	var _OW_CLM = argument[2];
	var _OW_ROW = argument[3];
	var _TSRC   = argument[4];

	var                                  _SOLID = 0;
	if (argument_count>5 && argument[5]) _SOLID = argument[5];

	dg_tsrc[# _OW_CLM,_OW_ROW] = _TSRC;
	dg_solid[#_OW_CLM,_OW_ROW] = _SOLID;

	var _X = _RM_CLM <<SHIFT;
	var _Y = _RM_ROW <<SHIFT;

	var _tid = dg_tid[#_RM_CLM,_RM_ROW];
	tile_delete_(_tid);
	_tid = tile_change_2a(T_SIZE, TILESET1,_TSRC, _X,_Y, Tile_DEPTH1, 0);
	dg_tid[#_RM_CLM,_RM_ROW] = _tid;


	return _tid;







}
