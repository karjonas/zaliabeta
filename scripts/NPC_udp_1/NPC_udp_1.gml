/// @description  NPC_udp_1(sub sprite idx)
function NPC_udp_1() {


	if(!is_undefined(sprite_datakey))
	{
	    var _SUB = hex_str(argument[0]+1);
	    var _SPRITE = val(g.dm_NPC[?STR_Sprite+sprite_datakey+_SUB], sprite);
	    GO_set_sprite(id,_SPRITE);
	}







}
