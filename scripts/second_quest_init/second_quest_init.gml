/// @description  second_quest_init()
function second_quest_init() {


	// OG: Player keeps all spells and levels. Everything else is reset.

	/*
	spawn_data_set_default();
	init_new_save_file(f.file_num,f.save_name, 2);
	//init_new_save_file(f.file_num,f.save_name, 1+(f.quest_num==1));
	*/



	/*
	with(f)
	{
	    quest_num = 2;
    
    
	    // P1 $01, P2 $02, P3 $04, P4 $08, P5 $10, P6 $20 
	    crystals        = 0; // A bit based value representing WHICH crystals have been placed
	    items           = 0;
	    skills          = 0;
	    lives           = g.STARTING_LIVES;
    
	    // kakusu: hide, conceal, be hidden
	    kakusu_count    = 0; // How many kakusu have been killed
	    ds_map_clear(dm_kakusu);
    
	    fastTravel      = 0;
    
    
	    cont_pieces_hp = CONT_PIECES_HP_DEF;
	    cont_pieces_mp = CONT_PIECES_MP_DEF;
    
	    hp = get_stat_max(STR_Heart);
	    mp = get_stat_max(STR_Magic);
    
    
	    xp        = 0;
	    xpNext    = 0;
	    xpPending = 0;
	    xpDrain   = 0;
    
    
	    ds_map_clear(dm_keys);
	    ds_map_clear(dm_openedLocks);
    
	    ds_map_clear(dm_takenPBags);
	    ds_map_clear(dm_pc_doll);
	    ds_map_clear(dm_takenBottles);
    
	    ds_map_clear(dm_challenges);
	    ds_map_clear(dm_explored);
	    ds_map_clear(dm_quests);
	    dm_quests[?STR_Error_Friend] = 0; // boolean: If spoken to Error's friend (Mido)
	    dm_quests[?STR_Mido+STR_Church+STR_Open] = 0;
    
    
	    file_save(file_num,save_name, false,false);
	}
	*/







}
