/// @description  Cutscene_MoaiOpenMouth_init_1()
function Cutscene_MoaiOpenMouth_init_1() {


	var _i, _a;

	Cutscene_init();

	switch(object_index){
	// -----------------------------------------------
	case Cutscene_MoaiOpenMouth_1:{ // Kakusu Tomb
	GO_sprite_init(spr_Moai_mouth_1a_1);
	GO_depth_init(DEPTH_BG5-1);
	GO_init_palidx(PI_BGR_4);
	break;}
	// -----------------------------------------------
	case Cutscene_MoaiOpenMouth2:{ // Mido Church
	GO_sprite_init(spr_Moai_mouth_3a_1); // wider, taller
	//GO_sprite_init(spr_Moai_mouth_3a); // wider, taller
	//GO_sprite_init(spr_Moai_mouth_2a);
	//GO_sprite_init(spr_Moai_mouth_2a_1); // Shorter mouth
	GO_depth_init(DEPTH_BG5-1);
	GO_init_palidx(PI_BGR_4);
	break;}
	}


	                      _a=1;
	SUB_STATE_IDLE      = _a++;
	SUB_STATE_ACTV1     = _a++;
	SUB_STATE_OPEN1     = _a++;
	SUB_STATE_OPEN2     = _a++;
	SUB_STATE_DONE      = _a++;
	sub_state           = SUB_STATE_IDLE;


	DUR1    = $30;
	DUR2    = $10;
	DUR3    = $30; // stun flash duration


	ROWS            = hh>>3;
	rows_up         =  0;
	//sdm("hh $"+hex_str(hh)+", spawn_y $"+hex_str(spawn_y)+", ROWS "+string(ROWS)+", rows_up "+string(rows_up)+", rows_up<<3 $"+hex_str(rows_up<<3));







}
