/// @description  GameObject_create_3a(properties datakey)
function GameObject_create_3a(argument0) {


	var _OBJ_NAME = object_get_name(object_index);


	// sets sprite_index as a placement sprite so ogX/ogY can give an accurate answer
	// sets sprite, ar_spr[0], sprite_index, si_xoff,si_yoff, ww,ww_, hh,hh_
	if(!is_undefined(  g.dm_go_prop[?_OBJ_NAME+STR_Placement_spr]))
	{   GO_sprite_init(g.dm_go_prop[?_OBJ_NAME+STR_Placement_spr]);  }




	// Pallette.  note: palidx is defaulted as p.PI_MOB1. -----------------
	// pal_idx specific to the spawn data
	var _spawn_datakey = dk_spawn;
	if(!is_undefined(    dk_spawn))
	{   _spawn_datakey = val(f.dm_rando[?STR_Randomize+STR_Enemy+STR_Spawn+dk_spawn+STR_Spawn+STR_Datakey+STR_Randomized], dk_spawn);  }


	if(!is_undefined(              _spawn_datakey) 
	&& !is_undefined(  g.dm_spawn[?_spawn_datakey+STR_pal_idx]) ) 
	{
	    GO_init_palidx(g.dm_spawn[?_spawn_datakey+STR_pal_idx]);
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}

	// sets palidx_def, palidx_base, palidx, palidx_permut
	if(!is_undefined(  g.dm_go_prop[?argument0+STR_pal_idx]))
	{   GO_init_palidx(g.dm_go_prop[?argument0+STR_pal_idx]);  }







}
