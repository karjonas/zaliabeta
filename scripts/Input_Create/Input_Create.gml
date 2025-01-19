/// @description  Input_Create()
function Input_Create() {


	if (DEV) sdm(" Input_Create()");


	var _i, _a;
	var _datakey;


	gamepad_slot = -1; // -1: No gamepad connected


	// ------------------------------------------------
	// Bit values that represent NES buttons
	R = $01; // $01 = NES d-pad  RIGHT
	L = $02; // $02 = NES d-pad  LEFT
	D = $04; // $04 = NES d-pad  DOWN
	U = $08; // $08 = NES d-pad  UP
	S = $10; // $10 = NES button START
	E = $20; // $20 = NES button SELECT
	B = $40; // $40 = NES button B
	A = $80; // $80 = NES button A
	//








	// ------------------------------------------------
	// DPad RIGHT
	GP_DPadR_pressed    = false;
	GP_DPadR_held       = false;
	GP_DPadR_released   = false;
	// DPad LEFT
	GP_DPadL_pressed    = false;
	GP_DPadL_held       = false;
	GP_DPadL_released   = false;
	// DPad DOWN
	GP_DPadD_pressed    = false;
	GP_DPadD_held       = false;
	GP_DPadD_released   = false;
	// DPad UP
	GP_DPadU_pressed    = false;
	GP_DPadU_held       = false;
	GP_DPadU_released   = false;

	// Face1(XBox A)
	GP_Face1_pressed    = false;
	GP_Face1_held       = false;
	GP_Face1_released   = false;
	// Face2(XBox B)
	GP_Face2_pressed    = false;
	GP_Face2_held       = false;
	GP_Face2_released   = false;
	// Face3(XBox X)
	GP_Face3_pressed    = false;
	GP_Face3_held       = false;
	GP_Face3_released   = false;
	// Face4(XBox Y)
	GP_Face4_pressed    = false;
	GP_Face4_held       = false;
	GP_Face4_released   = false;

	// Select Button
	GP_Select_pressed   = false;
	GP_Select_held      = false;
	GP_Select_released  = false;
	// Start Button
	GP_Start_pressed    = false;
	GP_Start_held       = false;
	GP_Start_released   = false;


	// Shoulder1 LEFT(XBox Bumper)
	GP_Shoulder1L_pressed   = false;
	GP_Shoulder1L_held      = false;
	GP_Shoulder1L_released  = false;
	// Shoulder1 RIGHT(XBox Bumper)
	GP_Shoulder1R_pressed   = false;
	GP_Shoulder1R_held      = false;
	GP_Shoulder1R_released  = false;

	// Shoulder2 LEFT(XBox Trigger)
	GP_Shoulder2L_pressed   = false;
	GP_Shoulder2L_held      = false;
	GP_Shoulder2L_released  = false;
	// Shoulder2 RIGHT(XBox Trigger)
	GP_Shoulder2R_pressed   = false;
	GP_Shoulder2R_held      = false;
	GP_Shoulder2R_released  = false;


	GP_pressed  = false;
	GP_held     = false;
	GP_released = false;





	// gp_face1:       32769
	// gp_face2:       32770
	// gp_face3:       32771
	// gp_face4:       32772
	// gp_start:       32778
	// gp_select:      32777
	// gp_shoulderl:   32773
	// gp_shoulderr:   32774
	// gp_shoulderlb:  32775
	// gp_shoulderrb:  32776

	// ------------------------------------------
	GP_right_DEFAULT    = gp_padr;
	GP_left_DEFAULT     = gp_padl;
	GP_down_DEFAULT     = gp_padd;
	GP_up_DEFAULT       = gp_padu;
	GP_jump_DEFAULT     = gp_face1; // Xbox A button
	GP_other1_DEFAULT   = gp_face2; // Xbox B button
	GP_attack_DEFAULT   = gp_face3; // Xbox X button
	GP_other2_DEFAULT   = gp_face4; // Xbox Y button
	GP_pause_DEFAULT    = gp_start;
	GP_magic_DEFAULT    = gp_select;
	GP_other3_DEFAULT   = gp_shoulderl;
	GP_other4_DEFAULT   = gp_shoulderr;
	GP_other5_DEFAULT   = gp_shoulderlb;
	GP_other6_DEFAULT   = gp_shoulderrb;

	GP_right    = GP_right_DEFAULT;
	GP_left     = GP_left_DEFAULT;
	GP_down     = GP_down_DEFAULT;
	GP_up       = GP_up_DEFAULT;
	GP_magic    = GP_magic_DEFAULT;
	GP_pause    = GP_pause_DEFAULT;
	GP_jump     = GP_jump_DEFAULT;   // Xbox A button
	GP_attack   = GP_attack_DEFAULT; // Xbox X button
	GP_other1   = GP_other1_DEFAULT; // Xbox B button
	GP_other2   = GP_other2_DEFAULT; // Xbox Y button
	GP_other3   = GP_other3_DEFAULT;
	GP_other4   = GP_other4_DEFAULT;
	GP_other5   = GP_other5_DEFAULT;
	GP_other6   = GP_other6_DEFAULT;

	gamepad_set_default();



	// ------------------------------------------
	GP_Right_pressed   = false;
	GP_Right_held      = false;
	GP_Right_released  = false;

	GP_Left_pressed    = false;
	GP_Left_held       = false;
	GP_Left_released   = false;

	GP_Down_pressed    = false;
	GP_Down_held       = false;
	GP_Down_released   = false;

	GP_Up_pressed      = false;
	GP_Up_held         = false;
	GP_Up_released     = false;


	GP_Magic_pressed   = false;
	GP_Magic_held      = false;
	GP_Magic_released  = false;

	GP_Pause_pressed   = false;
	GP_Pause_held      = false;
	GP_Pause_released  = false;


	// Xbox X
	GP_Attack_pressed  = false;
	GP_Attack_held     = false;
	GP_Attack_released = false;
	// Xbox A
	GP_Jump_pressed    = false;
	GP_Jump_held       = false;
	GP_Jump_released   = false;


	// XBox B
	GP_Other1_pressed  = false;
	GP_Other1_held     = false;
	GP_Other1_released = false;
	// XBox Y                         //
	GP_Other2_pressed  = false;
	GP_Other2_held     = false;
	GP_Other2_released = false;
	// XBox bump L                         //
	GP_Other3_pressed  = false;
	GP_Other3_held     = false;
	GP_Other3_released = false;
	// XBox bump R                         //
	GP_Other4_pressed  = false;
	GP_Other4_held     = false;
	GP_Other4_released = false;
	// XBox trig L                         //
	GP_Other5_pressed  = false;
	GP_Other5_held     = false;
	GP_Other5_released = false;
	// XBox trig R                         //
	GP_Other6_pressed  = false;
	GP_Other6_held     = false;
	GP_Other6_released = false;
	//                          //




	// ------------------------------------------
	// Which game action inputs were triggered this frame
	Right_pressed   = false;
	Right_held      = false;
	Right_released  = false;

	Left_pressed    = false;
	Left_held       = false;
	Left_released   = false;

	Down_pressed    = false;
	Down_held       = false;
	Down_released   = false;

	Up_pressed      = false;
	Up_held         = false;
	Up_released     = false;


	Magic_pressed   = false;
	Magic_held      = false;
	Magic_released  = false;

	Pause_pressed   = false;
	Pause_held      = false;
	Pause_released  = false;


	Attack_pressed  = false;
	Attack_held     = false;
	Attack_released = false;

	Jump_pressed    = false;
	Jump_held       = false;
	Jump_released   = false;


	Other1_pressed  = false;
	Other1_held     = false;
	Other1_released = false;
	//                      //
	Other2_pressed  = false;
	Other2_held     = false;
	Other2_released = false;
	//                      //
	Other3_pressed  = false;
	Other3_held     = false;
	Other3_released = false;
	//                      //
	Other4_pressed  = false;
	Other4_held     = false;
	Other4_released = false;
	//                      //
	Other5_pressed  = false;
	Other5_held     = false;
	Other5_released = false;
	//                      //
	Other6_pressed  = false;
	Other6_held     = false;
	Other6_released = false;
	//                      //










	// held: which buttons are being held on current frame
	held   = 0;
	heldH  = 0; // H:  Horizontal
	heldV  = 0; // V:  Vertical
	heldHV = 0; // HV: Horizontal & Vertical
	heldS  = 0; // S:  Start/Select
	heldC  = 0; // C:  B&A buttons
	heldSC = 0; // SC: Start/Select + B&A buttons

	// pressed: which buttons are being pressed on current frame
	pressed   = 0;
	pressedH  = 0; // H:  Horizontal
	pressedV  = 0; // V:  Vertical
	pressedHV = 0; // HV: Horizontal & Vertical
	pressedS  = 0; // S:  Start/Select
	pressedC  = 0; // C:  B&A buttons
	pressedSC = 0; // SC: Start/Select + B&A buttons

	// released: which buttons have being released on current frame
	released   = 0;
	releasedH  = 0; // H:  Horizontal
	releasedV  = 0; // V:  Vertical
	releasedHV = 0; // HV: Horizontal & Vertical
	releasedS  = 0; // S:  Start/Select
	releasedC  = 0; // C:  B&A buttons
	releasedSC = 0; // SC: Start/Select + B&A buttons









	// ------------------------------------------------
	// The following relate to certain inputs held or pressed
	// They are updated in Lonk's update only under certain conditions
	dHeld    = 0; // 0017. 0: down NOT held, 1: down held.  ***OG is reverse of this.
	hHeld    = 0; // 0742. 1: right or 2: left held.  h: horizontal
	vHeld    = 0; // 0743. 4:  down or 8:   up held.  v: vertical
	heldPrev = 0; // 0744. buttons held on the previous frame
	cPres    = 0; // 0741. $80: a and/or $40: b pressed.  c: NES A or B

	// The buttons held when spawning at g.exit_enter
	// until they're released.
	// This can be used to prevent immediately using a door 
	// exit when spawning at it.
	held_0 = 0;



	// ------------------------------------------------
	// HV: Horizontal Vertical
	// The first dir held/pressed after the last release
	// Can only be 0 or cardinal dirs 1,2,4,8. 
	// CanNOT   be      diagonal dirs 5,9,6,A
	heldHV_first = 0;




	keypressed_curr = 0;
	keypressed_prev = 0;
	keypressed_hist = "";












	dm_GP_button_names = ds_map_create();
	dm_GP_button_names[?string(gp_padr)]       = "DPAD RIGHT";
	dm_GP_button_names[?string(gp_padl)]       = "DPAD LEFT";
	dm_GP_button_names[?string(gp_padd)]       = "DPAD DOWN";
	dm_GP_button_names[?string(gp_padu)]       = "DPAD UP";

	dm_GP_button_names[?string(gp_face1)]      = "FACE1";
	dm_GP_button_names[?string(gp_face2)]      = "FACE2";
	dm_GP_button_names[?string(gp_face3)]      = "FACE3";
	dm_GP_button_names[?string(gp_face4)]      = "FACE4";

	dm_GP_button_names[?string(gp_start)]      = "START";
	dm_GP_button_names[?string(gp_select)]     = "SELECT";

	dm_GP_button_names[?string(gp_shoulderl)]  = "BUMP LEFT";
	dm_GP_button_names[?string(gp_shoulderr)]  = "BUMP RIGHT";
	dm_GP_button_names[?string(gp_shoulderlb)] = "TRIG LEFT";
	dm_GP_button_names[?string(gp_shoulderrb)] = "TRIG RIGHT";




	dm_UserInputConfig = ds_map_create();




	// For faster PC speed for dev
	HSPD_MAX_1_backup    = 0;
	HSPD_MAX_1_curr      = 0;
	HSPD_MAX_CUC1_backup = 0;
	HSPD_MAX_CUC1_curr   = 0;
	HSPD_MAX_CUC2_backup = 0;
	HSPD_MAX_CUC2_curr   = 0;







}
