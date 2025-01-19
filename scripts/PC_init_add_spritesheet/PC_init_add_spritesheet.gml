/// @description  PC_init_add_spritesheet(sprite asset, character name, creator, *palette, *source is file)
function PC_init_add_spritesheet() {


	var _val;
	var                       _a=0;
	var _SPRITE    = argument[_a++];
	var _CHAR_NAME = argument[_a++];
	var _CREATOR   = argument[_a++];

	var _IDX = val(dm_skins[?STR_Set+STR_Count]);
	dm_skins[?STR_Set+STR_Count] = _IDX+1;

	var _DATAKEY = _CHAR_NAME+"-"+_CREATOR;
	if (val(dm_skins[?_DATAKEY+STR_Sprite])!=0)
	{   _DATAKEY+="01";  }

	dm_skins[?hex_str(_IDX)+STR_Name]    = _CHAR_NAME;
	dm_skins[?hex_str(_IDX)+STR_Creator] = _CREATOR;
	dm_skins[?hex_str(_IDX)+STR_Datakey] = _DATAKEY;
	dm_skins[?_DATAKEY+STR_Idx]          = _IDX;
	dm_skins[?_DATAKEY+STR_Sprite]       = _SPRITE;

	if (argument_count>_a)
	{
	    _val = argument[_a++];
	    if (is_string(_val))
	    {
	        dm_skins[?hex_str(_IDX)+STR_Palette] = _val;
	    }
	}

	if (argument_count>_a)
	{
	    _val = argument[_a++];
	    //dm_skins[?sprite_get_name(_SPRITE)+"_source_is_file"] = sign(_val);
	    dm_skins[?hex_str(_IDX)+"_source_is_file"] = sign(_val);
	}







}
