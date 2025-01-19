/// @description  PC_update_hold_item()
function PC_update_hold_item() {


	if (g.mod_SKIP_HOLD_ITEM)
	{
	    HoldItem_timer = 0;
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}

	if(!HoldItem_timer)
	//|| !Sound.songPlaying ) // OG
	{
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}



	// MOD -------------------------
	// 934E
	if(!ogr) hspd = 0;

	if!(cs&$3) PC_update_1b(); // updateX(), update Audio.walk_water_played_count

	// Any Input reaction is bypassed in PC_update_vertical() if getItemTimer != 0
	// if damaged while hold item, will not be able to jump after hold item
	if (ogr) PC_update_vertical();

	PC_update_1d(); // update hspd_dir, PC_update_cs(), if (cs3()) hspd = 0;



	HoldItem_timer--;



	if(!is_cucco)
	{
	    if (is_undefined(   HoldItem_inst) 
	    || !instance_exists(HoldItem_inst) 
	    ||                  HoldItem_inst.ww>8 )
	    //||                  HoldItem_object==CONT_PIECE_OBJ_MP ) // bc it draws as container but thinks it's a small piece
	    {    PC_set_behavior(behavior_HOLD_ITEM1);  } // both arms raised
	    else PC_set_behavior(behavior_HOLD_ITEM3);    // left arm  raised
	}







	// 9364
	HoldItem_x_scale = HoldItem_X_SCALE;

	PC_update_hitboxes_1a(); // body, shield, sword
	PC_update_1e(); // update g.lastX, g.lastY, g.lastXScale



	/*
	if!(g.timer0&$3F){
	var _str  = " HoldItem_timer $"+hex_str(HoldItem_timer);
	    _str += ", object_get_name(HoldItem_object): "+object_get_name(HoldItem_object);
	    _str += ", g.cutscene: "+string(g.cutscene);
	    _str += ", g.CUTSCENE_GAME_END_1A: "+string(g.CUTSCENE_GAME_END_1A);
	    _str += ", g.cutscene == g.CUTSCENE_GAME_END_1A: "+string(g.cutscene == g.CUTSCENE_GAME_END_1A);
	    _str += ", HoldItem_object == ItmH0: "+string(HoldItem_object == ItmH0);
	    _str += ", behavior: $"+hex_str(behavior);
	    _str += ", behavior == BVR_ITM4: "+string(behavior == BVR_ITM4);
	    sdm(""); sdm(_str);
	}
	*/







}
