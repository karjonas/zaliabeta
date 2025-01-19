/// @description  NPC_7_udp()
function NPC_7_udp() {

	// Wise man


	// 9AC8
	can_draw_self = true;

	palidx = palidx_def;

	draw_yoff = 0;
	if (sprite_datakey==STR_Zant)
	{
	    xScale = -1;
	}


	if (CastSpellSprite_timer)
	{   // 9ACD
	    CastSpellSprite_timer--;
	    is_talking = false;
    
	    if (sprite_datakey==STR_Zant)
	    {
	        GO_set_sprite(id,spr_Fairy_Monster_2b); // 
	    }
	    else
	    {
	        drawY -= 4;
	        GO_set_sprite(id,spr_NPC_J3); // 20
	    }
	}
	else if(!is_undefined(sprite_datakey))
	{   // 9AE8
	    var _SUB = !(g.counter1&$10);
	        _SUB = hex_str(_SUB+1); // "01","02"
	    var _SPR = val(g.dm_NPC[?STR_Sprite+sprite_datakey+_SUB], sprite);
	    GO_set_sprite(id, _SPR);
    
	    if (sprite_datakey==STR_Zant) draw_yoff = get_fairy_yoff(3);
	}







}
