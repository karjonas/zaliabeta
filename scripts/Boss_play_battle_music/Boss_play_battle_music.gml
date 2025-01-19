/// @description  Boss_play_battle_music()
function Boss_play_battle_music() {


	if (MusicBattle_INTRO 
	||  MusicBattle_BODY )
	{
	    if (MusicBattle_INTRO 
	    &&  MusicBattle_INTRO!=MusicBattle_BODY )
	    {
	        aud_play_sound(MusicBattle_INTRO, Audio.PRIORITY_TOP, false,-1, MusicBattle_THEME);
	    }
	    else if (MusicBattle_BODY)
	    {
	        aud_play_sound(MusicBattle_BODY,  Audio.PRIORITY_TOP, true, -1, MusicBattle_THEME);
	    }
    
	    Audio.can_play_boss_music = true;
	}







}
