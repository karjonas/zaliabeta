/// @description  Blooby_init1()
function Blooby_init1() {

	// ver 2: Has a collision cooldown


	var _i, _a;

	GameObjectB_init();


	Blooby_SPR_A1 = spr_Blooby_1a_1;
	Blooby_SPR_A2 = spr_Blooby_1b_1;
	Blooby_SPR_B1 = spr_Blooby_2a_2;
	GO_sprite_init(Blooby_SPR_A1);


	                      _a=1;
	sub_state_IDLE      = _a++;
	//sub_state_BOUNCE    = _a++;
	sub_state_COOLDOWN0 = _a++;
	sub_state_COOLDOWN1 = _a++;
	sub_state_COOLDOWN2 = _a++;
	sub_state           = sub_state_IDLE;


	XC_MIN  = cam_xl_min()+ww_;
	XC_MAX  = cam_xr_max()-ww_;
	YC_MIN  = cam_yt_min()+hh_;
	YC_MAX  = cam_yb_max()-hh_;


	hspd_PACE       = $0C;
	hspd_pace_dist  = $04<<3;
	hspd_PUSHBACK   = $30;
	hspd            = 0;


	BounceVelocity_BASE     = 1.4; // per vspd of pc
	//BounceVelocity_BASE     = 1.5; // per vspd of pc
	//BounceVelocity_BASE     = $02; // per vspd of pc
	BounceVelocity_MIN      = min(1.3, BounceVelocity_BASE);
	//BounceVelocity_ADD      = $04; // per vspd of pc
	BounceVelocity          = (-BounceVelocity_BASE) &$FF;



	ReactionAnim_TIMING     = $08;
	ReactionAnim_DUR1       = ((ReactionAnim_TIMING*3)<<1)-1;
	//ReactionAnim_DUR1       = $60-1;
	ReactionAnim_timer      = 0;







}
