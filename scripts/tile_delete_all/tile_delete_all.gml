/// @description  tile_delete_all()
function tile_delete_all() {

	// delete all tiles in the room


	var _ar_TILE_IDS = tile_get_ids();

	for(var _i=array_length_1d(_ar_TILE_IDS)-1; _i>=0; _i--) 
	{
	    tile_delete_(_ar_TILE_IDS[_i]);
	}

	_ar_TILE_IDS = 0;







}
