/// @description  GraphicsEffectsEditor_Create_1(XL, YT, text, value type, *value, *min, *max, *option is available, *font sprite)
function GraphicsEffectsEditor_Create_1() {


	//menu_focus_Brightness
	var _arg=0;
	ds_grid_resize(dg_menu, (++dg_menu_idx)+1, ds_grid_height(dg_menu));

	if (argument_count>_arg) dg_menu[#dg_menu_idx,$0] = argument[_arg++]; // XL
	if (argument_count>_arg) dg_menu[#dg_menu_idx,$1] = argument[_arg++]; // YT

	if (argument_count>_arg) dg_menu[#dg_menu_idx,$2] = argument[_arg++]; // text
	else                     dg_menu[#dg_menu_idx,$2] = "...";            // text



	var                      _VALUE_TYPE              = 0;
	if (argument_count>_arg) _VALUE_TYPE              = argument[_arg++]; // what type of value, if any, for this option to display

	if (argument_count>_arg) dg_menu[#dg_menu_idx,$5] = argument[_arg++]; // current value/setting
	else                     dg_menu[#dg_menu_idx,$5] = true;

	if (argument_count>_arg) dg_menu[#dg_menu_idx,$6] = argument[_arg++]; // min value
	else                     dg_menu[#dg_menu_idx,$6] = min(0,dg_menu[#dg_menu_idx,$5]);

	if (argument_count>_arg) dg_menu[#dg_menu_idx,$7] = argument[_arg++]; // max value
	else                     dg_menu[#dg_menu_idx,$7] = max(dg_menu[#dg_menu_idx,$5],1);

	dg_menu[#dg_menu_idx,$8] = dg_menu[#dg_menu_idx,$5]; // default value



	if (argument_count>_arg) dg_menu[#dg_menu_idx,$4] = argument[_arg++]>0; // option is available
	else                     dg_menu[#dg_menu_idx,$4] = true;               // option is available

	if (argument_count>_arg) dg_menu[#dg_menu_idx,$3] = argument[_arg++]; // font sprite
	else                     dg_menu[#dg_menu_idx,$3] = Font1_SPRITE;     // font sprite

	// $A: text representing the current value of this option
	// If it's not a string, no value will be drawn
	switch(_VALUE_TYPE){
	default:{dg_menu[#dg_menu_idx,$A]=-1; break;}
	case  1:{dg_menu[#dg_menu_idx,$A]=string_repeat("YES",dg_menu[#dg_menu_idx,$5]>0)+string_repeat("NO",dg_menu[#dg_menu_idx,$5]<=0); break;}
	case  2:{dg_menu[#dg_menu_idx,$A]=string_format(dg_menu[#dg_menu_idx,$5], 1,4); break;}
	//case  3:{dg_menu[#dg_menu_idx,$A]=; break;}
	}

	dg_menu[#dg_menu_idx,$B] = PI_MENU;







}
