/// @description  Barba_init2()
function Barba_init2() {


	var _i, _a, _val, _count;


	Boss_init_2();

	GO_init_palidx(PI_MOB_ORG);

	Head_SPRITE1 = spr_Barba_1a;
	Head_SPRITE2 = spr_Barba_1b;
	Head_SPRITE3 = spr_Barba_1c;
	Head_sprite  = Head_SPRITE1;

	Segment_SPRITE = spr_Barba_2a;



	                   _a=0;
	sub_state_HIDE   = _a++;
	sub_state_RISE   = _a++;
	sub_state_ATTACK = _a++;
	sub_state_ATTACK3= _a++;
	sub_state_DECEND = _a++;
	sub_state        = sub_state_HIDE; // 0499


	                YT_HIDE = viewYB()+8;
	set_xlyt(id, xl,YT_HIDE);


	projectile_OBJ = Fireball2;
	projectile_VER = 1;
	projectile     = projectile_OBJ;
	projectile_ver = projectile_VER;



	// 1: OG, 2: Attack1,Attack2, 3: Attack1,Attack3
	Attacks_VER = 3;


	Attack1_DURATION1  = $10; // Fire a proj every other frame.

	Attack1_DURATION2  = Attack1_DURATION1<<2; // $40. dur after atk
	Attack1_CUE1       = Attack1_DURATION2;    // $40.
	Attack1_DURATION2 += Attack1_DURATION2;    // $40. dur before atk
	Attack1_DURATION2 += $10;                  // $10. extra time before atk
	Attack1_DURATION2 += Attack1_DURATION1;    // $10. atk time

	Attack1_DURATION3  = $60; // Cooldown1

	Attack1_Y               = ((viewYC()>>8)<<8) + $90;
	//Attack1_Y               = ((viewYC()>>8)<<8) + $98;
	Attack1_Tokens_BASE     = 4;
	Attack1_Tokens_VARIENCE = 2;
	Attack1_Tokens          = 0;
	Barba_refresh_Attack1_tokens();


	Attack3_is_live = true;
	Attack3_tokens  = 0;
	Attack3_timer   = 0;


	BounceAttack_y_dir = 1;



	Segment_COUNT = 8;

	dl_xoff = ds_list_create(); // dl_xoff is 049A. Updated in udp
	for(_i=Segment_COUNT-1; _i>=0; _i--) dl_xoff[|_i]=0;


	var _data = "";
	var _clm1 = (arena_xl>>3)-1;
	var _clm2 = _clm1;
	var _ROW  = ((((viewYC()>>8)+1)<<8) - $18) >>3;
	             _count = arena_w>>3;
	for(_i=0; _i<_count; _i++)
	{
	        _clm1  = find_clm_solid(0, _clm2, _ROW, 1,0, _clm2);
	    if (_clm1 <= _clm2) break;
	        _data += hex_str(_clm1);
	    //
	        _clm2  = find_clm_solid(TID_SOLID1, _clm1, _ROW, 1,0, _clm1+1);
	        _data += hex_str(_clm2-_clm1);
	}

	//sdm(" pits _data: "+_data+", _ROW $"+hex_str(_ROW)+", _clm1 $"+hex_str(_clm1)+", _clm2 $"+hex_str(_clm2));

	Pit_idx   = 0;
	Pit_COUNT = string_length(_data)>>2;

	dg_PITS   = ds_grid_create(Pit_COUNT,3);
	for(_i=0; _i<Pit_COUNT; _i++)
	{
	    dg_PITS[#_i,1] = str_hex(_data, _i<<1);
	    dg_PITS[#_i,1] = dg_PITS[#_i,1]<<3; // pit xx
    
	    dg_PITS[#_i,2] = str_hex(_data, (_i<<1)+1);
	    dg_PITS[#_i,2] = dg_PITS[#_i,2]<<3; // pit width
	}



	var _CLM=arena_x>>3;
	var _row=viewYB()>>3;
	Liquid_YT=(_row-1)<<3;
	for(_i=0; _i<$10; _i++) // i think $10 should be plenty
	{
	    if (g.dg_RmTile_Liquid[#_CLM,_row]&$FF != TID_LQUID1)
	    {
	        Liquid_YT=(_row+1)<<3;
	        break;//_i
	    }
	    else
	    {
	        _row--;
	    }
	}





	if (g.mod_Barba_Aim)
	{   // Better Aim
	    var _HSPD  = "06"+"09"+"0C"+"0F"  +  "11"+"12"+"13"+"13";
	        _HSPD += "14"+"15"+"16"+"17";
	    //
	    var _VSPD  = "12"+"11"+"0F"+"0D"  +  "0B"+"0A"+"09"+"07";
	        _VSPD += "06"+"06"+"05"+"04";
	}
	else
	{   // OG
	    var _HSPD  = "06"+"0A"+"0D"+"0F"  +  "11"+"12"+"13"+"13"; // OG
	        _HSPD += "15"+"16"+"17"+"18"; // added for widescreen
	    //
	    var _VSPD  = "16"+"14"+"13"+"11"  +  "0F"+"0E"+"0D"+"0B"; // OG
	        _VSPD += "0B"+"0A"+"0A"+"09"; // added for widescreen
	}



	_count = string_length(_HSPD)>>1;
	    dg_PROJ_SPEED = ds_grid_create(_count,2);
	for(_i=0; _i<_count; _i++){
	    dg_PROJ_SPEED[#_i,0] = str_hex(_HSPD,_i);
	    dg_PROJ_SPEED[#_i,1] = str_hex(_VSPD,_i);
	}




	BodyHB_color = c_yellow;
	ShieldHB_color = c_white;


	if (f.quest_num>1)
	{
	    HP_IDX += $02;
	    hp = g.dl_HP[|HP_IDX];
    
	    XP_IDX += $02;
	    xp = g.dl_XP[|XP_IDX];
	}

	HP = hp;


	Boss_set_MusicBattle_props(STR_Boss+"01");







}
