/// @description  find_solid_point(x start, y start, x search dir, y search dir, *search limit, *none found point 7FF7FF)
function find_solid_point() {


	// -----------------------------------------------------------------------------------------
	// _COUNT   (Optional). Number of tiles to check. Pass 0 for max limit.
	                  var _COUNT   = $FF;
	if (argument_count>4) _COUNT   = min(abs(argument[4]), _COUNT);
	if(!_COUNT)           _COUNT   = $FF; // Pass 0 for max limit.

	// _DEFAULT (Optional). Value to return if solid not found.
	                  var _DEFAULT = -1; // -1 is returned if no value passed. This indicates no solid found.
	if (argument_count>5) _DEFAULT = argument[5] & ($7FF000 | $0007FF); // format must be:  y:$7FF000  |  x:$0007FF
	//                                                  y            x


	// ---------------------------------------------------------------------------------
	//                                                             CLM,            ROW,     CLM DIR,    ROW DIR,  LIMIT
	var _RC = find_rc_solid((TID_SOLID1|TID_ONEWY1)&$F, argument[0]>>3, argument[1]>>3, argument[2],argument[3], _COUNT);

	if (_RC>=0) // _RC format: ROW $FF00   |   CLM $00FF
	{
	    //            Y  =      $7F8000    |    $007000  =  $7FF000 (0111 1111 1111 0000 0000 0000)
	        var _P  = (  ((_RC&$FF00)<<7)  |  ((argument[1]&7)<<$C)  );  // 
	    //            X  =      $0007F8    |    $000007  =  $0007FF (0000 0000 0000 0111 1111 1111)
	            _P |= (  ((_RC&$00FF)<<3)  |  ((argument[0]&7)<<$0)  );  // 
    
	    return  _P; // $7FF7FF
	}

	    return _DEFAULT;
	//
	//  $FF00 >>8  =  $FF <<3  =  (0111 1111 1000) <<$C  =  (0111 1111 1000 0000 0000 0000)
	// ($FF00 <<7) == (1111 1111 0000 0000 <<7)         ==  (0111 1111 1000 0000 0000 0000)







}
