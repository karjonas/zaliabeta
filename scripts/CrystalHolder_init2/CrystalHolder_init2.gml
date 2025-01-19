/// @description  CrystalHolder_init2()
function CrystalHolder_init2() {

	// eID = $14, $15


	var _i, _val;


	GO_depth_init(DEPTH_ITEM);
	GO_init_palidx(PI_MOB_ORG); // This is the CRYSTAL's palidx


	DUNGEON_NUM = g.dungeon_num;
	/*
	_val = f.dm_rando[?STR_Boss+STR_Scene+STR_Name+g.rm_name+STR_Normal];
	if(!is_undefined(_val))
	{
	    switch(string_copy(string(_val),1,AreaID_LEN)){
	    case Area_PalcA:{DUNGEON_NUM=1; break;}
	    case Area_PalcB:{DUNGEON_NUM=2; break;}
	    case Area_PalcC:{DUNGEON_NUM=3; break;}
	    case Area_PalcD:{DUNGEON_NUM=4; break;}
	    case Area_PalcE:{DUNGEON_NUM=5; break;}
	    case Area_PalcF:{DUNGEON_NUM=6; break;}
	    case Area_PalcG:{DUNGEON_NUM=7; break;}
	    case Area_PalcH:{DUNGEON_NUM=8; break;}
	    }
	}
	*/


	facingDir = 1;
	can_draw_self = false;

	canDrawCrystal = 0; // 0081[eIndex]

	Flash_DUR   = $62;
	Flash_timer = 0; // 0767


	            dl_COLOR_IDX=ds_list_create(); // 0: blue, 1: white, 2: green, 3: red
	ds_list_add(dl_COLOR_IDX, p.CI_VLT3_,p.CI_WHT1_,p.CI_GRN2_,p.CI_RED3_);


	// THIS ALGORITHM IS CORRECT, BUT YOU 
	// NEED TO KNOW THE CORRECT DEPTH FOR THE CRYSTAL HOLDER.
	midtone_PALDATA_POS = p.PAL_POS_BGR2 + 4;
	midtone_colorID_DEF = string_copy(p.pal_rm_def, midtone_PALDATA_POS, 2);
	midtone_colorID_cur = midtone_colorID_DEF;



	//spawn_x  = ((xx>>8)<<8) + $80 - ww_;

	GROUND_Y = (((spawn_y>>8)+1)<<8) - ($03<<3);
	GROUND_Y = get_ground_y(x,GROUND_Y, -1,GROUND_Y);


	spawn_y  = GROUND_Y - ($48 + 6);
	set_xlyt(id, spawn_x,spawn_y);

	// sdm("GROUND_Y $"+hex_str(GROUND_Y)+", spawn_y $"+hex_str(spawn_y));


	if (crystal_is_placed(DUNGEON_NUM)) counter = 0; // Only udp will update
	else                                counter = 1;


	Fanfare_THEME = dk_PlaceCrystal;
	Fanfare_MUSIC = get_audio_theme_track(Fanfare_THEME);
	fanfare_failsafe_timer  = round(audio_sound_length(Fanfare_MUSIC)*ROOM_SPEED_BASE);
	fanfare_failsafe_timer += 8;
	//fanfare_failsafe_timer = $138 + 8;







}
