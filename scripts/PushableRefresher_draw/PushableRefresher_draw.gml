/// @description  PushableRefresher_draw()
function PushableRefresher_draw() {


	draw_sprite_(sprite,0, x,y, palidx);

	var _YOFF=4;
	switch(sub_state)
	{
	    // -------------------------------------------------------------
	    case sub_state_IDLE:{
	    var _ROT  = (g.counter0>>1)&$3;
	        _ROT ^= $3;
	        _ROT *= 90;
	    draw_sprite_(spr_Fireball2,0, x,y+_YOFF, PI_MOB_ORG, 1,1, c_white,1, _ROT);
	    break;}//case sub_state_IDLE
    
    
    
	    // -------------------------------------------------------------
	    case sub_state_TRIGGERED:{
	    var _COUNT = 3;
	    var _DURATION1 = $4;
	    var _DURATION2 = _DURATION1*_COUNT;
	    var _CUE = DURATION1-_DURATION2;
	    var _TIME = timer-_CUE;
	    if (_TIME)
	    {
	             if (_TIME <= _DURATION2-(_DURATION1*2)) var _SPRITE = spr_pop01_3;
	        else if (_TIME <= _DURATION2-(_DURATION1*1)) var _SPRITE = spr_pop01_2;
	        else                                         var _SPRITE = spr_pop01_1;
        
	        var _XSCALE = 1;
	        if (_TIME-1 mod _DURATION1 < _DURATION1>>1) _XSCALE = -1;
	        draw_sprite_(_SPRITE,0, x,y+_YOFF, PI_MOB_ORG, _XSCALE);
	    }
	    break;}//case sub_state_TRIGGERED
    
    
    
	    // -------------------------------------------------------------
	    case sub_state_SPAWNING:{
    
	    break;}//case sub_state_SPAWNING
    
    
    
	    // -------------------------------------------------------------
	    case sub_state_COOLDOWN:{
	    if (timer<$10)
	    {
	        if (timer<$8 
	        ||  timer&$1 )
	        {
	            if (timer<$8) var _XSCALE = sign_(timer&$1);
	            else          var _XSCALE = sign_(timer&$2);
	            draw_sprite_(spr_Flame_Small_1a,0, x,y+_YOFF, PI_MOB_ORG, _XSCALE);
	        }
	    }
	    break;}//case sub_state_COOLDOWN
	}//switch(sub_state)



	//spr_Eyenocc01_1,spr_Eyenocc01_2,spr_Eyenocc01_3
	//spr_PillarHead01a,spr_PillarHead01b

	//spr_Flame_Small_1a
	//spr_Fireball2, spr_Bullet1, spr_Rising_Bubble_01
	//spr_EnergyBall_1a,spr_EnergyBall_1b

	//spr_Explosion1A_1,spr_Explosion1B_1
	//spr_pop01_1,spr_pop01_2,spr_pop01_3







}
