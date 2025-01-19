/// @description  Girubokku_init2()
function Girubokku_init2() {


	var _i, _val, _len, _depth;

	dl_sprites[|1] = spr_Girubokku2;
	dl_sprites[|0] = spr_Girubokku1; // 1: eye open
	GO_init_palidx(PI_MOB_RED);
	GO_depth_init(DEPTH_FLYER);

	//DRAW_YOFF = 1; // Does it get +1 in-ground??

	ShieldHB_IDX = 6; // 
	ShieldHB_idx = ShieldHB_IDX; // 0444,X


	var _spawn_datakey = dk_spawn;
	if(!is_undefined(    dk_spawn))
	{   _spawn_datakey = val(f.dm_rando[?STR_Randomize+STR_Enemy+STR_Spawn+dk_spawn+STR_Spawn+STR_Datakey+STR_Randomized], dk_spawn);  }







}
