/// @description  db_LifeDoll_data_1a()
function db_LifeDoll_data_1a() {

	// Output the contents of 'f.dm_1up_doll'


	if (ds_map_size(f.dm_1up_doll))
	{
	    var _num = 1;
	    var _val;
	    var _datakey = ds_map_find_first(f.dm_1up_doll);
	    while(!is_undefined(_datakey))
	    {
	        _val = f.dm_1up_doll[?_datakey];
	        sdm("_datakey: '"+_datakey+"', _val: "+string(_val));
	        _datakey = ds_map_find_next(f.dm_1up_doll, _datakey);
	        //_num++;
	    }
	}







}
