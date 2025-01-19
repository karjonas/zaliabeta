/// @description  Snaraa_init2()
function Snaraa_init2() {


	if (g.dg_RmTile_solid[# (xl>>3)-1, yt>>3]&$FF == TID_SOLID1)
	{    facingDir =  1;  }
	else facingDir = -1;

	if ( facingDir) path_dir = $1; // 1: RGT
	else            path_dir = $2; // 2: LFT


	path_dist = Snaraa_update_1(x>>3);
	Snaraa_update_2();


	timer = $40;







}
