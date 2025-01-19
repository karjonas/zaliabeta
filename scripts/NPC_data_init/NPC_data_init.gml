/// @description  NPC_data_init()
function NPC_data_init() {


	var _GRID_HEIGHT = ds_grid_height(dg_NPC_SPR);
	var _datakey;
	var _idx=0;

	// Lady thin.           Jill
	_datakey = STR_Jill;
	ds_grid_resize(dg_NPC_SPR, _idx+1,_GRID_HEIGHT);
	dg_NPC_SPR[#_idx,$00] = spr_NPC_B1;
	dg_NPC_SPR[#_idx,$01] = spr_NPC_B2;
	dm_NPC[?STR_Sprite+STR_Datakey+hex_str(_idx)] = _datakey;
	dm_NPC[?STR_Sprite+_datakey+STR_Idx] = _idx;
	dm_NPC[?STR_Sprite+_datakey+"01"] = dg_NPC_SPR[#_idx,$00];
	dm_NPC[?STR_Sprite+_datakey+"02"] = dg_NPC_SPR[#_idx,$01];
	_idx++;
	//                                  // 
	// Lady thin w/ pot on head.    Zoey
	_datakey = STR_Zoey;
	ds_grid_resize(dg_NPC_SPR, _idx+1,_GRID_HEIGHT);
	dg_NPC_SPR[#_idx,$00] = spr_NPC_A1;
	dg_NPC_SPR[#_idx,$01] = spr_NPC_A2;
	dm_NPC[?STR_Sprite+STR_Datakey+hex_str(_idx)] = _datakey;
	dm_NPC[?STR_Sprite+_datakey+STR_Idx] = _idx;
	dm_NPC[?STR_Sprite+_datakey+"01"] = dg_NPC_SPR[#_idx,$00];
	dm_NPC[?STR_Sprite+_datakey+"02"] = dg_NPC_SPR[#_idx,$01];
	_idx++;
	//                                  // 
	// Man fat.     Jack
	_datakey = STR_Jack;
	ds_grid_resize(dg_NPC_SPR, _idx+1,_GRID_HEIGHT);
	dg_NPC_SPR[#_idx,$00] = spr_NPC_C1;
	dg_NPC_SPR[#_idx,$01] = spr_NPC_C2;
	dm_NPC[?STR_Sprite+STR_Datakey+hex_str(_idx)] = _datakey;
	dm_NPC[?STR_Sprite+_datakey+STR_Idx] = _idx;
	dm_NPC[?STR_Sprite+_datakey+"01"] = dg_NPC_SPR[#_idx,$00];
	dm_NPC[?STR_Sprite+_datakey+"02"] = dg_NPC_SPR[#_idx,$01];
	_idx++;
	//                                  // 
	// Woman old.       Barb
	_datakey = STR_Barb;
	ds_grid_resize(dg_NPC_SPR, _idx+1,_GRID_HEIGHT);
	dg_NPC_SPR[#_idx,$00] = spr_NPC_D1;
	dg_NPC_SPR[#_idx,$01] = spr_NPC_D2;
	dm_NPC[?STR_Sprite+STR_Datakey+hex_str(_idx)] = _datakey;
	dm_NPC[?STR_Sprite+_datakey+STR_Idx] = _idx;
	dm_NPC[?STR_Sprite+_datakey+"01"] = dg_NPC_SPR[#_idx,$00];
	dm_NPC[?STR_Sprite+_datakey+"02"] = dg_NPC_SPR[#_idx,$01];
	_idx++;
	//                                  // 
	//                                  // 
	//                                  // 
	// Man thin.        Bill
	_datakey = STR_Bill;
	ds_grid_resize(dg_NPC_SPR, _idx+1,_GRID_HEIGHT);
	dg_NPC_SPR[#_idx,$00] = spr_NPC_E1;
	dg_NPC_SPR[#_idx,$01] = spr_NPC_E2;
	dm_NPC[?STR_Sprite+STR_Datakey+hex_str(_idx)] = _datakey;
	dm_NPC[?STR_Sprite+_datakey+STR_Idx] = _idx;
	dm_NPC[?STR_Sprite+_datakey+"01"] = dg_NPC_SPR[#_idx,$00];
	dm_NPC[?STR_Sprite+_datakey+"02"] = dg_NPC_SPR[#_idx,$01];
	_idx++;
	//                                  // 
	// Child.           Joey
	_datakey = STR_Joey;
	ds_grid_resize(dg_NPC_SPR, _idx+1,_GRID_HEIGHT);
	dg_NPC_SPR[#_idx,$00] = spr_NPC_F1;
	dg_NPC_SPR[#_idx,$01] = spr_NPC_F2;
	dm_NPC[?STR_Sprite+STR_Datakey+hex_str(_idx)] = _datakey;
	dm_NPC[?STR_Sprite+_datakey+STR_Idx] = _idx;
	dm_NPC[?STR_Sprite+_datakey+"01"] = dg_NPC_SPR[#_idx,$00];
	dm_NPC[?STR_Sprite+_datakey+"02"] = dg_NPC_SPR[#_idx,$01];
	_idx++;
	//                                  // 
	// Lady fat.        Mary
	_datakey = STR_Mary;
	ds_grid_resize(dg_NPC_SPR, _idx+1,_GRID_HEIGHT);
	dg_NPC_SPR[#_idx,$00] = spr_NPC_G1;
	dg_NPC_SPR[#_idx,$01] = spr_NPC_G2;
	dm_NPC[?STR_Sprite+STR_Datakey+hex_str(_idx)] = _datakey;
	dm_NPC[?STR_Sprite+_datakey+STR_Idx] = _idx;
	dm_NPC[?STR_Sprite+_datakey+"01"] = dg_NPC_SPR[#_idx,$00];
	dm_NPC[?STR_Sprite+_datakey+"02"] = dg_NPC_SPR[#_idx,$01];
	_idx++;
	//                                  // 
	// Riverman, Knight 1.  Finn
	_datakey = STR_Finn;
	ds_grid_resize(dg_NPC_SPR, _idx+1,_GRID_HEIGHT);
	dg_NPC_SPR[#_idx,$00] = spr_NPC_H1;
	dg_NPC_SPR[#_idx,$01] = spr_NPC_H1;
	dm_NPC[?STR_Sprite+STR_Datakey+hex_str(_idx)] = _datakey;
	dm_NPC[?STR_Sprite+_datakey+STR_Idx] = _idx;
	dm_NPC[?STR_Sprite+_datakey+"01"] = dg_NPC_SPR[#_idx,$00];
	dm_NPC[?STR_Sprite+_datakey+"02"] = dg_NPC_SPR[#_idx,$01];
	_idx++;
	//                                  // 
	//                                  // 
	//                                  // 
	// Knight 2.        Tony
	_datakey = STR_Tony;
	ds_grid_resize(dg_NPC_SPR, _idx+1,_GRID_HEIGHT);
	dg_NPC_SPR[#_idx,$00] = spr_NPC_I1;
	dg_NPC_SPR[#_idx,$01] = spr_NPC_I1;
	dm_NPC[?STR_Sprite+STR_Datakey+hex_str(_idx)] = _datakey;
	dm_NPC[?STR_Sprite+_datakey+STR_Idx] = _idx;
	dm_NPC[?STR_Sprite+_datakey+"01"] = dg_NPC_SPR[#_idx,$00];
	dm_NPC[?STR_Sprite+_datakey+"02"] = dg_NPC_SPR[#_idx,$01];
	_idx++;
	//                                  // 
	// Spell Giver.     Adam
	_datakey = STR_Adam;
	ds_grid_resize(dg_NPC_SPR, _idx+1,_GRID_HEIGHT);
	dg_NPC_SPR[#_idx,$00] = spr_NPC_J1;
	dg_NPC_SPR[#_idx,$01] = spr_NPC_J2;
	//dg_NPC_SPR[#_idx,$02] = spr_NPC_J3;
	dm_NPC[?STR_Sprite+STR_Datakey+hex_str(_idx)] = _datakey;
	dm_NPC[?STR_Sprite+_datakey+STR_Idx] = _idx;
	dm_NPC[?STR_Sprite+_datakey+"01"] = dg_NPC_SPR[#_idx,$00];
	dm_NPC[?STR_Sprite+_datakey+"02"] = dg_NPC_SPR[#_idx,$01];
	_idx++;
	//                                  // 
	//                                  // 
	//                                  // 
	// Riverman(FDS).     Cole
	_datakey = STR_Cole;
	ds_grid_resize(dg_NPC_SPR, _idx+1,_GRID_HEIGHT);
	dg_NPC_SPR[#_idx,$00] = spr_Riverman_FDS; // action
	dg_NPC_SPR[#_idx,$01] = spr_Riverman_FDS; // idle
	dm_NPC[?STR_Sprite+STR_Datakey+hex_str(_idx)] = _datakey;
	dm_NPC[?STR_Sprite+_datakey+STR_Idx] = _idx;
	dm_NPC[?STR_Sprite+_datakey+"01"] = dg_NPC_SPR[#_idx,$00];
	dm_NPC[?STR_Sprite+_datakey+"02"] = dg_NPC_SPR[#_idx,$01];
	_idx++;
	//                                  // 
	//                                  // 
	//                                  // 
	// Moblin NPC
	_datakey = STR_Moblin;
	ds_grid_resize(dg_NPC_SPR, _idx+1,_GRID_HEIGHT);
	dg_NPC_SPR[#_idx,$00] = spr_NPC_Moblin_3a;
	dg_NPC_SPR[#_idx,$01] = spr_NPC_Moblin_3b;
	dm_NPC[?STR_Sprite+STR_Datakey+hex_str(_idx)] = _datakey;
	dm_NPC[?STR_Sprite+_datakey+STR_Idx] = _idx;
	dm_NPC[?STR_Sprite+_datakey+"01"] = dg_NPC_SPR[#_idx,$00];
	dm_NPC[?STR_Sprite+_datakey+"02"] = dg_NPC_SPR[#_idx,$01];
	_idx++;
	//                                  // 
	// Goriya NPC
	_datakey = STR_Goriya;
	ds_grid_resize(dg_NPC_SPR, _idx+1,_GRID_HEIGHT);
	dg_NPC_SPR[#_idx,$00] = spr_Goriya_A1;
	dg_NPC_SPR[#_idx,$01] = spr_NPC_Goriya_1b;
	dm_NPC[?STR_Sprite+STR_Datakey+hex_str(_idx)] = _datakey;
	dm_NPC[?STR_Sprite+_datakey+STR_Idx] = _idx;
	dm_NPC[?STR_Sprite+_datakey+"01"] = dg_NPC_SPR[#_idx,$00];
	dm_NPC[?STR_Sprite+_datakey+"02"] = dg_NPC_SPR[#_idx,$01];
	_idx++;
	//                                  // 
	// Geru NPC
	_datakey = STR_Geru;
	ds_grid_resize(dg_NPC_SPR, _idx+1,_GRID_HEIGHT);
	dg_NPC_SPR[#_idx,$00] = spr_Geru_1B;
	dg_NPC_SPR[#_idx,$01] = spr_Geru_1A;
	dm_NPC[?STR_Sprite+STR_Datakey+hex_str(_idx)] = _datakey;
	dm_NPC[?STR_Sprite+_datakey+STR_Idx] = _idx;
	dm_NPC[?STR_Sprite+_datakey+"01"] = dg_NPC_SPR[#_idx,$00];
	dm_NPC[?STR_Sprite+_datakey+"02"] = dg_NPC_SPR[#_idx,$01];
	_idx++;
	//                                  // 
	// Stalfos NPC
	_datakey = STR_Stalfos;
	ds_grid_resize(dg_NPC_SPR, _idx+1,_GRID_HEIGHT);
	dg_NPC_SPR[#_idx,$00] = spr_Stalfos_NPC_1a_1;
	dg_NPC_SPR[#_idx,$01] = spr_Stalfos_NPC_1b_1; // spr_Stalfos_NPC_1b: Legs open
	dm_NPC[?STR_Sprite+STR_Datakey+hex_str(_idx)] = _datakey;
	dm_NPC[?STR_Sprite+_datakey+STR_Idx] = _idx;
	dm_NPC[?STR_Sprite+_datakey+"01"] = dg_NPC_SPR[#_idx,$00];
	dm_NPC[?STR_Sprite+_datakey+"02"] = dg_NPC_SPR[#_idx,$01];
	_idx++;
	//                                  // 
	// Daira NPC
	_datakey = STR_Daira;
	ds_grid_resize(dg_NPC_SPR, _idx+1,_GRID_HEIGHT);
	dg_NPC_SPR[#_idx,$00] = spr_NPC_Daira_1b;
	dg_NPC_SPR[#_idx,$01] = spr_NPC_Daira_1a;
	dm_NPC[?STR_Sprite+STR_Datakey+hex_str(_idx)] = _datakey;
	dm_NPC[?STR_Sprite+_datakey+STR_Idx] = _idx;
	dm_NPC[?STR_Sprite+_datakey+"01"] = dg_NPC_SPR[#_idx,$00];
	dm_NPC[?STR_Sprite+_datakey+"02"] = dg_NPC_SPR[#_idx,$01];
	_idx++;
	//                                  // 
	// Fairy Monster NPC.   Zant
	_datakey = STR_Zant;
	ds_grid_resize(dg_NPC_SPR, _idx+1,_GRID_HEIGHT);
	dg_NPC_SPR[#_idx,$00] = spr_Fairy_Monster_1a;
	dg_NPC_SPR[#_idx,$01] = spr_Fairy_Monster_2a;
	dm_NPC[?STR_Sprite+STR_Datakey+hex_str(_idx)] = _datakey;
	dm_NPC[?STR_Sprite+_datakey+STR_Idx] = _idx;
	dm_NPC[?STR_Sprite+_datakey+"01"] = dg_NPC_SPR[#_idx,$00];
	dm_NPC[?STR_Sprite+_datakey+"02"] = dg_NPC_SPR[#_idx,$01];
	_idx++;
	//                                  // 
	// Octorok NPC
	_datakey = STR_Octorok;
	ds_grid_resize(dg_NPC_SPR, _idx+1,_GRID_HEIGHT);
	dg_NPC_SPR[#_idx,$00] = spr_Octorok_Idle;
	dg_NPC_SPR[#_idx,$01] = spr_Octorok_Mouth;
	dm_NPC[?STR_Sprite+STR_Datakey+hex_str(_idx)] = _datakey;
	dm_NPC[?STR_Sprite+_datakey+STR_Idx] = _idx;
	dm_NPC[?STR_Sprite+_datakey+"01"] = dg_NPC_SPR[#_idx,$00];
	dm_NPC[?STR_Sprite+_datakey+"02"] = dg_NPC_SPR[#_idx,$01];
	_idx++;
	//                                  // 
	// Aneru NPC
	_datakey = STR_Aneru;
	ds_grid_resize(dg_NPC_SPR, _idx+1,_GRID_HEIGHT);
	dg_NPC_SPR[#_idx,$00] = spr_Aneru1;
	dg_NPC_SPR[#_idx,$01] = spr_Aneru2; // spr_Aneru2: Mouth open
	dm_NPC[?STR_Sprite+STR_Datakey+hex_str(_idx)] = _datakey;
	dm_NPC[?STR_Sprite+_datakey+STR_Idx] = _idx;
	dm_NPC[?STR_Sprite+_datakey+"01"] = dg_NPC_SPR[#_idx,$00];
	dm_NPC[?STR_Sprite+_datakey+"02"] = dg_NPC_SPR[#_idx,$01];
	_idx++;
	//                                  // 
	// Megmat NPC
	_datakey = STR_Megmat;
	ds_grid_resize(dg_NPC_SPR, _idx+1,_GRID_HEIGHT);
	dg_NPC_SPR[#_idx,$00] = spr_Megmat1;
	dg_NPC_SPR[#_idx,$01] = spr_Megmat2;
	dm_NPC[?STR_Sprite+STR_Datakey+hex_str(_idx)] = _datakey;
	dm_NPC[?STR_Sprite+_datakey+STR_Idx] = _idx;
	dm_NPC[?STR_Sprite+_datakey+"01"] = dg_NPC_SPR[#_idx,$00];
	dm_NPC[?STR_Sprite+_datakey+"02"] = dg_NPC_SPR[#_idx,$01];
	_idx++;
	//                                  // 
	// Girubokku NPC
	_datakey = STR_Girubokku;
	ds_grid_resize(dg_NPC_SPR, _idx+1,_GRID_HEIGHT);
	dg_NPC_SPR[#_idx,$00] = spr_Girubokku2; // 
	dg_NPC_SPR[#_idx,$01] = spr_Girubokku1; // spr_Girubokku1: eye open
	dm_NPC[?STR_Sprite+STR_Datakey+hex_str(_idx)] = _datakey;
	dm_NPC[?STR_Sprite+_datakey+STR_Idx] = _idx;
	dm_NPC[?STR_Sprite+_datakey+"01"] = dg_NPC_SPR[#_idx,$00];
	dm_NPC[?STR_Sprite+_datakey+"02"] = dg_NPC_SPR[#_idx,$01];
	_idx++;
	//                                  // 
	// Moa NPC
	_datakey = STR_Moa;
	ds_grid_resize(dg_NPC_SPR, _idx+1,_GRID_HEIGHT);
	dg_NPC_SPR[#_idx,$00] = spr_Moa_3a;
	dg_NPC_SPR[#_idx,$01] = spr_Moa_3a;
	dm_NPC[?STR_Sprite+STR_Datakey+hex_str(_idx)] = _datakey;
	dm_NPC[?STR_Sprite+_datakey+STR_Idx] = _idx;
	dm_NPC[?STR_Sprite+_datakey+"01"] = dg_NPC_SPR[#_idx,$00];
	dm_NPC[?STR_Sprite+_datakey+"02"] = dg_NPC_SPR[#_idx,$01];
	_idx++;
	//                                  // 
	// Bot NPC
	_datakey = STR_Bot;
	ds_grid_resize(dg_NPC_SPR, _idx+1,_GRID_HEIGHT);
	dg_NPC_SPR[#_idx,$00] = spr_Bot_Norm;
	dg_NPC_SPR[#_idx,$01] = spr_Bot_Squish;
	dm_NPC[?STR_Sprite+STR_Datakey+hex_str(_idx)] = _datakey;
	dm_NPC[?STR_Sprite+_datakey+STR_Idx] = _idx;
	dm_NPC[?STR_Sprite+_datakey+"01"] = dg_NPC_SPR[#_idx,$00];
	dm_NPC[?STR_Sprite+_datakey+"02"] = dg_NPC_SPR[#_idx,$01];
	_idx++;
	//                                  // 
	// Acheman NPC
	_datakey = STR_Acheman;
	ds_grid_resize(dg_NPC_SPR, _idx+1,_GRID_HEIGHT);
	dg_NPC_SPR[#_idx,$00] = spr_Acheman1;
	dg_NPC_SPR[#_idx,$01] = spr_Acheman1;
	dm_NPC[?STR_Sprite+STR_Datakey+hex_str(_idx)] = _datakey;
	dm_NPC[?STR_Sprite+_datakey+STR_Idx] = _idx;
	dm_NPC[?STR_Sprite+_datakey+"01"] = dg_NPC_SPR[#_idx,$00];
	dm_NPC[?STR_Sprite+_datakey+"02"] = dg_NPC_SPR[#_idx,$01];
	_idx++;
	//                                  // 
	// Ache NPC
	_datakey = STR_Ache;
	ds_grid_resize(dg_NPC_SPR, _idx+1,_GRID_HEIGHT);
	dg_NPC_SPR[#_idx,$00] = spr_Ache1;
	dg_NPC_SPR[#_idx,$01] = spr_Ache2; // spr_Ache2: Wings open
	dm_NPC[?STR_Sprite+STR_Datakey+hex_str(_idx)] = _datakey;
	dm_NPC[?STR_Sprite+_datakey+STR_Idx] = _idx;
	dm_NPC[?STR_Sprite+_datakey+"01"] = dg_NPC_SPR[#_idx,$00];
	dm_NPC[?STR_Sprite+_datakey+"02"] = dg_NPC_SPR[#_idx,$01];
	_idx++;
	//                                  // 
	// Zora NPC
	_datakey = STR_Zora;
	ds_grid_resize(dg_NPC_SPR, _idx+1,_GRID_HEIGHT);
	dg_NPC_SPR[#_idx,$00] = spr_Zora_stand;
	dg_NPC_SPR[#_idx,$01] = spr_Zora_stand;
	dm_NPC[?STR_Sprite+STR_Datakey+hex_str(_idx)] = _datakey;
	dm_NPC[?STR_Sprite+_datakey+STR_Idx] = _idx;
	dm_NPC[?STR_Sprite+_datakey+"01"] = dg_NPC_SPR[#_idx,$00];
	dm_NPC[?STR_Sprite+_datakey+"02"] = dg_NPC_SPR[#_idx,$01];
	_idx++;
	//                                  // 
	// Castlevania2 NPC 1
	_datakey = STR_Castlevania+"02"+STR_NPC+"01";
	ds_grid_resize(dg_NPC_SPR, _idx+1,_GRID_HEIGHT);
	dg_NPC_SPR[#_idx,$00] = spr_Castlevania2NPC01_1;
	dg_NPC_SPR[#_idx,$01] = spr_Castlevania2NPC01_2;
	dm_NPC[?STR_Sprite+STR_Datakey+hex_str(_idx)] = _datakey;
	dm_NPC[?STR_Sprite+_datakey+STR_Idx] = _idx;
	dm_NPC[?STR_Sprite+_datakey+"01"] = dg_NPC_SPR[#_idx,$00];
	dm_NPC[?STR_Sprite+_datakey+"02"] = dg_NPC_SPR[#_idx,$01];
	_idx++;
	//                                  // 
	// Castlevania2 NPC 2
	_datakey = STR_Castlevania+"02"+STR_NPC+"02";
	ds_grid_resize(dg_NPC_SPR, _idx+1,_GRID_HEIGHT);
	dg_NPC_SPR[#_idx,$00] = spr_Castlevania2NPC02_1;
	dg_NPC_SPR[#_idx,$01] = spr_Castlevania2NPC02_2;
	dm_NPC[?STR_Sprite+STR_Datakey+hex_str(_idx)] = _datakey;
	dm_NPC[?STR_Sprite+_datakey+STR_Idx] = _idx;
	dm_NPC[?STR_Sprite+_datakey+"01"] = dg_NPC_SPR[#_idx,$00];
	dm_NPC[?STR_Sprite+_datakey+"02"] = dg_NPC_SPR[#_idx,$01];
	_idx++;
	//                                  // 
	// Castlevania2 NPC 3
	_datakey = STR_Castlevania+"02"+STR_NPC+"03";
	ds_grid_resize(dg_NPC_SPR, _idx+1,_GRID_HEIGHT);
	dg_NPC_SPR[#_idx,$00] = spr_Castlevania2NPC03_1;
	dg_NPC_SPR[#_idx,$01] = spr_Castlevania2NPC03_2;
	dm_NPC[?STR_Sprite+STR_Datakey+hex_str(_idx)] = _datakey;
	dm_NPC[?STR_Sprite+_datakey+STR_Idx] = _idx;
	dm_NPC[?STR_Sprite+_datakey+"01"] = dg_NPC_SPR[#_idx,$00];
	dm_NPC[?STR_Sprite+_datakey+"02"] = dg_NPC_SPR[#_idx,$01];
	_idx++;
	//                                  // 
	// Castlevania2 NPC 4
	_datakey = STR_Castlevania+"02"+STR_NPC+"04";
	ds_grid_resize(dg_NPC_SPR, _idx+1,_GRID_HEIGHT);
	dg_NPC_SPR[#_idx,$00] = spr_Castlevania2NPC04_1;
	dg_NPC_SPR[#_idx,$01] = spr_Castlevania2NPC04_2;
	dm_NPC[?STR_Sprite+STR_Datakey+hex_str(_idx)] = _datakey;
	dm_NPC[?STR_Sprite+_datakey+STR_Idx] = _idx;
	dm_NPC[?STR_Sprite+_datakey+"01"] = dg_NPC_SPR[#_idx,$00];
	dm_NPC[?STR_Sprite+_datakey+"02"] = dg_NPC_SPR[#_idx,$01];
	_idx++;
	//                                  // 
	// Castlevania2 Enemy 1
	_datakey = STR_Castlevania+"02"+STR_Enemy+"01";
	ds_grid_resize(dg_NPC_SPR, _idx+1,_GRID_HEIGHT);
	dg_NPC_SPR[#_idx,$00] = spr_Castlevania2Enemy01_1;
	dg_NPC_SPR[#_idx,$01] = spr_Castlevania2Enemy01_2;
	dm_NPC[?STR_Sprite+STR_Datakey+hex_str(_idx)] = _datakey;
	dm_NPC[?STR_Sprite+_datakey+STR_Idx] = _idx;
	dm_NPC[?STR_Sprite+_datakey+"01"] = dg_NPC_SPR[#_idx,$00];
	dm_NPC[?STR_Sprite+_datakey+"02"] = dg_NPC_SPR[#_idx,$01];
	_idx++;
	//                                  // 
	// Castlevania2 Enemy 2
	_datakey = STR_Castlevania+"02"+STR_Enemy+"02";
	ds_grid_resize(dg_NPC_SPR, _idx+1,_GRID_HEIGHT);
	dg_NPC_SPR[#_idx,$00] = spr_Castlevania2Enemy02_1;
	dg_NPC_SPR[#_idx,$01] = spr_Castlevania2Enemy02_2;
	dm_NPC[?STR_Sprite+STR_Datakey+hex_str(_idx)] = _datakey;
	dm_NPC[?STR_Sprite+_datakey+STR_Idx] = _idx;
	dm_NPC[?STR_Sprite+_datakey+"01"] = dg_NPC_SPR[#_idx,$00];
	dm_NPC[?STR_Sprite+_datakey+"02"] = dg_NPC_SPR[#_idx,$01];
	_idx++;
	//                                  // 
	// Castlevania2 Enemy 3
	_datakey = STR_Castlevania+"02"+STR_Enemy+"03";
	ds_grid_resize(dg_NPC_SPR, _idx+1,_GRID_HEIGHT);
	dg_NPC_SPR[#_idx,$00] = spr_Castlevania2Enemy03_1;
	dg_NPC_SPR[#_idx,$01] = spr_Castlevania2Enemy03_2;
	dm_NPC[?STR_Sprite+STR_Datakey+hex_str(_idx)] = _datakey;
	dm_NPC[?STR_Sprite+_datakey+STR_Idx] = _idx;
	dm_NPC[?STR_Sprite+_datakey+"01"] = dg_NPC_SPR[#_idx,$00];
	dm_NPC[?STR_Sprite+_datakey+"02"] = dg_NPC_SPR[#_idx,$01];
	_idx++;
	//                                  // 
	// Castlevania2 Enemy 4
	_datakey = STR_Castlevania+"02"+STR_Enemy+"04";
	ds_grid_resize(dg_NPC_SPR, _idx+1,_GRID_HEIGHT);
	dg_NPC_SPR[#_idx,$00] = spr_Castlevania2Enemy04_1;
	dg_NPC_SPR[#_idx,$01] = spr_Castlevania2Enemy04_2;
	dm_NPC[?STR_Sprite+STR_Datakey+hex_str(_idx)] = _datakey;
	dm_NPC[?STR_Sprite+_datakey+STR_Idx] = _idx;
	dm_NPC[?STR_Sprite+_datakey+"01"] = dg_NPC_SPR[#_idx,$00];
	dm_NPC[?STR_Sprite+_datakey+"02"] = dg_NPC_SPR[#_idx,$01];
	_idx++;
	//                                  // 
	//                                  // 
	//                                  // 
	//                                  // 







}
