/// @description  Item_init()
function Item_init() {


	// iID

	// $00 - Item_Candle
	// $01 - Item_Glove
	// $02 - Item_Raft
	// $03 - Item_Boots
	// $04 - Item_Flute
	// $05 - Item_Cross
	// $06 - Item_Hammer
	// $07 - Item_Magical_Key
	// $08 - Item_Key
	// $09 - Drop1; // Don't know what iID $09 is. Maybe Triforce?
	// $0A - Item_PBag
	// $0B - Item_PBag
	// $0C - Item_PBag
	// $0D - Item_PBag
	// $0E - Item_Magic_container
	// $0F - Item_Heart_container
	// $10 - Item_Bottle
	// $11 - Item_Bottle
	// $12 - Item_Extra_life
	// $13 - Item_Child
	// $14 - Item_Trophy
	// $15 - Item_Medicine


	// ItmA0 v1 = CANDLE
	// ItmA1 v1 = GLOVE
	// ItmA2 v1 = HAMMER
	// ItmA3 v1 = RAFT
	// ItmA4 v1 = BOOTS
	// ItmA5 v1 = FLUTE
	// ItmA6 v1 = MAGICAL KEY
	// ItmA7 v1 = CROSS
	//                          // 
	// ItmB0 v1 = HEART CONTAINER
	// ItmB1 v1 = MAGIC CONTAINER
	//                          // 
	// ItmC0 v1 = TROPHY
	// ItmC0 v2 = TROPHY in Ruto
	// ItmC1 v1 = NOTE
	// ItmC2 v1 = MIRROR
	// ItmC3 v1 = MEDICINE
	// ItmC4 v1 = CHILD
	//                          // 
	// ItmD0 v1 = Key
	// ItmD0 v2 = Skull Key
	//                          // 
	// ItmE0 v1 = Jar - Magic - Full (respawn: refresh area)
	// ItmE0 v2 = Jar - Magic - $10  (respawn: unlim)
	// ItmE0 v3 = Jar - Magic - $10  (respawn: refresh area)
	// ItmE0 v4 = Jar - Magic - Full (respawn: unlim)
	//                          // 
	// ItmF0 v1 = Bag - Points -   50
	// ItmF0 v2 = Bag - Points -  100
	// ItmF0 v3 = Bag - Points -  150
	// ItmF0 v4 = Bag - Points -  200
	// ItmF0 v5 = Bag - Points -  250
	// ItmF0 v6 = Bag - Points -  300
	// ItmF0 v7 = Bag - Points -  400
	// ItmF0 v8 = Bag - Points -  500
	// ItmF0 v9 = Bag - Points -  700
	// ItmF0 vA = Bag - Points - 1000
	//                          // 
	// ItmG0 v1 = Extra Life

	init_vars_go_A();
	init_vars_Item();

	GO_depth_init(DEPTH_ITEM);

	// default GameObject draw YOff
	DRAW_YOFF = 1; // +1 for 1 pixel in ground

	scr_step = GameObjectB_step;







}
