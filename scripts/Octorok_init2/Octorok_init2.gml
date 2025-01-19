/// @description  Octorok_init2()
function Octorok_init2() {


	switch(ver)
	{
	    case 1:{
	    ds_list_add(dl_sprites,spr_Octorok_Idle);
	    ds_list_add(dl_sprites,spr_Octorok_Mouth);
	    break;}
    
	    case 2:{
	    ds_list_add(dl_sprites,spr_Octorok_Idle);
	    ds_list_add(dl_sprites,spr_Octorok_Mouth);
	    break;}
    
	    case 3:{
	    ds_list_add(dl_sprites,spr_Octorok2_Idle);
	    ds_list_add(dl_sprites,spr_Octorok2_Mouth);
	    break;}
	}

	VSPD_GRAV   = 2;
	vspd_grav   = VSPD_GRAV;

	            abilities |= ABL_JUMP;
	            abilities |= ABL_SHOT;
	if (ver==2) abilities |= ABL_WALK;


	projectile_OBJ = Rock2;
	projectile_VER = 1;
	projectile     = projectile_OBJ;
	projectile_ver = projectile_VER;



	if (ver==3)
	{
	    GO_init_palidx(PI_MOB_PUR);
	}
	else if (g.area_name==Area_EastA)
	{
	    GO_init_palidx(PI_MOB_BLU);
    
	    HP_IDX=$08;
	    hp=g.dl_HP[|HP_IDX];
    
	    XP_IDX=$0C;
	    xp=g.dl_XP[|XP_IDX];
	}







}
