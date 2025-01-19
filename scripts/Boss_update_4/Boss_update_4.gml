/// @description  Boss_update_4()
function Boss_update_4() {


	var             _GATE=noone;
	with(ArenaGate){_GATE=id; break;}
	if(!_GATE  // This boss doesn't use gates.
	||  _GATE.sub_state==_GATE.SUB_STATE_DONE )
	{
	    g.pc_lock = 0;
	    return true;
	}


	return false;







}
