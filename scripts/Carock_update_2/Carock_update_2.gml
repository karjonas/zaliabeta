/// @description  Carock_update_2()
function Carock_update_2() {


	if (stun_timer < EXPLODE_DELAY1-DURATION5) // $3F.  EXPLODE_DELAY1=$7F, DURATION5=DURATION4($20)+DURATION4($20)
	{
	    set_xy(id, arena_x, Attack2_YT+hh_+($3<<3));
	}

	var _LOW = EXPLODE_DELAY1 - DURATION4 - (DURATION4<<1); // DURATION4=$20

	if (stun_timer&$1)
	{
	    if (stun_timer >= _LOW 
	    &&  stun_timer <= _LOW+(DURATION4<<1) ) // DURATION4=$20
	    {
	        can_draw_self = false;
	    }
	}







}
