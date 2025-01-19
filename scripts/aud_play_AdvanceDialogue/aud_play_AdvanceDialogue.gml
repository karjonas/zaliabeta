/// @description  aud_play_AdvanceDialogue()
function aud_play_AdvanceDialogue() {

	// The sound that plays when advancing to 
	// more dialogue w/in the same convo
	// because there's more dialogue than what 
	// can fit in one window or when Hylian 
	// text is translated.


	aud_play_sound(get_audio_theme_track(dk_WalkWater+"02"));
	aud_play_sound(get_audio_theme_track(dk_CursorSpellMenu));
	aud_play_sound(get_audio_theme_track(dk_CursorSpellMenu));







}
