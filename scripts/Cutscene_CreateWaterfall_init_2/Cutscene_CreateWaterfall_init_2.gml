/// @description  Cutscene_CreateWaterfall_init_2()
function Cutscene_CreateWaterfall_init_2() {


	var _i, _a;

	scr_step = Cutscene_CreateWaterfall_update;


	depth = Waterfall_DRAW_DEPTH;


	spawn_x = $2D<<3;
	spawn_y = ((g.rm_rows-PAGE_ROWS)+$10)<<3;
	set_xlyt(id, spawn_x,spawn_y);


	if (quest_is_complete(TOWN_IDX_NAB+1))
	{
	    tile_layer_delete(Block_DEPTH); // The 3 blocks blocking water at mouth
    
	    // make waterfall visible
	    tile_layer_show(Waterfall_DEPTH);
    
	    // raise the aquifer water
	    tile_layer_shift(AquiferWater_DEPTH, 0,-AquiferWater_yoff_MAX);
    
    
	    g.pc_lock = 0;
	    instance_destroy();
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}
	else
	{
	    GameObject_create(LockedDoor_XL,LockedDoor_YT, LoDoA,3);
	    //LockedDoor = GameObject_create(LockedDoor_XL,LockedDoor_YT, LoDoA,3);
	}







}
