/// @description  Cutscene_CreateWaterfall_update_1a(blocks x, blocks y, tile clms, blocks tile count)
function Cutscene_CreateWaterfall_update_1a(argument0, argument1, argument2, argument3) {


	var _X                  = argument0;
	var _Y                  = argument1;
	var _Tile_CLMS          = argument2;
	var _BlocksTile_COUNT   = argument3;

	var _i, _x,_y;
	for(_i=0; _i<_BlocksTile_COUNT; _i++)
	{
	    _x = _X + ((_i mod _Tile_CLMS)<<3);
	    _y = _Y + ((_i div _Tile_CLMS)<<3);
	    tile_change_1a(Block_DEPTH, _x,_y, 0,0,0);
	}







}
