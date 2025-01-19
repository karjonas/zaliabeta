/// @description  get_random_lorem_words(word count)
function get_random_lorem_words(argument0) {


	var _COUNT = argument0;

	var _i, _idx;
	var _str = "";

	var _dl_lorem = ds_list_create();
	ds_list_copy(_dl_lorem, g.dl_LOREM);

	ds_list_shuffle(_dl_lorem);
	for(_i=0; _i<_COUNT; _i++)
	{
	    _str += _dl_lorem[|_i]+",";
	}

	ds_list_destroy(_dl_lorem); _dl_lorem=undefined;


	return _str;







}
