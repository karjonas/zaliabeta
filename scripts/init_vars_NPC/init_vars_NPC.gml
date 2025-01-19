/// @description  init_vars_NPC()
function init_vars_NPC() {


	var _i, _a;



	// ---------------- NPC Specific --------------------------
	sprite_datakey = undefined;
	//use_costume = false;


	hspd_PACE = 8;


	timer_a1        = 0;     // 05BD[eIndex]
	is_talking      = false; // 05C3[eIndex]
	talked_to_count = 0;     // 05A5[eIndex]
	HylianText_read = false;
	has_rando_hint  = false;


	GROUND_Y = cam_yb_max()-$18;


	pc_can_enter = false; // pc can enter house only when true

	DOOR_XL = 0;
	DOOR_XR = 0;
	DOOR_XC = 0;
	DOOR_YT = 0;
	DOOR_YB = 0;
	DOOR_YC = 0;
	DOOR_W  = $10;
	DOOR_H  = $20;

	                        _a=1;
	door_draw_state_CLOSE = _a++;
	door_draw_state_OPEN1 = _a++; // halfway
	door_draw_state_OPEN2 = _a++; // full
	door_draw_state = door_draw_state_CLOSE; // 1, 2, 3. for drawing the door
	door_draw_x = 0;
	door_draw_y = 0;

	// door hb for NPC
	DoorHB_can_draw = true;
	DoorHB_XL       = 0;
	DoorHB_YT       = 0;

	// this will be the instance of an Exit object it the door has an exit
	door_exit_inst = 0;


	dialogue1 = undefined;
	dialogue2 = undefined;
	dialogue  = dialogue1;

	CastSpellSprite_DURATION = $40;
	CastSpellSprite_timer    = 0; // 049E. Spell Giver uses diff spr when this is set.


	give_spell = 0; // Which spell Spell Giver has.







}
