/// @description  Moa_init2()
function Moa_init2() {


	switch(ver){
	case 1:{GO_init_palidx(PI_MOB_RED); break;}
	case 2:{GO_init_palidx(PI_MOB_PUR); break;}
	}
	GO_depth_init(DEPTH_FLYER);

	sprL = spr_Moa2;
	sprR = spr_Moa1;
	sprRXOff = 0;

	//DRAW_YOFF = 1; // Does it get +1 in-ground??

	hspd_dir        = byte_dir(hspd);
	hspd_impel_dir  = hspd_dir;
	hDir            = 0; // 0401,X. horizontal Direction. 1 or -1

	timer = 0;


	NEED_CROSS = ver==2;



	if (ver==2 
	&&  g.area_name==Area_TownA )
	{
	    GO_init_palidx(PI_MOB_PUR);
    
	    XP_IDX = $0E;
	    xp     = g.dl_XP[|XP_IDX];
    
	    DROP_BITS = $00;
	    drop_bits = DROP_BITS;
	}







}
