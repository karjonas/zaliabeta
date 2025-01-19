/// @description  Cucco_init()
function Cucco_init() {


	init_vars_cucco();
	//GO_depth_init
	//GO_sprite_init
	//GO_pal_idx_init


	Cucco_SPRITE_BODY1    = spr_chicken_1a_body_1a_1_WRB; // Idle
	//Cucco_SPRITE_BODY2    = spr_chicken_1a_body_2a_1_WRB;     // Head frwd v1
	//Cucco_SPRITE_BODY2    = spr_chicken_1a_body_2a_1_v2_WRB;  // Head frwd v2
	Cucco_SPRITE_BODY2    = spr_chicken_1a_body_2a_1_v3_WRB;  // Head frwd v3
	Cucco_SPRITE_BODY3    = spr_chicken_1a_body_3a_1_WRB; // Atk high & low 1
	Cucco_SPRITE_BODY4    = spr_chicken_1a_body_4a_1_WRB; // Crouch
	Cucco_SPRITE_BODY5    = spr_chicken_1a_body_5a_1_WRB; // Crouch head frwd
	Cucco_SPRITE_BODY6    = spr_chicken_1a_body_6a_1_WRB; // Atk-high Draw
	Cucco_SPRITE_LEGS1    = spr_chicken_1a_legs_1a_1_WRB; // Idle
	//Cucco_SPRITE_LEGS2    = spr_chicken_1a_legs_1a_2_WRB; // Walk 3
	Cucco_SPRITE_LEGS2    = spr_chicken_1a_legs_1a_2_v2_WRB; // Walk 3 v2
	//Cucco_SPRITE_LEGS3    = spr_chicken_1a_legs_1a_3_WRB; // Walk 2 v1
	//Cucco_SPRITE_LEGS3    = spr_chicken_1a_legs_1a_3_v2_WRB; // Walk 2 v2
	Cucco_SPRITE_LEGS3    = spr_chicken_1a_legs_1a_3_v3_WRB; // Walk 2 v2
	Cucco_SPRITE_LEGS4    = spr_chicken_1a_legs_1a_4_WRB; // Walk 1
	//Cucco_SPRITE_LEGS4    = spr_chicken_1a_legs_1a_4_v2_WRB; // Walk 1 v2
	Cucco_SPRITE_WING1    = spr_chicken_1a_wing_1a_1_WRB; // wing down
	Cucco_SPRITE_WING2    = spr_chicken_1a_wing_1a_2_WRB; // wing up



	var                   _a=1;
	SUB_STATE_IDLE      = _a++;
	SUB_STATE_WALK1     = _a++;
	SUB_STATE_WALK2     = _a++;
	SUB_STATE_HOP1      = _a++;
	SUB_STATE_HOP2      = _a++;
	SUB_STATE_PECK1     = _a++;
	SUB_STATE_PECK2     = _a++;
	SUB_STATE_AGRO      = _a++;
	SUB_STATE_PANIC     = _a++;
	SUB_STATE_FURY      = _a++;
	sub_state           = SUB_STATE_IDLE;


	HSPD1   = $08;
	//TERM_VEL =   5;


	abilities |= ABL_WALK;
	//abilities |= ABL_RUN_;
	//abilities |= ABL_JUMP;
	//abilities |= ABL_MELE; // Peck attack?
	//abilities |= ABL_SHOT; // projectile attack?


	CS_IDX1 = $02; // norm
	CS_IDX2 = $03; // crouching


	struck_counter = 0;

	PANIC_DUR   = $FF;

	facing_dir_timer = 0;


	scr_step = GameObjectB_step;







}
