/// @description  Cucco_update_1()
function Cucco_update_1() {


	if (timer) return false;
	//if (timer) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!



	       sub_state = choose(SUB_STATE_IDLE, SUB_STATE_WALK1);
	       //sub_state = choose(SUB_STATE_IDLE, SUB_STATE_WALK1, SUB_STATE_PECK1);
	       //sub_state = choose(SUB_STATE_IDLE, SUB_STATE_WALK1, SUB_STATE_HOP1, SUB_STATE_PECK1);
	switch(sub_state)
	{
	    // -----------------------------------------------------------------
	    // --------------------------------------------------------
	    case SUB_STATE_IDLE:{
	    timer = ((irandom(2)+1)<<6) + irandom($1F);
	    break;}
    
    
	    // -----------------------------------------------------------------
	    // --------------------------------------------------------
	    case SUB_STATE_WALK1:{
	    timer = ((irandom(2)+1)<<6) + irandom($1F);
	    break;}
    
    
	    // -----------------------------------------------------------------
	    // --------------------------------------------------------
	    case SUB_STATE_HOP1:{
	    timer = ((irandom(1)+1)<<4) + irandom($1F);
	    break;}
    
    
	    // -----------------------------------------------------------------
	    // --------------------------------------------------------
	    case SUB_STATE_PECK1:{
	    timer = ((irandom(1)+1)<<6) + irandom($1F);
	    break;}
	}



	return true;








}
