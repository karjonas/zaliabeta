/// @description  Ganon3_Fire_update_1a(clm, row)
function Ganon3_Fire_update_1a(argument0, argument1) {

	// spread fire


	dg_fire[#argument0,2] = 0; // set as currently non-flammable
	dg_fire[#argument0,3] = Fire_DURATION1; // Fire_DURATION1=$40. 3: life timer

	dg_fire[#argument0,0] = -3 + irandom(5); // -3 - 2. xoff from center of tile
	dg_fire[#argument0,1] = -3 + irandom(5); // -3 - 2. yoff from center of tile
	if (argument0 mod Slime_CLMS==0 
	||  argument0 mod Slime_CLMS==Slime_CLMS-1 )
	{
	    dg_fire[#argument0,0] += (irandom(3)+1) * sign_(_p.x<x);
	}

	if (argument1==0) // if top row
	{
	    dg_fire[#argument0,1] += irandom(3)+1;
	}







}
