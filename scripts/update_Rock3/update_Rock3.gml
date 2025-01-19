function update_Rock3() {

	// 965B
	if(!collisionProjCS(0,0)) // 0
	{   // 9662, 9665
	    Projectile_update_3a(true);
	}
	else
	{   // 9670
	    disintegrate_counter = $F3;
	    state = state_EXPLODE;
	}




}
