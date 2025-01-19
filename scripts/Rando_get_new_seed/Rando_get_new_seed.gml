/// @description  Rando_get_new_seed()
function Rando_get_new_seed() {


	var _seed=0;

	randomize();
	switch(1)
	{
	    case 1:{
	    _seed = random_get_seed();
	    break;}
    
	    case 2:{
	    for(var _i=0;_i<8;_i++) _seed |= irandom($F)<<(_i<<2);
	    break;}
	}


	return _seed;







}
