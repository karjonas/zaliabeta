/// @description  str_hex(str of bytes, *byte index)
function str_hex() {

	// Returns the passed string as a number in hex as if 
	// the string is a text representation of a hex number.

	// Characters that are NOT "0123456789ABCDEF" are treated as 0.

	// Optional argument[1] -----------------------
	//      An array index where arg0 is treated like an array 
	//      containing a text representaion of 1 byte.
	//      The return will be just the 1 byte of the index passed.
	//      Example: 
	//              arg0 = "F8D5C2A9FF01EE0A"
	//              array form: [F8][D5][C2][A9][FF][01][EE][0A]
	//              arg1 = 4. Index 4 of array = $FF.

	// Note that for performance purposes: 
	//      When no arg1 is passed, arg0 will be limited to 8 chars. 
	//      In the event arg0 is more than 8 chars, the chars processed 
	//      will be the BACK 8 because arg0 is treated like it's a 
	//      number and the BACK(right end) are the first 4 bytes(8 nybbles). 
	//      I make this note because it may be a little disorienting because 
	//      arrays start at their left but numbers start from their right.





	// ---------------------------------------------------------------
	if(!is_string(argument[0])) return 0;

	var _LEN = string_length(argument[0]);
	if(!_LEN)                   return 0;

	// ---------------------------------------------------------------
	if (argument_count>1)
	{
	    if (_LEN&$1) 
	    {
	        argument[0] = "0" + argument[0];
	        _LEN++;
	    }
    
	    argument[1] = clamp(argument[1], 0, (_LEN>>1)-1);
	    argument[0] = string_copy(argument[0], (argument[1]<<1)+1, 2);
	    _LEN = 2;
	}
	else if (_LEN>8)
	{
	    argument[0] = string_copy(argument[0], _LEN-7, 8);
	    _LEN = 8;
	}


	// ---------------------------------------------------------------
	var _return = 0;

	for(var _i=1; _i<=_LEN; _i++) // Each char/nybble
	{
	    _return = _return<<4;
    
	    // HEX_CHARS = "0123456789ABCDEF";
	    // if char isn't one of HEX_CHAR, the nybble will be 0
	    _return |= max(0, string_pos(string_char_at(argument[0],_i), HEX_CHARS) - 1);
	}


	return _return;




	/* Found at: https://www.reddit.com/r/gamemaker/comments/9nyjbu/hexstringtonumber_script/
	var result=0;

	// special unicode values
	var ZERO=ord("0");
	var NINE=ord("9");
	var A=ord("A");
	var F=ord("F");

	for (var _i=1; _i<=string_length(argument0); _i++){
	    var c=ord(string_char_at(string_upper(argument0), _i));
	    // you could also multiply by 16 but you get more nerd points for bitshifts
	    result=result<<4;
	    // if the character is a number or letter, add the value
	    // it represents to the total
	    if (c>=ZERO&&c<=NINE){
	        result=result+(c-ZERO);
	    } else if (c>=A&&c<=F){
	        result=result+(c-A+10);
	    // otherwise complain
	    } else {
	        // this will make the browser behave badly but you can leave it in
	        // actual game maker if you want
	        //show_error("bad input for hex(str)", true);
	    }
	}

	return result;
	*/







}
