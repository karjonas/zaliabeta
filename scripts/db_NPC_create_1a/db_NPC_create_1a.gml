/// @description  db_NPC_create_1a(npc inst id)
function db_NPC_create_1a(argument0) {
	var _e = argument0;

	sdm("");
	var _str = "";
	// _str += "";
	_str += "SPAWN NPC, id " + string(_e.id) + ".  ";
	// _str += "SPAWN NPC, id " + string(_e.id) + ", eID $" + hex_str(_e.eID) + ".  ";
	_str += "x $" + hex_str(_e.xl) + "  y $" + hex_str(_e.yt) + ".  ";
	_str += "sprite_index '" + sprite_get_name(_e.sprite_index) + "'  ";
	sdm(_str);
	sdm("");
	sdm("---------------------------------------");

	/*
	sdm("");
	sdm("");
	sdm("SPAWN NPC");
	sdm("ogX: " + string(ogX(_e)) + " - $" + hex_str(ogX(_e) >> 8) + hex_str(ogX(_e) & $FF));
	sdm("ogY: " + string(ogY(_e)) + " - $" + hex_str(ogY(_e) >> 8) + hex_str(ogY(_e) & $FF));
	// sdm("ogX: " + string(ogX(id)) + ", ogY: " + string(ogY(id)));
	sdm("map page index: " + string(getMapPage(ogX(_e))));
	sdm("");
	sdm("_e.eID: $" + hex_str(_e.eID));
	sdm("---------------------------------------");
	sdm("");
	// sdm("----------------------------");
	*/





}
