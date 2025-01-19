/// @description  Item_udp()
function Item_udp() {


	can_draw_self = true;



	// ------------------------------------------------------------------------------
	if (IS_HOLD_ITEM 
	||  object_index==ItmD0 ) // ItmD0: Key
	{
	    if (sub_state==sub_state_HELD)
	    {    draw_yoff =  0;  }
	    else draw_yoff = -1;
	}



	// ------------------------------------------------------------------------------
	switch(object_index)
	{
	    // --------------------------------------------------------
	    // ------------------------------------------------
	    case CONT_PIECE_OBJ_HP:{
	    if (sub_state==sub_state_HELD)
	    {
	        var _IDX = max(cont_piece_cnt_hp()-1, 0);
	            _IDX = _IDX mod f.CONT_PIECE_PER_HP;
	            _IDX++;
	            _IDX-=can_blink_container_piece();
	        GO_set_sprite(id,g.dl_cont_spr_hp[|_IDX]);
	    }
	    else
	    {   // 0: SMALL, 1: BIG
	        // Small for $28-2F,$38-3F every $40
	        var _IDX = $28;
	            _IDX = g.counter0&_IDX == _IDX;
	        GO_set_sprite(id,g.dl_HeartPiece_SPR[|sign(_IDX)]);
	        //GO_set_sprite(id,g.dl_HeartPiece_SPR[|!sign(_IDX)]);
	    }
	    break;}
    
    
    
    
    
	    // --------------------------------------------------------
	    // ------------------------------------------------
	    case CONT_PIECE_OBJ_MP:{
	    if (sub_state==sub_state_HELD)
	    {
	        var _IDX = max(cont_piece_cnt_mp()-1, 0);
	            _IDX = _IDX mod f.CONT_PIECE_PER_MP;
	            _IDX++;
	            _IDX-=can_blink_container_piece();
	        GO_set_sprite(id,g.dl_cont_spr_mp[|_IDX]);
	    }
	    else
	    {
	        GO_set_sprite(id,g.SPR_CONT_PIECE_MP);
	    }
	    break;}
    
    
    
    
    
	    // --------------------------------------------------------
	    // ------------------------------------------------
	    case ItmA7:{ // ItmK6: ITM_SWRD
	    depth = depth_def;
	    draw_yoff =  0;
	    yScale    =  1;
    
	    if (sub_state!=sub_state_HELD)
	    {
	        draw_yoff =  1;
	        yScale    = -1;
	        if(!is_undefined(dk_spawn))
	        {
	            var _OBJ = val(g.dm_spawn_DEFAULT[?dk_spawn+STR_obj_idx]);
	            if (_OBJ 
	            &&  _OBJ==object_index )
	            {   // if it's in its vanilla location
	                depth = DEPTH_BG6+1; // DEPTH_BG6+1: Behind bg but in front of bg wall
	                draw_yoff = -4;
	            }
	        }
	    }
	    break;}
	}









	// --------------------------------------------------------
	if (object_index==ItmA8) // RESCUE FAIRY
	{
	    if (g.counter1&$4) GO_set_sprite(id,g.dl_Fairy_SPRITES[|0]); // wings up
	    else               GO_set_sprite(id,g.dl_Fairy_SPRITES[|1]); // wings down
	    draw_yoff = get_fairy_yoff(3);
	}






	// --------------------------------------------------------
	if (g.mod_MedicinePlantItem 
	&&  ITEM_BIT==ITM_MEDI )
	{
	    GO_set_sprite(id,g.FlowerItemAnim_SPR1);
	}







}
