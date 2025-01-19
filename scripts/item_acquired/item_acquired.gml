/// @description  item_acquired(item id)
function item_acquired() {


	var                            _arg=0;
	var _ITEM_ID = string(argument[_arg++]);
	//  _ITEM_ID examples: "_CANDLE", "_HEART0602", "_1UP02", "_KEY0501", "_PBAG1B"


	var                                      _ITEM_TYPE=_ITEM_ID;
	     if (string_pos(STR_HEART,_ITEM_ID)) _ITEM_TYPE=STR_Container;
	else if (string_pos(STR_MAGIC,_ITEM_ID)) _ITEM_TYPE=STR_Container;
	else if (string_pos(STR_1UP,  _ITEM_ID)) _ITEM_TYPE=STR_1UP;
	else if (string_pos(STR_PBAG, _ITEM_ID)) _ITEM_TYPE=STR_PBAG;
	else if (string_pos(STR_KEY,  _ITEM_ID)) _ITEM_TYPE=STR_KEY;
	else if (string_pos(STR_JAR,  _ITEM_ID)) _ITEM_TYPE=STR_JAR;


	switch(_ITEM_TYPE)
	{
	    // ---------------------------------------------------------
	    default:{ // main items
	    var         _ITEM_BIT = val(g.dm_ITEM[?_ITEM_ID+STR_Bit]);
	    if (f.items&_ITEM_BIT) return true;
	    break;}
    
    
    
	    // ---------------------------------------------------------
	    case STR_Container:{
	    var _CONTAINER_ID = string_copy(_ITEM_ID, string_length(_ITEM_ID)-3, 4);
    
	    var                                 _acquired_pieces = "";
	    if (string_pos(STR_HEART,_ITEM_ID)) _acquired_pieces = f.cont_pieces_hp;
	    else                                _acquired_pieces = f.cont_pieces_mp;
    
	    var _i, _id;
	    for(_i=(string_length(_acquired_pieces)>>2)-1; _i>=0; _i--)
	    {
	        _id = string_copy(_acquired_pieces, (_i<<2)+1, 4);
	        if (_id==_CONTAINER_ID) return true;
	    }
	    break;}
    
    
    
	    // ---------------------------------------------------------
	    case STR_1UP:{
	    if (val(f.dm_1up_doll[?_ITEM_ID+STR_Acquired])) return true;
	    break;}
    
    
    
	    // ---------------------------------------------------------
	    case STR_PBAG:{
	    if (val(f.dm_PBags[?_ITEM_ID+STR_Acquired])) return true;
	    break;}
    
    
    
	    // ---------------------------------------------------------
	    case STR_KEY:{
	    if (val(f.dm_keys[?_ITEM_ID+STR_Acquired])) return true;
	    break;}
    
    
    
	    // ---------------------------------------------------------
	    case STR_JAR:{
	    if (val(f.dm_jars[?_ITEM_ID+STR_Acquired])) return true;
	    break;}
	}


	return false;







}
