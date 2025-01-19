/// @description  rm_data_init_Palc_B()
function rm_data_init_Palc_B() {


	var _rm, _x, _y, _data, _tsrc;
	var _exit = EXIT_NAME_GAME_START;

	map_clm_off     =  0;
	map_row_off     =  0;







	// *************************   PALACE 2   *************************** 
	// ------------------------------------------------------------------------------- 
	area = area_PB;

	var _DUNGEON_NUM  = $02;
	var _DUNGEON_NUM_ = hex_str(_DUNGEON_NUM);

	mus0 = STR_Dungeon+_DUNGEON_NUM_;
	//mus0 = MUS_DUNGEON1;

	var _DARK_DATA=STR_Dark+"01";
	ow_axis =  0; // 0:horizontal, 1:vertical


	var _DUNGEON_NAME = STR_Midoro_Palace;
	g.dm_dungeon[?STR_Dungeon+_DUNGEON_NUM_+STR_Name] = _DUNGEON_NAME;
	g.dm_dungeon[?STR_Dungeon+area         +STR_Name] = _DUNGEON_NAME;
	g.dm_dungeon[?STR_Dungeon+STR_Num+_DUNGEON_NAME]  = _DUNGEON_NUM;
	g.dm_dungeon[?STR_Dungeon+_DUNGEON_NUM_+STR_Area] = area;
	g.dm_dungeon[?_DUNGEON_NAME+STR_Area]             = area;
















	//   --------------------------  00  --------------------------- $0E(OG)
	//    
	rm_num  = $00;
	set_rm_data(area+hex_str(rm_num), mus0, STR_Color+COLOR2_, STR_Tile+area_PB+"000", STR_ow_axis+hex_str(ow_axis));


	data_NIAO_1a(rm+STR_NIAO+"0",  $0000,  1,Cloud_1_init); // 
	data_spawn(rm+STR_PRIO,SpStA,$1,  $5E<<3,(row0+$12)<<3); // SpawnByStab  1
	y3=(row0+$0A)<<3;
	data_spawn(rm+STR_PRIO,SpDrA,$1,  $18<<3,y3); // DropSpawner  1
	data_spawn(rm+STR_PRIO,SpDrA,$1,  $46<<3,y3); // DropSpawner  1
	y3=(row0+$04)<<3; y4=(row0+$16)<<3;
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $20<<3,y3); // Bot  1
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $40<<3,y4); // Bot  1
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $50<<3,y3); // Bot  1


	row3=row0+$1F; row4=row0+$13;
	clm3=$30; clm4=clm3-$04; clm5=clm3-$01; // clm3: Elevator center clm
	data_exit(EXD0,etC0,1,  clm4,row_e2,  CLMS4,ROWS5,  clm5,row_e3,  "05"+EXU0_); // DWN 0, Elevator down 
	data_Elev(EXD0_, clm3,row0+$13, "04");                                   // Elevator DW $40, 
	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row0+$14,  "16"+EXR0_); // LFT 0, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row0+$19,  0); // RGT 0, to Overworld 
	g.dm_rm[?get_dk_dungeon_entrance(_DUNGEON_NUM)] = exit_name_r0;


	data_spawn(rm+STR_PRIO,ItmF0,$2,  $2C<<3,(row0+$0C)<<3); // PBag v2: 100 


	//data_rando_scene01("_00"+"_01"+"_01"+"_01"+"_00",rm, STR_GLOVE+STR_JUMP);







	//   --------------------------  01  --------------------------- $0F(OG)
	//    
	rm_num  = $01;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PB+"001", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3;

	data_spawn(rm+STR_PRIO,TorchA,$1,  ($12<<3)+4,(row0+$17)<<3,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($73<<3)+4,(row0+$0C)<<3,  STR_Lit); // v1: Light w/ CANDLE or FIRE

	data_spawn(rm+STR_PRIO,SpStA,$1,  $54<<3,(row0+$0D)<<3); // SpawnByStab  1
	data_spawn(rm+STR_PRXM,BubbA,$1,  $2E<<3,y3); // Bubble  1
	data_spawn(rm+STR_PRXM,BubbA,$1,  $38<<3,y3); // Bubble  1


	clm3=$10; clm4=clm3-$04; clm5=clm3-$01; // clm3: Elev center clm
	data_exit(EXD0,etC0,1,  clm4,row_e2,  CLMS4,ROWS5,  clm5,row_e3,  "08"+EXU0_); // DWN 0, Elevator down 
	data_Elev(EXD0_, clm3,row_e5);                                           // Elevator DW $40, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row0+$0B,  "02"+EXL0_); // RGT 0, 


	data_rando_scene01("_00"+"_01"+"_00"+"_01"+"_00",rm);








	//   --------------------------  02  --------------------------- $10(OG)
	//    
	rm_num  = $02;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PB+"002", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;

	data_spawn(rm+STR_PRIO,TorchA,$1,  ($0F<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($2F<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($4F<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($6F<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE

	data_spawn(rm+STR_PRIO,SpDrA,$1,  $5F<<3,(row0+$09)<<3); // DropSpawner  1
	data_spawn(rm+STR_PRXM,BubbA,$2,  $1A<<3,(row0+$0B)<<3); // Bubble  2
	data_spawn(rm+STR_PRXM,IrKnA,$1,  $20<<3,y3); // IronKnuckle  1
	data_spawn(rm+STR_PRXM,IrKnA,$1,  $44<<3,y3); // IronKnuckle  1


	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  "01"+EXR0_); // LFT 0, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  "03"+EXL0_); // RGT 0, 


	data_rando_scene01("_00"+"_01"+"_01"+"_00"+"_00",rm);








	//   --------------------------  03  --------------------------- $11(OG)
	//    
	rm_num  = $03;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PB+"003", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$16; y3=row3<<3;
	row4=row0+$10; y4=row4<<3;
	row5=row3+$01; y5=row5<<3;
	row6=row0+$08; y6=row6<<3;
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($07<<3)+4,y5,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($73<<3)+4,y5,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,SpDrA,$1,  $2A<<3,y6); // DropSpawner  1
	data_spawn(rm+STR_PRIO,SpDrA,$1,  $62<<3,y6); // DropSpawner  1
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $20<<3,y4); // Bot  1
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $36<<3,y4); // Bot  1
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $4C<<3,y4); // Bot  1
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $50<<3,y4); // Bot  1


	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  "02"+EXR0_); // LFT 0, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  "04"+EXL0_); // RGT 0, 


	data_spawn(rm+STR_PRIO,ItmD0,$1,  $4A<<3,(row0+$0E)<<3,  STR_Treasure+STR_Map+"01"); // Key 


	data_rando_scene01("_00"+"_01"+"_01"+"_00"+"_00",rm);








	//   --------------------------  04  --------------------------- $12(OG)
	//    
	rm_num  = $04;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PB+"004", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;

	data_spawn(rm+STR_PRIO,TorchA,$1,  ($27<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($57<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE

	row5=row0+$09; y5=row5<<3;
	//row5=row0+$07; y5=row5<<3;
	data_spawn(rm+STR_PRIO,LoDoA,$1,  $25<<3,(row3-$02)<<3); // LockedDoor
	data_spawn(rm+STR_PRXM,Ra__A,$1,  $36<<3,y5); // Ra  1
	data_spawn(rm+STR_PRXM,Ra__A,$1,  $48<<3,y5); // Ra  1
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $12<<3,y3); // Bot  1
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $38<<3,y3); // Bot  1
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $42<<3,y3); // Bot  1
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $6C<<3,y3); // Bot  1


	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  "03"+EXR0_); // LFT 0, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  "05"+EXL0_); // RGT 0, 


	data_rando_scene01("_00"+"_01"+"_01"+"_00"+"_00",rm);








	//   --------------------------  05  --------------------------- $13(OG)
	//    
	rm_num  = $05;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PB+"005", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3;

	data_spawn(rm+STR_PRIO,TorchA,$1,  ($4C<<3)+4,y3,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($52<<3)+4,y3,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($21<<3)+4,(row3+$01)<<3,  STR_Lit); // v1: Light w/ CANDLE or FIRE

	data_spawn(rm+STR_PRIO,SpDrA,$1,  $42<<3,(row0+$09)<<3); // DropSpawner  1
	data_spawn(rm+STR_PRIO,SpDrA,$1,  $5C<<3,(row0+$09)<<3); // DropSpawner  1
	data_spawn(rm+STR_PRXM,StalA,$2,  $10<<3,(row0+$0B)<<3); // Stalfos  2


	clm3=$50; clm4=clm3-$04; clm5=clm3-$01; // clm3: elevator center clm
	data_exit(EXU0,etC0,1,  clm4,row_e0,  CLMS4,ROWS5,  clm5,row_e1,  "00"+EXD0_); // UP  0, Elevator up  
	data_exit(EXD0,etC0,1,  clm4,row_e2,  CLMS4,ROWS5,  clm5,row_e3,  "0A"+EXU0_); // DWN 0, Elevator down 
	data_Elev(EXD0_+EXU0_,  clm3,row_e5);                                    // Elevator DW $40, UP $80, 
	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row0+$17,  "04"+EXR0_); // LFT 0, 


	data_rando_scene01("_00"+"_00"+"_01"+"_01"+"_01",rm);








	//   --------------------------  06  --------------------------- $14(OG)
	//   -------------------------  GLOVE  -------------------------- 
	rm_num  = $06;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PB+"006", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;

	data_spawn(rm+STR_PRIO,TorchA,$1,  ($2F<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($47<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($5F<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	//data_spawn(rm+STR_PRIO,TorchA,$1,  ($73<<3)+4,y4-($02<<3),  STR_Lit); // v1: Light w/ CANDLE or FIRE

	data_spawn(rm+STR_PRIO,LoDoA,$1,  $24<<3,(row0+$15)<<3); // LockedDoor
	data_spawn(rm+STR_PRIO,SpStA,$1,  $78<<3,(row0+$0B)<<3); // SpawnByStab  1
	data_spawn(rm+STR_PRIO,SpDrA,$1,  $54<<3,(row0+$09)<<3); // DropSpawner  1
	data_spawn(rm+STR_PRXM,IrKnA,$2,  $1E<<3,(row0+$17)<<3); // IronKnuckle  2
	data_spawn(rm+STR_PRXM,IrKnA,$2,  $48<<3,(row0+$17)<<3); // IronKnuckle  2


	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3-$04,  "07"+EXL0_); // RGT 0, 


	data_spawn(rm+STR_PRIO,ItmA1,$1,  $12<<3,(row0+$17)<<3); // GLOVE


	data_rando_scene01("_00"+"_01"+"_00"+"_00"+"_00",rm);








	//   --------------------------  07  --------------------------- $15(OG)
	//    
	rm_num  = $07;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PB+"007", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$16; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;

	data_spawn(rm+STR_PRIO,TorchA,$1,  $07<<3,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  $74<<3,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE

	data_spawn(rm+STR_PRIO,Spawner_FallingBlock,$1,  $36<<3,(row0+$08)<<3); // BlockSpawner  1


	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  "06"+EXR0_); // LFT 0, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  "08"+EXL0_); // RGT 0, 


	data_spawn(rm+STR_PRIO,ItmF0,$1,  $30<<3,y3); // PBag v1:50 








	//   --------------------------  08  --------------------------- $16(OG)
	//    
	rm_num  = $08;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PB+"005", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3;

	data_spawn(rm+STR_PRIO,TorchA,$1,  ($4C<<3)+4,y3,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($52<<3)+4,y3,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($21<<3)+4,(row3+$01)<<3,  STR_Lit); // v1: Light w/ CANDLE or FIRE

	data_spawn(rm+STR_PRIO,LoDoA,$1,  $24<<3,(row0+$15)<<3); // LockedDoor
	data_spawn(rm+STR_PRXM,StalA,$2,  $32<<3,(row0+$0B)<<3); // Stalfos  2
	data_spawn(rm+STR_PRXM,AnerA,$1,  $2C<<3,(row0+$17)<<3); // Aneru  1
	data_spawn(rm+STR_PRXM,AnerA,$1,  $5A<<3,(row0+$17)<<3); // Aneru  1


	clm3=$50; clm4=clm3-$04; clm5=clm3-$01; // clm3: elevator center clm
	data_exit(EXU0,etC0,1,  clm4,row_e0,  CLMS4,ROWS5,  clm5,row_e1,  "01"+EXD0_); // UP  0, Elevator up  
	data_exit(EXD0,etC0,1,  clm4,row_e2,  CLMS4,ROWS5,  clm5,row_e3,  "0B"+EXU0_); // DWN 0, Elevator down 
	data_Elev(EXD0_+EXU0_,  clm3,row_e5, "03");                              // Elevator DW $40, UP $80, 
	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row0+$17,  "07"+EXR0_); // LFT 0, 


	data_rando_scene01("_00"+"_00"+"_01"+"_01"+"_01",rm);








	//   --------------------------  09  --------------------------- $17(OG)
	//    
	rm_num  = $09;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PB+"008", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;

	data_spawn(rm+STR_PRIO,TorchA,$1,  ($33<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($73<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE

	data_spawn(rm+STR_PRXM,StalA,$2,  $28<<3,(row0+$0B)<<3); // Stalfos  2
	data_spawn(rm+STR_PRXM,StalA,$2,  $40<<3,(row0+$0B)<<3); // Stalfos  2
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $6A<<3,(row0+$11)<<3); // Bot  1


	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  "0A"+EXL0_); // RGT 0, 


	data_spawn(rm+STR_PRIO,ItmD0,$1,  $06<<3,(row0+$15)<<3,  STR_Treasure+STR_Map+"01"); // Key 


	//data_rando_scene01("_00"+"_01"+"_01"+"_00"+"_00",rm, STR_GLOVE+STR_FAIRY);








	//   --------------------------  0A  --------------------------- $18(OG)
	//    
	rm_num  = $0A;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PB+"005", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3;
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($4C<<3)+4,y3,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($52<<3)+4,y3,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($21<<3)+4,(row3+$01)<<3,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRXM,BubbA,$1,  $10<<3,(row0+$0B)<<3); // Bubble  1
	data_spawn(rm+STR_PRXM,AnerA,$2,  $0B<<3,y3); // Aneru  2
	data_spawn(rm+STR_PRXM,AnerA,$2,  $2E<<3,y3); // Aneru  2
	data_spawn(rm+STR_PRXM,AnerA,$2,  $36<<3,y3); // Aneru  2
	data_spawn(rm+STR_PRXM,AnerA,$2,  $68<<3,y3); // Aneru  2


	clm3=$50; clm4=clm3-$04; clm5=clm3-$01; // clm3: elevator center clm
	data_exit(EXU0,etC0,1,  clm4,row_e0,  CLMS4,ROWS5,  clm5,row_e1,  "05"+EXD0_); // UP  0, Elevator up  
	data_exit(EXD0,etC0,1,  clm4,row_e2,  CLMS4,ROWS5,  clm5,row_e3,  "0F"+EXU0_); // DWN 0, Elevator down 
	data_Elev(EXD0_+EXU0_,  clm3,row_e5);                                    // Elevator DW $40, UP $80, 
	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  "09"+EXR0_); // LFT 0, 


	data_rando_scene01("_00"+"_00"+"_01"+"_01"+"_01",rm);








	//   --------------------------  0B  --------------------------- $19(OG)
	//    
	rm_num  = $0B;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PB+"009", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;
	//data_spawn(rm+STR_PRIO,TorchA,$1,  ($12<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($2F<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($3F<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($5F<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($6F<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRXM,IrKnA,$1,  $30<<3,y3); // IronKnuckle  1
	data_spawn(rm+STR_PRXM,IrKnA,$1,  $66<<3,y3); // IronKnuckle  1
	data_spawn(rm+STR_PRXM,Moa_B,$1,  $22<<3,(row0+$11)<<3); // FieryMoa  1
	//data_spawn(rm+STR_PRXM,Moa_B,$1,  $1E<<3,(row0+$11)<<3); // FieryMoa  1


	clm3=$10; clm4=clm3-$04; clm5=clm3-$01; // clm3: elevator center clm
	data_exit(EXU0,etC0,1,  clm4,row_e0,  CLMS4,ROWS5,  clm5,row_e1,  "08"+EXD0_); // UP  0, Elevator up  
	data_Elev(EXU0_, clm3,row_e5);                                                 // Elevator UP $80, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  "0C"+EXL0_); // RGT 0, 


	data_rando_scene01("_00"+"_01"+"_00"+"_00"+"_01",rm);








	//   --------------------------  0C  --------------------------- $1A(OG)
	//    
	rm_num  = $0C;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PB+"010", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($13<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($3F<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($6B<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	y3=(row0+$0B)<<3; y4=(row0+$11)<<3;
	data_spawn(rm+STR_PRIO,SpBuA,$1,  $08<<3,y4); // BulletSpawner  1
	data_spawn(rm+STR_PRIO,SpBuA,$2,  $1E<<3,y4); // BulletSpawner  2
	data_spawn(rm+STR_PRIO,SpBuA,$1,  $34<<3,y4); // BulletSpawner  1
	data_spawn(rm+STR_PRIO,SpBuA,$2,  $4A<<3,y4); // BulletSpawner  2
	data_spawn(rm+STR_PRIO,SpBuA,$1,  $60<<3,y4); // BulletSpawner  1
	data_spawn(rm+STR_PRIO,SpBuA,$2,  $76<<3,y4); // BulletSpawner  2
	data_spawn(rm+STR_PRXM,StalA,$2,  $18<<3,y3); // Stalfos  2
	data_spawn(rm+STR_PRXM,StalA,$2,  $44<<3,y3); // Stalfos  2
	data_spawn(rm+STR_PRXM,StalA,$2,  $70<<3,y3); // Stalfos  2


	row3=row0+$17;
	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  "0B"+EXR0_); // LFT 0, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  "0D"+EXL0_); // RGT 0, 


	data_rando_scene01("_00"+"_01"+"_01"+"_00"+"_00",rm, STR_GLOVE);








	//   --------------------------  0D  --------------------------- $1B(OG)
	//    
	rm_num  = $0D;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PB+"011", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;

	data_spawn(rm+STR_PRIO,TorchA,$1,  ($09<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($75<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($4C<<3)+4,y3,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($52<<3)+4,y3,  STR_Lit); // v1: Light w/ CANDLE or FIRE

	y3=(row0+$0B)<<3; y4=(row0+$09)<<3;
	data_spawn(rm+STR_PRIO,SpDrA,$1,  $46<<3,y4); // DropSpawner  1
	data_spawn(rm+STR_PRIO,SpDrA,$1,  $58<<3,y4); // DropSpawner  1
	data_spawn(rm+STR_PRXM,BubbA,$1,  $1C<<3,y3); // Bubble  1
	data_spawn(rm+STR_PRXM,BubbA,$1,  $2C<<3,y4); // Bubble  1
	data_spawn(rm+STR_PRXM,BubbA,$1,  $42<<3,y3); // Bubble  1
	data_spawn(rm+STR_PRXM,BubbA,$1,  $72<<3,y3); // Bubble  1


	clm3=$50; clm4=clm3-$04; clm5=clm3-$01; row3=row0+$17; // clm3: elevator center clm
	data_exit(EXD0,etC0,1,  clm4,row_e2,  CLMS4,ROWS5,  clm5,row_e3,  "11"+EXU0_); // DWN 0, Elevator down 
	data_Elev(EXD0_, clm3,row_e5);                                           // Elevator DW $40, 
	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  "0C"+EXR0_); // LFT 0, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  "0E"+EXL0_); // RGT 0, 


	data_rando_scene01("_00"+"_01"+"_01"+"_01"+"_00",rm);








	//   --------------------------  0E  --------------------------- $1C(OG)
	//    
	rm_num  = $0E;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PB+"012", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;
	x3=($0C<<3)+4; _dist=$18<<3; _a=0;
	data_spawn(rm+STR_PRIO,TorchA,$1,  x3+(_dist*_a++),y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  x3+(_dist*_a++),y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  x3+(_dist*_a++),y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  x3+(_dist*_a++),y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	//data_spawn(rm+STR_PRIO,TorchA,$1,  ($6B<<3)+4,y4-($02<<3),  STR_Lit); // v1: Light w/ CANDLE or FIRE

	data_spawn(rm+STR_PRXM,GumaA,$1,  $70<<3,y3); // Guma  1
	data_spawn(rm+STR_PRXM,WosuA,$1,  $2C<<3,y3); // Wosu  1
	data_spawn(rm+STR_PRXM,WosuA,$1,  $3C<<3,y3); // Wosu  1
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $14<<3,y3); // Bot  1


	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  "0D"+EXR0_); // LFT 0, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row0+$0E,  "15"+EXL0_); // RGT 0, 


	data_spawn(rm+STR_PRIO,ItmD0,$1,  $78<<3,(row0+$13)<<3,  STR_Treasure+STR_Map+"01"); // Key 


	data_rando_scene01("_00"+"_01"+"_01"+"_00"+"_00",rm);








	//   --------------------------  0F  --------------------------- $1D(OG)
	//    
	rm_num  = $0F;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PB+"013", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;
	row5=row0+$0C; y5=row5<<3;
	x3=($0C<<3)+4; x4=($12<<3)+4; x5=$78<<3;

	data_spawn(rm+STR_PRIO,TorchA,$1,  x3,y4,  STR_Lit,STR_Qualified+STR_Quest+STR_Nums+"01"); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  x4,y4,  STR_Lit,STR_Qualified+STR_Quest+STR_Nums+"01"); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  x5,y5,  STR_Lit,STR_Qualified+STR_Quest+STR_Nums+"01"); // v1: Light w/ CANDLE or FIRE

	data_spawn(rm+STR_PRIO,TorchA,$1,  x3,y4,  STR_Qualified+STR_Quest+STR_Nums+"02"); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  x4,y4,  STR_Qualified+STR_Quest+STR_Nums+"02"); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  x5,y5,  STR_Qualified+STR_Quest+STR_Nums+"02"); // v1: Light w/ CANDLE or FIRE

	data_spawn(rm+STR_PRIO,SpBuA,$1,  $40<<3,(row0+$0D)<<3); // BulletSpawner  1
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $46<<3,y3); // Bot  1
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $4A<<3,y3); // Bot  1
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $4E<<3,y3); // Bot  1
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $52<<3,y3-$10); // Bot  1
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $5A<<3,y3-$20); // Bot  1


	clm3=$10; clm4=clm3-$04; clm5=clm3-$01; // clm3: elevator center clm
	data_exit(EXU0,etC0,1,  clm4,row_e0,  CLMS4,ROWS5,  clm5,row_e1,  "0A"+EXD0_); // UP  0, Elevator up  
	data_Elev(EXU0_, clm3,row_e5);                                           // Elevator UP $80, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row0+$0B,  "10"+EXL0_); // RGT 0, 


	data_rando_scene01("_00"+"_01"+"_00"+"_00"+"_01",rm);








	//   --------------------------  10  --------------------------- $1E(OG)
	//    
	rm_num  = $10;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PB+"014", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;
	x3=($2D<<3)+4; _dist=$10<<3; _a=0;
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($0F<<3)+4,y4); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  x3+(_dist*_a++),y4); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  x3+(_dist*_a++),y4); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  x3+(_dist*_a++),y4); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  x3+(_dist*_a++),y4); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  x3+(_dist*_a++),y4); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRXM,GumaA,$1,  $30<<3,y3); // Guma  1
	data_spawn(rm+STR_PRXM,GumaA,$1,  $68<<3,y3); // Guma  1


	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  "0F"+EXR0_); // LFT 0, 


	data_spawn(rm+STR_PRIO,ItmD0,$1,  $78<<3,(row0+$13)<<3,  STR_Treasure+STR_Map+"01"); // Key 


	data_rando_scene01("_00"+"_00"+"_01"+"_00"+"_00",rm);








	//   --------------------------  11  --------------------------- $1F(OG)
	//    
	rm_num  = $11;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PB+"013", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;

	data_spawn(rm+STR_PRIO,TorchA,$1,  ($0C<<3)+4,y4); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($12<<3)+4,y4); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  $78<<3,(row0+$0C)<<3); // v1: Light w/ CANDLE or FIRE

	data_spawn(rm+STR_PRIO,LoDoA,$1,  $3C<<3,(row3-$02)<<3); // Formally in rm_num $17

	data_spawn(rm+STR_PRIO,SpStA,$1,  $74<<3,(row0+$17)<<3); // SpawnByStab  1
	data_spawn(rm+STR_PRXM,GumaA,$1,  $5E<<3,(row0+$0F)<<3); // Guma  1
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $58<<3,(row0+$13)<<3); // Bot  1


	clm3=$10; clm4=clm3-$04; clm5=clm3-$01; // clm3: elevator center clm
	data_exit(EXU0,etC0,1,  clm4,row_e0,  CLMS4,ROWS5,  clm5,row_e1,  "0D"+EXD0_); // UP  0, Elevator up  
	data_Elev(EXU0_, clm3,row_e5);                                           // Elevator UP $80, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row0+$0B,  "12"+EXL0_); // RGT 0, 


	data_rando_scene01("_00"+"_01"+"_00"+"_00"+"_01",rm);








	//   --------------------------  12  --------------------------- $20(OG)
	//    
	rm_num  = $12;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PB+"015", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$14; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;

	data_spawn(rm+STR_PRIO,TorchA,$1,  $08<<3,(row0+$09)<<3,  STR_Qualified+STR_Quest+STR_Nums+"01"); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($2F<<3)+4,y4,  STR_Qualified+STR_Quest+STR_Nums+"01"); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($4F<<3)+4,y4); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($6F<<3)+4,y4); // v1: Light w/ CANDLE or FIRE

	data_spawn(rm+STR_PRXM,WosuA,$1,  $60<<3,y3); // Wosu  1
	data_spawn(rm+STR_PRXM,WosuA,$1,  $62<<3,y3); // Wosu  1
	data_spawn(rm+STR_PRXM,IrKnA,$2,  $64<<3,y3); // IronKnuckle  2


	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row0+$08,  "11"+EXR0_); // LFT 0, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  "18"+EXL0_); // RGT 0, 
	//data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  '17'+EXL0_); // RGT 0, 


	set_rm_data_1a(rm_name, area_PB+"022", 2); // 2nd Quest tile data. 


	data_spawn(rm+STR_PRIO,ItmF0,$2,  $10<<3,y3); // PBag v2: 100 








	//   --------------------------  13  --------------------------- $21(OG)
	//    
	rm_num  = $13;








	//   --------------------------  14  --------------------------- $22(OG)
	//   -----------------------  HELMETHEAD  ------------------------ 
	rm_num  = $14;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PB+"016", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$15; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;

	data_spawn(rm+STR_PRIO,TorchA,$1,  $0F<<3,y4); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  $50<<3,y4); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  $5F<<3,y4); // v1: Light w/ CANDLE or FIRE

	clm3=$30; // arena center clm
	data_spawn(rm+STR_PRIO,HelmA,$1,  (clm3+$10)<<3,(row3+$02)<<3,  STR_Arena+"_x"+hex_str(clm3<<3)); // Helmethead  1
	data_spawn(rm+STR_PRIO,CrHoA,$1,  CRYSTALHOLDER_XL,y3); // CrystalHolder  1
	g.dm_rm[?STR_Boss+STR_Scene+STR_Name+_DUNGEON_NAME] = rm;


	_exit=data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  "18"+EXR0_); // LFT 0, 
	g.dm_rm[?_DUNGEON_NAME+STR_Boss+STR_Scene+STR_Entrance+STR_Exit] = _exit;

	_exit=data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  0);  // RGT 0, to Overworld 
	g.dm_rm[?STR_Boss+STR_Dungeon+STR_Exit+STR_Name+_DUNGEON_NAME] = _exit;


	set_rm_data_1a(rm_name, area_PB+"019", 2); // 019: 2nd Quest. Arena filled with swamp water.





	//   --------------------------  15  --------------------------- 
	//   Swamp room 1
	rm_num  = $15;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PB+"018", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$14; y3=row3<<3;
	row4=row0+$06; y4=row4<<3;
	row5=row0+$1A; y5=row5<<3;

	data_spawn(rm+STR_PRIO,TorchA,$1,  $08<<3,(row3+$01)<<3,  STR_Lit); // v1: Light w/ CANDLE or FIRE

	data_spawn(rm+STR_PRXM,Bot_A,$1,  $20<<3,y5); // Bot  1
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $40<<3,y5); // Bot  1
	data_spawn(rm+STR_PRIO,SpDrA,$1,  $20<<3,y4); // DropSpawner  1
	data_spawn(rm+STR_PRIO,SpDrA,$1,  $40<<3,y4); // DropSpawner  1
	data_spawn(rm+STR_PRIO,SpDrA,$1,  $60<<3,y4); // DropSpawner  1


	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  "0E"+EXR0_); // LFT 0, 


	data_spawn(rm+STR_PRIO,CONT_PIECE_OBJ_MP,CONT_PIECE_OBJ_VER_MP,  $79<<3,(row0+$14)<<3,  STR_Treasure+STR_Map+"01"); // MAGIC PIECE


	data_rando_scene01("_00"+"_00"+"_01"+"_00"+"_00",rm);








	//   --------------------------  16  --------------------------- 
	//    
	rm_num  = $16;
	set_rm_data(area+hex_str(rm_num), mus0, STR_Color+COLOR2_, STR_Tile+area_PB+"017", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$14; y3=row3<<3;
	row4=row0+$0A; y4=row4<<3;
	row7=row0+$14;
	row5=row7+$02; y5=row5<<3;
	row6=row7+$07; y6=row6<<3;
	data_NIAO_1a(rm+STR_NIAO+"0", $0000, 1, Cloud_1_init); // 
	data_spawn(rm+STR_PRIO,SpDrA,$1,  $62<<3,y4); // DropSpawner  1
	data_spawn(rm+STR_PRXM,OctoA,$1,  $0C<<3,y5); // Octorok  1 
	data_spawn(rm+STR_PRXM,OctoA,$1,  $28<<3,y5); // Octorok  1 
	data_spawn(rm+STR_PRXM,OctoA,$1,  $3E<<3,y6); // Octorok  1 
	data_spawn(rm+STR_PRXM,OctoA,$1,  $66<<3,y5); // Octorok  1 


	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,ROWS6,  clmA,row3,  "00"+EXL0_); // RGT 0, 


	data_spawn(rm+STR_PRIO,ItmG0,$1,  ($23<<3)+1,row3<<3,  STR_Treasure+STR_Map+"01"); // Extra Life Doll 


	data_rando_scene01("_00"+"_01"+"_00"+"_00"+"_00",rm);






	//   --------------------------  17  --------------------------- 
	//    
	rm_num  = $17;








	//   --------------------------  18  --------------------------- 
	//    
	rm_num  = $18;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PB+"026", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$18; y3=row3<<3;
	row4=row3-$01; y4=row4<<3;
	row5=row3-$04; y5=row5<<3;
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($08<<3)+4,y4,  STR_Qualified+STR_Quest+STR_Nums+"01"); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($20<<3)+4,y4); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($38<<3)+4,y4); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($50<<3)+4,y4-($02<<3),  STR_Qualified+STR_Quest+STR_Nums+"01"); // v1: Light w/ CANDLE or FIRE

	data_spawn(rm+STR_PRXM,StalA,$2,  $20<<3,(row3-$05)<<3); // Stalfos  2
	data_spawn(rm+STR_PRXM,StalA,$2,  $40<<3,(row3-$05)<<3,  STR_Qualified+STR_Quest+STR_Nums+"01"); // Stalfos  2
	data_spawn(rm+STR_PRXM,StalA,$2,  $50<<3,(row5-$03)<<3,  STR_Qualified+STR_Quest+STR_Nums+"01"); // Stalfos  2
	data_spawn(rm+STR_PRXM,IrKnA,$1,  $40<<3,y3,  STR_Qualified+STR_Quest+STR_Nums+"02"); // IronKnuckle  1
	data_spawn(rm+STR_PRXM,IrKnA,$2,  $50<<3,y5,  STR_Qualified+STR_Quest+STR_Nums+"02"); // IronKnuckle  2
	data_spawn(rm+STR_PRXM,BubbA,$1,  $30<<3,(row3-$05)<<3,  STR_Qualified+STR_Quest+STR_Nums+"02"); // Bubble  1
	y4=(row3-$09)<<3;
	//data_spawn(rm+STR_PRIO,SpDrA,$1,  $14<<3,y4,  STR_Type+hex_str(2)); // DropSpawner  1
	data_spawn(rm+STR_PRIO,SpDrA,$1,  $14<<3,y4,  STR_Type+hex_str(2)); // DropSpawner  1
	data_spawn(rm+STR_PRIO,SpDrA,$1,  $2C<<3,y4,  STR_Type+hex_str(2)); // DropSpawner  1
	data_spawn(rm+STR_PRIO,SpDrA,$1,  $3C<<3,y4,  STR_Type+hex_str(2)); // DropSpawner  1


	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,ROWS6,  CLM3,row3,  "12"+EXR0_); // LFT 0, 
	//data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,ROWS6,  CLM3,row3,  '17'+EXR0_); // LFT 0, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,ROWS6,  clmA,row5,  "14"+EXL0_); // RGT 0, 


	set_rm_data_1a(rm_name, area_PB+"027", 2); // 2nd Quest tile data. 


	data_rando_scene01("_00"+"_01"+"_01"+"_00"+"_00",rm);







	//   --------------------------  19  --------------------------- 
	//    
	rm_num      = $19; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  1A  --------------------------- 
	//    
	rm_num      = $1A; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  1B  --------------------------- 
	//    
	rm_num      = $1B; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  1C  --------------------------- 
	//    
	rm_num      = $1C; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  1D  --------------------------- 
	//    
	rm_num      = $1D; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  1E  --------------------------- 
	//    
	rm_num      = $1E; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  1F  --------------------------- 
	//    
	rm_num      = $1F; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  20  --------------------------- 
	//    
	rm_num      = $20; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  21  --------------------------- 
	//    
	rm_num      = $21; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  22  --------------------------- 
	//    
	rm_num      = $22; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  23  --------------------------- 
	//    
	rm_num      = $23; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  24  --------------------------- 
	//    
	rm_num      = $24; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  25  --------------------------- 
	//    
	rm_num      = $25; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  26  --------------------------- 
	//    
	rm_num      = $26; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  27  --------------------------- 
	//    
	rm_num      = $27; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  28  --------------------------- 
	//    
	rm_num      = $28; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  29  --------------------------- 
	//    
	rm_num      = $29; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  2A  --------------------------- 
	//    
	rm_num      = $2A; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  2B  --------------------------- 
	//    
	rm_num      = $2B; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  2C  --------------------------- 
	//    
	rm_num      = $2C; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  2D  --------------------------- 
	//    
	rm_num      = $2D; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  2E  --------------------------- 
	//    
	rm_num      = $2E; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  2F  --------------------------- 
	//    
	rm_num      = $2F; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  30  --------------------------- 
	//    
	rm_num  = $30;


	//   --------------------------  31  --------------------------- 
	//    
	rm_num      = $31; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  32  --------------------------- 
	//    
	rm_num      = $32; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  33  --------------------------- 
	//    
	rm_num      = $33; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  34  --------------------------- 
	//    
	rm_num      = $34; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  35  --------------------------- 
	//    
	rm_num      = $35; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  36  --------------------------- 
	//    
	rm_num      = $36; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  37  --------------------------- 
	//    
	rm_num      = $37; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  38  --------------------------- 
	//    
	rm_num      = $38; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  39  --------------------------- 
	//    
	rm_num      = $39; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  3A  --------------------------- 
	//    
	rm_num      = $3A; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  3B  --------------------------- 
	//    
	rm_num      = $3B; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  3C  --------------------------- 
	//    
	rm_num      = $3C; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  3D  --------------------------- 
	//    
	rm_num      = $3D; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  3E  --------------------------- 
	//    
	rm_num      = $3E; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  3F  --------------------------- 
	//    
	rm_num      = $3F; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  40  --------------------------- 
	//    
	rm_num  = $40;


	//   --------------------------  41  --------------------------- 
	//    
	rm_num  = $41;


	//   --------------------------  42  --------------------------- 
	//    
	rm_num  = $42;


	//   --------------------------  43  --------------------------- 
	//    
	rm_num      = $43; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  44  --------------------------- 
	//    
	rm_num      = $44; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  45  --------------------------- 
	//    
	rm_num      = $45; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  46  --------------------------- 
	//    
	rm_num      = $46; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  47  --------------------------- 
	//    
	rm_num      = $47; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  48  --------------------------- 
	//    
	rm_num      = $48; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  49  --------------------------- 
	//    
	rm_num      = $49; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  4A  --------------------------- 
	//    
	rm_num      = $4A; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  4B  --------------------------- 
	//    
	rm_num      = $4B; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  4C  --------------------------- 
	//    
	rm_num      = $4C; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  4D  --------------------------- 
	//    
	rm_num      = $4D; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  4E  --------------------------- 
	//    
	rm_num      = $4E; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  4F  --------------------------- 
	//    
	rm_num      = $4F; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  50  --------------------------- 
	//    
	rm_num      = $50; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  51  --------------------------- 
	//    
	rm_num      = $51; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  52  --------------------------- 
	//    
	rm_num      = $52; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  53  --------------------------- 
	//    
	rm_num      = $53; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  54  --------------------------- 
	//    
	rm_num      = $54; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  55  --------------------------- 
	//    
	rm_num      = $55; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  56  --------------------------- 
	//    
	rm_num      = $56; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  57  --------------------------- 
	//    
	rm_num      = $57; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  58  --------------------------- 
	//    
	rm_num      = $58; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  59  --------------------------- 
	//    
	rm_num      = $59; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  5A  --------------------------- 
	//    
	rm_num      = $5A; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  5B  --------------------------- 
	//    
	rm_num      = $5B; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  5C  --------------------------- 
	//    
	rm_num      = $5C; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  5D  --------------------------- 
	//    
	rm_num      = $5D; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  5E  --------------------------- 
	//    
	rm_num      = $5E; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  5F  --------------------------- 
	//    
	rm_num      = $5F; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  60  --------------------------- 
	//    
	rm_num      = $60; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  61  --------------------------- 
	//    
	rm_num      = $61; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  62  --------------------------- 
	//    
	rm_num      = $62; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  63  --------------------------- 
	//    
	rm_num      = $63; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  64  --------------------------- 
	//    
	rm_num      = $64; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  65  --------------------------- 
	//    
	rm_num      = $65; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  66  --------------------------- 
	//    
	rm_num      = $66; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  67  --------------------------- 
	//    
	rm_num      = $67; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  68  --------------------------- 
	//    
	rm_num      = $68; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  69  --------------------------- 
	//    
	rm_num      = $69; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  6A  --------------------------- 
	//    
	rm_num      = $6A; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  6B  --------------------------- 
	//    
	rm_num      = $6B; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  6C  --------------------------- 
	//    
	rm_num      = $6C; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  6D  --------------------------- 
	//    
	rm_num      = $6D; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  6E  --------------------------- 
	//    
	rm_num      = $6E; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  6F  --------------------------- 
	//    
	rm_num      = $6F; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  70  --------------------------- 
	//    
	rm_num      = $70; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  71  --------------------------- 
	//    
	rm_num      = $71; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  72  --------------------------- 
	//    
	rm_num      = $72; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  73  --------------------------- 
	//    
	rm_num      = $73; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  74  --------------------------- 
	//    
	rm_num      = $74; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  75  --------------------------- 
	//    
	rm_num      = $75; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  76  --------------------------- 
	//    
	rm_num      = $76; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  77  --------------------------- 
	//    
	rm_num      = $77; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  78  --------------------------- 
	//    
	rm_num      = $78; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  79  --------------------------- 
	//    
	rm_num      = $79; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  7A  --------------------------- 
	//    
	rm_num      = $7A; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  7B  --------------------------- 
	//    
	rm_num      = $7B; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  7C  --------------------------- 
	//    
	rm_num      = $7C; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  7D  --------------------------- 
	//    
	rm_num      = $7D; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  7E  --------------------------- 
	//    
	rm_num      = $7E; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  7F  --------------------------- 
	//    
	rm_num      = $7F; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  80  --------------------------- 
	//    
	rm_num      = $80; 
	rm_name     = area + hex_str(rm_num); 

	//   --------------------------  81  --------------------------- 
	//    
	rm_num      = $81; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  82  --------------------------- 
	//    
	rm_num      = $82; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  83  --------------------------- 
	//    
	rm_num      = $83; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  84  --------------------------- 
	//    
	rm_num      = $84; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  85  --------------------------- 
	//    
	rm_num      = $85; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  86  --------------------------- 
	//    
	rm_num      = $86; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  87  --------------------------- 
	//    
	rm_num      = $87; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  88  --------------------------- 
	//    
	rm_num      = $88; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  89  --------------------------- 
	//    
	rm_num      = $89; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  8A  --------------------------- 
	//    
	rm_num      = $8A; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  8B  --------------------------- 
	//    
	rm_num      = $8B; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  8C  --------------------------- 
	//    
	rm_num      = $8C; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  8D  --------------------------- 
	//    
	rm_num      = $8D; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  8E  --------------------------- 
	//    
	rm_num      = $8E; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  8F  --------------------------- 
	//    
	rm_num      = $8F; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  90  --------------------------- 
	//    
	rm_num      = $90; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  91  --------------------------- 
	//    
	rm_num      = $91; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  92  --------------------------- 
	//    
	rm_num      = $92; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  93  --------------------------- 
	//    
	rm_num      = $93; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  94  --------------------------- 
	//    
	rm_num      = $94; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  95  --------------------------- 
	//    
	rm_num      = $95; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  96  --------------------------- 
	//    
	rm_num      = $96; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  97  --------------------------- 
	//    
	rm_num      = $97; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  98  --------------------------- 
	//    
	rm_num      = $98; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  99  --------------------------- 
	//    
	rm_num      = $99; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  9A  --------------------------- 
	//    
	rm_num      = $9A; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  9B  --------------------------- 
	//    
	rm_num      = $9B; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  9C  --------------------------- 
	//    
	rm_num      = $9C; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  9D  --------------------------- 
	//    
	rm_num      = $9D; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  9E  --------------------------- 
	//    
	rm_num      = $9E; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  9F  --------------------------- 
	//    
	rm_num      = $9F; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  A0  --------------------------- 
	//    
	rm_num      = $A0; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  A1  --------------------------- 
	//    
	rm_num      = $A1; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  A2  --------------------------- 
	//    
	rm_num      = $A2; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  A3  --------------------------- 
	//    
	rm_num      = $A3; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  A4  --------------------------- 
	//    
	rm_num      = $A4; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  A5  --------------------------- 
	//    
	rm_num      = $A5; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  A6  --------------------------- 
	//    
	rm_num      = $A6; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  A7  --------------------------- 
	//    
	rm_num      = $A7; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  A8  --------------------------- 
	//    
	rm_num      = $A8; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  A9  --------------------------- 
	//    
	rm_num      = $A9; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  AA  --------------------------- 
	//    
	rm_num      = $AA; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  AB  --------------------------- 
	//    
	rm_num      = $AB; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  AC  --------------------------- 
	//    
	rm_num      = $AC; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  AD  --------------------------- 
	//    
	rm_num      = $AD; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  AE  --------------------------- 
	//    
	rm_num      = $AE; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  AF  --------------------------- 
	//    
	rm_num      = $AF; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  B0  --------------------------- 
	//    
	rm_num      = $B0; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  B1  --------------------------- 
	//    
	rm_num      = $B1; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  B2  --------------------------- 
	//    
	rm_num      = $B2; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  B3  --------------------------- 
	//    
	rm_num      = $B3; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  B4  --------------------------- 
	//    
	rm_num      = $B4; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  B5  --------------------------- 
	//    
	rm_num      = $B5; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  B6  --------------------------- 
	//    
	rm_num      = $B6; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  B7  --------------------------- 
	//    
	rm_num      = $B7; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  B8  --------------------------- 
	//    
	rm_num      = $B8; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  B9  --------------------------- 
	//    
	rm_num      = $B9; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  BA  --------------------------- 
	//    
	rm_num      = $BA; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  BB  --------------------------- 
	//    
	rm_num      = $BB; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  BC  --------------------------- 
	//    
	rm_num      = $BC; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  BD  --------------------------- 
	//    
	rm_num      = $BD; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  BE  --------------------------- 
	//    
	rm_num      = $BE; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  BF  --------------------------- 
	//    
	rm_num      = $BF; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  C0  --------------------------- 
	//    
	rm_num      = $C0; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  C1  --------------------------- 
	//    
	rm_num      = $C1; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  C2  --------------------------- 
	//    
	rm_num      = $C2; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  C3  --------------------------- 
	//    
	rm_num      = $C3; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  C4  --------------------------- 
	//    
	rm_num      = $C4; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  C5  --------------------------- 
	//    
	rm_num      = $C5; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  C6  --------------------------- 
	//    
	rm_num      = $C6; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  C7  --------------------------- 
	//    
	rm_num      = $C7; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  C8  --------------------------- 
	//    
	rm_num      = $C8; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  C9  --------------------------- 
	//    
	rm_num      = $C9; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  CA  --------------------------- 
	//    
	rm_num      = $CA; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  CB  --------------------------- 
	//    
	rm_num      = $CB; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  CC  --------------------------- 
	//    
	rm_num      = $CC; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  CD  --------------------------- 
	//    
	rm_num      = $CD; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  CE  --------------------------- 
	//    
	rm_num      = $CE; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  CF  --------------------------- 
	//    
	rm_num      = $CF; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  D0  --------------------------- 
	//    
	rm_num      = $D0; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  D1  --------------------------- 
	//    
	rm_num      = $D1; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  D2  --------------------------- 
	//    
	rm_num      = $D2; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  D3  --------------------------- 
	//    
	rm_num      = $D3; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  D4  --------------------------- 
	//    
	rm_num      = $D4; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  D5  --------------------------- 
	//    
	rm_num      = $D5; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  D6  --------------------------- 
	//    
	rm_num      = $D6; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  D7  --------------------------- 
	//    
	rm_num      = $D7; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  D8  --------------------------- 
	//    
	rm_num      = $D8; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  D9  --------------------------- 
	//    
	rm_num      = $D9; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  DA  --------------------------- 
	//    
	rm_num      = $DA; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  DB  --------------------------- 
	//    
	rm_num      = $DB; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  DC  --------------------------- 
	//    
	rm_num      = $DC; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  DD  --------------------------- 
	//    
	rm_num      = $DD; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  DE  --------------------------- 
	//    
	rm_num      = $DE; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  DF  --------------------------- 
	//    
	rm_num      = $DF; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  E0  --------------------------- 
	//    
	rm_num      = $E0; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  E1  --------------------------- 
	//    
	rm_num      = $E1; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  E2  --------------------------- 
	//    
	rm_num      = $E2; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  E3  --------------------------- 
	//    
	rm_num      = $E3; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  E4  --------------------------- 
	//    
	rm_num      = $E4; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  E5  --------------------------- 
	//    
	rm_num      = $E5; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  E6  --------------------------- 
	//    
	rm_num      = $E6; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  E7  --------------------------- 
	//    
	rm_num      = $E7; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  E8  --------------------------- 
	//    
	rm_num      = $E8; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  E9  --------------------------- 
	//    
	rm_num      = $E9; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  EA  --------------------------- 
	//    
	rm_num      = $EA; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  EB  --------------------------- 
	//    
	rm_num      = $EB; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  EC  --------------------------- 
	//    
	rm_num      = $EC; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  ED  --------------------------- 
	//    
	rm_num      = $ED; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  EE  --------------------------- 
	//    
	rm_num      = $EE; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  EF  --------------------------- 
	//    
	rm_num      = $EF; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  F0  --------------------------- 
	//    
	rm_num      = $F0; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  F1  --------------------------- 
	//    
	rm_num      = $F1; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  F2  --------------------------- 
	//    
	rm_num      = $F2; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  F3  --------------------------- 
	//    
	rm_num      = $F3; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  F4  --------------------------- 
	//    
	rm_num      = $F4; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  F5  --------------------------- 
	//    
	rm_num      = $F5; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  F6  --------------------------- 
	//    
	rm_num      = $F6; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  F7  --------------------------- 
	//    
	rm_num      = $F7; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  F8  --------------------------- 
	//    
	rm_num      = $F8; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  F9  --------------------------- 
	//    
	rm_num      = $F9; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  FA  --------------------------- 
	//    
	rm_num      = $FA; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  FB  --------------------------- 
	//    
	rm_num      = $FB; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  FC  --------------------------- 
	//    
	rm_num      = $FC; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  FD  --------------------------- 
	//    
	rm_num      = $FD; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  FE  --------------------------- 
	//    
	rm_num      = $FE; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  FF  --------------------------- 
	//   
	rm_num      = $FF; 
	rm_name     = area + hex_str(rm_num);









}
