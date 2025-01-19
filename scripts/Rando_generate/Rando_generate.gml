/// @description  Rando_generate(quest num, seed, encoded rando settings)
function Rando_generate() {


	var                      _arg=0;
	QUEST_NUM     = argument[_arg++];
	Rando_SEED    = argument[_arg++];
	var _SETTINGS = argument[_arg++]; // encoded rando settings



	var _i,_j,_k,_m, _a, _idx,_idx1,_idx2, _num, _dir,_dir1,_dir2;
	var _count,_count1,_count2,_count3;
	var _val,_val0,_val1,_val2,_val3,_val4,_val5;
	var _min,_max, _size, _case, _total;
	var _default;
	var _datakey,_datakey1,_datakey2, _dk,_dk1,_dk2,_dk3,_dk4, _spawn_datakey, _item_datakey;
	var _dk_music, _dk_music1, _dk_music2;
	var _loc_num, _spell_name, _description;
	var _town_name,_town_name1,_town_name2,_town_name3,_town_name4;
	var _dungeon_name,_dungeon_name1,_dungeon_name2,_dungeon_name3,_dungeon_name4;
	var _dungeon_num, _dungeon_num1,_dungeon_num2;
	var _area,_area1,_area2, _rm_name,_rm_name1,_rm_name2, _scene_name,_scene_name1,_scene_name2;
	var _exit_name, _exit_name1,_exit_name2,_exit_name3,_exit_name4,_exit_name5,_exit_name6;
	var _exit_name1a,_exit_name1b,_exit_name1c,_exit_name1d,_exit_name2a,_exit_name2b,_exit_name2c,_exit_name2d;
	var _owrc,_owrc1,_owrc2, _pcrc;
	var _version;
	var _objver1,_objver2;
	var _file_name,_file_name1,_file_name2;
	var _chance_a,_chance_b;
	var _qual;
	var _color, _palette;
	var _item_type,_item_type2, _item_id,_item_id2;
	var _location_num=0;
	var _location_num_=hex_str(_location_num);

	// 1: Nabooru's backside well room will be where ever Nabooru ends up
	// 2: Nabooru's backside well room will always be at its normal location. 
	//    Which ever town inhabits Nabooru's normal location will have an exit to the well room.
	//    However, this means Nabooru's well quest is at its normal location, and you'll have to turn in the quest where ever Nabooru ended up.
	//TownRando_Nabooru_RULE = 2;











	dl_list1 = ds_list_create();
	dl_list2 = ds_list_create();
	dl_list3 = ds_list_create();
	dl_list4 = ds_list_create();
	dg_1 = ds_grid_create(0,0);


	//dm_save_data = ds_map_create();

	dm_quest_puzzles = ds_map_create();

	dl_location_NUMS = ds_list_create();
	dl_qual_locations         = ds_list_create();
	dl_qual_locations_new     = ds_list_create();
	dl_qual_locations_dungeon = ds_list_create();
	dl_locations_taken = ds_list_create();
	dl_locations1 = ds_list_create();
	dl_locations_remaining = ds_list_create();

	dl_item_locations_remaining = ds_list_create();
	dl_item_location_NUMS = ds_list_create();
	dl_ITEMS = ds_list_create();
	dl_items_placed = ds_list_create();
	dl_prog_guar_items = ds_list_create();

	dm_pbag = ds_map_create();
	dl_PBAGS = ds_list_create();
	dl_pbag_location_NUMS = ds_list_create();

	dm_KEYS = ds_map_create();
	dl_keys_placed = ds_list_create();
	dl_key_location_NUMS = ds_list_create();

	dm_spells = ds_map_create();
	dl_spell_location_NUMS = ds_list_create();
	dl_skills_placed = ds_list_create();
	dl_spells_placed = ds_list_create();
	dl_START_SPELLS  = ds_list_create();
	dl_spell_sequence_spells = ds_list_create();
	var _spell_sequence=undefined;
	var _spell_count=0;


	/*
	_default = Container_AMT*3;
	_dk1 = STR_Cost+STR_Max;
	dm_spells[?hex_str($0)      +_dk1] = _default;
	dm_spells[?hex_str(SPL_PRTC)+_dk1] = Container_AMT*3;
	dm_spells[?hex_str(SPL_JUMP)+_dk1] = Container_AMT*3;
	dm_spells[?hex_str(SPL_LIFE)+_dk1] = Container_AMT*3;
	dm_spells[?hex_str(SPL_FARY)+_dk1] = Container_AMT*4;
	dm_spells[?hex_str(SPL_FIRE)+_dk1] = Container_AMT*2;
	dm_spells[?hex_str(SPL_RFLC)+_dk1] = Container_AMT*3;
	dm_spells[?hex_str(SPL_SPEL)+_dk1] = Container_AMT*3;
	dm_spells[?hex_str(SPL_THUN)+_dk1] = Container_AMT*5;
	dm_spells[?hex_str(SPL_SUMM)+_dk1] = Container_AMT*3;

	_count1 = ds_grid_width( g.dg_spell_cost);
	_count2 = ds_grid_height(g.dg_spell_cost);
	for(_i=0; _i<_count1; _i++) // Each spell
	{
	    _val = sign(_i)<<max(_i-1,0); // spell bit
    
	    _val1 = g.dg_spell_cost[#_i,_count2-1]; // normal min
	    _val2 = g.dg_spell_cost[#_i,0];         // normal max
    
	    _val4 = val(dm_spells[?hex_str(_val)+_dk1], _default);
	    _val4 = min(_val2,_val4); // new max
	    dm_spells[?hex_str(_val)+_dk1] = _val4;
    
	    _val3 = min(_val1,_val4); // new min
	    //_val5 = (_val4-_val3) div (_count2-1);
    
	    for(_j=0; _j<_count2; _j++) // Each level
	    {
	        _val5 = min(g.dg_spell_cost[#_i,_j],_val4);
	        dm_spells[?hex_str(_i)+hex_str(_j)+STR_Cost] = _val5;
	    }
	}
	*/



	            dl_SPELLS=ds_list_create();
	ds_list_add(dl_SPELLS,STR_PROTECT);
	ds_list_add(dl_SPELLS,STR_JUMP);
	ds_list_add(dl_SPELLS,STR_HEAL);
	ds_list_add(dl_SPELLS,STR_FAIRY);
	ds_list_add(dl_SPELLS,STR_FIRE);
	ds_list_add(dl_SPELLS,STR_REFLECT);
	ds_list_add(dl_SPELLS,STR_ENIGMA);
	ds_list_add(dl_SPELLS,STR_THUNDER);
	if (QUEST_NUM==2) ds_list_add(dl_SPELLS,STR_SUMMON);


	            dl_TOWN_NAMES=ds_list_create();
	ds_list_add(dl_TOWN_NAMES,STR_Rauru);
	ds_list_add(dl_TOWN_NAMES,STR_Ruto);
	ds_list_add(dl_TOWN_NAMES,STR_Saria);
	ds_list_add(dl_TOWN_NAMES,STR_Mido);
	ds_list_add(dl_TOWN_NAMES,STR_Nabooru);
	ds_list_add(dl_TOWN_NAMES,STR_Darunia);
	ds_list_add(dl_TOWN_NAMES,STR_New_Kasuto);
	ds_list_add(dl_TOWN_NAMES,STR_Old_Kasuto);
	if (QUEST_NUM==2) ds_list_add(dl_TOWN_NAMES,STR_Bulblin);



	            dl_SKILLS=ds_list_create();
	ds_list_add(dl_SKILLS,STR_STABDOWN);
	ds_list_add(dl_SKILLS,STR_STABUP);




	dm_save_data[?STR_PROTECT+STR_Location] = STR_Rauru;
	dm_save_data[?STR_JUMP   +STR_Location] = STR_Ruto;
	dm_save_data[?STR_HEAL   +STR_Location] = STR_Saria;
	dm_save_data[?STR_FAIRY  +STR_Location] = STR_Mido;
	dm_save_data[?STR_FIRE   +STR_Location] = STR_Nabooru;
	dm_save_data[?STR_REFLECT+STR_Location] = STR_Darunia;
	dm_save_data[?STR_ENIGMA +STR_Location] = STR_New_Kasuto;
	dm_save_data[?STR_THUNDER+STR_Location] = STR_Old_Kasuto;
	dm_save_data[?STR_SUMMON +STR_Location] = STR_Bulblin;

	dm_save_data[?STR_Rauru     +STR_Spell] = STR_PROTECT;
	dm_save_data[?STR_Ruto      +STR_Spell] = STR_JUMP;
	dm_save_data[?STR_Saria     +STR_Spell] = STR_HEAL;
	dm_save_data[?STR_Mido      +STR_Spell] = STR_FAIRY;
	dm_save_data[?STR_Nabooru   +STR_Spell] = STR_FIRE;
	dm_save_data[?STR_Darunia   +STR_Spell] = STR_REFLECT;
	dm_save_data[?STR_New_Kasuto+STR_Spell] = STR_ENIGMA;
	dm_save_data[?STR_Old_Kasuto+STR_Spell] = STR_THUNDER;
	dm_save_data[?STR_Bulblin   +STR_Spell] = STR_SUMMON;

	/*  In g:
	            dl_Spell_STR=ds_list_create(); dm_Spell=ds_map_create();
	ds_list_add(dl_Spell_STR,STR_PROTECT);     dm_Spell[?hex_str(SPL_PRTC)+STR_Name] = dl_Spell_STR[|ds_list_size(dl_Spell_STR)-1];
	ds_list_add(dl_Spell_STR,STR_JUMP);        dm_Spell[?hex_str(SPL_JUMP)+STR_Name] = dl_Spell_STR[|ds_list_size(dl_Spell_STR)-1];
	ds_list_add(dl_Spell_STR,STR_HEAL);        dm_Spell[?hex_str(SPL_LIFE)+STR_Name] = dl_Spell_STR[|ds_list_size(dl_Spell_STR)-1];
	ds_list_add(dl_Spell_STR,STR_FAIRY);       dm_Spell[?hex_str(SPL_FARY)+STR_Name] = dl_Spell_STR[|ds_list_size(dl_Spell_STR)-1];
	ds_list_add(dl_Spell_STR,STR_FIRE);        dm_Spell[?hex_str(SPL_FIRE)+STR_Name] = dl_Spell_STR[|ds_list_size(dl_Spell_STR)-1];
	ds_list_add(dl_Spell_STR,STR_REFLECT);     dm_Spell[?hex_str(SPL_RFLC)+STR_Name] = dl_Spell_STR[|ds_list_size(dl_Spell_STR)-1];
	ds_list_add(dl_Spell_STR,STR_ENIGMA);      dm_Spell[?hex_str(SPL_SPEL)+STR_Name] = dl_Spell_STR[|ds_list_size(dl_Spell_STR)-1];
	ds_list_add(dl_Spell_STR,STR_THUNDER);     dm_Spell[?hex_str(SPL_THUN)+STR_Name] = dl_Spell_STR[|ds_list_size(dl_Spell_STR)-1];
	ds_list_add(dl_Spell_STR,STR_SUMMON);      dm_Spell[?hex_str(SPL_SUMM)+STR_Name] = dl_Spell_STR[|ds_list_size(dl_Spell_STR)-1];

	dm_Spell[?STR_Bit+STR_PROTECT]    = SPL_PRTC;
	dm_Spell[?STR_Bit+STR_JUMP]       = SPL_JUMP;
	dm_Spell[?STR_Bit+STR_HEAL]       = SPL_LIFE;
	dm_Spell[?STR_Bit+STR_FAIRY]      = SPL_FARY;
	dm_Spell[?STR_Bit+STR_FIRE]       = SPL_FIRE;
	dm_Spell[?STR_Bit+STR_REFLECT]    = SPL_RFLC;
	dm_Spell[?STR_Bit+STR_ENIGMA]     = SPL_SPEL;
	dm_Spell[?STR_Bit+STR_THUNDER]    = SPL_THUN;
	dm_Spell[?STR_Bit+STR_SUMMON]     = SPL_SUMM;

	dm_Spell[?STR_Town+STR_Name+STR_PROTECT]    = STR_Rauru;
	dm_Spell[?STR_Town+STR_Name+STR_JUMP]       = STR_Ruto;
	dm_Spell[?STR_Town+STR_Name+STR_HEAL]       = STR_Saria;
	dm_Spell[?STR_Town+STR_Name+STR_FAIRY]      = STR_Mido;
	dm_Spell[?STR_Town+STR_Name+STR_FIRE]       = STR_Nabooru;
	dm_Spell[?STR_Town+STR_Name+STR_REFLECT]    = STR_Darunia;
	dm_Spell[?STR_Town+STR_Name+STR_ENIGMA]     = STR_New_Kasuto;
	dm_Spell[?STR_Town+STR_Name+STR_THUNDER]    = STR_Old_Kasuto;
	dm_Spell[?STR_Town+STR_Name+STR_SUMMON]     = STR_Bulblin;

	dm_Spell[?STR_Town+STR_Spell+STR_Rauru]     = STR_PROTECT;
	dm_Spell[?STR_Town+STR_Spell+STR_Ruto]      = STR_JUMP;
	dm_Spell[?STR_Town+STR_Spell+STR_Saria]     = STR_HEAL;
	dm_Spell[?STR_Town+STR_Spell+STR_Mido]      = STR_FAIRY;
	dm_Spell[?STR_Town+STR_Spell+STR_Nabooru]   = STR_FIRE;
	dm_Spell[?STR_Town+STR_Spell+STR_Darunia]   = STR_REFLECT;
	dm_Spell[?STR_Town+STR_Spell+STR_New_Kasuto]= STR_ENIGMA;
	dm_Spell[?STR_Town+STR_Spell+STR_Old_Kasuto]= STR_THUNDER;
	dm_Spell[?STR_Town+STR_Spell+STR_Bulblin]   = STR_SUMMON;
	*/



	// In item rando, this will be the last location that gets an item 
	// placed at to ensure the player can reach it.
	SafeLocation_LOC_NUM = -1;
	dl_SAFE_LOCATION_NUMS=ds_list_create();


	FallingKey_item_placed = false;
	FallingKey_LOC_NUM = -1;
	FallingKey_LOC_ID  = undefined;
	FallingKey_RM_NAME = undefined;
	FallingKey_ITEM_ID = undefined;

	dl_KEYS=ds_list_create();





	var _dm_SETTINGS = json_decode(_SETTINGS);

	                                                        _datakey=dk_LimitObscure;
	    ItemLocations_LIMIT_OBSCURE      =val(_dm_SETTINGS[?_datakey]);
	if (ItemLocations_LIMIT_OBSCURE)          dm_save_data[?_datakey] = ItemLocations_LIMIT_OBSCURE;
	//                                                        _datakey=STR_Randomize+STR_Item+STR_Method;
	//    ItemLocations_RANDO_METHOD       =val(_dm_SETTINGS[?_datakey]);
	//if (ItemLocations_RANDO_METHOD)           dm_save_data[?_datakey] = ItemLocations_RANDO_METHOD;

	                                                        _datakey=STR_Dark_Room+STR_Difficulty;
	    ItemLocations_DARKROOM_DIFFICULTY=val(_dm_SETTINGS[?_datakey]);
	if (ItemLocations_DARKROOM_DIFFICULTY)    dm_save_data[?_datakey] = ItemLocations_DARKROOM_DIFFICULTY;

	                                                        _datakey=STR_Item+STR_Location+STR_Hint;
	    ItemLocations_NPC_GIVE_HINTS     =val(_dm_SETTINGS[?_datakey]);
	if (ItemLocations_NPC_GIVE_HINTS)         dm_save_data[?_datakey] = ItemLocations_NPC_GIVE_HINTS;

	                                                        _datakey=STR_Zelda+STR_Hint;
	    ItemLocations_ZELDA_HINT         =val(_dm_SETTINGS[?_datakey]);
	if (ItemLocations_ZELDA_HINT)             dm_save_data[?_datakey] = ItemLocations_ZELDA_HINT;

	                                                        _datakey=STR_Randomize+STR_Item+STR_Locations;
	    ItemLocations_WILL_RANDOMIZE     =val(_dm_SETTINGS[?_datakey]);
	if (ItemLocations_WILL_RANDOMIZE)         dm_save_data[?_datakey] = ItemLocations_WILL_RANDOMIZE;

	                                                        _datakey=STR_Randomize+STR_PBAG+STR_Locations;
	    ItemLocations_INCLUDE_PBAG       =val(_dm_SETTINGS[?_datakey]);
	if (ItemLocations_INCLUDE_PBAG)           dm_save_data[?_datakey] = ItemLocations_INCLUDE_PBAG;

	                                                        _datakey=STR_Randomize+STR_Key+STR_Locations;
	    KeyLocations_WILL_RANDOMIZE      =val(_dm_SETTINGS[?_datakey]);
	if (KeyLocations_WILL_RANDOMIZE)          dm_save_data[?_datakey] = KeyLocations_WILL_RANDOMIZE;





	                                                        _datakey=STR_Randomize+STR_Skill+STR_Locations;
	    SkillLocations_WILL_RANDOMIZE    =val(_dm_SETTINGS[?_datakey]);
	if (SkillLocations_WILL_RANDOMIZE)        dm_save_data[?_datakey] = SkillLocations_WILL_RANDOMIZE;

	                                                        _datakey=STR_Randomize+STR_Spell+STR_Locations;
	    SpellLocations_WILL_RANDOMIZE    =val(_dm_SETTINGS[?_datakey]);
	if (SpellLocations_WILL_RANDOMIZE)        dm_save_data[?_datakey] = SpellLocations_WILL_RANDOMIZE;

	                                                        _datakey=STR_Randomize+STR_Spell+STR_Cost;
	    SpellCosts_WILL_RANDOMIZE        =val(_dm_SETTINGS[?_datakey]);
	if (SpellCosts_WILL_RANDOMIZE)            dm_save_data[?_datakey] = SpellCosts_WILL_RANDOMIZE;





	                                                        _datakey=STR_Randomize+STR_Enemy+STR_Difficulty;
	    Enemy_DIFFICULTY          = clamp(val(_dm_SETTINGS[?_datakey]), 1,g.RandoEnemy_difficulty_MAX);
	if (Enemy_DIFFICULTY)                     dm_save_data[?_datakey] = Enemy_DIFFICULTY;

	                                                        _datakey=STR_Randomize+STR_Enemy+STR_Method;
	    EnemyChars_WILL_RANDOMIZE        =val(_dm_SETTINGS[?_datakey]);
	if (EnemyChars_WILL_RANDOMIZE)            dm_save_data[?_datakey] = EnemyChars_WILL_RANDOMIZE;

	                                                        _datakey=STR_Randomize+STR_Enemy+STR_Spawner;
	    EnemySpawners_WILL_RANDOMIZE     =val(_dm_SETTINGS[?_datakey]);
	if (EnemySpawners_WILL_RANDOMIZE)         dm_save_data[?_datakey] = EnemySpawners_WILL_RANDOMIZE;

	                                                        _datakey=STR_Randomize+STR_Enemy+STR_ENIGMA;
	    EnemyENIGMA_WILL_RANDOMIZE       =val(_dm_SETTINGS[?_datakey]);
	if (EnemyENIGMA_WILL_RANDOMIZE)           dm_save_data[?_datakey] = EnemyENIGMA_WILL_RANDOMIZE;

	                                                        _datakey=STR_Randomize+STR_Enemy+STR_HP;
	    EnemyHP_WILL_RANDOMIZE           =val(_dm_SETTINGS[?_datakey]);
	if (EnemyHP_WILL_RANDOMIZE)               dm_save_data[?_datakey] = EnemyHP_WILL_RANDOMIZE;

	                                                        _datakey=STR_Randomize+STR_Enemy+STR_Damage;
	    EnemyDamage_WILL_RANDOMIZE       =val(_dm_SETTINGS[?_datakey]);
	if (EnemyDamage_WILL_RANDOMIZE)           dm_save_data[?_datakey] = EnemyDamage_WILL_RANDOMIZE;






	                                                        _datakey=STR_Randomize+STR_Dungeon+STR_Room;
	    DungeonRooms_WILL_RANDOMIZE      =val(_dm_SETTINGS[?_datakey]);
	if (DungeonRooms_WILL_RANDOMIZE)          dm_save_data[?_datakey] = DungeonRooms_WILL_RANDOMIZE;

	                                                        _datakey=STR_Randomize+STR_Dungeon+STR_Tileset;
	    DungeonTileset_WILL_RANDOMIZE    =val(_dm_SETTINGS[?_datakey]);
	if (DungeonTileset_WILL_RANDOMIZE)        dm_save_data[?_datakey] = DungeonTileset_WILL_RANDOMIZE;

	                                                        _datakey=STR_Randomize+STR_Dungeon+STR_Locations;
	    DungeonLocations_WILL_RANDOMIZE  =val(_dm_SETTINGS[?_datakey]);
	if (DungeonLocations_WILL_RANDOMIZE)      dm_save_data[?_datakey] = DungeonLocations_WILL_RANDOMIZE;

	                                                        _datakey=STR_Randomize+STR_Dungeon+STR_Boss;
	    DungeonBoss_WILL_RANDOMIZE       =val(_dm_SETTINGS[?_datakey]);
	if (DungeonBoss_WILL_RANDOMIZE)           dm_save_data[?_datakey] = DungeonBoss_WILL_RANDOMIZE;




	                                                        _datakey=STR_Randomize+STR_Town+STR_Locations;
	    TownLocations_WILL_RANDOMIZE     =val(_dm_SETTINGS[?_datakey]);
	if (TownLocations_WILL_RANDOMIZE)         dm_save_data[?_datakey] = TownLocations_WILL_RANDOMIZE;






	                                                        _datakey=STR_Randomize+STR_Level+STR_Cost;
	    LevelCosts_WILL_RANDOMIZE        =val(_dm_SETTINGS[?_datakey]);
	if (LevelCosts_WILL_RANDOMIZE)            dm_save_data[?_datakey] = LevelCosts_WILL_RANDOMIZE;

	                                                        _datakey=STR_Randomize+STR_XP;
	    XP_WILL_RANDOMIZE                =val(_dm_SETTINGS[?_datakey]);
	if (XP_WILL_RANDOMIZE)                    dm_save_data[?_datakey] = XP_WILL_RANDOMIZE;

	                                                        _datakey=STR_Randomize+STR_Palette;
	    Palette_WILL_RANDOMIZE           =val(_dm_SETTINGS[?_datakey]);
	if (Palette_WILL_RANDOMIZE)               dm_save_data[?_datakey] = Palette_WILL_RANDOMIZE;



	                                                       _datakey=STR_Randomize+STR_Overworld+STR_Biome;
	    OverworldBiomes_WILL_RANDOMIZE  =val(_dm_SETTINGS[?_datakey]);
	if (OverworldBiomes_WILL_RANDOMIZE)      dm_save_data[?_datakey] = OverworldBiomes_WILL_RANDOMIZE;


	                                                       _datakey=STR_Randomize+STR_Scene;
	    Scenes_WILL_RANDOMIZE           =val(_dm_SETTINGS[?_datakey]);
	if (Scenes_WILL_RANDOMIZE)               dm_save_data[?_datakey] = Scenes_WILL_RANDOMIZE;






	Attack_LEVEL = val(_dm_SETTINGS[?STR_Quest+hex_str(QUEST_NUM)+STR_Start+STR_Level+STR_Attack], 1);
	Magic_LEVEL  = val(_dm_SETTINGS[?STR_Quest+hex_str(QUEST_NUM)+STR_Start+STR_Level+STR_Magic],  1);
	Life_LEVEL   = val(_dm_SETTINGS[?STR_Quest+hex_str(QUEST_NUM)+STR_Start+STR_Level+STR_Life],   1);


	ds_map_destroy(_dm_SETTINGS); _dm_SETTINGS=undefined;






	Location_COUNT      = 0;
	ItemLocation_COUNT  = 0;
	PBagLocation_COUNT  = 0;
	SpellLocation_COUNT = 0;
	KeyLocation_COUNT   = 0;

	INCLUDE_BOTTLE_LOCATION = false; // Can't let the player make it to ShadowBoss w/out BOTTLE






	if (DEBUG){repeat(6){sdm(""); dm_debug_data[?STR_Data+"01"+hex_str(++debug_data_count)]="";}
	    debug_str = "==========================================================";
	sdm(debug_str);      dm_debug_data[?STR_Data+"01"+hex_str(++debug_data_count)] = debug_str;
	    debug_str = "------------------";
	    debug_str = debug_str+"  QUEST-"+string(QUEST_NUM)+"  "+debug_str;
	sdm(debug_str);      dm_debug_data[?STR_Data+"01"+hex_str(++debug_data_count)] = debug_str;
	           //sdm(" "); dm_debug_data[?STR_Data+'01'+hex_str(++debug_data_count)]=" ";
	}







	dm_save_data[?STR_Rando+STR_Seed] = Rando_SEED;





	if (DEBUG)
	{
	    sdm(""); dm_debug_data[?STR_Data+"01"+hex_str(++debug_data_count)]="";
	    var         _dl_NAMES=ds_list_create();
	    ds_list_add(_dl_NAMES,STR_CANDLE,STR_GLOVE, STR_RAFT,   STR_BOOTS);
	    ds_list_add(_dl_NAMES,STR_FLUTE, STR_CROSS, STR_HAMMER, STR_BRACELET);
	    ds_list_add(_dl_NAMES,STR_MIRROR,STR_FLOWER,STR_BOOK,   STR_MEAT);
	    ds_list_add(_dl_NAMES,STR_SHIELD,STR_ALLKEY,STR_PENDANT,STR_SWORD);
	    var _SEED1 = Rando_SEED;
	    debug_str  = "Rando_SEED Quest-1 $"+hex_str(_SEED1)+".  ";
	    for(_i=7; _i>=0; _i--) debug_str += _dl_NAMES[|(_SEED1>>(_i<<2))&$F]+", ";
	    sdm(debug_str); dm_debug_data[?STR_Data+"01"+hex_str(++debug_data_count)] = debug_str;
    
	    _SEED1 ^= $FFFFFFFF;
	    debug_str  = "Rando_SEED Quest-2 $"+hex_str(_SEED1)+".  ";
	    for(_i=7; _i>=0; _i--) debug_str += _dl_NAMES[|(_SEED1>>(_i<<2))&$F]+", ";
	    sdm(debug_str); dm_debug_data[?STR_Data+"01"+hex_str(++debug_data_count)] = debug_str;
	    ds_list_destroy(_dl_NAMES); _dl_NAMES=undefined;
	}

	if (DEBUG)
	{
	    sdm(""); dm_debug_data[?STR_Data+"01"+hex_str(++debug_data_count)]="";
	    debug_str ="QUEST-"+string(QUEST_NUM)+", ATK-"+string(Attack_LEVEL)+" MAG-"+string(Magic_LEVEL)+" LIF-"+string(Life_LEVEL);
	    sdm(debug_str); dm_debug_data[?STR_Data+"01"+hex_str(++debug_data_count)] = debug_str;
    
	    if (ItemLocations_WILL_RANDOMIZE){
	                                        debug_str+="LESS OBSCURE LOCS-"+string(ItemLocations_LIMIT_OBSCURE)+", ";
	                                        //debug_str+="RANDO METHOD-"+string(ItemLocations_RANDO_METHOD)+", ";
	                                        debug_str ="DARKROOM DIFF-"+string(ItemLocations_DARKROOM_DIFFICULTY)+", ";
	                                        debug_str+="ITEMS, ";
	        if (ItemLocations_INCLUDE_PBAG) debug_str+="PBAGS, ";
	        if (KeyLocations_WILL_RANDOMIZE)debug_str+="KEYS, ";
	        sdm(debug_str); dm_debug_data[?STR_Data+"01"+hex_str(++debug_data_count)] = debug_str;
	    }
    
	    if (SpellLocations_WILL_RANDOMIZE||SpellCosts_WILL_RANDOMIZE){
	                                           debug_str ="";
	        if (SpellLocations_WILL_RANDOMIZE) debug_str+="SPELLS, ";
	        if (SpellCosts_WILL_RANDOMIZE)     debug_str+="SPELL COSTS, ";
	        sdm(debug_str); dm_debug_data[?STR_Data+"01"+hex_str(++debug_data_count)] = debug_str;
	    }
    
	    if (EnemyChars_WILL_RANDOMIZE||EnemySpawners_WILL_RANDOMIZE||EnemyENIGMA_WILL_RANDOMIZE||EnemyHP_WILL_RANDOMIZE||EnemyDamage_WILL_RANDOMIZE){
	                                          debug_str ="";
	        switch(EnemyChars_WILL_RANDOMIZE){
	        case 1:{debug_str+="ENEMY SPAWNS, "; break;}
	        case 2:{debug_str+="ENEMY TYPES, "; break;}
	        }
	        if (EnemySpawners_WILL_RANDOMIZE) debug_str+="ENEMY SPAWNERS, ";
	        if (EnemyENIGMA_WILL_RANDOMIZE)   debug_str+="ENIGMA ENEMIES, ";
	        if (EnemyHP_WILL_RANDOMIZE)       debug_str+="ENEMY HP, ";
	        if (EnemyDamage_WILL_RANDOMIZE)   debug_str+="ENEMY DAMAGE, ";
	        sdm(debug_str); dm_debug_data[?STR_Data+"01"+hex_str(++debug_data_count)] = debug_str;
	    }
    
	    if (LevelCosts_WILL_RANDOMIZE||XP_WILL_RANDOMIZE||Palette_WILL_RANDOMIZE){
	                                       debug_str ="";
	        if (LevelCosts_WILL_RANDOMIZE) debug_str+="LEVEL COSTS, ";
	        if (XP_WILL_RANDOMIZE)         debug_str+="XP, ";
	        if (Palette_WILL_RANDOMIZE)    debug_str+="PALETTES, ";
	        sdm(debug_str); dm_debug_data[?STR_Data+"01"+hex_str(++debug_data_count)] = debug_str;
	    }
	}












	ds_list_copy(g.dl_XP,g.dl_XP_DEFAULT);
	ds_list_copy(g.dl_HP,g.dl_HP_DEFAULT);

	ds_map_copy(g.dm_spawn,g.dm_spawn_DEFAULT);
	ds_map_copy(f.dm_PBags,f.dm_PBags_DEFAULT);
	ds_map_copy(f.dm_1up_doll, f.dm_1up_doll_DEFAULT);
	ds_map_copy(f.dm_keys, f.dm_keys_DEFAULT);

	ds_grid_copy(f.dg_xp_next,     f.dg_xp_next_DEFAULT);
	ds_grid_copy(g.dg_spell_cost,  g.dg_spell_cost_DEFAULT);
	ds_grid_copy(g.dg_enemy_damage,g.dg_enemy_damage_DEFAULT);
















	//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	//============================================================================
	/*
	if (SpellLocations_WILL_RANDOMIZE  // in case player gets high cost spells early
	||  ItemLocations_WILL_RANDOMIZE ) // because we don't know when player will get magic containers
	{
	    _count1 = ds_grid_width( g.dg_spell_cost);
	    _count2 = ds_grid_height(g.dg_spell_cost);
	    for(_i=0; _i<_count1; _i++) // Each spell
	    {
	        if (_i) _val = $1<<(_i-1); // spell
	        else    _val = $0;
	        for(_j=0; _j<_count2; _j++) // Each level
	        {
	            _val1 = val(dm_spells[?hex_str(_i)+hex_str(_j)+STR_Cost], g.dg_spell_cost[#_i,_j]);
	            dm_save_data[?STR_Spell+STR_Cost+hex_str(_i)+hex_str(_j)] = _val1;
	        }
	    }
	}
	*/


	if (SpellLocations_WILL_RANDOMIZE 
	||  ItemLocations_WILL_RANDOMIZE )
	{
	    // new_quest_init_puzzles() is run right here so all the following 
	    // randomizations know what to expect from the quest puzzles.
    
	    // new_quest_init_puzzles() will be ran again each time the 
	    // save file is loaded until user saves.
    
	    random_set_seed(Rando_SEED);
	    new_quest_init_puzzles(global.Rando_SpellSequence_SPELL_COUNT);
    
    
    
	    _dk2 = STR_Spell+STR_Sequence;
	    var _SpellSequencePuzzle_COUNT = val(f.dm_quests[?_dk2+STR_Dialogue+STR_Count]);
	    for(_i=1; _i<=_SpellSequencePuzzle_COUNT; _i++)
	    {
	        _dk3 = STR_Spell+STR_Sequence+hex_str(_i);
	        _val3 = f.dm_quests[?_dk3]; // string representing spells as spell bits. Example: "01"+"08"+"04"+"40".
	        if(!is_undefined(_val3))
	        {
	            _count1 = string_length(_val3)>>1;
	            for(_j=0; _j<_count1; _j++)
	            {
	                _dk4 = string_copy(_val3, (_j<<1)+1, 2);
	                _spell_name = g.dm_Spell[?_dk4+STR_Name];
	                if(!is_undefined(_spell_name) 
	                &&  ds_list_find_index(dl_spell_sequence_spells,_spell_name)==-1 )
	                {
	                    ds_list_add(       dl_spell_sequence_spells,_spell_name);
	                }
	            }
	        }
	    }
    
    
    
    
	    LocCatID_West01 = "_West"+"01"; // West North
	    LocCatID_West02 = "_West"+"02"; // West South
	    LocCatID_Nabo01 = "_Nabo"+"01"; // Nabooru Area
	    LocCatID_Daru01 = "_Daru"+"01"; // Darunia Area
	    LocCatID_Kasu01 = "_Kasu"+"01"; // Kasuto Area
	    //LocCatID_East01 = '_East'+'01'; // East North
	    //LocCatID_East02 = '_East'+'02'; // East South
	    LocCatID_DMtn01 = "_DMtn"+"01"; // Death Mtn
	    LocCatID_Maze01 = "_Maze"+"01"; // Maze Island
	    LocCatID_NIsl01 = "_NIsl"+"01"; // North Islands
	    LocCatID_VOD01  = "_VOD" +"01"; // Valley of Death (VOD)
	    LocCatID_Sari01 = "_Sari"+"01"; // Saria River & Lake
	    LocCatID_RMtn01 = "_RMtn"+"01"; // Ruto Mtns
	    LocCatID_SCon01 = "_SCon"+"01"; // South Continent
	    LocCatID_DragMr = "_Drag"+"01"; // Dragmire area
	    LocCatID_Dngn01 = "_Dngn"+"01"; // Dungeons
	    LocCatID_Town01 = "_Town"+"01"; // Towns
	    //LocCatID_Obsc01 = '_Obsc'+'01'; // Obscure locations
    
    
    
	    // set dm_LOCATIONS data
	    Rando_init_location_data();
	}



















	// ======================================================================================
	// ======================================================================================
	// ======================================================================================
	//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	//============================================================================
	// TODO: Add this as an option in the rando setup.
	if (true) // testing
	//if (OverworldBiomes_WILL_RANDOMIZE)
	{
	    random_set_seed(Rando_SEED);
    
	    var _dm_RANDO_OW_TSRC=ds_map_create();
	    var _dl_RANDO_OW_BIOME_A=ds_list_create();
	    var _dl_RANDO_OW_BIOME_B=ds_list_create();
	    _dk1 = STR_Rando+STR_Biome;
    
	    with(g.overworld)
	    {
	        for(_i=ds_list_size(dl_biome_enc)-1; _i>=0; _i--)
	        {
	            _val1 = dl_biome_enc[|_i]; // biome
	            if (val(dm_enc[?_dk1+string(_val1)]))
	            {
	                ds_list_add(_dl_RANDO_OW_BIOME_A,_val1);
	            }
	        }
        
	        ds_list_copy(   _dl_RANDO_OW_BIOME_B,_dl_RANDO_OW_BIOME_A);
	        ds_list_shuffle(_dl_RANDO_OW_BIOME_B);
        
	        for(_i=ds_list_size(_dl_RANDO_OW_BIOME_A)-1; _i>=0; _i--)
	        {
	            _val1 = _dl_RANDO_OW_BIOME_A[|_i];
	            _val2 = _dl_RANDO_OW_BIOME_B[|_i];
	            _val4 = dm_enc[?_dk1+_val2+STR_TSRC+STR_Primary];
	            if(!is_undefined(_val4))
	            {
	                _val3 = dm_enc[?_dk1+_val1+STR_TSRC+STR_Primary];
	                if(!is_undefined(_val3)) _dm_RANDO_OW_TSRC[?hex_str(_val3)] = val(dm_enc[?_dk1+_val2+STR_TSRC+STR_Primary],   _val4);
                
	                _val3 = dm_enc[?_dk1+_val1+STR_TSRC+STR_Secondary];
	                if(!is_undefined(_val3)) _dm_RANDO_OW_TSRC[?hex_str(_val3)] = val(dm_enc[?_dk1+_val2+STR_TSRC+STR_Secondary], _val4);
                
	                _val3 = dm_enc[?_dk1+_val1+STR_TSRC+STR_Tertiary];
	                if(!is_undefined(_val3)) _dm_RANDO_OW_TSRC[?hex_str(_val3)] = val(dm_enc[?_dk1+_val2+STR_TSRC+STR_Tertiary],  _val4);
                
	                _val3 = dm_enc[?_dk1+_val1+STR_TSRC+STR_Special];
	                if(!is_undefined(_val3)) _dm_RANDO_OW_TSRC[?hex_str(_val3)] = val(dm_enc[?_dk1+_val2+STR_TSRC+STR_Special],   _val4);
	            }
	        }
	    }
    
	    _val = json_encode(_dm_RANDO_OW_TSRC);
	    dm_save_data[?STR_Overworld+STR_TSRC+STR_Randomized] = _val;
    
    
	    ds_map_destroy(_dm_RANDO_OW_TSRC); _dm_RANDO_OW_TSRC=undefined;
	    ds_list_destroy(_dl_RANDO_OW_BIOME_A); _dl_RANDO_OW_BIOME_A=undefined;
	    ds_list_destroy(_dl_RANDO_OW_BIOME_B); _dl_RANDO_OW_BIOME_B=undefined;
	    /*
	    var _dm_RANDO_OW_TSRC=ds_map_create();
	    var _dl_RANDO_OW_TSRC_A=ds_list_create();
	    var _dl_RANDO_OW_TSRC_B=ds_list_create();
    
	    ds_list_add(_dl_RANDO_OW_TSRC_A,$20); // grass
	    ds_list_add(_dl_RANDO_OW_TSRC_A,$24); // desert
	    ds_list_add(_dl_RANDO_OW_TSRC_A,$28); // volcano
	    ds_list_add(_dl_RANDO_OW_TSRC_A,$2C); // grave
	    ds_list_add(_dl_RANDO_OW_TSRC_A,$30); // trees
	    ds_list_add(_dl_RANDO_OW_TSRC_A,$38); // swamp
	    ds_list_add(_dl_RANDO_OW_TSRC_A,$40); // beach
    
	    ds_list_copy(_dl_RANDO_OW_TSRC_B,_dl_RANDO_OW_TSRC_A);
	    ds_list_shuffle(_dl_RANDO_OW_TSRC_B);
    
	    for(_i=ds_list_size(_dl_RANDO_OW_TSRC_A)-1; _i>=0; _i--)
	    {
	        _val1=_dl_RANDO_OW_TSRC_A[|_i];
	        _val2=_dl_RANDO_OW_TSRC_B[|_i];
	        _dm_RANDO_OW_TSRC[?hex_str(_val1)]=_val2;
	    }
    
	    _val=json_encode(_dm_RANDO_OW_TSRC);
	    dm_save_data[?STR_Overworld+STR_TSRC+STR_Randomized]=_val;
    
    
	    ds_map_destroy(_dm_RANDO_OW_TSRC); _dm_RANDO_OW_TSRC=undefined;
	    ds_list_destroy(_dl_RANDO_OW_TSRC_A); _dl_RANDO_OW_TSRC_A=undefined;
	    ds_list_destroy(_dl_RANDO_OW_TSRC_B); _dl_RANDO_OW_TSRC_B=undefined;
	    */
	}
	//============================================================================















	// ======================================================================================
	// -------------------------------------------------------------------------------------
	if (true) // testing
	//if (Scenes_WILL_RANDOMIZE)
	{
	    random_set_seed(Rando_SEED);
    
    
	    _dk1 = dk_SceneRando+STR_Scene+STR_Type;
	    _count1 = val(global.dm_scene_rando[?_dk1+STR_Count]);
	    for(_i=1; _i<=_count1; _i++) // number of scene types
	    {
	        _val1 = global.dm_scene_rando[?_dk1+hex_str(_i)];
	        if(!is_undefined(_val1))
	        {
	            ds_list_clear(dl_list1);
	            _count2 = val(global.dm_scene_rando[?_val1+STR_Count]);
	            for(_j=1; _j<=_count2; _j++) // number of matching scenes for this type
	            {
	                _scene_name = global.dm_scene_rando[?_val1+"-"+hex_str(_j)+STR_Scene];
	                if(!is_undefined(_scene_name)) ds_list_add(dl_list1,_scene_name);
	            }
            
            
	            _count3 = ds_list_size(dl_list1);
	            if (_count3>1)
	            {
	                ds_list_copy(dl_list2,dl_list1);
	                ds_list_shuffle(dl_list2);
	                for(_j=0; _j<_count3; _j++)
	                {
	                    _scene_name1 = dl_list1[|_j];
	                    _scene_name2 = dl_list2[|_j];
	                    dm_save_data[?dk_SceneRando+STR_Scene+STR_Randomized+_scene_name1] = _scene_name2;
	                    //if (string_pos(STR_Pit+"8",_val1)) sdm(""); sdm(_scene_name1+" - "+_scene_name2);
	                }
	            }
	        }
	    }
	}
















	// ======================================================================================
	// -------------------------------------------------------------------------------------
	if (DungeonTileset_WILL_RANDOMIZE)
	{
	    random_set_seed(Rando_SEED);
    
    
	    ds_list_clear(dl_list1);
	    ds_list_add(  dl_list1,ts_DungeonA01);
	    ds_list_add(  dl_list1,ts_DungeonB01);
	    ds_list_add(  dl_list1,ts_DungeonC01);
	    ds_list_add(  dl_list1,ts_DungeonD01);
	    ds_list_add(  dl_list1,ts_DungeonE01);
	    ds_list_add(  dl_list1,ts_DungeonF01);
	    ds_list_add(  dl_list1,ts_DungeonG01);
    
	    ds_list_clear(dl_list2);
	    ds_list_copy( dl_list2,dl_list1);
    
	    ds_list_add(  dl_list2,ts_DungeonAlt01);
	    ds_list_add(  dl_list2,ts_DungeonAlt02);
	    ds_list_add(  dl_list2,ts_DungeonAlt03);
	    ds_list_add(  dl_list2,ts_DungeonAlt04);
	    ds_list_add(  dl_list2,ts_DungeonAlt05);
	    ds_list_add(  dl_list2,ts_DungeonAlt06);
    
	    ds_list_add(  dl_list2,ts_Cave01);
    
    
	    _datakey = "_User"+STR_Custom+STR_Dungeon+STR_Tileset;
	    _count = val(g.dm_tileset[?_datakey+STR_Count]);
	    if (_count)
	    {
	        ds_list_clear(dl_list3);
	        var _background;
	        for(_i=1; _i<=_count; _i++)
	        {
	            _background = g.dm_tileset[?_datakey+hex_str(_i)+STR_Asset];
	            if(!is_undefined(        _background) 
	            &&  background_exists(   _background) )
	            {
	                ds_list_add(dl_list3,_background);
	            }
	        }
        
	        if (ds_list_size(dl_list3))
	        {
	            if (1) // testing. So that '"_User"+STR_Custom+STR_Dungeon+STR_Tileset' are guaranteed to be used.
	            {
	                ds_list_shuffle(dl_list2);
	                _count1 = ds_list_size(dl_list1)-ds_list_size(dl_list3);
	                for(_i=0; _i<_count1; _i++) ds_list_add(dl_list3,dl_list2[|_i]);
	                ds_list_copy(dl_list2,dl_list3);
	            }
	            else
	            {
	                _count1 = ds_list_size(dl_list3);
	                for(_i=0; _i<_count1; _i++) ds_list_add(dl_list2,dl_list3[|_i]);
	            }
	        }
	    }
    
    
	    ds_list_shuffle(dl_list2);
    
	    for(_i=ds_list_size(dl_list1)-1; _i>=0; _i--)
	    {
	        _datakey = STR_Rando+STR_Tileset+background_get_name(dl_list1[|_i]);
	        dm_save_data[?_datakey] = dl_list2[|_i];
	    }
    
	    /*
	    ds_list_clear(dl_list1);
	    ds_list_add(  dl_list1,ts_DungeonA01);
	    ds_list_add(  dl_list1,ts_DungeonB01);
	    ds_list_add(  dl_list1,ts_DungeonC01);
	    ds_list_add(  dl_list1,ts_DungeonD01);
	    ds_list_add(  dl_list1,ts_DungeonE01);
	    ds_list_add(  dl_list1,ts_DungeonF01);
	    ds_list_add(  dl_list1,ts_DungeonG01);
    
	    ds_list_clear(dl_list2);
	    ds_list_copy( dl_list2,dl_list1);
    
	    if (0)
	    //if (DungeonTileset_WILL_RANDOMIZE==2)
	    {
	        ds_list_add(dl_list2,ts_DungeonAlt01);
	        ds_list_add(dl_list2,ts_DungeonAlt02);
	        //ds_list_add(dl_list2,ts_DungeonAlt03);
	    }
    
    
	    _datakey = "_User"+STR_Custom+STR_Dungeon+STR_Tileset;
	    _count = val(g.dm_tileset[?_datakey+STR_Count]);
	    if (_count)
	    {
	        if (1) // testing
	        {
	            ds_list_clear(dl_list2);
	            for(_i=(ds_list_size(dl_list1)-_count)-1; _i>=0; _i--) ds_list_add(dl_list2,dl_list1[|_i]);
	        }
        
	        var _background;
	        for(_i=1; _i<=_count; _i++)
	        {
	            _background = g.dm_tileset[?_datakey+hex_str(_i)+STR_Asset];
	            if(!is_undefined(        _background) 
	            &&  background_exists(   _background) )
	            {
	                ds_list_add(dl_list2,_background);
	            }
	        }
	    }
    
    
	    ds_list_shuffle(dl_list2);
    
	    for(_i=ds_list_size(dl_list1)-1; _i>=0; _i--)
	    {
	        _datakey = STR_Rando+STR_Tileset+background_get_name(dl_list1[|_i]);
	        dm_save_data[?_datakey] = dl_list2[|_i];
	    }
	    */
	}
	// -------------------------------------------------------------------------------------












	// Palettes ----------------------------------------------
	if (Palette_WILL_RANDOMIZE)
	{
	    Rando_randomize_palettes();
	}
















	// ======================================================================================
	// ======================================================================================
	// ======================================================================================
	// ======================================================================================
	if (EnemyChars_WILL_RANDOMIZE)
	{
	    //if (DEBUG){sdm(" "); dm_debug_data[?STR_Data+'01'+hex_str(++debug_data_count)]=" ";}
	    random_set_seed(Rando_SEED);
    
    
    
	    ds_list_clear(dl_list1);
	    ds_list_clear(dl_list2);
    
	    _datakey = STR_Randomize+STR_Enemy;
    
	    dm_save_data[?_datakey+STR_Method]     = EnemyChars_WILL_RANDOMIZE;
	    dm_save_data[?_datakey+STR_Difficulty] = Enemy_DIFFICULTY;
    
    
    
	    switch(EnemyChars_WILL_RANDOMIZE)
	    {   // ====================================================================
	        case 1:{ // SPAWNS --------------------------------------------
	        _datakey1 = _datakey+STR_Spawn;
        
	            _count = val(g.dm_RandoEnemy[?_datakey1+STR_Count]);
	        if (_count<2) break;
        
        
	        var _DEBUG1=0;
	        if (_DEBUG1){
	        var _dl1=ds_list_create();
	        var _dl2=ds_list_create();
	        var _dl3=ds_list_create();
	        }
	        var _difficulty, _scene_name;
	        var _spawn_datakey1,_spawn_datakey2;
	        var _dl_SPAWN_DATAKEY_A1=ds_list_create();
	        var _dl_SPAWN_DATAKEY_A2=ds_list_create();
	        var _dl_SPAWN_DATAKEY_A3=ds_list_create();
	        var _dl_SPAWN_DATAKEY_b1=ds_list_create();
	        var _dl_SPAWN_DATAKEY_b2=ds_list_create();
        
	        for(_i=0; _i<_count; _i++)
	        {   //_datakey1 = STR_Randomize+STR_Enemy+STR_Spawn;
	            _spawn_datakey1 = val(g.dm_RandoEnemy[?_datakey1+hex_str(_i+1)+STR_Spawn+STR_Datakey]);
	            _spawn_datakey1 = string( _spawn_datakey1);
	            _objver1    = g.dm_spawn[?_spawn_datakey1+STR_OBJVER];
	            _scene_name = g.dm_spawn[?_spawn_datakey1+STR_Rm+STR_Name];
	            if(!is_undefined(_objver1) 
	            &&  is_string(   _objver1) 
	            && !is_undefined(_scene_name) 
	            &&  is_string(   _scene_name) )
	            {
	                if (        string_copy(_scene_name,1,AreaID_LEN)!=Area_MazIs 
	                ||  str_hex(string_copy(_scene_name,AreaID_LEN+2,2))<$80 )
	                {
	                        _difficulty = val(g.dm_RandoEnemy[?_objver1+STR_Difficulty],1);
	                    if (_difficulty<=Enemy_DIFFICULTY)
	                    {   //RandoEnemy_difficulty_MAX
	                        if (ds_list_find_index(g.dl_RandoEnemy_OBJVER1,_objver1)!=-1) // 
	                        {   ds_list_add(_dl_SPAWN_DATAKEY_A1,_spawn_datakey1); continue;  }
                        
	                        if (ds_list_find_index(g.dl_RandoEnemy_OBJVER2,_objver1)!=-1) // Flying enemies
	                        {   ds_list_add(_dl_SPAWN_DATAKEY_A2,_spawn_datakey1); continue;  }
                        
	                        if (ds_list_find_index(g.dl_RandoEnemy_OBJVER3,_objver1)!=-1) // Spawners
	                        {   ds_list_add(_dl_SPAWN_DATAKEY_A3,_spawn_datakey1); continue;  }
	                    }
	                }
	            }
	        }
        
        
	        for(_i=1; _i<=3; _i++)
	        {
	            switch(_i){
	            case 1:{ds_list_copy(_dl_SPAWN_DATAKEY_b1,_dl_SPAWN_DATAKEY_A1); break;}
	            case 2:{ds_list_copy(_dl_SPAWN_DATAKEY_b1,_dl_SPAWN_DATAKEY_A2); break;} // Flying enemies
	            case 3:{ds_list_copy(_dl_SPAWN_DATAKEY_b1,_dl_SPAWN_DATAKEY_A3); break;} // Spawners
	            }
            
	            if (_dl_SPAWN_DATAKEY_b1[|0]==_dl_SPAWN_DATAKEY_A3[|0]  // if it's a spawner
	            && !EnemySpawners_WILL_RANDOMIZE )                      // if NOT randomizing spawners
	            {
	                continue;
	            }
            
            
	            ds_list_copy(   _dl_SPAWN_DATAKEY_b2,_dl_SPAWN_DATAKEY_b1);
	            ds_list_shuffle(_dl_SPAWN_DATAKEY_b2);
	                         _count = ds_list_size(_dl_SPAWN_DATAKEY_b2);
	            for(_j=0; _j<_count; _j++)
	            {
	                _spawn_datakey1 = string(_dl_SPAWN_DATAKEY_b1[|_j]); // original
	                _spawn_datakey2 = string(_dl_SPAWN_DATAKEY_b2[|_j]); // shuffled
	                _objver1 = g.dm_spawn[?_spawn_datakey1+STR_OBJVER];
	                _objver2 = g.dm_spawn[?_spawn_datakey2+STR_OBJVER];
	                if(!is_undefined(_objver1) 
	                &&  is_string(   _objver1) 
	                && !is_undefined(_objver2) 
	                &&  is_string(   _objver2) )
	                {
	                    dm_save_data[?_datakey1+_spawn_datakey1+STR_Spawn+STR_Datakey+STR_Randomized] = _spawn_datakey2;
	                    dm_save_data[?_datakey1+_spawn_datakey1+STR_OBJVER+STR_Randomized] = _objver2;
	                    //dm_save_data[?_datakey1+_spawn_datakey2+STR_OBJVER+STR_Randomized] = _objver1; // This is overwriting data and causing too many or too little of an objver
	                    if (_DEBUG1){
	                    ds_list_add(_dl1,_spawn_datakey1);
	                    ds_list_add(_dl2,_objver1);
	                    }
	                }
	            }
	        }
        
	        ds_list_destroy(_dl_SPAWN_DATAKEY_A1); _dl_SPAWN_DATAKEY_A1=undefined;
	        ds_list_destroy(_dl_SPAWN_DATAKEY_A2); _dl_SPAWN_DATAKEY_A2=undefined;
	        ds_list_destroy(_dl_SPAWN_DATAKEY_A3); _dl_SPAWN_DATAKEY_A3=undefined;
	        ds_list_destroy(_dl_SPAWN_DATAKEY_b1); _dl_SPAWN_DATAKEY_b1=undefined;
	        ds_list_destroy(_dl_SPAWN_DATAKEY_b2); _dl_SPAWN_DATAKEY_b2=undefined;
        
	        if (_DEBUG1){
	        ds_list_sort(_dl2,true);
	        sdm("");
	        for(_i=ds_list_size(_dl1)-1; _i>=0; _i--) ds_list_add(_dl3,dm_save_data[?_datakey1+_dl1[|_i]+STR_OBJVER+STR_Randomized]);
	        ds_list_sort(_dl3,true);
	        _val=_dl2[|0];
	        _count=ds_list_size(_dl2);
	        for(_i=0; _i<_count; _i++){
	        if(_val!=_dl2[|_i]){_val=_dl2[|_i]; sdm("");}
	        sdm(_dl2[|_i]+"  -  "+_dl3[|_i]);
	        }
	        sdm("");
        
	        ds_list_destroy(_dl1); _dl1=undefined;
	        ds_list_destroy(_dl2); _dl2=undefined;
	        ds_list_destroy(_dl3); _dl3=undefined;
	        }
	        break;}//case 1:
        
        
        
        
        
	        // ====================================================================
	        case 2:{ // TYPES ---------------------------------------------
	        _datakey1 = _datakey+STR_Type;
        
	        for(_i=1; _i<=3; _i++)
	        {
	            ds_list_clear(dl_list1);
            
	            switch(_i){
	            default:{ds_list_copy(dl_list2,g.dl_RandoEnemy_OBJVER1); break;}
	            case  2:{ds_list_copy(dl_list2,g.dl_RandoEnemy_OBJVER2); break;} // Flying
	            case  3:{ds_list_copy(dl_list2,g.dl_RandoEnemy_OBJVER3); break;} // Spawners
	            }
            
	            if (dl_list2[|0]==g.dl_RandoEnemy_OBJVER3[|0] 
	            && !EnemySpawners_WILL_RANDOMIZE )
	            {
	                continue;
	            }
            
	                         _count=ds_list_size(dl_list2);
	            for(_j=0; _j<_count; _j++)
	            {
	                _objver1=dl_list2[|_j];
	                if(!is_undefined(_objver1) 
	                &&  is_string(   _objver1) )
	                {
	                        _difficulty = val(g.dm_RandoEnemy[?_objver1+STR_Difficulty],1);
	                    if (_difficulty<=Enemy_DIFFICULTY 
	                    &&  ds_list_find_index(dl_list1,_objver1)==-1 )
	                    {   ds_list_add(       dl_list1,_objver1);  }
	                }
	            }
            
	            if (ds_list_size(dl_list1)>=2)
	            {
	                ds_list_copy(       dl_list2,dl_list1);
	                ds_list_shuffle(    dl_list2);
	                for(_j=ds_list_size(dl_list2)-1; _j>=0; _j--)
	                {
	                    _objver1 =      dl_list1[|_j];
	                    _objver2 =      dl_list2[|_j];
	                    if(!is_undefined(_objver1) 
	                    &&  is_string(   _objver1) 
	                    && !is_undefined(_objver2) 
	                    &&  is_string(   _objver2) )
	                    {   //            _datakey = STR_Randomize+STR_Enemy
	                        dm_save_data[?_datakey+STR_Type+_objver1+STR_OBJVER+STR_Randomized] = _objver2;
	                        dm_save_data[?_datakey+STR_Type+_objver2+STR_OBJVER+STR_Randomized] = _objver1;
	                    }
	                }
	            }
	        }
	        break;}//case 2:
	    }//switch(EnemyChars_WILL_RANDOMIZE)
	}



	if (EnemyHP_WILL_RANDOMIZE)
	{
	    //if (DEBUG){sdm(" "); dm_debug_data[?STR_Data+'01'+hex_str(++debug_data_count)]=" ";}
    
	    random_set_seed(Rando_SEED);
    
	    _datakey = STR_Enemy+STR_HP;
    
	                 _count=ds_list_size(g.dl_HP);
	    for(_i=0; _i<_count; _i++)
	    {
	            _val  = g.dl_HP[|_i];
	        if (_val)
	        {
	            _val0 = max(round(_val*.25), 1);
	            _max  = _val + _val0;
	            _min  = _val - _val0;
	            _val  = _min + irandom(_max-_min);
	            _val  = max(_val,1);
	        }
        
	        dm_save_data[?_datakey+hex_str(_i)] = _val;
	    }
	}



	if (EnemyDamage_WILL_RANDOMIZE)
	{
	    //if (DEBUG){sdm(" "); dm_debug_data[?STR_Data+'01'+hex_str(++debug_data_count)]=" ";}
    
	    random_set_seed(Rando_SEED);
    
	    _datakey = STR_Enemy+STR_Damage;
    
	    var _EnemyDamage_level_COUNT=ds_grid_height(g.dg_enemy_damage);
	    for(_i=ds_grid_width(g.dg_enemy_damage)-1; _i>=0; _i--) // LIFE Level
	    {
	        for(_j=_EnemyDamage_level_COUNT-1; _j>=0; _j--) // Enemy Damage Level
	        {
	                _val  = g.dg_enemy_damage[#_i,_j];
	            if (_val)
	            {
	                _val0 = max(round(_val*.1), 1);
	                _max  = _val + _val0;
	                _min  = _val - _val0;
	                _val  = _min + irandom(_max-_min);
	                _val  = max(_val,1);
	            }
            
	            dm_save_data[?_datakey+hex_str(_i)+hex_str(_j)] = _val;
	        }
	    }
	}
	// -------------------------------------------------------------------------------------
























	// ======================================================================================
	// ======================================================================================
	// ======================================================================================
	// ======================================================================================
	if (LevelCosts_WILL_RANDOMIZE)
	{
	    //if (DEBUG){sdm(" "); dm_debug_data[?STR_Data+'01'+hex_str(++debug_data_count)]=" ";}
    
	    random_set_seed(Rando_SEED);
    
	    _datakey = STR_Level+STR_Cost;
    
	    _count=ds_grid_height(f.dg_xp_next);
	    for(_i=ds_grid_width( f.dg_xp_next)-1; _i>=0; _i--)
	    {
	        _val0 = -1;
	        _val2 =  1;
	        for(_j=0; _j<_count; _j++)
	        {
	            //if (_j==_count-1) continue;
            
	            _val1 = f.dg_xp_next[#_i,_j];
	            if (_val0 == -1) _val2 = _val1;
            
	            if (_val0 == -1 
	            ||  _val1 != _val0 )
	            {
	                _val0  = _val1;
                
	                _max   = _val0 + round(_val0 * .25);
	                _min   = _val0 - round(_val0 * .25);
	                _val   = _min + irandom(_max-_min);
                
	                _min   = _val2+1; // at least 1 higher than last prev idx
	                _max   = XP_MAX - (_count-1-_j);
	                _val   = clamp(_val, _min,_max);
                
	                _val2  = _val;
	            }
	            dm_save_data[?_datakey+hex_str(_i)+hex_str(_j)] = _val2;
            
	            if (0&&DEBUG){ if(!_j) {debug_str=""; sdm(debug_str); dm_debug_data[?STR_Data+"01"+hex_str(++debug_data_count)]=debug_str;}
	                debug_str  = _datakey+"_"+hex_str(_i)+hex_str(_j);
	                debug_str += " "+string(_val2)+" $"+hex_str(_val2);
	                sdm(debug_str); dm_debug_data[?STR_Data+"01"+hex_str(++debug_data_count)] = debug_str;
	            }
	        }
	    }
	}




	// ======================================================================================
	if (XP_WILL_RANDOMIZE)
	{
	    //if (DEBUG){sdm(" "); dm_debug_data[?STR_Data+'01'+hex_str(++debug_data_count)]=" ";}
    
	    random_set_seed(Rando_SEED);
    
	    _datakey = STR_XP;
    
	                 _count=ds_list_size(g.dl_XP);
	    for(_i=0; _i<_count; _i++)
	    {
	            _val  = g.dl_XP[|_i];
	        if (_val)
	        {
	            _val0 = max(round(_val*.25), 1);
	            _max  = _val + _val0;
	            _min  = _val - _val0;
	            _val  = _min + irandom(_max-_min);
	            _val  = max(_val,1);
	        }
        
	        dm_save_data[?_datakey+hex_str(_i)] = _val;
        
        
	        if (0&&DEBUG){
	        debug_str = string(_val);
	        debug_str = string_repeat(" ", 4-string_length(debug_str)) + debug_str;
	        debug_str = "dl_XP[|$"+hex_str(_i)+"] = " + debug_str;
	        sdm(debug_str);dm_debug_data[?STR_Data+"01"+hex_str(++debug_data_count)]=debug_str;
	        }
	    }
	    //if (DEBUG){sdm(" "); dm_debug_data[?STR_Data+'01'+hex_str(++debug_data_count)]=" ";}
	}
	// -------------------------------------------------------------------------------------























	//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	//============================================================================
	if (TownLocations_WILL_RANDOMIZE)
	{
	    Rando_randomize_town_locations();
	}
















	//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	//============================================================================
	if (DungeonRooms_WILL_RANDOMIZE)
	{
	    //if (DEBUG){sdm(" "); dm_debug_data[?STR_Data+'01'+hex_str(++debug_data_count)]=" ";}
    
	    //random_set_seed(Rando_SEED);
	}






















	//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	//============================================================================
	if (DungeonLocations_WILL_RANDOMIZE)
	{
	    if (DEBUG){sdm(" "); dm_debug_data[?STR_Data+"01"+hex_str(++debug_data_count)]=" ";}
	    if (DEBUG){debug_str="--- DUNGEON LOCATION RANDO ---"; sdm(debug_str); dm_debug_data[?STR_Data+"01"+hex_str(++debug_data_count)]=debug_str;}
    
	    random_set_seed(Rando_SEED);
    
    
	    ds_list_clear(dl_list1);
	    ds_list_add(dl_list1,Area_PalcA); // Parapa Palace
	    ds_list_add(dl_list1,Area_PalcB); // Midoro Palace
	    ds_list_add(dl_list1,Area_PalcC); // Island Palace
	    ds_list_add(dl_list1,Area_PalcD); // Maze Isl Palace
	    ds_list_add(dl_list1,Area_PalcE); // Palace on the Sea
	    ds_list_add(dl_list1,Area_PalcF); // Hidden Palace
	    ds_list_add(dl_list1,Area_PalcG); // Great Palace
	    //ds_list_add(dl_list1,Area_PalcH); // Dragmire Tower
    
	    ds_list_copy(dl_list2,dl_list1);
	    ds_list_shuffle(dl_list2);
    
	    var _dl_list1_COUNT = ds_list_size(dl_list1);
	    for(_i=0; _i<_dl_list1_COUNT; _i++)
	    //for(_i=ds_list_size(dl_list1)-1; _i>=0; _i--)
	    {
	        _area1 = dl_list1[|_i];
	        _area2 = dl_list2[|_i];
        
	        switch(_area1){
	        default:{        _datakey="0";               _dungeon_name1="0";                       break;}
	        case Area_PalcA:{_datakey=MK_OWRC_PAL_PRPA1; _dungeon_name1=STR_Parapa_Palace;         break;}
	        case Area_PalcB:{_datakey=MK_OWRC_PAL_MDRO1; _dungeon_name1=STR_Midoro_Palace;         break;}
	        case Area_PalcC:{_datakey=MK_OWRC_PAL_ISLD1; _dungeon_name1=STR_Island_Palace;         break;}
	        case Area_PalcD:{_datakey=MK_OWRC_PAL_MAZE1; _dungeon_name1=STR_Maze_Island_Palace;    break;}
	        case Area_PalcE:{_datakey=MK_OWRC_PAL_POTS1; _dungeon_name1=STR_Palace_On_The_Sea;     break;}
	        case Area_PalcF:{_datakey=MK_OWRC_PAL_THRE1; _dungeon_name1=STR_Three_Eye_Rock_Palace; break;}
	        case Area_PalcG:{_datakey=MK_OWRC_PAL_GRET1; _dungeon_name1=STR_Great_Palace;          break;}
	        case Area_PalcH:{_datakey=MK_OWRC_PAL_DRAG1; _dungeon_name1=STR_Dragmire_Tower;        break;}
	        }
	        _dungeon_num1 = val(g.dm_dungeon[?STR_Dungeon+STR_Num+_dungeon_name1]);
	        _owrc1 = val(g.overworld.dm_data[?_datakey], -1);
	        /*
	        _datakey = _area1+STR_Entrance+"01";
	        _exit_name1 = g.dm_rm[?_datakey];
	        if (is_undefined(_exit_name1)){sdm("");sdm("!!! WARNING !!!  g.dm_rm[?"+_datakey+"] is undefined.");sdm("");}
	        //_exit_name1 = val(_exit_name1,STR_undefined);
	        */
        
	        switch(_area2){
	        default:{        _datakey="0";               _dungeon_name2="0";                       break;}
	        case Area_PalcA:{_datakey=MK_OWRC_PAL_PRPA1; _dungeon_name2=STR_Parapa_Palace;         break;}
	        case Area_PalcB:{_datakey=MK_OWRC_PAL_MDRO1; _dungeon_name2=STR_Midoro_Palace;         break;}
	        case Area_PalcC:{_datakey=MK_OWRC_PAL_ISLD1; _dungeon_name2=STR_Island_Palace;         break;}
	        case Area_PalcD:{_datakey=MK_OWRC_PAL_MAZE1; _dungeon_name2=STR_Maze_Island_Palace;    break;}
	        case Area_PalcE:{_datakey=MK_OWRC_PAL_POTS1; _dungeon_name2=STR_Palace_On_The_Sea;     break;}
	        case Area_PalcF:{_datakey=MK_OWRC_PAL_THRE1; _dungeon_name2=STR_Three_Eye_Rock_Palace; break;}
	        case Area_PalcG:{_datakey=MK_OWRC_PAL_GRET1; _dungeon_name2=STR_Great_Palace;          break;}
	        case Area_PalcH:{_datakey=MK_OWRC_PAL_DRAG1; _dungeon_name2=STR_Dragmire_Tower;        break;}
	        }
	        _dungeon_num2 = val(g.dm_dungeon[?STR_Dungeon+STR_Num+_dungeon_name2]);
	        _owrc2 = val(g.overworld.dm_data[?_datakey], -1);
	        /*
	        _datakey = _area2+STR_Entrance+"01";
	        _exit_name2 = g.dm_rm[?_datakey];
	        if (is_undefined(_exit_name2)){sdm("");sdm("!!! WARNING !!!  g.dm_rm[?"+_datakey+"] is undefined.");sdm("");}
	        //_exit_name2 = val(_exit_name2,STR_undefined);
	        */
        
        
	        dm_save_data[?STR_Dungeon+STR_Rando+_dungeon_name2+"A"] = _dungeon_name1; // _dungeon_name2+"A": Get overworld dungeon containing _dungeon_name2
	        dm_save_data[?STR_Dungeon+STR_Rando+_dungeon_name1+"B"] = _dungeon_name2; // _dungeon_name1+"B": Get dungeon inhabiting overworld dungeon _dungeon_name1
        
        
	        if (_area1!=_area2)
	        {
	            _datakey2 = get_dk_dungeon_entrance(_dungeon_num2);
	            _exit_name2 = g.dm_rm[?_datakey2];
            
	            for(_j=0; _j<$100; _j++) // each possible scene of the dungeon
	            {
	                _rm_name2 = _area2+hex_str(_j);
	                if(!is_undefined(g.dm_rm[?_rm_name2+STR_Rm+STR_Num+STR_Game]))
	                {
	                    dm_save_data[?_rm_name2+STR_Dungeon+STR_Name] = _dungeon_name1;
	                    if(!is_undefined(_exit_name2)) dm_save_data[?_rm_name2+STR_Dungeon+STR_Entrance] = _exit_name2;
                    
	                    dm_save_data[?_rm_name2+STR_OWRC] = _owrc1;
	                }
	            }
            
            
            
            
	            for(_j=0; _j<4; _j++) // each PC ow dir when entering the dungeon
	            {
	                _val = $1<<_j;
	                _datakey = hex_str(_val)+STR_Exit;
	                _exit_name3 = g.overworld.dm_data[?hex_str(_owrc1)+_datakey];
	                _exit_name4 = g.overworld.dm_data[?hex_str(_owrc2)+_datakey];
	                if(!is_undefined(_exit_name3) 
	                && !is_undefined(_exit_name4) )
	                {//val(overworld.dm_data[?hex_str(overworld.exit_grid_xy)+hex_str(overworld.pc_dir)+STR_Exit], EXIT_NAME_GAME_START); // exiting overworld
	                    if (_val&$C) _datakey = hex_str(_val^$C)+STR_Exit;
	                    dm_save_data[?hex_str(_owrc1)+_datakey] = _exit_name4;
	                }
	            }
            
            
	            var           _DUNGEON2_ENTRANCE_COUNT = val(g.dm_rm[?_area2+STR_Entrance+STR_Count]);
	            for(_j=1; _j<=_DUNGEON2_ENTRANCE_COUNT; _j++)
	            {
	                _datakey = _area2+STR_Entrance+hex_str(_j);
	                _exit_name3 = g.dm_rm[?_datakey];
	                if (is_undefined(_exit_name3))
	                {
	                    sdm("");sdm("!!! WARNING !!!  g.dm_rm[?"+_datakey+"] is undefined.");sdm("");
	                    continue;//_j
	                }
                
	                _datakey = _exit_name3+STR_goto_reen;
	                _exit_name4 = g.dm_rm[?_datakey];
	                if (is_undefined(_exit_name4))
	                {
	                    sdm("");sdm("!!! WARNING !!!  g.dm_rm[?"+_datakey+"] is undefined.");sdm("");
	                    continue;//_j
	                }
                
                
	                //if (string_pos(Area_OvrwA,_exit_name4) 
	                if(!val(g.dm_rm[?_exit_name3+STR_Rando+"_Safe"])) // STR_Rando+"_Safe": Don't let rando change where this goes to
	                {
	                    dm_save_data[?_exit_name3+STR_goto_reen] = Area_OvrwA+hex_str(_owrc1);
	                    dm_save_data[?_exit_name3+STR_OWRC] = _owrc1;
	                }
	            }
	            //g.dm_rm[?g.exit_leave.exitName+STR_OWRC]
            
            
            
            
	            if (_dungeon_name1==STR_Great_Palace) // if the randomized dungeon links to Great Palace in overworld
	            {   // This is to resolve the the exit to the right of ShadowBoss that links to a cave system.
	                _exit_name1 = g.dm_rm[?STR_Boss+STR_Dungeon+STR_Exit+STR_Name+_dungeon_name1];
	                _exit_name2 = g.dm_rm[?STR_Boss+STR_Dungeon+STR_Exit+STR_Name+_dungeon_name2];
	                _exit_name3 = g.dm_rm[?string(val(_exit_name1))+STR_goto_reen];
	                //if(!is_undefined(_exit_name1) 
	                if(!is_undefined(_exit_name2) 
	                && !is_undefined(_exit_name3) )
	                {
	                    dm_save_data[?_exit_name2+STR_goto_reen] = _exit_name3; // leave dungeon
	                    dm_save_data[?_exit_name3+STR_goto_reen] = _exit_name2; // enter dungeon
	                }
	            }
	        }
        
	        if (DEBUG){debug_str = _area1+" - "+_area2+" : "+_dungeon_name1+" - "+_dungeon_name2;
	        sdm(debug_str); dm_debug_data[?STR_Data+"01"+hex_str(++debug_data_count)] = debug_str;
	        }
	    }
	}
	////          owrc + ow move_dir  + "_Exit"
	//dm_data[?_datakey+hex_str(1<<_k)+STR_Exit] = _exit_name; // goto rm exit

















	//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	//============================================================================
	if (DungeonBoss_WILL_RANDOMIZE)
	{
	    if (DEBUG){sdm(" "); dm_debug_data[?STR_Data+"01"+hex_str(++debug_data_count)]=" ";}
	    if (DEBUG){debug_str="--- BOSS RANDO ---"; sdm(debug_str); dm_debug_data[?STR_Data+"01"+hex_str(++debug_data_count)]=debug_str;}
    
	    random_set_seed(Rando_SEED);
    
    
	    var _a_dungeon_num, _b_dungeon_num, _c_dungeon_num;  // dungeon num
	    var _a_dungeon_name,_b_dungeon_name,_c_dungeon_name; // dungeon name
	    var _a_dungeon_area,_b_dungeon_area,_c_dungeon_area; // dungeon area
	    var _a_scene_name,  _b_scene_name,  _c_scene_name;   // boss scene
	    var _a_exit_name1a, _b_exit_name1a, _c_exit_name1a;  // boss dungeon exit
	    var _a_exit_name1b, _b_exit_name1b, _c_exit_name1b;  // boss dungeon exit go to exit
	    var _a_exit_name2a, _b_exit_name2a, _c_exit_name2a;  // boss entrance exit
	    var _a_exit_name2b, _b_exit_name2b, _c_exit_name2b;  // boss entrance exit go to exit
    
	    var _a_owrc, _b_owrc, _c_owrc;
	    var _a_map_area_name, _b_map_area_name, _c_map_area_name;
    
    
	    var _dl_a_dungeon_name = ds_list_create(); // the overworld dungeon
	    var _dl_b_dungeon_name = ds_list_create(); // the dungeon inhabiting the overworld dungeon
	    var _dl_c_dungeon_name = ds_list_create(); // the dungeon the randomized boss scene comes from
    
    
	    // _dl_b_dungeon_name: Dungeons that qualify for boss rando
	    ds_list_clear(_dl_b_dungeon_name);
	    ds_list_add(  _dl_b_dungeon_name,STR_Parapa_Palace);         // Horsehead
	    ds_list_add(  _dl_b_dungeon_name,STR_Midoro_Palace);         // Helmethead
	    ds_list_add(  _dl_b_dungeon_name,STR_Island_Palace);         // Rebonack
	    ds_list_add(  _dl_b_dungeon_name,STR_Maze_Island_Palace);    // Carock
	    ds_list_add(  _dl_b_dungeon_name,STR_Palace_On_The_Sea);     // Gooma
	    ds_list_add(  _dl_b_dungeon_name,STR_Three_Eye_Rock_Palace); // Barba
	    //ds_list_add(  _dl_b_dungeon_name,STR_Great_Palace);
	    //ds_list_add(  _dl_b_dungeon_name,STR_Dragmire_Tower);
    
    
	    var _dm_music = ds_map_create();
	    var _dm_palette = ds_map_create();
    
    
    
    
    
	    // Populate _dl_a_dungeon_name with the overworld dungeons containing dungeons qualified for boss rando
	    ds_list_clear(_dl_a_dungeon_name);
	    var          _dl_b_dungeon_name_COUNT = ds_list_size(_dl_b_dungeon_name);
	    for(_i=0; _i<_dl_b_dungeon_name_COUNT; _i++)
	    {
	        _b_dungeon_name = _dl_b_dungeon_name[|_i]; // dungeon qualified for boss rando
        
	        _datakey = STR_Dungeon+STR_Rando+_b_dungeon_name+"A";
	        _a_dungeon_name = dm_save_data[?_datakey];
	        if (DungeonLocations_WILL_RANDOMIZE 
	        &&  is_undefined(_a_dungeon_name) )
	        {
	            sdm("");sdm("!!! WARNING !!!  dm_save_data[?"+_datakey+"] is undefined.");sdm("");
	            //sdm("");sdm("!!! WARNING !!!  dm_save_data[?"+_datakey+"] is undefined. (_datakey = STR_Dungeon+STR_Rando+_b_dungeon_name+'A')");sdm("");
	            //break;//_i
	        }
        
	        //ds_list_add(_dl_a_dungeon_name,_a_dungeon_name);
	        ds_list_add(_dl_a_dungeon_name,val(_a_dungeon_name,_b_dungeon_name));
	    }
    
	    // Boss rando dungeon order
	    ds_list_copy(   _dl_c_dungeon_name,_dl_b_dungeon_name);
	    ds_list_shuffle(_dl_c_dungeon_name);
    
    
    
    
    
	    _val1 = string_length(_dl_a_dungeon_name[|0]);
	    _val2 = _val1;
	    var _dl_a_dungeon_name_COUNT = ds_list_size(_dl_a_dungeon_name);
	    for(_i=0; _i<_dl_a_dungeon_name_COUNT; _i++)
	    {
	        _val  = string_length(_dl_a_dungeon_name[|_i]);
	        _val1 = min(_val1, _val);
	        _val2 = max(_val2, _val);
	    }
	    var _LEN1 = _val1;
	    var _LEN2 = _val2;
    
    
	    //g.dm_dungeon[?STR_Dungeon+_DUNGEON_NUM_+STR_Area] = area;
	    //g.dm_dungeon[?_DUNGEON_NAME+STR_Area]             = area;
    
	    for(_i=0; _i<_dl_a_dungeon_name_COUNT; _i++)
	    {
	        // a: the overworld dungeon
	        _a_dungeon_name  = _dl_a_dungeon_name[|_i];
	        _a_dungeon_num   = val(g.dm_dungeon[?STR_Dungeon+STR_Num+_a_dungeon_name]);
	        _a_dungeon_area  = val(g.dm_dungeon[?_a_dungeon_name+STR_Area], STR_undefined);
        
	                                                _datakey = STR_Boss+STR_Scene+STR_Name+_a_dungeon_name;
	                         _scene_name = g.dm_rm[?_datakey]; // boss scene
	        if (is_undefined(_scene_name)){sdm("!!! WARNING !!!  _a_scene_name - g.dm_rm[?"+_datakey+"] is undefined.");}
	        _a_scene_name =  _scene_name;
        
	                                               _datakey = STR_Boss+STR_Dungeon+STR_Exit+STR_Name+_a_dungeon_name;
	                         _exit_name = g.dm_rm[?_datakey]; // boss scene dungeon exit
	        if (is_undefined(_exit_name)){sdm("!!! WARNING !!!  _a_exit_name1a - g.dm_rm[?"+_datakey+"] is undefined.");}
	        _a_exit_name1a = _exit_name;
        
	                                               _datakey = _a_exit_name1a+STR_goto_reen;
	                         _exit_name = g.dm_rm[?_datakey]; // boss scene dungeon exit go to exit
	        if (is_undefined(_exit_name)){sdm("!!! WARNING !!!  _a_exit_name1b - g.dm_rm[?"+_datakey+"] is undefined.");}
	        _a_exit_name1b = _exit_name;
        
	                                               _datakey = _a_dungeon_name+STR_Boss+STR_Scene+STR_Entrance+STR_Exit;
	                         _exit_name = g.dm_rm[?_datakey]; // boss scene entrance exit
	        if (is_undefined(_exit_name)){sdm("!!! WARNING !!!  _a_exit_name2a - g.dm_rm[?"+_datakey+"] is undefined.");}
	        _a_exit_name2a = _exit_name;
        
	                                               _datakey = _a_exit_name2a+STR_goto_reen;
	                         _exit_name = g.dm_rm[?_datakey]; // boss scene entrance exit go to exit
	        if (is_undefined(_exit_name)){sdm("!!! WARNING !!!  _a_exit_name2b - g.dm_rm[?"+_datakey+"] is undefined.");}
	        _a_exit_name2b = _exit_name;
        
        
	        _a_owrc = g.dm_rm[?         _a_scene_name+STR_OWRC];
	        _a_owrc = val(dm_save_data[?_a_scene_name+STR_OWRC], _a_owrc);
	        _a_map_area_name = val(g.dm_rm[?_a_scene_name+MapAreaName_DATAKEY], MapAreaName_DEF);
	        //g.dm_rm[?_RM_NAME+MapAreaName_DATAKEY]  = "PARAPA PALACE";
	        //dm_save_data[?_c_scene_name+MapAreaName_DATAKEY] = _map_area_name1;
	        //_map_area_name1 = val(g.dm_town[?_town_name1+MapAreaName_DATAKEY], MapAreaName_DEF);
        
        
        
        
	        // b: the dungeon inhabiting the overworld dungeon
	        _b_dungeon_name = _dl_b_dungeon_name[|_i];
	        _b_dungeon_num  = val(g.dm_dungeon[?STR_Dungeon+STR_Num+_b_dungeon_name]);
	        _b_dungeon_area = val(g.dm_dungeon[?_b_dungeon_name+STR_Area], STR_undefined);
        
	                                                _datakey = STR_Boss+STR_Scene+STR_Name+_b_dungeon_name;
	                         _scene_name = g.dm_rm[?_datakey]; // boss scene
	        if (is_undefined(_scene_name)){sdm("!!! WARNING !!!  _b_scene_name - g.dm_rm[?"+_datakey+"] is undefined.");}
	        _b_scene_name =  _scene_name;
        
	                                               _datakey = STR_Boss+STR_Dungeon+STR_Exit+STR_Name+_b_dungeon_name;
	                         _exit_name = g.dm_rm[?_datakey]; // boss scene dungeon exit
	        if (is_undefined(_exit_name)){sdm("!!! WARNING !!!  _b_exit_name1a - g.dm_rm[?"+_datakey+"] is undefined.");}
	        _b_exit_name1a = _exit_name;
        
	                                               _datakey = _b_exit_name1a+STR_goto_reen;
	                         _exit_name = g.dm_rm[?_datakey]; // boss scene dungeon exit go to exit
	        if (is_undefined(_exit_name)){sdm("!!! WARNING !!!  _b_exit_name1b - g.dm_rm[?"+_datakey+"] is undefined.");}
	        _b_exit_name1b = _exit_name;
        
	                                               _datakey = _b_dungeon_name+STR_Boss+STR_Scene+STR_Entrance+STR_Exit;
	                         _exit_name = g.dm_rm[?_datakey]; // boss scene entrance exit
	        if (is_undefined(_exit_name)){sdm("!!! WARNING !!!  _b_exit_name2a - g.dm_rm[?"+_datakey+"] is undefined.");}
	        _b_exit_name2a = _exit_name;
        
	                                               _datakey = _b_exit_name2a+STR_goto_reen;
	                         _exit_name = g.dm_rm[?_datakey]; // boss scene entrance exit go to exit
	        if (is_undefined(_exit_name)){sdm("!!! WARNING !!!  _b_exit_name2b - g.dm_rm[?"+_datakey+"] is undefined.");}
	        _b_exit_name2b = _exit_name;
        
        
	        _b_owrc = g.dm_rm[?         _b_scene_name+STR_OWRC];
	        _b_owrc = val(dm_save_data[?_b_scene_name+STR_OWRC], _b_owrc);
	        _b_map_area_name = val(g.dm_rm[?_b_scene_name+MapAreaName_DATAKEY], MapAreaName_DEF);
        
        
        
        
	        // c: the dungeon the randomized boss scene comes from
	        _c_dungeon_name = _dl_c_dungeon_name[|_i];
	        _c_dungeon_num  = val(g.dm_dungeon[?STR_Dungeon+STR_Num+_c_dungeon_name]);
	        _c_dungeon_area = val(g.dm_dungeon[?_c_dungeon_name+STR_Area], STR_undefined);
        
	                                                _datakey = STR_Boss+STR_Scene+STR_Name+_c_dungeon_name;
	                         _scene_name = g.dm_rm[?_datakey]; // boss scene
	        if (is_undefined(_scene_name)){sdm("!!! WARNING !!!  _c_scene_name - g.dm_rm[?"+_datakey+"] is undefined.");}
	        _c_scene_name =  _scene_name;
        
	                                               _datakey = STR_Boss+STR_Dungeon+STR_Exit+STR_Name+_c_dungeon_name;
	                         _exit_name = g.dm_rm[?_datakey]; // boss scene dungeon exit
	        if (is_undefined(_exit_name)){sdm("!!! WARNING !!!  _c_exit_name1a - g.dm_rm[?"+_datakey+"] is undefined.");}
	        _c_exit_name1a = _exit_name;
        
	                                               _datakey = _c_exit_name1a+STR_goto_reen;
	                         _exit_name = g.dm_rm[?_datakey]; // boss scene dungeon exit go to exit
	        if (is_undefined(_exit_name)){sdm("!!! WARNING !!!  _c_exit_name1b - g.dm_rm[?"+_datakey+"] is undefined.");}
	        _c_exit_name1b = _exit_name;
        
	                                               _datakey = _c_dungeon_name+STR_Boss+STR_Scene+STR_Entrance+STR_Exit;
	                         _exit_name = g.dm_rm[?_datakey]; // boss scene entrance exit
	        if (is_undefined(_exit_name)){sdm("!!! WARNING !!!  _c_exit_name2a - g.dm_rm[?"+_datakey+"] is undefined.");}
	        _c_exit_name2a = _exit_name;
        
	                                               _datakey = _c_exit_name2a+STR_goto_reen;
	                         _exit_name = g.dm_rm[?_datakey]; // boss scene entrance exit go to exit
	        if (is_undefined(_exit_name)){sdm("!!! WARNING !!!  _c_exit_name2b - g.dm_rm[?"+_datakey+"] is undefined.");}
	        _c_exit_name2b = _exit_name;
        
        
	        _c_owrc = g.dm_rm[?         _c_scene_name+STR_OWRC];
	        _c_owrc = val(dm_save_data[?_c_scene_name+STR_OWRC], _c_owrc);
	        _c_map_area_name = val(g.dm_rm[?_c_scene_name+MapAreaName_DATAKEY], MapAreaName_DEF);
        
        
        
        
        
	        if (_c_scene_name!=_b_scene_name)
	        {
	            dm_save_data[?_b_scene_name+STR_Overworld+STR_Dungeon+STR_Name] = _a_dungeon_name;
	            dm_save_data[?_c_scene_name+STR_Overworld+STR_Dungeon+STR_Name] = _a_dungeon_name;
            
	            dm_save_data[?STR_Boss+STR_Scene+STR_Name+_b_scene_name+STR_Randomized] = _c_scene_name;
	            dm_save_data[?STR_Boss+STR_Scene+STR_Name+_c_scene_name+STR_Normal]     = _b_scene_name;
            
	            //dm_save_data[?STR_Boss+STR_Scene+STR_Dungeon+_c_scene_name+STR_Randomized] = _c_scene_name;
	            //_b_dungeon_num
	            //var _DUNGEON_NUM       = val(f.dm_rando[?g.rm_name+STR_Dungeon+STR_Num], g.dungeon_num);
	            dm_save_data[?STR_Dungeon+hex_str(_c_dungeon_num)+STR_Dungeon+STR_Num] = _b_dungeon_num;
	            dm_save_data[?_c_scene_name+STR_Dungeon+STR_Num]  = _b_dungeon_num;
	            dm_save_data[?_c_scene_name+STR_Dungeon+STR_Area] = _b_dungeon_area;
            
	            dm_save_data[?_c_scene_name+STR_Scene+STR_Name] = _b_scene_name;
            
	            dm_save_data[?_c_scene_name+MapAreaName_DATAKEY] = _b_map_area_name;
            
            
            
	            // So the game knows what dungeon to continue at after game over
	            _datakey = get_dk_dungeon_entrance(get_dungeon_num(_b_scene_name));
	            _exit_name = g.dm_rm[?_datakey];
	            if(!is_undefined(_exit_name))
	            {
	                dm_save_data[?_c_scene_name+STR_Dungeon+STR_Entrance] = _exit_name;
	            }
	            else
	            {
	                sdm("");sdm("!!! WARNING !!!  g.dm_rm[?"+_datakey+"] is undefined.");sdm("");
	            }
            
            
            
            
	            // Link the c-boss-dungeon-exit and the a-boss-dungeon-exit together
	            if (string_pos(Area_OvrwA,_a_exit_name1b)) // if the overworld-dungeon boss-dungeon-exit goes to the overworld
	            {
	                _owrc1 = string_copy(_a_exit_name1b, string_length(Area_OvrwA)+1, 4);
	                _owrc1 = str_hex(_owrc1);
	                //_owrc1 = val(g.dm_rm[?_a_exit_name1b+STR_OWRC], _owrc1);
	                dm_save_data[?_c_exit_name1a+STR_OWRC] = _owrc1;
	            }
	            else
	            {
	                dm_save_data[?_a_exit_name1b+STR_goto_reen] = _c_exit_name1a;
	            }
            
	            dm_save_data[?_c_exit_name1a+STR_goto_reen] = _a_exit_name1b;
            
            
            
            
	            // Link the c-boss-entrance-exit and the b-boss-entrance-exit together
	            dm_save_data[?_c_exit_name2a+STR_goto_reen] = _b_exit_name2b;
	            dm_save_data[?_b_exit_name2b+STR_goto_reen] = _c_exit_name2a;
            
            
            
            
	            _dk_music2 = g.dm_rm[?_b_scene_name+STR_Music];
	            if(!is_undefined(_dk_music2)) dm_save_data[?_c_scene_name+STR_Music] = _dk_music2;
            
            
	            _palette = dm_save_data[?STR_Palette+STR_Rando+_b_scene_name];
	            //_palette = dm_save_data[?_b_scene_name+STR_Palette];
	            if(!is_undefined(_palette))
	            {
	                _dm_palette[?hex_str(_i)+"_c_scene_name"] = _c_scene_name;
	                _dm_palette[?hex_str(_i)+"_palette"]      = _palette;
	            }
            
	            _datakey = _b_scene_name+STR_file_name+STR_Quest+"01";
	            _file_name = g.dm_rm[?_datakey]; // Tiled file name. Example: "PalcA_004"
	            if(!is_undefined(_file_name))
	            {
	                _palette = p.dm_scene_palette[?_file_name];
	                if(!is_undefined(_palette))
	                {
	                    _palette = string_copy(_palette, 1, (COL_PER_PAL<<1)<<2);
	                    dm_save_data[?_c_scene_name+STR_Palette] = _palette;
	                }
	            }
            
            
	            dm_save_data[?_c_scene_name+STR_OWRC] = _a_owrc;
	        }
        
	        sdm(" ");
	        sdm("_a_dngn:   "+string_copy(_a_dungeon_name,1,_LEN1)+", _b_dngn:   "+string_copy(_b_dungeon_name,1,_LEN1)+", _c_dngn:   "+string_copy(_c_dungeon_name,1,_LEN1));
	        sdm("_a_scen:   "+_a_scene_name  +",     _b_scen:   "+_b_scene_name  +",     _c_scen:   "+_c_scene_name);
	        sdm("_a_exit1a: "+_a_exit_name1a +",   _b_exit1a: "  +_b_exit_name1a +",   _c_exit1a: "  +_c_exit_name1a);
	        sdm("_a_exit1b: "+_a_exit_name1b +",   _b_exit1b: "  +_b_exit_name1b +",   _c_exit1b: "  +_c_exit_name1b);
	        sdm("_a_exit2a: "+_a_exit_name2a +",   _b_exit2a: "  +_b_exit_name2a +",   _c_exit2a: "  +_c_exit_name2a);
	        sdm("_a_exit2b: "+_a_exit_name2b +",   _b_exit2b: "  +_b_exit_name2b +",   _c_exit2b: "  +_c_exit_name2b);
        
	        if (DEBUG){debug_str = _b_scene_name+" - "+_c_scene_name;
	        sdm(debug_str); dm_debug_data[?STR_Data+"01"+hex_str(++debug_data_count)] = debug_str;
	        }
	    }
    
    
    
	    // Set the right rando palette for the boss room
	    for(_i=0; _i<_dl_a_dungeon_name_COUNT; _i++)
	    {
	        _c_scene_name = _dm_palette[?hex_str(_i)+"_c_scene_name"];
	        _palette      = _dm_palette[?hex_str(_i)+"_palette"];
	        if(!is_undefined(_c_scene_name) 
	        && !is_undefined(_palette) )
	        {
	            dm_save_data[?STR_Palette+STR_Rando+_c_scene_name] = _palette;
	            //dm_save_data[?_c_scene_name+STR_Palette] = _palette;
	        }
	    }
    
    
    
	    ds_list_destroy(_dl_a_dungeon_name); _dl_a_dungeon_name=undefined;
	    ds_list_destroy(_dl_b_dungeon_name); _dl_b_dungeon_name=undefined;
	    ds_list_destroy(_dl_c_dungeon_name); _dl_c_dungeon_name=undefined;
	    ds_map_destroy(_dm_music); _dm_music=undefined;
	    ds_map_destroy(_dm_palette); _dm_palette=undefined;
	}




















	//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	//============================================================================
	if (SkillLocations_WILL_RANDOMIZE)
	{
	    //if (DEBUG){sdm(" "); dm_debug_data[?STR_Data+'01'+hex_str(++debug_data_count)]=" ";}
    
	    //random_set_seed(Rando_SEED);
	}


























	// ======================================================================================
	// ======================================================================================
	// ======================================================================================
	// ======================================================================================
	if (SpellCosts_WILL_RANDOMIZE)
	{
	    Rando_randomize_spell_costs();
	}





	// ======================================================================================
	if (SpellLocations_WILL_RANDOMIZE)  // Randomize spell locations
	{
	    random_set_seed(Rando_SEED);
    
    
	    var          _dl_spells=ds_list_create();
	    ds_list_copy(_dl_spells,dl_SPELLS);
	    var          _dl_towns=ds_list_create();
	    ds_list_copy(_dl_towns,dl_TOWN_NAMES);
	    var _dl_options=ds_list_create();
    
	    if(!ItemLocations_WILL_RANDOMIZE) // if NOT randomizing items
	    {
	        // JUMP must be at Rauru or Ruto because it's needed to get through JUMP cave
	        ds_list_add(  _dl_options,STR_Rauru,STR_Ruto);
	        _spell_name = STR_JUMP;
	        _town_name  = _dl_options[|irandom(ds_list_size(_dl_options)-1)];
	        ds_list_delete(_dl_spells, ds_list_find_index(_dl_spells, _spell_name));
	        ds_list_delete(_dl_towns,  ds_list_find_index(_dl_towns,  _town_name));
	        ds_list_delete(_dl_options,ds_list_find_index(_dl_options,_town_name));
	        dm_save_data[?_spell_name+STR_Location] = _town_name;
	        dm_save_data[? _town_name+STR_Spell]    = _spell_name;
        
	        // FAIRY must be at Rauru, Ruto, Saria, Mido because it's needed to get to P3 for the RAFT
	        ds_list_add(  _dl_options,STR_Saria,STR_Mido);
	        _spell_name = STR_FAIRY;
	        _town_name  = _dl_options[|irandom(ds_list_size(_dl_options)-1)];
	        ds_list_delete(_dl_spells, ds_list_find_index(_dl_spells, _spell_name));
	        ds_list_delete(_dl_towns,  ds_list_find_index(_dl_towns,  _town_name));
	        ds_list_delete(_dl_options,ds_list_find_index(_dl_options,_town_name));
	        dm_save_data[?_spell_name+STR_Location] = _town_name;
	        dm_save_data[? _town_name+STR_Spell]    = _spell_name;
        
	        if (QUEST_NUM==2 
	        &&  ds_list_find_index(_dl_spells,STR_ENIGMA)!=-1 
	        &&  ds_list_find_index(_dl_towns,STR_Bulblin)!=-1 )
	        {   // ENIGMA cannot be at Bulblin because it's required for BRACELET which is required to get to Bulblin.
	            ds_list_clear(_dl_options);
	            for(_i=ds_list_size(_dl_towns)-1; _i>=0; _i--)
	            {
	                    _town_name =_dl_towns[|_i];
	                if (_town_name!=STR_Bulblin) ds_list_add(_dl_options,_town_name);
	            }
            
	            if (ds_list_size(_dl_options))
	            {
	                _spell_name = STR_ENIGMA;
	                _town_name  =_dl_options[|irandom(ds_list_size(_dl_options)-1)];
	                ds_list_delete(_dl_spells, ds_list_find_index(_dl_spells, _spell_name));
	                ds_list_delete(_dl_towns,  ds_list_find_index(_dl_towns,  _town_name));
	                ds_list_delete(_dl_options,ds_list_find_index(_dl_options,_town_name));
	                dm_save_data[?_spell_name+STR_Location] = _town_name;
	                dm_save_data[? _town_name+STR_Spell]    = _spell_name;
	            }
	        }
	    }
	    else
	    {
	        // JUMP cannot be at Nabooru because it's needed for Nabooru's quest
	        // JUMP cannot be at Bulblin because it's needed to get there
	        _spell_name = STR_JUMP;
	        _town_name  = choose(STR_Rauru,STR_Ruto,STR_Saria,STR_Mido,STR_Darunia,STR_New_Kasuto,STR_Old_Kasuto);
	        ds_list_delete(_dl_spells, ds_list_find_index(_dl_spells, _spell_name));
	        ds_list_delete(_dl_towns,  ds_list_find_index(_dl_towns,  _town_name));
	        dm_save_data[?_spell_name+STR_Location] = _town_name;
	        dm_save_data[? _town_name+STR_Spell]    = _spell_name;
        
	        if (QUEST_NUM==2 
	        &&  irandom($7) )
	        {   // This is to lessen the chance certain spells end up in Bulblin, like FAIRY which is really helpful getting through the raft ride to Dragmire.
	            _spell_name = choose(STR_PROTECT,STR_HEAL,STR_FIRE,STR_REFLECT,STR_ENIGMA,STR_THUNDER,STR_SUMMON);
	            //_spell_name = choose(STR_PROTECT,STR_HEAL,STR_FIRE,STR_ENIGMA,STR_SUMMON);
	            //_spell_name = choose(STR_PROTECT,STR_HEAL,STR_SUMMON);
	            _town_name  = STR_Bulblin;
	            ds_list_delete(_dl_spells, ds_list_find_index(_dl_spells, _spell_name));
	            ds_list_delete(_dl_towns,  ds_list_find_index(_dl_towns,  _town_name));
	            dm_save_data[?_spell_name+STR_Location] = _town_name;
	            dm_save_data[? _town_name+STR_Spell]    = _spell_name;
	        }
	    }
    
	    ds_list_destroy(_dl_options); _dl_options=undefined;
    
    
    
	    ds_list_shuffle(    _dl_spells);
	    for(_i=ds_list_size(_dl_spells)-1; _i>=0; _i--)
	    {
	        _spell_name = _dl_spells[|_i];
	        _town_name  = _dl_towns[|_i];
	        dm_save_data[?_spell_name+STR_Location] = _town_name;
	        dm_save_data[? _town_name+STR_Spell]    = _spell_name;
	        //sdm("spell "+_dl_spells[|_i]+", town "+_dl_towns[|_i]);
	    }
    
    
    
	    if (DEBUG) repeat(1){sdm(""); dm_debug_data[?STR_Data+"01"+hex_str(++debug_data_count)]="";}
	    if (DEBUG){      _count=ds_list_size(dl_TOWN_NAMES);
	        for(_i=0; _i<_count; _i++){
	        _town_name  = dl_TOWN_NAMES[|_i];
	        _spell_name = dm_save_data[?_town_name+STR_Spell];
	        debug_str  = _town_name + string_repeat(" ", string_length(STR_Old_Kasuto)-string_length(_town_name));
	        debug_str += " - "+_spell_name;
	        sdm(debug_str); dm_debug_data[?STR_Data+"01"+hex_str(++debug_data_count)] = debug_str;
	        }
	    }
    
    
	    ds_list_destroy(_dl_spells); _dl_spells=undefined;
	}



	for(_i=ds_list_size(dl_SPELLS)-1; _i>=0; _i--)
	{
	    _spell_name =   dl_SPELLS[|_i];
	    _town_name  = string(dm_save_data[?_spell_name+STR_Location]);
	    _loc_num    = val(dm_LOCATIONS[?_town_name+STR_Spell+STR_Location+STR_Num], -1);
	    dm_save_data[?_spell_name+STR_Location+STR_Num] = _loc_num;
	}





















	// ======================================================================================
	// ======================================================================================
	// ======================================================================================
	// ======================================================================================
	// *** Randomizing key locations alone wouldn't make much sense 
	// since most keys would need to be placed in their own dungeon.
	if (ItemLocations_WILL_RANDOMIZE)
	{
	    // Randomize items
	    dl_locnum_that_gave_prog=ds_list_create();
	    Rando_randomize_items();
    
    
    
    
    
    
    
    
	    // ----------------------------------------------------------------------
	    // ----------------------------------------------------------------------
	    if (ItemLocations_NPC_GIVE_HINTS 
	    ||  ItemLocations_ZELDA_HINT )
	    {
	        var _area,_area1;
	        var _dialogue=undefined;
	        var _pos;
	        var _dk_loc, _dk_spawn;
	        var _dm_set_area_counts=ds_map_create();
	        var _dl_set=ds_list_create();
	        var _dl_choices=ds_list_create();
	        var _dl_area_choices=ds_list_create();
	        var _dm_hint_location_requirements=ds_map_create();
        
        
        
        
	        // ------------------------------------------------------------------------------
	        // ------------------------------------------------------------------------------
	        if (ItemLocations_NPC_GIVE_HINTS)
	        {
	            random_set_seed(Rando_SEED);
            
	            var _dl_item_loc_nums=ds_list_create();
	            var _dl_HINT_NUMS=ds_list_create();
	            var _dl_BOSS_NAMES=ds_list_create();
	            ds_list_add(_dl_BOSS_NAMES,"HORSEHEAD","HELMETHEAD","REBONACK","CAROCK","GOOMA","BARBA");
            
            
	            ds_list_copy(_dl_item_loc_nums,dl_locnum_that_gave_prog);
	            if (1)
	            {
	                var _dl_ITEM_IDS=ds_list_create();
	                ds_list_add(_dl_ITEM_IDS,STR_MEAT,STR_SHIELD,STR_RING,STR_PENDANT,STR_SWORD);
	                _count=ds_list_size(_dl_ITEM_IDS);
	                for(_i=0; _i<_count; _i++)
	                {
	                    _item_id  = _dl_ITEM_IDS[|_i];
	                    _loc_num  = val(dm_save_data[?_item_id+STR_Location+STR_Num+STR_Randomized]);
	                    if (_loc_num 
	                    &&  ds_list_find_index(_dl_item_loc_nums,_loc_num)==-1 )
	                    {   ds_list_add(       _dl_item_loc_nums,_loc_num);  }
	                }
                
	                ds_list_destroy(_dl_ITEM_IDS); _dl_ITEM_IDS=undefined;
	            }
            
            
            
	            ds_list_clear(_dl_HINT_NUMS);
	            _count1=val(g.dm_RandoHints[?STR_Hint+STR_Count]);
	            for(_i=1; _i<=_count1; _i++) ds_list_add(_dl_HINT_NUMS,_i);
	            ds_list_shuffle(_dl_HINT_NUMS);
            
	            _count=ds_list_size(_dl_item_loc_nums);
	            for(_i=0; _i<_count; _i++)
	            {
	                _loc_num  = _dl_item_loc_nums[|_i];
	                _dk_loc   = STR_Location+hex_str(_loc_num);
	                _item_id  = dm_save_data[?_dk_loc+STR_Item+STR_ID+STR_Randomized];
	                _dk_spawn = dm_save_data[?_dk_loc+STR_Spawn+STR_Datakey];
                
	                if (ItemLocations_ZELDA_HINT==1 
	                &&  _item_id==STR_ALLKEY )
	                {
	                    continue;//_i
	                }
                
	                ds_list_clear(_dl_choices);
	                _j=1;
	                while (true)
	                //for(_j=1; _j<=$20; _j++)
	                {   // different kinds of hints for an item location
	                    _val = dm_LOCATIONS[?hex_str(_loc_num)+STR_Hint+hex_str(_j++)];
	                    if (is_undefined(_val)) break;//_j
	                    ds_list_add(_dl_choices,_val);
	                }
                
	                if (ds_list_size(_dl_choices))
	                {
	                    ds_list_shuffle(_dl_choices);
	                    _dialogue = _dl_choices[|0];
                    
	                    if (DungeonBoss_WILL_RANDOMIZE 
	                    &&  ds_list_size(_dl_choices)>1 
	                    &&  area_is_dungeon(string_copy(_dk_spawn,1,AreaID_LEN)) )
	                    {
	                        for(_j=ds_list_size(_dl_BOSS_NAMES)-1; _j>=0; _j--)
	                        {
	                            _val = _dl_BOSS_NAMES[|_j];
	                            _pos = string_pos(_val,_dialogue);
	                            if (_pos)
	                            {
	                                _dialogue = _dl_choices[|1];
	                                break;//_j
	                            }
	                        }
	                    }
                    
	                    _pos=string_pos("&",_dialogue);
	                    if (_pos)
	                    {
	                        _val = string_upper(string_letters(_item_id));
	                        _dialogue = string_delete(_dialogue,_pos,1);
	                        _dialogue = string_insert(_val,_dialogue,_pos);
	                        //_dialogue = string_replace(_dialogue,_val,_pos);
	                    }
                    
                    
	                    ds_list_clear(_dl_area_choices);
	                    for(_j=1; _j<=_count1; _j++) // each hint location
	                    {
	                        _qual=false;
	                        _area=g.dm_RandoHints[?hex_str(_j)+STR_Area];
	                        if(!is_undefined(_area) 
	                        &&  ds_list_find_index(_dl_set,_j)==-1 
	                        &&  ds_list_find_index(_dl_area_choices,_area)==-1 )
	                        {
	                            if (0) // make sure hint location isnt locked behind its item
	                            {
	                                _rm_name=val(g.dm_RandoHints[?hex_str(_j)+STR_Rm+STR_Name]);
	                                switch(_rm_name)
	                                {
	                                    case "_WestA_24":{ // 'THIS IS<KINGS TOMB'
	                                    //_qual = !isVal(_item_id);
	                                    break;}
	                                }
	                            }
	                            else
	                            {
	                                _qual=true;
	                            }
                            
	                            if (_qual) ds_list_add(_dl_area_choices,_area);
	                        }
	                    }
                    
	                    if (ds_list_size(_dl_area_choices))
	                    {
	                        ds_list_shuffle(_dl_area_choices);
                        
	                        _area=0;
	                        if (1) // limit each area to 3 hints to prevent clumping
	                        {
	                            for(_j=ds_list_size(_dl_area_choices)-1; _j>=0; _j--)
	                            {
	                                _area1=_dl_area_choices[|_j];
	                                if (_area1==STR_Other 
	                                ||  val(_dm_set_area_counts[?_area1])<3 )
	                                {
	                                    _area=_area1;
	                                    break;//_j
	                                }
	                            }
	                        }
                        
	                        if (_area==0) _area=_dl_area_choices[|0];
                        
                        
	                        for(_j=0; _j<_count1; _j++)
	                        {
	                            _num=_dl_HINT_NUMS[|_j];
	                            _area1=g.dm_RandoHints[?hex_str(_num)+STR_Area];
	                            _val  =g.dm_RandoHints[?hex_str(_num)+STR_Dialogue+STR_Datakey];
                            
	                            if (ds_list_find_index(_dl_set,_num)==-1 
	                            && !is_undefined(_area1) 
	                            &&  _area==_area1 )
	                            {
	                                if(!is_undefined(_val)) // dialogue datakey
	                                {
	                                    _count3=val(dm_save_data[?STR_Rando+STR_Hint+STR_Count])+1;
	                                    dm_save_data[?STR_Rando+STR_Hint+STR_Count]=_count3;
                                    
	                                    dm_save_data[?STR_Rando+STR_Hint+hex_str(_count3)+STR_Dialogue+STR_Datakey]=_val;
	                                    dm_save_data[?STR_Rando+STR_Hint+hex_str(_count3)+STR_Dialogue]=_dialogue;
	                                    dm_save_data[?STR_Rando+STR_Hint+hex_str(_count3)+STR_Item]=_item_id;
	                                    dm_save_data[?STR_Rando+STR_Hint+_val+STR_Hint+STR_Num]=_count3;
	                                    dm_save_data[?STR_Rando+STR_Hint+_val]=_dialogue;
                                    
	                                    ds_list_add(_dl_set,_num);
	                                    _dm_set_area_counts[?_area] = val(_dm_set_area_counts[?_area])+1;
                                    
	                                    debug_str  = _item_id+string_repeat(" ",string_length(STR_BRACELET)-string_length(_item_id));
	                                    debug_str += " hint dialogue '"+_dialogue+"' set to datakey "+_val;
	                                    sdm(debug_str); dm_debug_data[?STR_Data+"01"+hex_str(++debug_data_count)] = debug_str;
	                                    break;//_j
	                                }
	                            }
	                        }
	                    }
	                }
	            }
            
            
	            ds_list_destroy(_dl_item_loc_nums); _dl_item_loc_nums=undefined;
	            ds_list_destroy(_dl_HINT_NUMS); _dl_HINT_NUMS=undefined;
	            ds_list_destroy(_dl_BOSS_NAMES); _dl_BOSS_NAMES=undefined;
	        }
        
        
        
        
        
        
        
        
	        // ------------------------------------------------------------------------------
	        // ------------------------------------------------------------------------------
	        if (ItemLocations_ZELDA_HINT)
	        {
	            random_set_seed(Rando_SEED);
            
	            _dialogue = undefined;
            
            
            
            
	            if (ItemLocations_ZELDA_HINT==1)
	            {
	                _item_id = STR_ALLKEY;
                
	                if (ALLKEY_LOC_NUM)
	                {
	                    ds_list_clear(_dl_choices);
	                    for(_j=1; _j<=$20; _j++)
	                    {   // different kinds of hints for an item location
	                        _val = dm_LOCATIONS[?hex_str(ALLKEY_LOC_NUM)+STR_Hint+hex_str(_j)];
	                        if (is_undefined(_val)) break;//_j
	                        ds_list_add(_dl_choices,_val);
	                    }
                    
	                    if (ds_list_size(   _dl_choices))
	                    {
	                        ds_list_shuffle(_dl_choices);
	                        _dialogue =     _dl_choices[|0];
	                        _pos=string_pos("&",_dialogue);
	                        if (_pos)
	                        {
	                            _val = string_upper(string_letters(_item_id));
	                            _dialogue = string_delete(_dialogue,_pos,1);
	                            _dialogue = string_insert(_val,_dialogue,_pos);
	                        }
	                    }
	                }
	            }
            
            
            
            
	            if (ItemLocations_ZELDA_HINT==2)
	            {
	                _item_id = STR_JUMP;
	                //sdm("");sdm("STR_JUMP+STR_Location: "+string(val(dm_save_data[?STR_JUMP+STR_Location])));sdm("");
	                switch(val(dm_save_data[?STR_JUMP+STR_Location]))
	                {
	                    case STR_Rauru:{
	                    _dialogue=choose("THE JUMP<SPELL IS<IN RAURU.", 
	                                     "JUMP SPELL<IS IN A<FOREST<TOWN.", 
	                                     "JUMP SPELL<IS IN A<NEARBY<TOWN.");
	                    break;}
                    
	                    case STR_Ruto:{
	                    _dialogue=choose("THE JUMP<SPELL IS<IN RUTO.", 
	                                     "JUMP SPELL<IS IN A<MOUNTAIN<TOWN.", 
	                                     "YOU NEED<THE TROPHY<FOR THE<JUMP SPELL", 
	                                     "JUMP SPELL<IS IN A<NEARBY<TOWN.");
	                    break;}
                    
	                    case STR_Saria:{
	                    _dialogue=choose("THE JUMP<SPELL IS<IN SARIA.", 
	                                     "JUMP SPELL<IS IN A<WATER TOWN", 
	                                     "JUMP SPELL<IS IN A<CURSED<TOWN.", 
	                                     "YOU NEED<THE MIRROR<FOR THE<JUMP SPELL");
	                    break;}
                    
	                    case STR_Mido:{
	                    _dialogue=choose("THE JUMP<SPELL IS<IN MIDO.", 
	                                     "JUMP SPELL<IS IN A<WATER TOWN", 
	                                     "YOU NEED<THE FLOWER<FOR THE<JUMP SPELL");
	                    break;}
                    
	                    case STR_Darunia:{
	                    _dialogue=choose("THE JUMP<SPELL IS<IN DARUNIA", 
	                                     "JUMP SPELL<IS IN A<MOUNTAIN<TOWN.", 
	                                     "JUMP SPELL<IS IN A<CURSED<TOWN.", 
	                                     "YOU NEED<THE CHILD<FOR THE<JUMP SPELL");
	                    break;}
                    
	                    case STR_New_Kasuto:{
	                    _dialogue=choose("THE JUMP<SPELL IS<IN<NEW KASUTO", 
	                                     "JUMP SPELL<IS IN A<KASUTO<TOWN.", 
	                                     "YOU NEED<THE HAMMER<FOR THE<JUMP SPELL");
	                    break;}
                    
	                    case STR_Old_Kasuto:{
	                    _dialogue=choose("THE JUMP<SPELL IS<IN<OLD KASUTO", 
	                                     "JUMP SPELL<IS IN A<KASUTO<TOWN.", 
	                                     "YOU NEED<THE CROSS<FOR THE<JUMP SPELL");
	                    break;}
	                }
	            }
            
            
	            if(!is_undefined(_dialogue))
	            {
	                _count3=val(dm_save_data[?STR_Rando+STR_Hint+STR_Count])+1;
	                dm_save_data[?STR_Rando+STR_Hint+STR_Count]=_count3;
                
	                var _DIALOGUE_DK = STR_Zelda+STR_Hint;
	                dm_save_data[?STR_Rando+STR_Hint+hex_str(_count3)+STR_Dialogue+STR_Datakey]=_DIALOGUE_DK;
	                dm_save_data[?STR_Rando+STR_Hint+hex_str(_count3)+STR_Dialogue]=_dialogue;
	                dm_save_data[?STR_Rando+STR_Hint+hex_str(_count3)+STR_Item]=_item_id;
	                dm_save_data[?STR_Rando+STR_Hint+_DIALOGUE_DK+STR_Hint+STR_Num]=_count3;
	                dm_save_data[?STR_Rando+STR_Hint+_DIALOGUE_DK]=_dialogue;
                
	                dm_save_data[?STR_Zelda+STR_Hint+STR_Dialogue]=_dialogue;
	            }
	        }
        
        
        
        
	        ds_map_destroy(_dm_set_area_counts); _dm_set_area_counts=undefined;
	        ds_map_destroy(_dm_hint_location_requirements); _dm_hint_location_requirements=undefined;
        
	        ds_list_destroy(_dl_set); _dl_set=undefined;
	        ds_list_destroy(_dl_choices); _dl_choices=undefined;
	        ds_list_destroy(_dl_area_choices); _dl_area_choices=undefined;
	    }
    
	    ds_list_destroy(dl_locnum_that_gave_prog); dl_locnum_that_gave_prog=undefined;
    
    
    
    
    
    
    
    
    
	    // ----------------------------------------------------------------------
	    // ----------------------------------------------------------------------
	    // Randomize MAP sellers prices
	    random_set_seed(Rando_SEED);
    
	    if (DEBUG){sdm(""); dm_debug_data[?STR_Data+"01"+hex_str(++debug_data_count)]="";}
    
	    var _pbag_price_min = 0;
	    var _pbag_price_max = 0;
    
	    _count=val(dm_LOCATIONS[?STR_Total+STR_Location+STR_Count]);
	    for(_i=1; _i<=_count; _i++)
	    {
	        _location_num_ = hex_str(_i);
	        _item_type = dm_LOCATIONS[?_location_num_+STR_Item+STR_Type];
	        if(!is_undefined(_item_type))
	        {
	            if (_item_type==STR_MAP1 
	            ||  _item_type==STR_MAP2 )
	            {
	                _item_id = dm_save_data[?STR_Location+_location_num_+STR_Item+STR_ID+STR_Randomized];
	                if(!is_undefined(_item_id))
	                {
	                    var                                      _TYPE=1; // keys, progression items, support items, 
	                         if (string_pos(STR_PBAG, _item_id)) _TYPE=2;
	                    else if (string_pos(STR_HEART,_item_id)) _TYPE=3;
	                    else if (string_pos(STR_MAGIC,_item_id)) _TYPE=3;
	                    else if (string_pos(STR_1UP,  _item_id)) _TYPE=3;
                    
	                    switch(_TYPE)
	                    {   // ----------------------------------------------------------------
	                        default:{ // _TYPE==1. keys, progression items, support items, 
	                        _max = 2000;
	                        _min = 300;
	                        break;}
                        
                        
                        
	                        // ----------------------------------------------------------------
	                        case 2:{ // PBags
	                        if(!_pbag_price_max)
	                        {
	                            _total=0;
	                            _count2=0;
	                                         _count1 = ds_list_size(dl_PBAGS);
	                            for(_j=0; _j<_count1; _j++)
	                            {
	                                _item_id2 = string(dl_PBAGS[|_j]);
	                                _version  = val(g.dm_spawn[?_item_id2+STR_Version]);
	                                _objver1  = object_get_name(ItmE0) + hex_str(_version);
	                                _idx = val(g.dm_go_prop[?_objver1+STR_XP], -1);
	                                if (_idx+1)
	                                {
	                                    _val2 = g.dl_XP[|_idx];
	                                    if (XP_WILL_RANDOMIZE) _val2 = val(dm_save_data[?STR_XP+hex_str(_idx)], _val2);
	                                    if (_val2)
	                                    {
	                                        _total += _val2;
	                                        _count2++;
	                                    }
	                                }
	                            }
                            
	                            if (_total 
	                            &&  _total>=_count2 )
	                            {
	                                _val3 = round(_total/_count2);
	                                if (_val3)
	                                {
	                                    _val2 = 100;
	                                    _val3 = max(_val2+50, _val3);
	                                    _pbag_price_max = _val3+_val2;
	                                    _pbag_price_min = _val3-_val2;
	                                }
	                            }
	                        }
                        
                        
	                        if (_pbag_price_max)
	                        {
	                            _max = _pbag_price_max;
	                            _min = _pbag_price_min;
	                        }
	                        else
	                        {
	                            _max = 550;
	                            _min = 350;
	                        }
	                        break;}
                        
                        
                        
	                        // ----------------------------------------------------------------
	                        case 3:{ // Container Pieces, 1UP, 
	                        _max = 4000;
	                        _min = 300;
	                        break;}
	                    }
                    
                    
                    
                    
	                    _min = max(1,_min);
	                    _max = max(_min+100,_max);
	                    _val = irandom(_max-_min) + _min;
	                    _val = clamp(_val, _min,_max);
                    
	                    _datakey = STR_Map+string(1+(_item_type==STR_MAP2));
	                    dm_save_data[?_datakey+STR_Cost] = _val;
                    
	                    if (DEBUG){debug_str = _datakey+", _min: "+string(_min)+", _max: "+string(_max)+", _val: "+string(_val)+", _item_id: "+_item_id+", _TYPE: "+string(_TYPE);
	                    sdm(debug_str); dm_debug_data[?STR_Data+"01"+hex_str(++debug_data_count)] = debug_str;
	                    }
	                }
	            }
	        }
	    }
	}





















	//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	//============================================================================
	ds_list_destroy(dl_TOWN_NAMES); dl_TOWN_NAMES=undefined;
	ds_map_destroy(dm_quest_puzzles); dm_quest_puzzles=undefined;

	//ds_map_destroy(dm_LOCATIONS);            dm_LOCATIONS=undefined;
	ds_list_destroy(dl_location_NUMS); dl_location_NUMS=undefined;
	ds_list_destroy(dl_locations_remaining); dl_locations_remaining=undefined;
	ds_list_destroy(dl_qual_locations);      dl_qual_locations=undefined;
	ds_list_destroy(dl_qual_locations_new);  dl_qual_locations_new=undefined;
	ds_list_destroy(dl_qual_locations_dungeon); dl_qual_locations_dungeon=undefined;
	ds_list_destroy(dl_locations_taken); dl_locations_taken=undefined;
	ds_list_destroy(dl_locations1); dl_locations1=undefined;
	ds_list_destroy(dl_SAFE_LOCATION_NUMS); dl_SAFE_LOCATION_NUMS=undefined;


	ds_list_destroy(dl_item_locations_remaining); dl_item_locations_remaining=undefined;
	ds_list_destroy(dl_item_location_NUMS); dl_item_location_NUMS=undefined;
	ds_list_destroy(dl_ITEMS); dl_ITEMS=undefined;
	ds_list_destroy(dl_items_placed); dl_items_placed=undefined;
	ds_list_destroy(dl_prog_guar_items); dl_prog_guar_items=undefined;


	ds_map_destroy(dm_pbag); dm_pbag=undefined;
	ds_list_destroy(dl_pbag_location_NUMS); dl_pbag_location_NUMS=undefined;
	ds_list_destroy(dl_PBAGS); dl_PBAGS=undefined;


	ds_list_destroy(dl_keys_placed); dl_keys_placed=undefined;
	ds_list_destroy(dl_key_location_NUMS); dl_key_location_NUMS=undefined;
	ds_list_destroy(dl_KEYS); dl_KEYS=undefined;
	ds_map_destroy(dm_KEYS); dm_KEYS=undefined;


	ds_list_destroy(dl_SPELLS); dl_SPELLS=undefined;
	ds_map_destroy(dm_spells); dm_spells=undefined;
	ds_list_destroy(dl_spells_placed); dl_spells_placed=undefined;
	ds_list_destroy(dl_spell_location_NUMS); dl_spell_location_NUMS=undefined;
	ds_list_destroy(dl_START_SPELLS); dl_START_SPELLS=undefined;
	ds_list_destroy(dl_spell_sequence_spells); dl_spell_sequence_spells=undefined;


	ds_list_destroy(dl_SKILLS); dl_SKILLS=undefined;
	ds_list_destroy(dl_skills_placed); dl_skills_placed=undefined;


	ds_list_destroy(dl_list1); dl_list1=undefined;
	ds_list_destroy(dl_list2); dl_list2=undefined;
	ds_list_destroy(dl_list3); dl_list3=undefined;
	ds_list_destroy(dl_list4); dl_list4=undefined;

	ds_grid_destroy(dg_1); dg_1=undefined;







	// ======================================================================================
	// ======================================================================================
	// ======================================================================================
	// ======================================================================================







}
