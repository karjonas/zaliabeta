/// @description  pushback_pc(push source x, new hspd)
function pushback_pc(argument0, argument1) {


	with(g.pc)
	{
	    if(!argument1)                 exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	    if (argument0< x && cs&CS_RGT) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	    if (argument0>=x && cs&CS_LFT) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    
    
	    hspd  = abs8b(argument1) * sign_(x-argument0);
	    hspd &= $FF;
	}







}
