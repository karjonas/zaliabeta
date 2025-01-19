/// @description  body_collide_body(inst, obj or inst)
function body_collide_body() {


	with(argument[1]) // obj or inst
	{
	    if (rectInRect(argument[0].BodyHB_x, 
	                   argument[0].BodyHB_y, 
	                   argument[0].BodyHB_w, 
	                   argument[0].BodyHB_h, 
	                               BodyHB_x, 
	                               BodyHB_y, 
	                               BodyHB_w, 
	                               BodyHB_h) )
	    {
	        return true;
	    }
	}

	return false;







}
