/// @description  Fenser_init1()
function Fenser_init1() {


	GameObjectB_init();

	is_from_HelmetHead = false;
	control     = 0; // 0401[eIndex]


	projectile_OBJ = Bullet1;
	projectile_VER = 1;
	projectile     = projectile_OBJ;
	projectile_ver = projectile_VER;


	Rise_yt     = 0;
	Rise_done   = false; // 0444[eIndex]

	Bounce_MAX  = 3;
	Bounce_VSPD = $20;
	Bounce_vspd = 0;







}
