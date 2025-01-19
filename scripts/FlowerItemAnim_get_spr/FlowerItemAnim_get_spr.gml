/// @description  FlowerItemAnim_get_spr()
function FlowerItemAnim_get_spr() {


	if(!g.mod_FlowerItemAnim)
	{       return g.FlowerItemAnim_SPR1;  }


	// ---------------------------------------------------
	var    _DUR     = g.FlowerItemAnim_DUR;
	var    _TIME    = g.counter0 & (_DUR-1);
	var    _IDX     = _TIME <  (_DUR div 3);
	       _IDX    += _TIME < ((_DUR div 3)>>1);
	switch(_IDX){
	case 0:{return g.FlowerItemAnim_SPR1;}
	case 1:{return g.FlowerItemAnim_SPR3;}
	case 2:{return g.FlowerItemAnim_SPR2;}
	}
	        return g.FlowerItemAnim_SPR1;
	//







}
