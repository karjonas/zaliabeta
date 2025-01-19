/// @description  update_RisingBubble()
function update_RisingBubble() {


	if (ver==2 
	&&  collisionProjCS(0,0) ) // check at center
	{
	    disintegrate_counter = $F3;
	    state      = state_EXPLODE;
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}



	// 9647
	    counter=(counter+1)&$FF;
	if (counter&$10) hspd = (-hspd_base)&$FF; // -4
	else             hspd = ( hspd_base)&$FF; //  4


	Projectile_update_1a(despawn_offscreen_hor); // if off-screen hor: Stay spawned
	//Projectile_update_1a(ver==3); // if off-screen hor: Stay spawned
	//Projectile_update_1a(true); // if off-screen hor: Despawn (OG)







}
