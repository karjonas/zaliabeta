/// @description  TargetA_init2()
function TargetA_init2() {


	ds_list_add(dl_sprites,spr_Moby1);
	ds_list_add(dl_sprites,spr_Moby2);

	switch(ver)
	{
	    // -------------------------------------------------------
	    case 1:{
    
	    break;}
    
    
    
	    // -------------------------------------------------------
	    case 2:{
	    GO_init_palidx(PI_MOB_ORG);
	    vspd_grav   = 1;
	    break;}
    
    
    
	    // -------------------------------------------------------
	    case 3:{
    
	    break;}
	}







}
