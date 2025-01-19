/// @description  Kakusu_init()
function Kakusu_init() {


	GameObjectB_init();

	scr_step = Kakusu_step;

	GO_init_palidx(PI_MOB_ORG);



	SND_REVEAL = get_audio_theme_track(STR_Secret);


	// Off Ground Reason
	// 0: On ground, 1: Jumped, 2: Other such as; Walked off edge of something.
	ogr = 0;


	is_idle  = 1; // $00AF,X. 1: still, 0: moving horizontal
	walk_dir = 1; // 0401,X


	projectile = 0;


	MIN_DUR_IDLE = $C0;
	MIN_DUR_WALK = $40;




	HSPD_JUMP_1     = $20;
	HSPD_JUMP_2     = $30;
	hspd_jump       = HSPD_JUMP_1;

	HSPD_WALK1      = $20;
	HSPD_WALK2      = $40;

	// Run-Period Base. 
	// If multiple inst w/ same behavior in rm, 
	// this should give them diff periods of 
	// time they walk at the faster walk speed 
	// so they don't all walk fast at the same time.
	RPB = -1;




	// JUMP DIRECTION WILL ALWAYS BE TOWARD PC
	VSPD_JUMP_1     = $E5;
	VSPD_JUMP_HGH   = $9E; // 158. higher jump
	VSPD_JUMP_HGH2  = $90; // 
	vspd_jump       = VSPD_JUMP_HGH;

	TERM_VEL = $50;
	term_vel = TERM_VEL;

	VSPD_INC_DEF    = 2;
	VSPD_INC_HGH    = 3; // higher jump
	vspd_grav       = VSPD_INC_HGH;


	JUMP_CHANCE1    = $80;
	JUMP_CHANCE2    = $40; // Better chance to jump
	jump_chance     = JUMP_CHANCE1;






	BODY1_SPR_NORM  = spr_Bot2_Norm;
	BODY1_SPR_SQSH  = spr_Bot2_Squish;
	BODY1_SPR_BALL  = spr_Bot2_Ball;

	body_type   = 1; // 1: Opaque, 2: Transparent
	body_spr    = 0;



	SMAL1_SPR_NORM  = spr_Slime_Small_1b_WRB;
	SMAL1_SPR_SQSH  = spr_Slime_Small_1a_WRB;
	SMAL1_SPR_BALL  = spr_Slime_Small_1a_WRB;

	smal_spr    =  0;
	smal_xoff   =  0;
	smal_yoff   =  0;


	// OG 
	EYES1_SPR_A = spr_Bot_Eyes_1a_1; // NORM, BALL
	EYES1_SPR_B = spr_Bot_Eyes_1b_1; // SQSH

	// 1 eye
	EYES2_SPR_OPEN_A = spr_Eye_Open_1a_WRB; // wide open
	EYES2_SPR_OPEN_B = spr_Eye_Open_1b_WRB; // half open
	EYES2_SPR_CLOS_A = spr_Eye_Closed_1a_WRB;

	eyes_type   = 1; // 1: EYES1, 2: EYES2
	eyes_spr    = 0;
	eyes_xoff   = 0;
	eyes_yoff   = 0;

	pupil_state = 0; // 0: no pupil, 1: 2x2, 2: 2x1
	pupil_xoff  = 0;
	pupil_yoff  = 0;
	pupil_color = 0;




	mouth_state      = 0; // 0: no mouth, 1: norm mouth, 2: open mouth
	mouth_xoff       = 0;
	mouth_yoff       = 0;
	mouth_color      = 0;





	// 0: in hiding, 1: active
	//sub_state  = 0;







}
