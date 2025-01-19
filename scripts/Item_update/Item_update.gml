/// @description  Item_update()
function Item_update() {


	switch(sub_state)
	{
	    // ---------------------------------------------------------------------
	    // ----------------------------------------------------------
	    case sub_state_IDLE:{
	    if (ITEM_BIT==ITM_FRY1) // RESCUE FAIRY
	    {
	        vspd = 0;
	        vspd_grav = 0;
        
	        if(!greeting_played 
	        &&  ocsHV4(id) )  // if all w and all h in ocs area
	        {
	            greeting_played = true; // Prevent sound from playing again
	            aud_play_sound(get_audio_theme_track(STR_Fairy+STR_Greeting));
	        }
	    }
    
    
	    // D959: JSR DE3D
	    GO_update_cs();
	    GOB_update_2();
    
    
    
	    // E51E. ITEM_TYPE: "A":Major items, "B":Heart/Magic containers, "C":Quest items, "G":Extra Life Doll
	    if (IS_HOLD_ITEM 
	    &&  cs&CS_BD1 
	    && !g.pc.ogr 
	    && !g.pc.HoldItem_timer )
	    {   // E726, E538: JSR E771
	        Item_update_1(); // E771
        
	        g.pc.HoldItem_timer  = g.pc.HoldItem_DURATION; // $70
	        g.pc.vspd = 0; // og
	        //g.pc.hspd = 0; // og
        
	        g.pc.HoldItem_inst   = id; // 
	        g.pc.HoldItem_object = object_index; // 049D 
	        //g.pc.HoldItem_ver    = ver;
	        //g.pc.HoldItem_palidx = palidx_base;
	        if (object_index==CONT_PIECE_OBJ_MP)
	        {
	            GO_sprite_init(g.dl_cont_spr_mp[|0]);
	        }
        
        
	        sub_state = sub_state_HELD;
	        exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	    }
    
    
    
    
    
    
	    if(!IS_HOLD_ITEM 
	    && !stun_timer )
	    {
	        if (cs&CS_SW1  // Note: TYPE1's react_swrd value does NOT collide w/ PC swrd
	        || (g.pc.SwordHB2_colliding==id && isVal(ITEM_TYPE,STR_KEY,STR_JAR,STR_PBAG)) )
	        {
	            Item_update_1(); // E771
	            stun_timer = STUN_DURATION1; // $30
	            aud_play_sound(get_audio_theme_track(dk_StrikeEnemy));
            
	            if (ITEM_TYPE==STR_PBAG) state = state_DROP;
	            else                     state = 0;
	            exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	        }
	    }
    
	    // D95C
	    Item_update_vertical();
	    break;}//case sub_state_IDLE:{
    
    
    
    
    
	    // ---------------------------------------------------------------------
	    // ----------------------------------------------------------
	    case sub_state_HELD:{
	    if (g.pc.HoldItem_timer)
	    {
	        var _X = g.pc.x;
	        if (ww<$10)
	        {
	            if (pc_is_cucco()) _X += ww_ * -g.pc.xScale;
	            else               _X -= ww_;
	            //if(!pc_is_cucco()) _X -= ww_;
	        }
        
	        var _Y  = g.pc.yt-hh_;
	            _Y -= sign(pc_is_cucco());
	        set_xy(id, _X,_Y);
	        /*
	        var _X  = g.pc.x-(8*g.pc.HoldItem_x_scale);
	            _X += ww_ * g.pc.HoldItem_x_scale;
	        set_xy(id, _X, g.pc.yt-hh_);
	        */
	        /*
	        set_xy(id, (g.pc.x-8)+ww_, g.pc.yt-hh_);
        
	        if (pc_is_cucco() 
	        &&  ww<$10 
	        && !g.pc.xScale )
	        {
	            set_xy(id, g.pc.x+4, g.pc.yt-hh_);
	        }
	        */
	        update_EF11();
	    }
	    else
	    {
	        g.pc.HoldItem_inst = noone;
	        state = 0;
	        exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	    }
	    break;}//case sub_state_HELD:{
    
    
    
    
    
	    // ---------------------------------------------------------------------
	    // ----------------------------------------------------------
	    case sub_state_NONI:{ // Non-Interactive. isVer(id,ItmC0,2) // Returned TROPHY in Ruto
	    update_EF11();
	    break;}//case sub_state_NONI:{
	}//switch(sub_state)







}
