/// @description  collideRect(x, y, w, h, colliding obj, *colliding obj..)
function collideRect() {


	for(var _i=4; _i<argument_count; _i++)
	{
	    with(argument[_i])
	    {
	        if (rectInRect(argument[0],argument[1],argument[2],argument[3], BodyHB_x,BodyHB_y, BodyHB_w,BodyHB_h))
	        {
	            return id;
	        }
	    }
	}


	return noone;







}
