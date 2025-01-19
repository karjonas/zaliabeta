/// @description  Item_update_vertical()
function Item_update_vertical() {


	// D95C
	if (ITEM_TYPE!=STR_RFAIRY) // if NOT RESCUE FAIRY
	{
	    if (cs&$4)
	    {
	        solid_clip_correction(vspd && vspd<$80);
        
	        if (ITEM_TYPE != STR_PBAG 
	        &&       vspd >= $0E )
	        {   // Bounce ---------------------------
	            if ( vspd >= $30)
	            {    vspd  = $F0;  }
	            else vspd  = $F7;
	            set_xy(id, x, y-1);
	        }
	        else     vspd  = $FF;
	    }
	                 vspd  = (vspd+1)&$FF;
	}


	updateY();







}
