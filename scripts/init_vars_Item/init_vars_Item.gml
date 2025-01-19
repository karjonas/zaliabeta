/// @description  init_vars_Item()
function init_vars_Item() {

	// Item vars


	var               _a=1;
	sub_state_IDLE  = _a++;
	sub_state_HELD  = _a++;
	sub_state_NONI  = _a++; // NON-Iteractive
	sub_state       = sub_state_IDLE;


	ITEM_BIT  = 0; // examples: ITM_CAND, ITM_GLOV, ...
	ITEM_TYPE = undefined; // examples: STR_CANDLE, STR_TROPHY, STR_HEART, STR_KEY, ...
	ITEM_ID   = undefined; // examples: "_CANDLE", "_HEART0602", "_1UP02", "_KEY0501", "_PBAG1B"

	IS_HOLD_ITEM = false; // if PC will hold item over head
	IS_DROP      = false; // true if Item is dropped by a GO and not from rm spawn


	greeting_played = false; // For ITM_FRY1: RESCUE FAIRY







}
