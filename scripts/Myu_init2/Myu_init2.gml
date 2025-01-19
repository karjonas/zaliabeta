/// @description  Myu_init2()
function Myu_init2() {


	init_vars_Bot();


	dl_sprites[|1] = spr_Myu2; // spikes out
	dl_sprites[|0] = spr_Myu1;
	GO_init_palidx(PI_MOB_BLU);

	abilities |= ABL_WALK;


	if (g.area_name==Area_PalcC 
	||  g.area_name==Area_PalcD 
	||  g.area_name==Area_PalcE 
	||  g.area_name==Area_PalcF )
	{
	    XP_IDX=$05;
	    xp=g.dl_XP[|XP_IDX];
	}


	if (g.area_name==Area_PalcG 
	||  g.area_name==Area_PalcH )
	{
	    ATTACK_LEVEL=$04;
	    attack_level=ATTACK_LEVEL;
    
	    HP_IDX=$0D;
	    hp=g.dl_HP[|HP_IDX];
    
	    XP_IDX=$0A;
	    xp=g.dl_XP[|XP_IDX];
	}







}
