/// @description  Ache_init2()
function Ache_init2() {


	SPR_IDLE = spr_Ache1;
	SPR_FLAP = spr_Ache2;
	if (ver==2) GO_init_palidx(PI_MOB_RED);
	else        GO_init_palidx(PI_MOB_BLU);
	GO_depth_init(DEPTH_FLYER);


	projectile_OBJ = Fireball1;
	projectile_VER = 2;
	projectile     = projectile_OBJ;
	projectile_ver = projectile_VER;


	DRAW_YOFF =  0; // No in-ground +1
	yScale    = -1;


	ACHEMAN_DUR  = $30;
	acheManTimer =   0; // $00AF,X
	IDLE_Y       = (yt>>3)<<3;
	attack_dist  = $20;


	if (ver==1)
	{
	    switch(g.area_name){
	    case Area_EastA:{ATTACK_LEVEL=$02; attack_level=ATTACK_LEVEL; break;}
	    case Area_TownA:{ATTACK_LEVEL=$03; attack_level=ATTACK_LEVEL; break;}
	    }
    
	    switch(g.area_name){
	    case Area_TownA:{HP_IDX=$00; hp=g.dl_HP[|HP_IDX]; break;}
	    }
    
	    switch(g.area_name){
	    case Area_EastA:{XP_IDX=$05; xp=g.dl_XP[|XP_IDX]; break;}
	    case Area_TownA:{XP_IDX=$00; xp=g.dl_XP[|XP_IDX]; break;}
	    }
    
	    switch(g.area_name){
	    case Area_TownA:{RESPAWN_TYPE=$00; respawn_type=RESPAWN_TYPE; break;}
	    }
    
	    switch(g.area_name){
	    case Area_TownA:{DROP_BITS=$00; drop_bits=DROP_BITS; break;}
	    }
	}







}
