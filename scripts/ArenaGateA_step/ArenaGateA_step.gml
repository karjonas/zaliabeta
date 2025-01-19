/// @description  ArenaGateA_step()
function ArenaGateA_step() {


	GameObjectB_step();


	if(!state) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!




	if (state == state_EXPLODE 
	&&  timer <= 1 )
	//&&  timer == 1 )
	{
	    state  = ST_CTRL;
	}


	if(!state
	||  state == ST_CTRL )
	{
	    g.view_lock &= ~g.view_lock_boss;
	    g.view_lock |=  g.view_lock_rm;
	    g.view_lock_boss = 0;
    
	    g.pc_lock = 0;
    
	    Audio.can_play_mus_rm_body = true;
	    state = 0;
	    if (g.mod_destroy_go_on_death && !state) GO_destroy_1a();
	}







}
