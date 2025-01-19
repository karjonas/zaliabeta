/// @description  Boggnipp_init1()
function Boggnipp_init1() {


	var _i, _a;


	GameObjectB_init();


	ds_list_add(dl_sprites,spr_Boggnipp_1a);
	ds_list_add(dl_sprites,spr_Boggnipp_1b);
	GO_sprite_init(dl_sprites[|0]);


	                      _a=1;
	sub_state_IDLE      = _a++;
	//sub_state_PACE      = _a++;
	//sub_state_AGRO      = _a++;
	sub_state_CHARGE    = _a++;
	//sub_state_ATTACK    = _a++;
	sub_state_JUMP      = _a++;
	sub_state_RESET     = _a++;
	sub_state_LAND      = _a++;
	//sub_state_SWIM      = _a++;
	sub_state           = sub_state_IDLE;




	HSPD_PACE   = $0C;
	HSPD_CHARGE = $20;

	VSPD_JUMP   = $EA; // Jump speed (initial velocity)
	//VSPD_JUMP   = $EC; // Jump speed (initial velocity)
	//VSPD_JUMP   = $E8; // Jump speed (initial velocity)


	ATTACK_DIST     = $50;
	AGRO_DIST       = ATTACK_DIST+$80;
	RESET_DIST      = ATTACK_DIST+$20;


	YT_IDLE     = -$05; // offset on spawn_y

	counter     = $00;

	RM_PAD      = $10;

	//AttackCooldown_DUR      = $100;
	//AttackCooldown_timer    = 0;







}
