/// @description  sdm(string)
function sdm() {

	// sdm: Show Debug Message
	// This is a shorter named show_debug_message()

    var output_string = "";
    var str = "";
    
    for (var i = 0; i < argument_count; i++) {
        str = argument[i];
		if (is_real(str)) {
			str = string_format(str, 10, 10);
			// Remove prefix spaces
			while (string_char_at(str, 1) == " ") {
			    str = string_delete(str, 1, 1);
			}
			// Remove trailing zeroes
			while (string_char_at(str, string_length(str)) == "0") {
			    str = string_delete(str, string_length(str), 1);
			}
			if (string_char_at(str, string_length(str)) == "." || str == "") {
		        str += "0";
			}
        }
        if (!is_string(str)) str = string(str);
        output_string += str + " ";
    }
    
    show_debug_message(output_string);
}