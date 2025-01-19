/// @description  NPC_9_udp()
function NPC_9_udp() {


	// F17E
	can_draw_self = true;


	yScale = 1;
	palidx = palidx_def;


	if(!is_undefined(sprite_datakey))
	{
	    switch(sprite_datakey)
	    {
	        // -------------------------------------------------
	        default:{
	        NPC_udp_1(NPC_get_sub_sprite_idx());
	        break;}
        
        
        
	        // -------------------------------------------------
	        case STR_Ache:{
	        GO_set_sprite(id,spr_Ache1); // idle
	        if ((behavior<<1)&$FF)
	        {   // NPC Ache will probably never animate so this is if it ever does
	            if (g.counter1&$8) GO_set_sprite(id,spr_Ache2); // flap
	        }
	        else
	        {
	            yScale = -1;
	        }
	        break;}
        
        
        
	        // -------------------------------------------------
	        case STR_Aneru:{
	        NPC_udp_1(!(g.counter1&$8));
	        break;}
        
        
        
	        // -------------------------------------------------
	        case STR_Bot:{
	        var  _COUNTER = counter;
	        if(!is_idle 
	        &&  g.counter1&$18 )
	        {     counter = $C;  }
	        else  counter = $0;
	        Bot_udp();
	        counter = _COUNTER;
	        break;}
        
        
        
	        // -------------------------------------------------
	        case STR_Girubokku:{
	        NPC_udp_Girubokku();
	        break;}
        
        
        
	        // -------------------------------------------------
	        case STR_Octorok:{
	        NPC_udp_1(!(g.counter1&$10));
	        break;}
        
        
        
	        // -------------------------------------------------
	        case STR_Moa:{
	        yScale = sign_(g.counter1&$10);
	        break;}
        
        
        
	        // -------------------------------------------------
	        case STR_Moblin:{
	        NPC_udp_1(NPC_get_sub_sprite_idx());
	        break;}
	    }
	}







}
