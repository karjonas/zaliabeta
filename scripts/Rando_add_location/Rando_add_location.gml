/// @description  Rando_add_location(rm name, rm location num, category, obscurity, description, item type, rm item type num, *is safe location)
function Rando_add_location() {


	var _val;

	var                                _a=0;
	var _RM_NAME            = argument[_a++]; // same as rm_name
	var _RM_LOCATION_NUM    = argument[_a++];
	var _CATEGORY           = argument[_a++];
	var _OBSCURITY          = argument[_a++];
	var _DESCRIPTION        = argument[_a++];
	var _ITEM_TYPE          = argument[_a++];
	var _RM_ITEM_TYPE_NUM   = argument[_a++]; // if there's more than one of the same item type in a rm

	var                    _IS_SAFE_LOCATION = 0;
	if (argument_count>_a) _IS_SAFE_LOCATION = argument[_a++];





	var _LOCATION_NUM = ds_list_size(dl_location_NUMS)+1;
	ds_list_add(dl_location_NUMS,_LOCATION_NUM);
	dm_LOCATIONS[?STR_Total+STR_Location+STR_Count] = ds_list_size(dl_location_NUMS);

	var _LOCATION_NUM_ = hex_str(_LOCATION_NUM);



	switch(_ITEM_TYPE)
	{
	    // ---------------------------------------------------
	    default:{ // main items, quest items, heart&magic pieces, 1up dolls
	    if (_ITEM_TYPE==STR_ALLKEY) dm_LOCATIONS[?STR_ALLKEY+STR_Location+STR_Num] = _LOCATION_NUM;
	    ds_list_add(dl_item_location_NUMS,_LOCATION_NUM);
	    dm_LOCATIONS[?STR_Item+STR_Location+STR_Count] = ds_list_size(dl_item_location_NUMS);
	    if (_IS_SAFE_LOCATION 
	    &&  ItemLocations_WILL_RANDOMIZE )
	    {
	        ds_list_add(dl_SAFE_LOCATION_NUMS,_LOCATION_NUM);
	    }
	    break;}
    
	    // ---------------------------------------------------
	    case STR_PBAG:{
	    ds_list_add(dl_pbag_location_NUMS,_LOCATION_NUM);
	    dm_LOCATIONS[?STR_PBAG+STR_Location+STR_Count] = ds_list_size(dl_pbag_location_NUMS);
	    if (_IS_SAFE_LOCATION 
	    &&  ItemLocations_INCLUDE_PBAG )
	    {
	        ds_list_add(dl_SAFE_LOCATION_NUMS,_LOCATION_NUM);
	    }
	    break;}
    
	    // ---------------------------------------------------
	    case STR_KEY:{
	    ds_list_add(dl_key_location_NUMS,_LOCATION_NUM);
	    dm_LOCATIONS[?STR_Key+STR_Location+STR_Count] = ds_list_size(dl_key_location_NUMS);
    
	    var _ITEM_ID = val(g.dm_spawn[?_RM_NAME+STR_Key+STR_ID], STR_Key+STR_Num+hex_str(ds_list_size(dl_key_location_NUMS)));
	    dm_LOCATIONS[?STR_Location+STR_Num+_LOCATION_NUM_+STR_Key+STR_ID] = _ITEM_ID;
	    dm_LOCATIONS[?_ITEM_ID+STR_Location+STR_Num] = _LOCATION_NUM;
	    if (FallingKey_RM_NAME==_RM_NAME)
	    {   FallingKey_ITEM_ID =_ITEM_ID;  }
	    if (_IS_SAFE_LOCATION 
	    &&  KeyLocations_WILL_RANDOMIZE )
	    {
	        ds_list_add(dl_SAFE_LOCATION_NUMS,_LOCATION_NUM);
	    }
	    break;}
    
	    // ---------------------------------------------------
	    case STR_Spell:{
	    ds_list_add(dl_spell_location_NUMS,_LOCATION_NUM);
	    dm_LOCATIONS[?STR_Spell+STR_Location+STR_Count] = ds_list_size(dl_spell_location_NUMS);
	    var _TOWN_NAME = val(g.dm_rm[?_RM_NAME+STR_Town+STR_Name], "undefined");
	    if (DEV && _TOWN_NAME=="undefined") sdm("Rando_add_location(): Spell Location Num $"+_LOCATION_NUM_+" could not find a town name for rm '"+_RM_NAME+"'");
	    dm_LOCATIONS[?_TOWN_NAME+STR_Spell+STR_Location+STR_Num] = _LOCATION_NUM;
	    break;}
	}









	dm_LOCATIONS[?_LOCATION_NUM_+STR_Rm+STR_Name]                = _RM_NAME;
	dm_LOCATIONS[?_LOCATION_NUM_+STR_Rm+STR_Location+STR_Num]    = _RM_LOCATION_NUM;
	dm_LOCATIONS[?_LOCATION_NUM_+STR_Location+STR_ID]            = _RM_NAME+hex_str(_RM_LOCATION_NUM);
	dm_LOCATIONS[?_LOCATION_NUM_+STR_Category]                   = _CATEGORY;
	dm_LOCATIONS[?_LOCATION_NUM_+STR_Obscure]                    = _OBSCURITY;
	dm_LOCATIONS[?_LOCATION_NUM_+STR_Description]                = _DESCRIPTION;


	dm_LOCATIONS[?_LOCATION_NUM_+STR_Item+STR_Base+STR_Key]      = _ITEM_TYPE;
	dm_LOCATIONS[?_LOCATION_NUM_+STR_Rm+STR_Item+STR_Base+STR_Key+STR_Num]= _RM_ITEM_TYPE_NUM; // if multiple of same item base key in a scene

	dm_LOCATIONS[?_LOCATION_NUM_+STR_Item+STR_Type]              = _ITEM_TYPE;
	dm_LOCATIONS[?_LOCATION_NUM_+STR_Rm+STR_Item+STR_Type+STR_Num] = _RM_ITEM_TYPE_NUM;



	return _LOCATION_NUM;







}
