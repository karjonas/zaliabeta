/// @description  CloudCover1_update()
function CloudCover1_update() {


	var _i, _x0,_x,_y;
	var _dir, _dist, _speed0,_speed;

	for(_i=0; _i<CloudLayers_COUNT; _i++)
	{
	    _x0     = dg_CloudLayers[#_i,0];
	    _x      = dg_CloudLayers[#_i,2];
	    _dir    = dg_CloudLayers[#_i,4];
	    _speed0 = dg_CloudLayers[#_i,5];
	    _speed  = dg_CloudLayers[#_i,6];
    
	    _speed +=  _speed0;
	    _x     += (_speed>>4) * _dir;
	    _speed &= $0F;
    
	    _dist   = abs(_x0-_x) mod CloudSpr1_W;
	    _x      = _x0 + (_dist*_dir);
    
    
	    dg_CloudLayers[#_i,2] = _x;
	    dg_CloudLayers[#_i,6] = _speed;
	}

	//if!(g.counter0&$3) sdm("CLOUD. "+"x $"+hex_str(dg_CloudLayers[#0,2])+", "+"y $"+hex_str(dg_CloudLayers[#0,3]));







}
