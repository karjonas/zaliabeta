/// @description  Platform_init_1()
function Platform_init_1() {


	GameObjectB_init();
	DRAW_YOFF = 0;


	solid_type  = TID_ONEWY1;
	add_to_solid_inst_list(id);


	// pc.x diff from id.x
	pc_xoff = 0;


	path_dir    = 1;
	location_a  = 0;
	location_b  = location_a;

	hspd_dir    = 1;
	hspd1       = 0;

	vspd_dir    = 1;
	vspd1       = 0;


	//standby     = false;







}
