/// @description  FS_cursor_char_move()
function FS_cursor_char_move() {


	if(!Input.pressedHV) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


	var                           _diff =  0;
	     if (Input.Up_pressed)    _diff = -CLM_COUNT;
	else if (Input.Right_pressed) _diff =  1;
	else if (Input.Down_pressed)  _diff =  CLM_COUNT;
	else if (Input.Left_pressed)  _diff = -1;

	cursor_char += _diff;

	var _LENGTH = string_length(REGI_CHARS);

	if (inRange(cursor_char, 0, _LENGTH) 
	&&  string_char_at(REGI_CHARS,cursor_char+1) == REGI_CHAR_NULL )
	{
	    for(var _i=0; _i<5; _i++)
	    {
	        cursor_char += _diff;
	        if (string_char_at(REGI_CHARS,cursor_char+1) != REGI_CHAR_NULL)
	        {   break;  }
	    }
	}

	if (cursor_char <  0)       cursor_char += _LENGTH;
	if (cursor_char >= _LENGTH) cursor_char -= _LENGTH;


	aud_play_sound(get_audio_theme_track(dk_CursorRegisterName));







}
