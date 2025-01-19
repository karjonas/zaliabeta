/// @description  Goriya_init2()
function Goriya_init2() {

	// Goriya v1 orange
	// Goriya v2 red
	// Goriya v3 blue


	BVR_IDLE = 0; // 0 attack NONE
	BVR_ATK1 = 1; // 1 attack low
	BVR_ATK2 = 3; // 3 attack high


	projectile_OBJ = Boomerang;
	projectile_VER = 1;
	projectile     = projectile_OBJ;
	projectile_ver = projectile_VER;


	VSPD_GRAV   = 2;
	vspd_grav   = VSPD_GRAV;


	ATK_DIST    = $60; // 
	attack_dist = ATK_DIST;
	counter     = 0;

	SPR_ATK2  = spr_Goriya_B2; // attack high
	SPR_ATK1  = spr_Goriya_B1; // attack low
	SPR_IDL2  = spr_Goriya_A2; // legs open
	SPR_IDL1  = spr_Goriya_A1; // legs closed

	//GO_pal_idx_init(PI_MOB_ORG);







}
