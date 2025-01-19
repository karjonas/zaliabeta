/// @description  Fire1_init()
function Fire1_init() {


	scr_draw = Fire1_draw;


	var _SPR = spr_Fire_1a_2;
	//var _SPR = spr_Fire_1a_1;
	//var _SPR = spr_Fire_1a;
	switch(ver){
	case 1:{GO_sprite_init(_SPR); break;}
	case 2:{GO_sprite_init(spr_Flame1); break;}
	case 3:{GO_sprite_init(spr_Flame_Small_1b); break;}
	}

	ANIM_SPEED = $08;

	GO_depth_init(DEPTH_BG4+1);
	GO_init_palidx(PI_MOB_ORG);


	can_draw_self = true;







}
