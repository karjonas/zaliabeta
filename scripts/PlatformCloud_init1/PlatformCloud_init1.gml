/// @description  PlatformCloud_init1()
function PlatformCloud_init1() {


	var _i, _a;

	Platform_init_1();
	GO_depth_init(DEPTH_FG4-1);
	//GO_depth_init(g.DEPTH_CLOUD-1);
	//GO_sprite_init(spr_cloud_2a);
	GO_init_palidx(PI_CLOUD_1);


	CLMS_MIN    = 6;
	CLMS_MAX    = g.rm_clms + CLMS_MIN;
	CLMS        = CLMS_MIN;
	// BodyHB_ENDADJ_R = 
	BODY_XOFF   = 4;
	BODY_W      = (CLMS<<3) - abs(BODY_XOFF)<<1;
	BodyHB_w       = BODY_W;
	// BODY_XL     = 0;

	Cloud_SPR1      = 0; // 
	// CloudMid_CNT    = 0;







}
