/// @description  tile_hidden_update_2a()
function tile_hidden_update_2a() {

	// for all of the room's tiles with a hide value


	var _i, _tile_id;

	var          _dl_hidden_COPY = ds_list_create();
	ds_list_copy(_dl_hidden_COPY, g.dl_hidden_tiles);

	var          _COUNT = ds_list_size(_dl_hidden_COPY);
	for(_i=0; _i<_COUNT; _i++)
	{
	    _tile_id = _dl_hidden_COPY[|_i];
	    if (tile_exists(_tile_id)) tile_hidden_update_1a(_tile_id, val(g.dm_hidden_tiles[?string(_tile_id)]));
	    else                       tile_hidden_update_1a(_tile_id, 0);
	}


	ds_list_destroy(_dl_hidden_COPY); _dl_hidden_COPY=undefined;







}
