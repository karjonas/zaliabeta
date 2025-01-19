/// @description  WaterSparkle_get_new_rc()
function WaterSparkle_get_new_rc() {


	var _dl_RC=ds_list_create();
	ds_list_copy(_dl_RC,dl_WaterSparkle_RC2);
	ds_list_shuffle(_dl_RC);

	var _return = $00000000;
	_return |= (_dl_RC[|0]+$00) <<$00;
	_return |= (_dl_RC[|1]+$08) <<$08;
	_return |= (_dl_RC[|2]+$80) <<$10;
	_return |= (_dl_RC[|3]+$88) <<$18;

	ds_list_destroy(_dl_RC); _dl_RC=undefined;


	return _return;







}
