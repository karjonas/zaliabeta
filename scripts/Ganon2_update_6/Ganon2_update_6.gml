/// @description  Ganon2_update_6(hspd, hspd dir)
function Ganon2_update_6(argument0, argument1) {


	if (Ganon2_update_4()) // returns: y+Slime_H_ >= GROUND_Y
	{
	    off_ground_reason=0;
    
	    set_xy(id, x,GROUND_Y-Slime_H_);
	    vspd = 0;
    
	    if (Ganon2_update_6a(argument0,argument1))
	    {
	        Ganon_update_xy(); // updateX(), updateY()
	        aud_play_sound(Jump_SOUND1);
	    }
	    return false;
	}
	else
	{
	    Ganon_update_xy(); // updateX(), updateY()
    
	    if (Ganon2_update_4()) // returns: y+Slime_H_ >= GROUND_Y
	    {   // LANDING
	        return true;
	        //aud_play_sound(Audio.SND_WLK_WTR1A);
	    }
	}


	return false;







}
