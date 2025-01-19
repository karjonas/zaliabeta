/// @description  HUD_Create()
function HUD_Create() {


	depth = DEPTH_HUD;

	can_draw_self = true;



	PI_MENU         = get_pi(PI_GUI_1);
	PI_SPELL_READY1 = get_pi(PI_PC_1,0);
	PI_SPELL_READY2 = get_pi(PI_GUI_1,4);

	NextLevel_sprite = global.SPR_ICON_ATK;
	//icon_next_spr = global.SPR_ICON_ATK;
	NextLevel_sprite_xscale = 1;


	// Magic
	METER_HEAD_SPR_MP = spr_stat_meter_head_magic;
	METER_CONT_SPR_MP = spr_HUD_magic_container;
	// Life
	METER_HEAD_SPR_HP = spr_stat_meter_head_life;
	METER_CONT_SPR_HP = spr_HUD_life_container;

	METER_H = sprite_get_height(METER_HEAD_SPR_MP)-1; // 7

	MeterContainer_count_HP = cont_cnt_hp();
	MeterContainer_count_MP = cont_cnt_mp();


	SPR_SLASH = spr_text_slash_forward;


	// hp/mp amount per pixel
	MeterFill_AMOUNT_PER_PIXEL = Container_AMT>>3;

	XP_CHAR_COUNT =  4;

	var _GROUP_PAD_CLMS =  $01;
	var _GROUP_PAD      = (_GROUP_PAD_CLMS<<3);
	var _LVL_ICON_PAD   =  1;
	var _LVL_ICON_DIST  = ($02+_LVL_ICON_PAD)<<3; // +1 for padding between


	var _YOFF  = 0;
	if(!g.VIEW_PAD_YB_OFF)
	{
	    _YOFF  = -abs(g.VIEW_Y_TILE_OFF); // -2
	    _YOFF += -1;
	}

	Y_LINE1  =           ($01<<3) + _YOFF; // 
	Y_LINE2  = Y_LINE1 + ($01<<3); // 
	Y_LINE1 -= 1; // Add some space between lines
	//                                  // 
	//                                  // 
	X_PAD2 = $01<<3;
	//                                  // 
	var _CLMS  = (1+f.CONT_MAX_MP+_GROUP_PAD_CLMS) + (1+f.CONT_MAX_HP+_GROUP_PAD_CLMS);
	    _CLMS += (XP_CHAR_COUNT<<1) + 2; // +2 for slash char & next level icon
	X_BASE  = g.VIEW_W_ - ((_CLMS<<3)>>1);
	X_BASE2 = X_PAD2 + ($00<<3);
	//                                                                          //
	GROUP1_X = X_BASE + ($00<<3);
	GROUP2_X = GROUP1_X + ((f.CONT_MAX_MP+1)<<3) + _GROUP_PAD;
	GROUP3_X = GROUP2_X + ((f.CONT_MAX_HP+1)<<3) + _GROUP_PAD;
	//                                                                          //
	MP_X                  = GROUP1_X;
	MP_X2                 = X_BASE2;
	MeterFill_w_MP        = ceil(f.mp / MeterFill_AMOUNT_PER_PIXEL); // _w will be AT LEAST 1. ceil() rounds UP to nearest int
	MeterFill_COLOR_MP    = p.C_WHT1;
	MeterFill_can_draw_MP = f.mp!=0;
	//                                                                          //
	HP_X                  = GROUP2_X;
	HP_X2                 = MP_X2 + (HP_X-MP_X);
	MeterFill_w_HP        = ceil(f.hp / MeterFill_AMOUNT_PER_PIXEL); // _w will be AT LEAST 1. ceil() rounds UP to nearest int
	MeterFill_COLOR_HP    = p.C_RED3;
	MeterFill_can_draw_HP = f.hp!=0;
	//                                                                          //
	XP_X          = GROUP3_X;
	XP_X2         = (viewW()-X_PAD2) - ($A<<3);
	XPNextIcon_X  = XP_X + (((XP_CHAR_COUNT<<1)+1)<<3);
	XPNextIcon_X += 1;
	//XPNextIcon_X += 2;
	//XPNextIcon_X += 4;
	XP_text       = get_xp_str(f.xp);     // XP current
	XP_text      += "/";                  // XP Forward slash
	XP_text      += get_xp_str(f.xpNext); // XP next
	//                                                                          //
	Levels_X    = XP_X + ($01<<3);
	Level_ATK_X = Levels_X;
	Level_MAG_X = Level_ATK_X + _LVL_ICON_DIST;
	Level_LIF_X = Level_MAG_X + _LVL_ICON_DIST;
	//                                                                          //
	//                                                                          //
	SpellReady_ICON_SPR = global.SPR_ICON_MAG;
	//                                                                          //
	SpellReady_ICON_X   = MP_X;
	SpellReady_TEXT_X   = SpellReady_ICON_X + ($01<<3);
	//                                                                          //
	//                                                                          //
	SpellReady_NONE     = "...";
	SpellReady_text     = SpellReady_NONE;
	SpellReady_palidx   = PI_MENU;
	//                                                                          //
	//                                                                          //
	//                                                                          //
	//                                                                          //
	Lives_text = "*"+string(lives);

	Keys_text = "*"+string(f.key_count);







}
