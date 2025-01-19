/// @description  Cutscene_CreateWaterfall_draw_1a(blocks x, blocks y, blocks clms, blocks rows, blocks count)
function Cutscene_CreateWaterfall_draw_1a(argument0, argument1, argument2, argument3, argument4) {


	var _X              = argument0;
	var _Y              = argument1;
	var _Blocks_CLMS    = argument2;
	var _Blocks_ROWS    = argument3;
	var _Blocks_COUNT   = argument4;

	var _i, _j;
	var _x0,_y0, _x,_y;
	var _tsrc;

	for(_i=0; _i<_Blocks_COUNT; _i++)
	{
	    _x0 = _X + (((_i mod _Blocks_CLMS) * BlockTile_CLMS) <<3);
	    _y0 = _Y + (((_i div _Blocks_CLMS) * BlockTile_ROWS) <<3);
    
	    for(_j=0; _j<BlockTile_COUNT; _j++)
	    {
	        _x = _x0 + ((_j mod BlockTile_CLMS)<<3);
	        _y = _y0 + ((_j div BlockTile_CLMS)<<3);
	        _tsrc = dg_Block_Crumble_TSRC[#_j div BlockTile_CLMS, _j mod BlockTile_CLMS];
	        draw_background_part(Block_Crumble_TS, ((_tsrc>>0)&$F)<<3,((_tsrc>>4)&$F)<<3, 8,8, _x,_y);
	    }
	}







}
