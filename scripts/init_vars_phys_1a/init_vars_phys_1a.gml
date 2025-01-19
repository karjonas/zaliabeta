/// @description  init_vars_phys_1a()
function init_vars_phys_1a() {


	hspd           = 0; // 0070-007C
	hspd_sub       = 0; // 03D6-03DC.  The sub-pixel amount that builds each frame adding 1 to _x_change when > $FF
	hspd_grav      = 0;
	hspd_dir       = 0;
	hspd_dir_spawn = 0;
	x_change       = 0; // current x_change
	x_change1      = 0; // x_change at start of 1st update_Camera_1a()
	x_change2      = 0; // x_change at start of 2nd update_Camera_1a()
	x_change_dir   = 0;
	// hspd Push-Back: Used as a counter force to push something back
	hspd_pushback  = 0; // $043E,X
	// 0, or the push/force dir (1,-1) that hspd was increased or maintained for the frame
	hspd_impel     = 0;



	vspd           = 0; // 057D-0589
	vspd_sub       = 0; // 03E7-03EC.  The sub-pixel amount that builds each frame adding 1 to _y_change when > $FF
	vspd_grav      = 0; // 03E6 for PC
	vspd_dir       = 0;
	vspd_dir_spawn = 0;
	y_change       = 0;
	y_change1      = 0; // y_change at start of 1st update_Camera_1a()
	y_change2      = 0; // y_change at start of 2nd update_Camera_1a()
	y_change_dir   = 0;
	// 0, or the push/force dir (1,-1) that vspd was increased or maintained for the frame
	vspd_impel     = 0;
	// false: obj uses updateY2(). Only PC, ShadowBoss, Lowder, Megmat
	// true:  obj uses updateY()
	uses_vspd_sub  = true;


	// Off Ground Reason
	ogr = 0;

	// 0: Grav DWN, Bottom facing DOWN,  hspd & vspd normal
	// 1: Grav RGT, Bottom facing RIGHT, hspd =  vspd, vspd = -hspd
	// 2: Grav UP,  Bottom facing UP,    hspd = -hspd, vspd = -vspd
	// 3: Grav LFT, Bottom facing LEFT,  hspd =  vspd, vspd =  hspd
	orientation = 0;







}
