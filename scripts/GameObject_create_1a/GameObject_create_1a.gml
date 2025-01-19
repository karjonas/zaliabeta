/// @description  GameObject_create_1a()
function GameObject_create_1a() {


	var _OBJ_NAME = object_get_name(object_index);

	init_vars_go_1a(); // ver, state, xl,xc,xr, yt,yc,yb, ww,hh, 
	init_vars_go_4a(); // scr_init1/2, scr_step, scr_update, scr_udp, scr_draw, ...



	// Object Specific Initializations -----------------------------------------
	if(!is_undefined(g.dm_go_scr[?STR_ini1+_OBJ_NAME]))
	{   scr_init1  = g.dm_go_scr[?STR_ini1+_OBJ_NAME];  }

	if(!is_undefined(  scr_init1))
	{   script_execute(scr_init1);  }





	// -----------------------------------------------------------------
	if(!is_undefined(g.dm_go_scr[?STR_ini2+_OBJ_NAME]))
	{   scr_init2  = g.dm_go_scr[?STR_ini2+_OBJ_NAME];  }

	if(!is_undefined(g.dm_go_scr[?STR_updt+_OBJ_NAME]))
	{   scr_update = g.dm_go_scr[?STR_updt+_OBJ_NAME];  }

	if(!is_undefined(g.dm_go_scr[?STR_udp +_OBJ_NAME]))
	{   scr_udp    = g.dm_go_scr[?STR_udp +_OBJ_NAME];  }

	if(!is_undefined(g.dm_go_scr[?STR_draw+_OBJ_NAME]))
	{   scr_draw   = g.dm_go_scr[?STR_draw+_OBJ_NAME];  }

	if(!is_undefined(g.dm_go_scr[?STR_iend+_OBJ_NAME]))
	{   scr_inst_end=g.dm_go_scr[?STR_iend+_OBJ_NAME];  }

	if(!is_undefined(g.dm_go_scr[?STR_dstr+_OBJ_NAME]))
	{   scr_destroy =g.dm_go_scr[?STR_dstr+_OBJ_NAME];  }

	if(!is_undefined(g.dm_go_scr[?STR_rmen+_OBJ_NAME]))
	{   scr_room_end=g.dm_go_scr[?STR_rmen+_OBJ_NAME];  }







}
