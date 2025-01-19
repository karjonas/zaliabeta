/// @description  Snaraa_udp()
function Snaraa_udp() {


	can_draw_self = true;


	if (sub_state==SUB_STATE_IDLE 
	||  sub_state==SUB_STATE_AGRO )
	{    palidx = pal_bgr;  }
	else palidx = palidx_def;


	    draw_yoff = 0;
	if (sub_state==SUB_STATE_AGRO 
	&& !(timer&$3) )
	{
	    draw_yoff = sign_(timer&$8);
	}


	switch(sub_state)
	{   // ===============================================================================
	    case SUB_STATE_IDLE:{ // ----------------------------------------------------
	    GO_set_sprite(id,SPR_1);
	    palidx = pal_bgr;
	    break;}
    
    
	    // ===============================================================================
	    case SUB_STATE_AGRO:{ // ----------------------------------------------------
	    var         _CUE  = AGRO_DUR>>2; // less than 25% of AGRO time left
	                _CUE += $08;
	    GO_set_sprite(id,SPR_1);
    
	    if (timer < _CUE 
	    &&  timer&$2 )
	    {    palidx = palidx_def;  }
	    else palidx = pal_bgr;
	    break;}
    
    
	    // ===============================================================================
	    case SUB_STATE_ATK1:{ // ----------------------------------------------------
	    if (timer)
	    {    GO_set_sprite(id,SPR_2);  }
	    else GO_set_sprite(id,SPR_3);
	    break;}
    
    
	    // ===============================================================================
	    case SUB_STATE_LNDG:{ // ----------------------------------------------------
	    GO_set_sprite(id,SPR_3);
	    break;}
    
    
	    // ===============================================================================
	    case SUB_STATE_SETL:{ // ----------------------------------------------------
	    var         _CUE = $08;
	    if (timer > SETTLE_DUR-$10)
	    // if (timer > _CUE-2)
	    {    GO_set_sprite(id,SPR_3);  }
	    else GO_set_sprite(id,SPR_2);
    
	    if (timer > _CUE 
	    ||  timer&$2 )
	    {    palidx = palidx_def;  }
	    else palidx = pal_bgr;
	    break;}
	}







}
