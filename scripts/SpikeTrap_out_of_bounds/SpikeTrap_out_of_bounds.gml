/// @description  SpikeTrap_out_of_bounds(instance id)
function SpikeTrap_out_of_bounds(argument0) {


	with(argument0)
	{
	    var                      _OFF = $08;
	    if (x <= cam_xl_min() + -_OFF 
	    ||  x >= cam_xr_max() +  _OFF 
	    ||  y <= cam_yt_min() + -_OFF 
	    ||  y >= cam_yb_max() +  _OFF )
	    {
	        GOB_despawn(id);
	        state = 0;
	    }
	}








}
