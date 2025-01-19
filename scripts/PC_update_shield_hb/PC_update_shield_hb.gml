/// @description  PC_update_shield_hb()
function PC_update_shield_hb() {


	var                _IDX =       ShieldHB_IDX;
	     if (is_cucco) _IDX = Cucco_ShieldHB_IDX;
	else if (is_fairy) _IDX = Fairy_ShieldHB_IDX;

	if (xScale)     ShieldHB_xoff = dg_ShieldHB[#_IDX,ShieldHB_IDX_XOFF_RIGHT]; // SHLD_XOFF_RGT
	else            ShieldHB_xoff = dg_ShieldHB[#_IDX,ShieldHB_IDX_XOFF_LEFT];  // SHLD_XOFF_LFT

	var _CROUCHING = (!is_cucco && Input.dHeld) 
	              || ( is_cucco && Cucco_crouching_state);
	//
	if(!_CROUCHING) ShieldHB_yoff = dg_ShieldHB[#_IDX,ShieldHB_IDX_YOFF_STAND];  // STANDING
	else            ShieldHB_yoff = dg_ShieldHB[#_IDX,ShieldHB_IDX_YOFF_CROUCH]; // CROUCHING

	if(!_CROUCHING) ShieldHB_h    = dg_ShieldHB[#_IDX,ShieldHB_IDX_H1]; // STANDING
	else            ShieldHB_h    = dg_ShieldHB[#_IDX,ShieldHB_IDX_H2]; // CROUCHING

	                ShieldHB_w    = dg_ShieldHB[#_IDX,ShieldHB_IDX_W1];
	//
	ShieldHB_collidable = true;
	if (is_cucco)
	{
	    ShieldHB_collidable = false;
	    ShieldHB_w=0;
	    ShieldHB_h=0;
	}


	update_shield_hb();


	if(is_cucco 
	&&  attack_bits&(BIT_ATK1|BIT_ATK2) )
	{
	    ShieldHB_collidable = true;
    
	    if(!_CROUCHING) ShieldHB_h = dg_ShieldHB[#_IDX,ShieldHB_IDX_H1]; // STANDING
	    else            ShieldHB_h = dg_ShieldHB[#_IDX,ShieldHB_IDX_H2]; // CROUCHING
    
	    ShieldHB_w  = $C;
    
	    ShieldHB_x  = 4  + (ShieldHB_w>>1);
	    ShieldHB_x  = x  + (ShieldHB_x*xScale);
	    ShieldHB_x -= (ShieldHB_w>>1);
    
	    ShieldHB_y  = yt +  ShieldHB_yoff;
	}







}
