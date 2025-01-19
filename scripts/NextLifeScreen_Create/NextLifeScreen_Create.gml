/// @description  NextLifeScreen_Create()
function NextLifeScreen_Create() {


	x  = viewXC();  // centered
	y  = viewYC();  // centered
	// x  = viewXC() - VIEW_W_OG_;  // centered
	// y  = viewYC() - VIEW_H_OG_; // centered
	// x  = viewXC() - (256>>1); // centered
	// y  = viewYC() - (224>>1); // centered
	// y  = viewYB() -  224; // aligned to bottom


	g.counter1 = 2;


	SHOW_INFO_CUE = 5;
	SHOW_LINK_CUE = 6;

	ROOM_CHANGE_CUE = $79; // $79 == 121

	save_name  = f.ar_save_names[f.file_num-1];
	save_name += string_repeat(".", SAVE_NAME_CHAR_LIMIT - string_length(save_name));


	// save_name = f.save_name;
	// var _dotsCount = f.SAVE_NAME_CHAR_LIMIT - string_length(f.save_name);
	// for (var i = 0; i < _dotsCount; i++) save_name += ".";
	// // save_name += "    ";
	// // save_name += string(lives);

	INFO_X = x - ($0B<<3);
	INFO_Y = y - ($03<<3);
	// INFO_X = x + ($05<<3);
	// INFO_Y = y + ($0B<<3);

	TIMES_SYMBOL_X = x + ($03<<3); // $98 = 152
	LIVES_X = TIMES_SYMBOL_X + ($01<<3);

	LINK_X = x + ($00<<3);
	LINK_Y = y - ($05<<3) + 1;


	//TIMES_SYMBOL_SPR = spr_Times_symbol;







}
