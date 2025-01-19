/// @description  Cutscene_MagicalKeyHouse_init()
function Cutscene_MagicalKeyHouse_init() {


	var _i,_j;
	var _pos;
	var _tsrc;

	Cutscene_init();


	scr_step = Cutscene_MagicalKeyHouse_update;
	// scr_draw = Cutscene_GameEnd_1B_draw;
	// scr_iend = Cutscene_GameEnd_1B_end;


	CLM = xl>>3; // left most clm
	ROW = yt>>3; // grow source row


	if(!is_undefined(dk_spawn) 
	&& !is_undefined(g.dm_spawn[?dk_spawn+STR_Data+"01"]) )
	{    depth =     g.dm_spawn[?dk_spawn+STR_Data+"01"];  }
	else depth =     DEPTH_BG4;







}
