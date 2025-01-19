/// @description  Thunderbird_init2()
function Thunderbird_init2() {


	var _i, _a, _idx;


	Boss_init_2();
	var _DIST  = viewW_() + ww_ + ($02<<3);
	Boss_init_2b(_DIST);


	projectile_OBJ = Fireball2;
	projectile_VER = 2;
	projectile     = projectile_OBJ;
	projectile_ver = projectile_VER;

	GO_init_palidx(PI_MOB_RED);


	behavior = 0;


	Face_sprite = 0;
	Wings_yoff  = 0;


	// A349
	vspd    = 8;
	counter = 0;

	HP      = g.dl_HP[|HP_IDX];
	hp_CUE1 = min($60,HP);


	// Setting react_thunder=0 so THUNDER 
	// can't damage until the battle starts
	// react_thunder will be set back to REACT_THUNDER when the battle starts
	react_thunder = 0;


	BodyHB_color = c_yellow;

	Boss_set_MusicBattle_props(dk_ThunderBird);







}
