/// @description  Ganon2_update_5(Crystal_y limit)
function Ganon2_update_5(argument0) {


	var _DIFF = sign_(Crystal_y+5 < GROUND_Y-(Slime_H_<<1));
	Crystal_vspd  = clamp(Crystal_vspd+_DIFF, 0,Crystal_TERM_VEL);
	Crystal_y    +=      (Crystal_vspd>>4)&$F;
	Crystal_y     =   min(Crystal_y, argument0);







}
