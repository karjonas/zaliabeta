/// @description  Boss_Roar_update()
function Boss_Roar_update() {


	if(!g.mod_BossRoar) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!1


	if (    Roar_timer)
	{
	        Roar_timer--;
	    if(!Roar_timer)
	    {
	        Roar_timer = Roar_DELAY;
	        aud_play_sound(Audio.SND_BOSS_ROAR);
	    }
	}







}
