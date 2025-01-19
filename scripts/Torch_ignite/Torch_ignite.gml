/// @description  Torch_ignite()
function Torch_ignite() {


	is_lit      = true;
	brightness  = BRIGHTNESS;

	HP_IDX      = $1F; // g.dl_HP_DEFAULT[|$1F] = $FF
	hp          = g.dl_HP[|HP_IDX];
	stun_timer  = 0;

	// prevent any further collision
	react_proj  = 0;
	react_sword = 0;
	cs &= ~(CS_PR1|CS_SW1);







}
