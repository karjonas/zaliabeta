/// @description  GameOverScreen_Create()
function GameOverScreen_Create() {


	GANON_SPR = spr_Game_Over_Screen;

	x = viewXC() - (sprite_get_width( GANON_SPR)>>1);  // centered
	y = viewYB() -  sprite_get_height(GANON_SPR);      // bottom aligned


	timer = $F2; // $0501


	TEXT_LINE1 =    "GAME  OVER";
	TEXT_LINE2 = "RETURN OF GANON";

	LINE1_X = viewXC() - ((string_length(TEXT_LINE1)<<3)>>1);
	LINE2_X = viewXC() - ((string_length(TEXT_LINE2)<<3)>>1);
	LINE1_Y =       y + ($A<<3);
	LINE2_Y = LINE1_Y + ($3<<3);
	/* OG
	TEXT_LINE1 =    "GAME  OVER";
	TEXT_LINE2 = "RETURN OF GANON ";

	LINE1_X = viewXC() - ((string_length(TEXT_LINE1)>>1)<<3);
	LINE2_X = viewXC() - ((string_length(TEXT_LINE2)>>1)<<3);
	LINE1_Y =       y + ($A<<3);
	LINE2_Y = LINE1_Y + ($3<<3);
	*/

	// p.Room_Start() changes PI_MOB_RED pal to CI_BLK1_+CI_WHT1_+CI_RED3_+CI_BLK1_
	// I'm not sure why it doesn't work changing the palette here.
	TEXT_PI = PI_MOB_RED;


	aud_play_sound(get_audio_theme_track(dk_GannonLaugh));


	f.xp = round(f.xp*g.mod_Gameover_XP_PENALTY);
	f.xp = clamp(f.xp, 0,XP_MAX);







}
