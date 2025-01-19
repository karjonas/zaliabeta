/// @description  Challenge_Secret01_init_1()
function Challenge_Secret01_init_1() {


	Challenge_init();


	var _i;


	                      _i=1;
	sub_state_IDLE      = _i++;
	sub_state_REVEAL    = _i++;
	sub_state_MOVING1   = _i++;
	sub_state_COMPLETE1 = _i++;
	sub_state_DONE      = _i++;
	sub_state           = sub_state_IDLE;


	SPRITE1 = spr_NPC_B1;
	SPRITE2 = spr_NPC_B2;


	// DURATION1: pc stand still duration
	//DURATION1 = $80; // testing
	DURATION1 = ROOM_SPEED_BASE * 30;
	//DURATION1 = ROOM_SPEED_BASE * 60;
	DURATION2 = $80;
	DURATION3 = $40;

	counter1 =  0;
	counter2 = -1;

	item_inst = noone;

	REVEAL_TRACK = val(Audio.dm[?STR_Cast+STR_Spell+STR_Default]);

	MOVE_DIR = 1;
	HSPD1 = $04;
	hspd  = $00;
	//hspd  = (HSPD1*MOVE_DIR) &$FF;


	//var _complete = false;
	//if(!is_undefined(dk_spawn))
	//{   _complete = (!!val(f.dm_quests[?dk_spawn+STR_Complete]));  }







}
