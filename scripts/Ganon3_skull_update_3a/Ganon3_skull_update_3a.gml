/// @description  Ganon3_skull_update_3a()
function Ganon3_skull_update_3a() {


	// Check solid collisions
	var _colliding_sides  = $0;
	if (Skull_hspd)
	{
	    var _x;
	    if (Skull_hspd<$80)
	    {
	        _x=Skull_x + SkullCS_OFFSET1;
	        if (collide_solid_grid(_x,Skull_y) || _x>arena_xr) _colliding_sides |= $1;
	        //if (collide_solid_grid(_x,Skull_y) || _x>viewXR()) _colliding_sides |= $1;
	    }
	    else
	    {
	        _x=Skull_x - SkullCS_OFFSET1;
	        if (collide_solid_grid(_x,Skull_y) || _x<arena_xl) _colliding_sides |= $2;
	        //if (collide_solid_grid(_x,Skull_y) || _x<viewXL()) _colliding_sides |= $2;
	    }
	}

	if (Skull_vspd)
	{
	    var _y;
	    if (Skull_vspd<$80)
	    {
	        _y=Skull_y + SkullCS_OFFSET1;
	        if (collide_solid_grid(Skull_x,_y) || _y>arena_yb) _colliding_sides |= $4;
	        //if (collide_solid_grid(Skull_x,_y) || _y>viewYB()) _colliding_sides |= $4;
	    }
	    else
	    {
	        _y=Skull_y - SkullCS_OFFSET1;
	        if (collide_solid_grid(Skull_x,_y) || _y<viewYT()) _colliding_sides |= $8;
	    }
	}


	if (_colliding_sides)
	{
	    var _hspd=Skull_hspd;
	    var _vspd=Skull_vspd;
    
	    // Change hspd and/or vspd dir
	    if (Attack_round==3 
	    && !(irandom(3)) )
	    {
	        if (_colliding_sides&$3) _hspd = byte(Skull_SPEED2 * -sign_(_colliding_sides&$1));
	        if (_colliding_sides&$C) _vspd = byte(Skull_SPEED2 * -sign_(_colliding_sides&$4));
	    }
	    else
	    {
	        if (_colliding_sides&$3) _hspd = byte(abs8b(_hspd) * -sign_(_colliding_sides&$1));
	        if (_colliding_sides&$C) _vspd = byte(abs8b(_vspd) * -sign_(_colliding_sides&$4));
	    }
	    //if (irandom(1)){_hspd=Skull_SPEED2; _vspd=choose(Skull_SPEED4,Skull_SPEED2);}
	    //else           {_vspd=Skull_SPEED2; _hspd=choose(Skull_SPEED4,Skull_SPEED2);}
    
	    Skull_hspd = byte(_hspd);
	    Skull_vspd = byte(_vspd);
	}


	return _colliding_sides;







}
