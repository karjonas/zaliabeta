/// @description  Zelda_udp()
function Zelda_udp() {


	can_draw_self = true;


	switch(sub_state)
	{
	    // --------------------------------------------------------------------
	    case SUB_STATE_IDLE:{
	    if (is_talking) GO_set_sprite(id,SPR_TALK);
	    else            GO_set_sprite(id,SPR_POSE1);
	    break;}
    
    
    
	    // --------------------------------------------------------------------
	    case SUB_STATE_SLEP:{
	    GO_set_sprite(id,SPR_SLEP);
	    xScale    =  1;
	    draw_yoff =  0;
	    break;}
    
    
    
	    // --------------------------------------------------------------------
	    case SUB_STATE_WAKE:{
	    GO_set_sprite(id,SPR_WAKE);
    
	    xScale    =  1;
	    draw_yoff =  0;
	    break;}
    
    
    
	    // --------------------------------------------------------------------
	    case SUB_STATE_TALK1:{
	    GO_set_sprite(id,SPR_TALK);
	    draw_yoff =  1; // 1 in the floor
	    break;}
    
    
    
	    // --------------------------------------------------------------------
	    case SUB_STATE_TALK2:{
	    GO_set_sprite(id,SPR_TALK);
	    break;}
    
    
    
	    // --------------------------------------------------------------------
	    case SUB_STATE_KISS:{
	    GO_set_sprite(id,SPR_TALK);
	    draw_yoff =  1; // 1 in the floor
	    break;}
	}







}
