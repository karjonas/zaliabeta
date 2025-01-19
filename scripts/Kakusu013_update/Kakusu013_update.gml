/// @description  Kakusu013_update()
function Kakusu013_update() {


	switch(sub_state)
	{
	    // ---------------------------------------------------------------------
	    // --------------------------------------------------------------
	    case SUB_STATE_IDLE:{
	    if ( sub_state_timer){sub_state_timer--; break;}
	    // WAITING FOR Challenge_BlockConfiguration to change sub_state.
	    break;}
    
    
    
    
	    // ---------------------------------------------------------------------
	    // --------------------------------------------------------------
	    case SUB_STATE_REVL:{
	    if ( sub_state_timer){sub_state_timer--; break;}
    
	    facingDir = 1;
	    hspd = (hspd_jump*facingDir) &$FF;
	    vspd = VSPD_REVEAL; // Jump!
	    ogr  = OGR_JUMP;
    
	    aud_play_sound(SND_REVEAL);
	    sub_state = SUB_STATE_ACTV;
	    break;}
    
    
    
    
	    // ---------------------------------------------------------------------
	    // --------------------------------------------------------------
	    case SUB_STATE_ACTV:{
	    if ( sub_state_timer){sub_state_timer--; break;}
	    Kakusu_update();
	    break;}
	}







}
