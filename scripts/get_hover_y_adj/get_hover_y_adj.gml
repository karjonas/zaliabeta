/// @description  get_hover_y_adj(timing)
function get_hover_y_adj(argument0) {


	argument0 = 1<<clamp(argument0,0,5); // $1,$2,$4,$8,$10,$20

	if!(g.counter1&(argument0-1)) // $0,$1,$3,$7,$F,$1F
	{
	    return sign_(g.counter1&(argument0<<2)); // $4,$8,$10,$20,$40,$80
	}
	    return 0;
	//







}
