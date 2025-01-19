/// @description  Ganon3_update_battle_3a(target x, target y, hspd max, vspd max)
function Ganon3_update_battle_3a(argument0, argument1, argument2, argument3) {


	var _val, _dir;
	var _DIST1  = $1;
	var _SPEED1 = $20;

	// ----------------------------------------------------------
	if (abs(Skull_x-argument0)<=_DIST1 
	&&  abs8b(Skull_hspd)<=_SPEED1 )
	{
	    Skull_x = argument0;
	    Skull_hspd = 0;
	}
	else if (Skull_x!=argument0)
	{
	    _dir  = sign_(Skull_x<argument0);
	    _val  = byte_dir(Skull_hspd)!=_dir;
	    _val &= !(g.counter1&$7);
	    _val  = 1+_val;
	    _val  = abs8b(Skull_hspd) + _val;
	    _val  = min(_val, argument2);
	    Skull_hspd = byte(_val*_dir);
	}

	// ----------------------------------------------------------
	if (abs(Skull_y-argument1)<=_DIST1 
	&&  abs8b(Skull_vspd)<=_SPEED1 )
	{
	    Skull_y = argument1;
	    Skull_vspd = 0;
	}
	else if (Skull_y!=argument1)
	{
	    _dir  = sign_(Skull_y<argument1);
	    _val  = byte_dir(Skull_vspd)!=_dir;
	    _val &= !(g.counter1&$7);
	    _val  = 1+_val;
	    _val  = abs8b(Skull_vspd) + _val;
	    _val  = min(_val, argument3);
	    Skull_vspd = byte(_val*_dir);
	}

	/*
	_dir=sign_(Skull_y<=_TARGET_Y);
	//_dir = byte_dir(Skull_vspd);
	Skull_vspd = min(abs8b(Skull_vspd), Skull_SPEED1-abs(vspd_grav)); // Skull_SPEED1=$50
	Skull_vspd = byte(Skull_vspd*_dir);
	*/







}
