/// @description  Overworld_refresh_tiles(ow x, ow y)
function Overworld_refresh_tiles(argument0, argument1) {


	var _i,_j, _idx, _x,_y, _val;
	var _ow_clm, _ow_row;
	var _tsrc, _tid;
	var _scale_x,_scale_y;



	if (g.anarkhyaOverworld_MAIN 
	&&  g.anarkhyaOverworld_use )
	{
	    var _x0,_y0, _clm,_row;
	    var _tile_data;
    
	    tile_layer_delete(anarkhya_TILE_DEPTH1);
	    tile_layer_delete(anarkhya_TILE_DEPTH2);
    
	    for(_i=0; _i<DRAW_ROWS; _i++) // each row
	    {
	        for(_j=0; _j<DRAW_CLMS; _j++) // each clm
	        {
	            _x0 = _j<<SHIFT;
	            _y0 = _i<<SHIFT;
            
	            _ow_clm = (argument0+_x0)>>SHIFT;
	            _ow_row = (argument1+_y0)>>SHIFT;
            
            
	            // MAIN layer
	                _tile_data = dg_anarkhya_tsrc[#_ow_clm,_ow_row];
	            if (_tile_data!=0)
	            {
	                Overworld_tile_change_3(_tile_data, _x0,_y0, anarkhya_TILE_DEPTH1, 0);
	            }
            
	            // DETAILS layer
	                _tile_data = dg_anarkhya_tsrc_detail[#_ow_clm,_ow_row];
	            if (_tile_data!=0)
	            {
	                Overworld_tile_change_3(_tile_data, _x0,_y0, anarkhya_TILE_DEPTH2, 0);
	            }
	        }
	    }
	}
	else
	{
	    var _RANDO_TSRC_ACTIVE = val(f.dm_rando[?STR_Rando+STR_Active]) && global.can_rando_ow_tsrc && ds_map_size(dm_Rando_TSRC);
    
	    tile_layer_delete_(Tile_DEPTH1);
    
	    for(_i=0; _i<DRAW_ROWS; _i++) // each row
	    {
	        for(_j=0; _j<DRAW_CLMS; _j++) // each clm
	        {
	            _x = _j<<SHIFT;
	            _y = _i<<SHIFT;
            
	            _ow_clm = (argument0+_x)>>SHIFT;
	            _ow_row = (argument1+_y)>>SHIFT;
            
	            _scale_x = 1;
	            _scale_y = 1;
            
	            _tsrc = dg_tsrc[#_ow_clm,_ow_row];
            
	            if (_RANDO_TSRC_ACTIVE)
	            {
	                _val = ((_tsrc&$FF)>>2)<<2;
	                _val = dm_Rando_TSRC[?hex_str(_val)];
	                //_val = val(dm_Rando_TSRC[?hex_str(_val)]);
	                if(!is_undefined(_val)) _tsrc = (_tsrc&$FF00) | _val;
	                /*
	                if (_val)
	                {
	                    switch(_val){
	                    case $24:{_val=choose($24,$25);break;}     // Desert
	                    case $2C:{_val=choose($2C,$2D,$2F);break;} // Cemetery
	                    case $30:{_val=choose($30,$33);break;}     // Forest
	                    case $40:{_val=choose($40,$41);break;}     // Beach
	                    }
	                    _tsrc = (_tsrc&$FF00) | _val;
	                }
	                */
	            }
            
            
	            if (g._YxY_)
	            {
	                if (_tsrc==TSRC_TREE01 
	                ||  _tsrc==TSRC_TREE02 
	                ||  _tsrc==TSRC_TREE03 
	                ||  _tsrc==TSRC_TREE04 
	                ||  _tsrc==TSRC_GRAS01 
	                ||  _tsrc==TSRC_GRAS02 
	                ||  _tsrc==TSRC_GRAS03 
	                ||  _tsrc==TSRC_GRAS04 
	                ||  _tsrc==TSRC_SWAM01 
	                ||  _tsrc==TSRC_SWAM02 
	                ||  _tsrc==TSRC_SWAM03 
	                ||  _tsrc==TSRC_SWAM04 
	                ||  _tsrc==TSRC_VOLC01 )
	                {
	                    if (irandom(1))
	                    {
	                        _scale_x=-1;
	                        _x+=$1<<SHIFT;
	                    }
	                    if (irandom(1))
	                    {
	                        _scale_y=-1;
	                        _y+=$1<<SHIFT;
	                    }
	                }
	            }
            
	            _tid = tile_change_2a(T_SIZE, TILESET1,_tsrc, _x,_y, Tile_DEPTH1, 0);
	            dg_tid[#_j,_i] = _tid;
            
	            if (tile_exists(_tid)) tile_set_scale(_tid, _scale_x,_scale_y);
	            //db_Overworld_Draw_2a();
	        }
	    }
	}








}
