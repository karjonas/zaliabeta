/// @description  Thunderbird_udp()
function Thunderbird_udp() {


	// 9EBF
	can_draw_self = true;

	                        Face_sprite=0;
	if (hp < HP)
	{
	    if!(g.counter1&$18) Face_sprite=spr_Thunderbird_Face_1a;
	    else                Face_sprite=spr_Thunderbird_Face_1b;
    
	    if (palidx_def !=  PI_MOB_BLU)
	    {   GO_init_palidx(PI_MOB_BLU);  }
	}


	Wings_yoff  = (g.counter1&$6)>>1; // $0,1,2,3
	Wings_yoff += $C;







}
