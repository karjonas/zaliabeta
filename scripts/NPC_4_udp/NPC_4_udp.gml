/// @description  NPC_4_udp()
function NPC_4_udp() {

	// NPC_4 Heal/Save, 
	// NPC_5 Quest, 


	// 9AE8
	can_draw_self = true;
	palidx = palidx_def;



	if(!is_undefined(sprite_datakey))
	{
	    switch(sprite_datakey)
	    {
	        // -------------------------------------------------
	        default:{
	        var _SUB = NPC_get_sub_sprite_idx();
	        if(!_SUB 
	        && !is_talking )
	        {   // Use walk spr if waiting for door to finish opening to go inside
	            _SUB = counter && counter<$20;
	        }
        
	        NPC_udp_1(_SUB);
	        break;}
        
        
	        // -------------------------------------------------
	        case STR_Girubokku:{
	        NPC_udp_Girubokku();
	        break;}
	    }
	}







}
