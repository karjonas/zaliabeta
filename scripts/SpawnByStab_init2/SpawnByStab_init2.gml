/// @description  SpawnByStab_init2()
function SpawnByStab_init2() {

	// Placement spr: spr_Placement_16x16


	// 0: Waiting for stab
	// 1: Waiting for spawned (GO.state == 0) so can set 
	//    proper respawn value. SpawnByStab respawns if 
	//    the obj it spawned is still spawned when leaving 
	//    rm but if the spawned obj has been defeated/taken, 
	//    SpawnByStab only respawns if g.area_name has changed. 
	BVR_STBD = 1; // STABBED
	BVR_AFTR = 2; // AFTER. Waiting for spawned inst state to be 0.
	BVR_CFRM = 3; // CONFIRM. Confirm spawned inst is defeated.
	behavior = 0;

	spawned_inst = noone;


	var _CLM = xl>>3;
	var _ROW = yt>>3;
	IS_BREAK_BLOCK = is_in_grid(_CLM,_ROW, ds_grid_width(g.dg_RmTile_Break),ds_grid_height(g.dg_RmTile_Break)) 
	              && isVal(g.dg_RmTile_Break[#_CLM,_ROW]&$FF, TID_BREAK1,TID_BREAK3);
	//
	// sdm("IS_BREAK_BLOCK "+string(IS_BREAK_BLOCK)+", g.dg_rt_unique[# xl>>3,yt>>3] $"+hex_str(g.dg_rt_unique[# xl>>3,yt>>3])+", TID_BREAK1 $"+hex_str(TID_BREAK1)+", TID_BREAK3 $"+hex_str(TID_BREAK3));







}
