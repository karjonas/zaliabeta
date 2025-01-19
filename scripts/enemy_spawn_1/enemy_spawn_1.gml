/// @description  enemy_spawn_1(object_index, version)
function enemy_spawn_1(argument0, argument1) {

	// Used by WosuSpawner & MauSpawner


	var _OBJ = argument0;
	var _VER = argument1;


	var _facingDir =  facingDir;
	if (Input.heldH)  facingDir = -sign_(Input.heldH&$1);
	//else             facingDir = -sign_(irandom($FF)&$1);
	else              facingDir = -sign_(    rand()&$1);


	with(GameObject_create(0,0, _OBJ,_VER))
	{   // B876
	    facingDir =  other.facingDir;
	    other.facingDir = _facingDir;
    
	    // WIDE VIEW
	    var _XX  = viewXL() + (viewW() * !facingDir); // left or right end of view
	        _XX -= ww_;                               // half GO's width
	        _XX += ((g.pc.yt&$FF)<3) * facingDir;     // OG CARRY. 0, 1, -1
	    var _YY  =   g.pc.yt + g.pc.hh - $22;
	    /*  OG
	    var _XX = g.camXL + ((8*facingDir)&$FF) + ((g.pc.yy&$FF)<3);
	    var _YY = g.pc.yy - 2;
	    */
    
	    set_xlyt(id, _XX,_YY);
    
	    hspd      = (HSPD1*facingDir) &$FF;
	    counter   = $FF;
    
	    return id;
	}







}
