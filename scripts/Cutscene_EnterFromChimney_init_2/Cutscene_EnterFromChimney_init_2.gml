/// @description  Cutscene_EnterFromChimney_init_2()
function Cutscene_EnterFromChimney_init_2() {


	var _i, _a;

	//Cutscene_init();


	scr_step = Cutscene_EnterFromChimney_update_1a;
	// scr_draw = Cutscene_GameEnd_1B_draw;
	// scr_iend = Cutscene_GameEnd_1B_end;


	CLM = xl>>3;
	ROW = yt>>3;


	var _EXIT_NAME = g.rm_name+"00";
	if(!is_undefined(                dk_spawn))
	{   _EXIT_NAME = val(g.dm_spawn[?dk_spawn+STR_Data+"01"], _EXIT_NAME);  }

	Exit_inst = noone;
	with(Exit)
	{
	    if (exitName==_EXIT_NAME)
	    {
	        other.Exit_inst = id;
	        break;
	    }
	}

	//sdm("Cutscene_EnterFromChimney dk_spawn: "+dk_spawn);
	//sdm(""); sdm("Cutscene_EnterFromChimney exitname: "+string(val(g.dm_rm_data[?dk_spawn+STR_Exit+STR_Name])));
	//sdm("g.exit_enter.exitName: "+g.exit_enter.exitName+", Exit_inst==g.exit_enter "+string(Exit_inst==g.exit_enter));

	if (Exit_inst!=g.exit_enter)
	{
	    instance_destroy();
	}







}
