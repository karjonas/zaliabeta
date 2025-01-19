/// @description  GOB_body_collide_pc_body_1b()
function GOB_body_collide_pc_body_1b() {

	// E4D9
	// var _ocsVal;
	// _ocsVal  = (g.pc.ocs & 6) << 1;
	// _ocsVal |= ocs;
	// w bits: 0001 1111, h bits: 1110 0000

	/*
	var _ocs = ocsH2() && !(g.pc.ocs & 4); // at least 8 pixels of gob & pc center x on screen

	// if (Elevator OR Town OR every other frame)
	var _c1 = (oi == ElevA) || (rm_get_town_idx() != -1) || GO_can_collide_this_frame(eIndex);
	var _c2 = state == ST_NRM && !stunTimer && _ocs;

	// canDrawBodyHB = _c2; // prevent NOT drawing hb every other frame

	if (_c1 && _c2)
	{
	    update_body_hb_1a();
    
	    if (collide_pc_body(bodyX, bodyY, bodyW, bodyH))
	    {
	        cs |= CS_LBD;
        
	        // E51E
	        if (isAncestor(oi, Item)) // Item
	        {
	            var _iID = iID & $7F;
            
	            // Major items + Heart/Magic containers
	            if (_iID < $08 || _iID > $11 || isVal(_iID, $0E, $0F))
	            {
	                // E538: JSR E771
	                update_E771();
                
	                // E53B
	                g.pc.getItemTimer = $70;
	                // g.pc.vspd = 0; // og
	                // g.pc.hspd = 0; // og
                
	                g.pc.getItem_ItemID = _iID; // 049D 
	                g.pc.getItem_PalInd = palIndex;
                
                
	                // MOD -----------------
	                // So PC not in air during hold item pose
	                // setXY(g.pc, g.pc.xx, yy + hh - g.pc.hh);
	            }
	        }
        
	        exit;
	    }
	}


	cs &= (CS_LBD ^ $FF); // remove CS_LBD from cs
	*/




}
