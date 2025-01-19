/// @description  HUD_Step()
function HUD_Step() {


	XP_text  = get_xp_str(f.xp);     // XP current
	XP_text += "/";                  // XP Forward slash
	XP_text += get_xp_str(f.xpNext); // XP next


	// Next level-up stat icon
	if (0 
	&&  f.level_atk>=STAT_LEVEL_MAX 
	&&  f.level_mag>=STAT_LEVEL_MAX 
	&&  f.level_lif>=STAT_LEVEL_MAX )
	{
	    NextLevel_sprite = spr_Lives_icon;
	    NextLevel_sprite_xscale = -1;
	}
	else
	{
	         if (get_xp_next(STAT_ATK)==f.xpNext) NextLevel_sprite = global.SPR_ICON_ATK;
	    else if (get_xp_next(STAT_MAG)==f.xpNext) NextLevel_sprite = global.SPR_ICON_MAG;
	    else if (get_xp_next(STAT_LIF)==f.xpNext) NextLevel_sprite = global.SPR_ICON_LIF;
	    else                                      NextLevel_sprite = 0;
	    //else                                      NextLevel_sprite = spr_Text_WrongChar;
	    NextLevel_sprite_xscale = 1;
	}



	Lives_text = g.CHAR_TIMES+string(lives);


	if (f.items&ITM_SKEY)
	{
	    Keys_text = g.CHAR_TIMES+"A";
	}
	else
	{
	    var _DUNGEON_NUM = val(f.dm_rando[?g.rm_name+STR_Dungeon+STR_Num], g.dungeon_num);
	    Keys_text = g.CHAR_TIMES+string(get_key_count(_DUNGEON_NUM));
	    //Keys_text = g.CHAR_TIMES+string(f.key_count);
	}






	var _SPELL = 0;
	if (f.spells)
	{
	         if (g.spell_ready)            _SPELL = g.spell_ready;
	    else if (p.SpellReady_flash_timer) _SPELL = spell_last_used();
	}

	if (_SPELL==SPL_FARY 
	&&  g.CuccoSpell2_Acquired 
	&&  g.CuccoSpell2_Option )
	{
	    SpellReady_text = "CUCCO";
	}
	else
	{
	    SpellReady_text = val(g.dm_Spell[?hex_str(_SPELL)+STR_Name], SpellReady_NONE);
	}

	if (SpellReady_text!=SpellReady_NONE)
	{
	    SpellReady_text = string_letters(SpellReady_text);
	}


	SpellReady_palidx = PI_MENU;
	if (SpellReady_text!=SpellReady_NONE)
	{
	    if (p.SpellReady_flash_timer)
	    {
	        SpellReady_palidx = p.dg_PI_SEQ[#$04,(p.SpellReady_flash_timer-1)&$3];
	    }
	    else if (g.mod_IndicateSpellUnaffordable 
	         &&  f.mp-get_spell_cost(g.spell_ready) < 0 )
	    {
	        SpellReady_palidx = p.PI_SPELL_UNAFFORDABLE;
	    }
	    else if (g.mod_IndicateSpellActive 
	         &&  g.spells_active & g.spell_ready )
	    {
	        SpellReady_palidx  = p.PI_SPELL_FUTILE;
	    }
	}






	MeterContainer_count_MP = cont_cnt_mp();
	MeterContainer_count_HP = cont_cnt_hp();


	MeterFill_can_draw_MP = f.mp!=0;
	MeterFill_can_draw_HP = f.hp!=0;

	MeterFill_w_MP = ceil(f.mp / MeterFill_AMOUNT_PER_PIXEL); // _w will be AT LEAST 1. ceil() rounds UP to nearest int
	MeterFill_w_HP = ceil(f.hp / MeterFill_AMOUNT_PER_PIXEL); // _w will be AT LEAST 1. ceil() rounds UP to nearest int





	can_draw_self = g.ChangeRoom_timer<=0 && g.HUD_state;







}
