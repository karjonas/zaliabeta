function PC_update_body_offsets() {



	if (pc_is_cucco())
	{
	    if (Cucco_crouching_state)
	    {    BodyHB_idx = Cucco_BodyHB_IDX2;  } // crouching
	    else BodyHB_idx = Cucco_BodyHB_IDX1;
	}
	else if (pc_is_fairy())
	{
	    BodyHB_idx = Fairy_BodyHB_IDX1;
	}
	else
	{
	    if (Input.dHeld)
	    {
	        BodyHB_idx = BodyHB_IDX2;
	    }
	    else
	    {
	        BodyHB_idx = BodyHB_IDX1;
	    }
	}







}
