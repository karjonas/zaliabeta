/// @description  Boss_init_1()
function Boss_init_1() {


	GameObjectB_init();


	GROUND_Y = (((viewYC()>>8)+1)<<8) - ($03<<3);

	// Boss vars
	// ------------------------------------------------------------
	arena_w  = viewW()-$20;
	arena_x  = $180; // arena_x is the CENTER of the arena
	arena_xl = arena_x  - (arena_w>>1);
	arena_xr = arena_xl +  arena_w;
	arena_y  = 0;
	arena_yt = 0;
	arena_yb = GROUND_Y;

	HPBar_timer      = 0;
	HPBar_can_draw   = false;
	HPBar_hp_color   = p.C_RED3;
	HPBar_unit_COUNT = 8;
	HPBar_units_full = 0;
	HPBar_XPAD       = $2<<3;
	HPBar_XOFF       = HPBar_XPAD; // x offset from viewXL(). Set in Boss_init_2() after arena_xl is set
	HPBar_YOFF       = (VIEW_H_WD-VIEW_H_OG) + $40; // y offset from viewYT()
	//HPBar_YOFF = (viewYB()-VIEW_H_OG-8) + $41;


	start_timer   = 0; // delay Boss battle
	pending_death = false;
	/*
	            dl_gate = ds_list_create();
	ds_list_add(dl_gate, noone);
	ds_list_add(dl_gate, noone);
	*/

	Roar_DELAY = $FF;
	Roar_timer = Roar_DELAY;


	MusicBattle_THEME = STR_Boss+"01";
	MusicBattle_INTRO = 0;
	MusicBattle_BODY  = 0;







}
