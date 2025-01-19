/// @description  Helmethead_init2()
function Helmethead_init2() {


	var _i, _a;


	Boss_init_2();
	Boss_init_2b(-1); // Determine & set the side of the arena to start on.


	GO_init_palidx(PI_MOB_BLU);


	            dl_Head_SPRITES=ds_list_create();
	ds_list_add(dl_Head_SPRITES,spr_Helmethead_head_1);
	ds_list_add(dl_Head_SPRITES,spr_Helmethead_head_2);
	if (g.mod_HelmetHead_MoreHead) ds_list_add(dl_Head_SPRITES,spr_Helmethead_head_4); // 4: Added Content: Extra head
	ds_list_add(dl_Head_SPRITES,spr_Helmethead_head_3); // Last head. No helmet
	Head_sprite=dl_Head_SPRITES[|0];

	Head_COUNT  = ds_list_size(dl_Head_SPRITES);
	Head_num    = 1; // 0081[eIndex]

	Head_DURATION1   = $10; // OG
	Head_DURATION2   = Head_DURATION1+$10; // $20. MOD. For f.quest_num==1
	Head_DURATION3   = Head_DURATION2+$18; // $38. MOD. For f.quest_num==2
	Head_spawn_timer = 0; // 05DE

	Head_xoff   = 0;
	Head_yoff   = 0;
	Head_xscale = 1;


	Legs_sprite = spr_Boss_legs1A;


	projectile_OBJ = Bullet1;
	projectile_VER = 1;
	projectile     = projectile_OBJ;
	projectile_ver = projectile_VER;



	// HelmetHead doesn't have a melee attack so
	// attack_state is here just so Boss_update_3a()
	// doesn't crash the game when it doesn't find the variable
	attack_state = 0;




	CEILING_Y = (g.rm_rows-PAGE_ROWS)+$06;
	CEILING_Y = find_row_solid(TID_SOLID1, arena_x>>3,(GROUND_Y>>3)-1, -1,0, CEILING_Y) + 1; // search for ceiling
	CEILING_Y = CEILING_Y<<3;

	DISTANCE1 = $20;



	// body hb
	BodyHB_color = c_blue;
	BodyHB_IDX2  = BodyHB_IDX+1;

	// shield hb
	ShieldHB_color = c_white;
	ShieldHB_IDX   = 3;
	ShieldHB_idx   = ShieldHB_IDX;





	if (f.quest_num>1)
	{
	    // 1st quest: $11: $28
	    HP_IDX  = $16; // $16: $60
	    //HP_IDX  = $14; // $14: $48
	    //HP_IDX  = $1B; // $1B: $C0
	    hp      = g.dl_HP[|HP_IDX];
    
	    XP_IDX  = $1A;
	    //XP_IDX  = $1D;
	    xp      = g.dl_XP[|XP_IDX];
    
	    ATTACK_LEVEL = $06;
	    attack_level = ATTACK_LEVEL
    
	    // Drop Spawner(s)
	    var _COUNT = clamp(1, 0,4);
	    if (_COUNT)
	    {
	        var _CLMS1 = $07;
	        var _CLMS2 = $15;
	        var _CLM   = arena_x>>3;
	        var             _dl_CLM=ds_list_create();
	        ds_list_add(    _dl_CLM, (_CLM-_CLMS2)-1);
	        ds_list_add(    _dl_CLM, (_CLM-_CLMS1)-1);
	        ds_list_add(    _dl_CLM, (_CLM+_CLMS1)-1);
	        ds_list_add(    _dl_CLM, (_CLM+_CLMS2)-1);
	        //ds_list_add(    _dl_CLM, $1A, $28, $36, $44);
	        ds_list_shuffle(_dl_CLM);
	        for(_i=0; _i<_COUNT; _i++)
	        {
	            GameObject_create(_dl_CLM[|_i]<<3,CEILING_Y, SpDrA,1);
	        }
	        ds_list_destroy(_dl_CLM); _dl_CLM=undefined;
	    }
	}



	set_xy(id, x,GROUND_Y-hh_);







}
