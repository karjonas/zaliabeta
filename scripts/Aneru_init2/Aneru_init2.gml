/// @description  Aneru_init2()
function Aneru_init2() {


	ds_list_add(dl_sprites,spr_Aneru1);
	ds_list_add(dl_sprites,spr_Aneru2);

	VSPD_GRAV = 2;
	vspd_grav = VSPD_GRAV;



	switch(ver)
	{   // --------------------------------------
	    case 1:{
	    abilities |= ABL_JUMP;
	    abilities |= ABL_SHOT;
	    projectile_OBJ = Rock2;
	    projectile_VER = 1;
	    break;}
    
	    // --------------------------------------
	    case 2:{
	    abilities |= ABL_JUMP;
	    abilities |= ABL_SHOT;
	    abilities |= ABL_WALK;
	    projectile_OBJ = Rock2;
	    projectile_VER = 1;
	    break;}
    
	    // --------------------------------------
	    case 3:{
	    abilities |= ABL_JUMP;
	    abilities |= ABL_SHOT;
	    projectile_OBJ = Fireball1;
	    projectile_VER = 1;
	    break;}
	}


	projectile     = projectile_OBJ;
	projectile_ver = projectile_VER;







}
