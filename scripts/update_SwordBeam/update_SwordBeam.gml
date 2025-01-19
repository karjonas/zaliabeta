/// @description  update_SwordBeam()
function update_SwordBeam() {


	// 973D
	// if havn't bounced off shield
	if(!collided_shield) vspd = (-vspd_adj)&$FF;

	Projectile_update_3a(true); // vspd_adj == 2;







}
