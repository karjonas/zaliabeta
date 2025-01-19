/// @description  tile_hidden_update_1a(tile id, hide value)
function tile_hidden_update_1a(argument0, argument1) {


	if (argument0<0) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


	var _TILE_ID  = argument0;
	var _HIDE_NEW = argument1;

	var _DATAKEY = string(_TILE_ID);

	var _IDX = ds_list_find_index(g.dl_hidden_tiles, _TILE_ID);

	if(!tile_exists(_TILE_ID)  // tid doesn't exist
	||  _HIDE_NEW==0 )     // give it NO hidden value
	{
	    if(!is_undefined( g.dm_hidden_tiles[?_DATAKEY]))
	    {   ds_map_delete(g.dm_hidden_tiles, _DATAKEY);  }
    
	    if (_IDX!=-1) ds_list_delete(g.dl_hidden_tiles, _IDX);
    
	    if (tile_exists(_TILE_ID)) tile_set_visible(_TILE_ID, true);
	}
	else if (_HIDE_NEW)
	{
	    g.dm_hidden_tiles[?_DATAKEY] = _HIDE_NEW;
	    if (_IDX==-1) ds_list_add(g.dl_hidden_tiles, _TILE_ID);
	    tile_hidden_update_1b(_TILE_ID, _HIDE_NEW);
	}







}
