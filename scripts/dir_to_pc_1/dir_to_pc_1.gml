/// @description  dir_to_pc_1()
function dir_to_pc_1() {

	// In OG, if this instant's spawn happens in go_spawn_enter_room(), 
	// facingDir here always comes to -1 bc PC's xy are default 0 and 
	// haven't been set yet. I have changed it so that PC's xy are 
	// set on Room_Start frame.
	// This script simulates OG, keeping PC xy set to PC spawn xy


	if(!g.pc.state)
	{
	    var _PC_X = g.pc.x;
	    var _PC_Y = g.pc.y;
	    set_xy(g.pc, g.pc.ww_,g.pc.hh_);
	    var _DIR = dir_to_pc_(id);
	    set_xy(g.pc, _PC_X,_PC_Y);
	    return _DIR;
	}


	return dir_to_pc_(id);







}
