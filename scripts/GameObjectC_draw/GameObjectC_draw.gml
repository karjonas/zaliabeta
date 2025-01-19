/// @description  GameObjectC_draw()
function GameObjectC_draw() {


	GameObject_draw(state); // scr_draw OR draw self


	//  -----------------------------------------------------------
	//  Debug draw
	if (g.DevTools_state 
	//if (DEV 
	&&  state )
	{
	    GO_draw_body_hb(); // 'R'. body hb
	    GO_draw_ocs();     // ocs lines. Toggle with 'C'
	}







}
