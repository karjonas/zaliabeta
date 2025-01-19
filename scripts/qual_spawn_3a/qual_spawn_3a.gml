/// @description  qual_spawn_3a(spawn x, ww_, spawn y, hh_, *respawn type)
function qual_spawn_3a() {


	if (g.view_lock&$F==$F)
	{
	    return false;
	}


	var _XC = argument[0] +  argument[1];      // spawn xc
	var _YC = argument[2] +  argument[3];      // spawn yc
	var _RX =  viewXL()   -  argument[1];
	var _RY =  viewYT()   -  argument[3];
	var _RW =  viewW()    + (argument[1]<<1);
	var _RH =  viewH()    + (argument[3]<<1);


	if (argument_count>4 
	&&  argument[4]==1 ) // respawn type 1: off screen (inifinite respawn)
	{
	    _RX -= g.SPAWN_DIST2_X;
	    _RW += g.SPAWN_DIST2_X<<1;
	    _RY -= g.SPAWN_DIST2_Y;
	    _RH += g.SPAWN_DIST2_Y<<1;
	}

	/*
	if(g.rm_name=="_DthMt_14"){
	sdm("_spawn_xc      $"+hex_str(_XC) +", _spawn_yc      $"+hex_str(_YC));
	sdm("_SpawnArea_XL $" +hex_str(_RX) +", _SpawnArea_XR  $"+hex_str(_RX+_RW));
	sdm("_SpawnArea_YT $" +hex_str(_RY) +", _SpawnArea_YB  $"+hex_str(_RY+_RH));
	sdm("_SpawnArea_W   $"+hex_str(_RW) +", _SpawnArea_H   $"+hex_str(_RH));
	sdm("point_in_rect: "+string(point_in_rect(_XC,_YC, _RX,_RY,_RW,_RH)));
	sdm("point_in_rect: "+string(point_in_rect(_XC,_YC, _RX-g.SPAWN_DIST1_X,_RY-g.SPAWN_DIST1_Y,_RW+(g.SPAWN_DIST1_X<<1),_RH+(g.SPAWN_DIST1_Y<<1))));
	}
	*/



	if (pointInRect(_XC,_YC, _RX,_RY,_RW,_RH) 
	|| !pointInRect(_XC,_YC, _RX-g.SPAWN_DIST1_X,_RY-g.SPAWN_DIST1_Y,_RW+(g.SPAWN_DIST1_X<<1),_RH+(g.SPAWN_DIST1_Y<<1)) )
	//if (point_in_rect(_XC,_YC, _RX,_RY,_RW,_RH) 
	//|| !point_in_rect(_XC,_YC, _RX-g.SPAWN_DIST1_X,_RY-g.SPAWN_DIST1_Y,_RW+(g.SPAWN_DIST1_X<<1),_RH+(g.SPAWN_DIST1_Y<<1)) )
	{
	    return false;
	}




	var                      _QUADRANT  = $0;
	     if (_XC >= _RX+_RW) _QUADRANT |= $1; // right
	else if (_XC <= _RX)     _QUADRANT |= $2; // left
	     if (_YC >= _RY+_RH) _QUADRANT |= $4; // bottom
	else if (_YC <= _RY)     _QUADRANT |= $8; // top


	if(!_QUADRANT)
	{
	    return false;
	}



	if (_QUADRANT&$1) // right
	{
	    if ( g.view_dir_x 
	    && !(g.view_lock&$1) )
	    {
	        var _CLM1 = (_RX+_RW)                >>3;
	        var _CLM2 = (_RX+_RW+g.SPAWN_DIST1_X)>>3;
	        return inRange(_XC>>3, _CLM1,_CLM2);
	    }
	}
	else if (_QUADRANT&$2) //  left
	{
	    if( !g.view_dir_x 
	    && !(g.view_lock&$2) )
	    {
	        var _CLM1 =  _RX                 >>3;
	        var _CLM2 = (_RX-g.SPAWN_DIST1_X)>>3;
	        return inRange(_XC>>3, _CLM2,_CLM1);
	    }
	}




	if (_QUADRANT&$4) // bottom
	{
	    if ( g.view_dir_y 
	    && !(g.view_lock&$4) )
	    {
	        var _ROW1 = (_RY+_RH)                >>3;
	        var _ROW2 = (_RY+_RH+g.SPAWN_DIST1_Y)>>3;
	        return inRange(_YC>>3, _ROW1,_ROW2);
	    }
	}
	else if (_QUADRANT&$8) // top
	{
	    if( !g.view_dir_y 
	    && !(g.view_lock&$8) )
	    {
	        var _ROW1 =  _RY                 >>3;
	        var _ROW2 = (_RY-g.SPAWN_DIST1_Y)>>3;
	        return inRange(_YC>>3, _ROW2,_ROW1);
	    }
	}





	return false;







}
