/// @description  update_out_of_bounds_fail_safe()
function update_out_of_bounds_fail_safe() {


	if (pc.state != pc.state_NORMAL) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

	var _DIST=$10<<3;
	//var _DIST=$8<<3;
	if(!wINw(pc.xl,pc.ww, -_DIST,rm_w+(_DIST<<1)) 
	||  pc.yt > rm_h+PAGE_H )
	{
	    rm_restart();
	}







}
