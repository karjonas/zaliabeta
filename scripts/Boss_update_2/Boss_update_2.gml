/// @description  Boss_update_2()
function Boss_update_2() {

	// HorseHead, HelmetHead, Gooma


	// BC4E: JSR EF11
	update_EF11();
	// BC51: JSR 9E17.  update hspdPB
	GOB_update_1(true);

	GO_update_cs();

	if!(cs&$3) updateX();

	// BC54: JSR E617
	if (GOB_shield_collision_1a())
	{
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}



	// BC57: JSR DE3D
	GO_update_cs();
	// DE40.  camXX,ocs,vertical despawn,update_EF11,body collision
	GOB_update_2();
	// BC5A: JSR D6C1.  dmg pc
	if (cs&CS_BD1) enemy_collide_pc_body(); // 

	// BC5D.  check & set pending death
	Boss_update_5() // 







}
