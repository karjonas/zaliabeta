/// @description  Zelda_update_talk_sound()
function Zelda_update_talk_sound() {


	with(g.DIALOGUE_WINDOW)
	{
	    if (writ_char_pos < string_length(dialogue))
	    {   // snd plays every other char written
	        if (writ_char_pos)
	        {
	            var _LEN = writ_char_pos - string_count(" ", writ_dlg);
	            if (_LEN&$1) aud_play_fairy1();
	        }
        
	        return true;
	    }
	}

	return false;







}
