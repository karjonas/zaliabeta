/// @description  rm_data_init_Palc_C()
function rm_data_init_Palc_C() {


	var _val;
	var _i, _a, _x,_xl, _y,_yt, _w,_h;
	var _clm,_row;
	var _rm, _page, _pages, _data
	var _ver;
	var _exit;
	var _exit_name = EXIT_NAME_GAME_START;





	// *************************   PALACE 3   *************************** 
	// ------------------------------------------------------------------------------- 
	area = area_PC;

	var _DUNGEON_NUM  = $03;
	var _DUNGEON_NUM_ = hex_str(_DUNGEON_NUM);

	mus0 = STR_Dungeon+_DUNGEON_NUM_;
	//mus0 = MUS_DUNGEON1;

	var _DARK_DATA=STR_Dark+"01";
	ow_axis =  0; // 0:horizontal, 1:vertical


	var _DUNGEON_NAME = STR_Island_Palace;
	g.dm_dungeon[?STR_Dungeon+_DUNGEON_NUM_+STR_Name] = _DUNGEON_NAME;
	g.dm_dungeon[?STR_Dungeon+area         +STR_Name] = _DUNGEON_NAME;
	g.dm_dungeon[?STR_Dungeon+STR_Num+_DUNGEON_NAME]  = _DUNGEON_NUM;
	g.dm_dungeon[?STR_Dungeon+_DUNGEON_NUM_+STR_Area] = area;
	g.dm_dungeon[?_DUNGEON_NAME+STR_Area]             = area;











	//   --------------------------  00  --------------------------- $00
	//    
	rm_num  = $00;
	set_rm_data(area+hex_str(rm_num), mus0, STR_Color+COLOR2_, STR_Tile+area_PC+"000", STR_ow_axis+hex_str(ow_axis));


	data_NIAO_1a(rm+STR_NIAO+"0",  $0000,  1,Cloud_1_init);
	data_spawn(rm+STR_PRIO,SpStA,$2,  $34<<3,(row0+$11)<<3); // SpawnByStab  2


	clm3=$70; clm4=clm3-$04; clm5=clm3-$01; // clm3: elevator center clm
	data_exit(EXD0,etC0,1,  clm4,row_e2,  CLMS4,ROWS5,  clm5,row_e3,  "01"+EXU0_); // DWN 0, Elevator down 
	data_Elev(EXD0_,  clm3,row_e5, "04");                                    // Elevator DW $40, 
	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row0+$17,  0); // LFT 0, to Overworld 
	g.dm_rm[?get_dk_dungeon_entrance(_DUNGEON_NUM)] = exit_name_l0;


	data_rando_scene01("_00"+"_00"+"_01"+"_01"+"_00",rm);








	//   --------------------------  01  --------------------------- $01
	//    
	rm_num  = $01;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PC+"001", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;

	data_spawn(rm+STR_PRIO,TorchA,$1,  ($0C<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($12<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($71<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE

	data_spawn(rm+STR_PRXM,DoomA,$1,  $36<<3,y3); // Doomknocker  1
	data_spawn(rm+STR_PRXM,Myu_A,$1,  $54<<3,y3); // Myu  1
	data_spawn(rm+STR_PRXM,StalA,$2,  $5E<<3,(row0+$0B)<<3); // Stalfos  2


	clm3=$10; clm4=clm3-$04; clm5=clm3-$01; // clm3: elevator center clm
	data_exit(EXU0,etC0,1,  clm4,row_e0,  CLMS4,ROWS5,  clm5,row_e1,  "00"+EXD0_); // UP  0, Elevator up  
	data_Elev(EXU0_, clm3,row_e5);                                           // Elevator UP $80, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  "02"+EXL0_); // RGT 0, 


	data_rando_scene01("_00"+"_01"+"_00"+"_00"+"_01",rm);








	//   --------------------------  02  --------------------------- 
	//    
	rm_num  = $02;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PC+"002", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$11; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;
	data_spawn(rm+STR_PRIO,TorchA,$1,  $1D<<3,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  $22<<3,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  $5D<<3,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  $62<<3,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE

	data_spawn(rm+STR_PRXM,SpWoA,$1,  $00,$00); // WosuSpawner  1
	data_spawn(rm+STR_PRXM,Myu_A,$1,  $30<<3,y3); // Myu  1
	data_spawn(rm+STR_PRXM,Myu_A,$1,  $36<<3,y3); // Myu  1
	data_spawn(rm+STR_PRXM,Myu_A,$1,  $42<<3,y3); // Myu  1
	data_spawn(rm+STR_PRXM,Myu_A,$1,  $46<<3,y3); // Myu  1


	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  "01"+EXR0_); // LFT 0, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  "03"+EXL0_); // RGT 0, 


	data_rando_scene01("_00"+"_01"+"_01"+"_00"+"_00",rm);








	//   --------------------------  03  --------------------------- 
	//    
	rm_num  = $03;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PC+"003", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$16; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;
	row5=row0+$00; y5=row5<<3;
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($1F<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($3F<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($5F<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRXM,Moa_B,$1,  $1E<<3,(row0+$06)<<3); // FieryMoa  1
	clm3=$2C; clms3=$08; clms4=clms3+$08; clms5=clms3>>1;
	data_spawn(rm+STR_PRIO,Spawner_FallingBlock,$2,  (clm3+(clms4*0))<<3,y5,  STR_Clms+hex_str(clms5)); // BlockSpawner  1
	//data_spawn(rm+STR_PRIO,Spawner_FallingBlock,$2,  (clm3+(clms4*1))<<3,y5,  STR_Clms+hex_str(clms5)); // BlockSpawner  1
	data_spawn(rm+STR_PRIO,Spawner_FallingBlock,$2,  (clm3+(clms4*2))<<3,y5,  STR_Clms+hex_str(clms5)); // BlockSpawner  1


	row3=row0+$16;
	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  "02"+EXR0_); // LFT 0, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  "04"+EXL0_); // RGT 0, 


	data_rando_scene01("_00"+"_01"+"_01"+"_00"+"_00",rm, STR_GLOVE);








	//   --------------------------  04  --------------------------- 
	//    
	rm_num  = $04;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PC+"002", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$11; y3=row3<<3; // pc spawn yt exit left, right
	row4=row3+$01; y4=row4<<3;
	row5=row3+$02; y5=row5<<3;
	row6=row3+$08; y6=row6<<3;
	data_spawn(rm+STR_PRIO,TorchA,$1,  $1D<<3,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  $22<<3,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  $5D<<3,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  $62<<3,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRXM,DoomA,$1,  $4A<<3,y3); // Doomknocker  1
	data_spawn(rm+STR_PRXM,Myu_A,$1,  $18<<3,y5); // Myu  1
	data_spawn(rm+STR_PRXM,Myu_A,$1,  $3E<<3,y5); // Myu  1
	data_spawn(rm+STR_PRXM,Myu_A,$1,  $68<<3,y5); // Myu  1


	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  "03"+EXR0_); // LFT 0, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  "05"+EXL0_); // RGT 0, 


	data_spawn(rm+STR_PRIO,ItmD0,$1,  $30<<3,y6,  STR_Treasure+STR_Map+"01"); // Key 
	data_spawn(rm+STR_PRIO,ItmF0,$2,  $4C<<3,y6); // PBag 100 








	//   --------------------------  05  --------------------------- 
	//    
	rm_num  = $05;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PC+"004", STR_ow_axis+hex_str(ow_axis));



	data_spawn(rm+STR_PRIO,TorchA,$1,  ($07<<3)+4,(row0+$18)<<3,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($77<<3)+4,(row0+$0E)<<3,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($52<<3)+4,(row0+$17)<<3,  STR_Lit); // v1: Light w/ CANDLE or FIRE

	data_spawn(rm+STR_PRXM,IrKnA,$2,  $1E<<3,(row0+$17)<<3); // IronKnuckle  2
	data_spawn(rm+STR_PRXM,IrKnA,$2,  $3E<<3,(row0+$11)<<3); // IronKnuckle  2
	data_spawn(rm+STR_PRXM,StalA,$1,  $64<<3,(row0+$0B)<<3); // Stalfos  1
	data_spawn(rm+STR_PRXM,Myu_A,$1,  $18<<3,(row0+$13)<<3); // Myu  1
	data_spawn(rm+STR_PRXM,Myu_A,$1,  $28<<3,(row0+$0D)<<3); // Myu  1


	clm3=$50; clm4=clm3-$04; clm5=clm3-$01; // clm3: Elev center clm
	data_exit(EXD0,etC0,1,  clm4,row_e2,  CLMS4,ROWS5,  clm5,row_e3,  "09"+EXU0_); // DWN 0, Elevator down 
	data_Elev(EXD0_, clm3,row_e5);                                           // Elevator DW $40, 
	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row0+$17,  "04"+EXR0_); // LFT 0, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row0+$0D,  "06"+EXL0_); // RGT 0, 


	data_rando_scene01("_00"+"_01"+"_01"+"_01"+"_00",rm);








	//   --------------------------  06  --------------------------- 
	//    
	rm_num  = $06;
	set_rm_data(area+hex_str(rm_num), mus0, STR_Color+COLOR2_, STR_Tile+area_PC+"005", STR_ow_axis+hex_str(ow_axis));


	data_NIAO_1a(rm+STR_NIAO+"0",  $0000,  1,Cloud_1_init);
	data_spawn(rm+STR_PRXM,IrKnA,$2,  $38<<3,(row0+$17)<<3); // IronKnuckle  2
	data_spawn(rm+STR_PRXM,Moa_B,$1,  $30<<3,(row0+$07)<<3); // FieryMoa  1


	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row0+$17,  "05"+EXR0_); // LFT 0, 


	data_spawn(rm+STR_PRIO,ItmD0,$1,  $4A<<3,(row0+$13)<<3,  STR_Treasure+STR_Map+"01"); // Key 


	data_rando_scene01("_00"+"_00"+"_01"+"_00"+"_00",rm);









	//   --------------------------  07  --------------------------- 
	//    
	rm_num  = $07;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PC+"006", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;

	data_spawn(rm+STR_PRIO,TorchA,$1,  ($09<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($75<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE

	data_spawn(rm+STR_PRIO,SpStA,$2,  $56<<3,(row0+$17)<<3); // SpawnByStab  2
	data_spawn(rm+STR_PRIO,SpMaA,$1,  $1E<<3,(row0+$17)<<3); // MauSpawner  1


	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  "08"+EXL0_); // RGT 0, 


	data_spawn(rm+STR_PRIO,ItmD0,$1,  $24<<3,y3,  STR_Treasure+STR_Map+"01"); // Key 
	data_spawn(rm+STR_PRIO,ItmF0,$3,  $07<<3,y3); // PBag v3: 150 








	//   --------------------------  08  --------------------------- 
	//    
	rm_num  = $08;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PC+"007", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;
	data_spawn(rm+STR_PRIO,TorchA,$1,  $26<<3,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  $2B<<3,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($4C<<3)+4,y3,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($52<<3)+4,y3,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,LoDoA,$1,  $5A<<3,(row3-$02)<<3); // LockedDoor
	data_spawn(rm+STR_PRXM,IrKnA,$2,  $12<<3,y3); // IronKnuckle  2
	data_spawn(rm+STR_PRXM,IrKnA,$2,  $5E<<3,y3); // IronKnuckle  2
	data_spawn(rm+STR_PRXM,WosuA,$1,  $1E<<3,y3); // Wosu  1
	data_spawn(rm+STR_PRXM,WosuA,$1,  $24<<3,y3); // Wosu  1


	clm3=$50; clm4=clm3-$04; clm5=clm3-$01; // clm3: Elev center clm
	data_exit(EXD0,etC0,1,  clm4,row_e2,  CLMS4,ROWS5,  clm5,row_e3,  "0C"+EXU0_); // DWN 0, Elevator down 
	data_Elev(EXD0_, clm3,row_e5);                                           // Elevator DW $40, 
	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  "07"+EXR0_); // LFT 0, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  "09"+EXL0_); // RGT 0, 


	data_spawn(rm+STR_PRIO,ItmF0,$3,  $74<<3,(row0+$11)<<3); // PBag 3: 150


	//data_rando_scene01("_00"+"_01"+"_01"+"_01"+"_00",rm, STR_GLOVE+STR_JUMP+STR_STABUP);








	//   --------------------------  09  --------------------------- 
	//    
	rm_num  = $09;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PC+"008", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;

	//data_spawn(rm+STR_PRIO,TorchA,$1,  ($02<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	//data_spawn(rm+STR_PRIO,TorchA,$1,  ($7C<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($4C<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($52<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($25<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE

	data_spawn(rm+STR_PRIO,LoDoA,$1,  $57<<3,(row3-$02)<<3); // LockedDoor
	data_spawn(rm+STR_PRIO,SpStA,$2,  $46<<3,(row0+$11)<<3); // SpawnByStab  2
	data_spawn(rm+STR_PRIO,SpMaA,$1,  $1E<<3,(row0+$17)<<3); // MauSpawner  1
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $30<<3,y3); // Bot  1
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $34<<3,y3); // Bot  1
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $5E<<3,y3); // Bot  1


	clm3=$50; clm4=clm3-$04; clm5=clm3-$01; // clm3: elevator center clm
	data_exit(EXU0,etC0,1,  clm4,row_e0,  CLMS4,ROWS5,  clm5,row_e1,  "05"+EXD0_); // UP  0, Elevator up  
	data_Elev(EXU0_, clm3,row_e5);                                                 // Elevator UP $80, 
	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  "08"+EXR0_); // LFT 0, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  "0A"+EXL0_); // RGT 0, 


	data_rando_scene01("_00"+"_01"+"_01"+"_00"+"_01",rm);








	//   --------------------------  0A  --------------------------- 
	//    
	rm_num  = $0A;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PC+"009", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$12; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;
	row5=row3+$02; y5=row5<<3;

	data_spawn(rm+STR_PRIO,TorchA,$1,  ($07<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($77<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE

	data_spawn(rm+STR_PRXM,IrKnA,$2,  $3C<<3,y3); // IronKnuckle  2
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $1C<<3,y5); // Bot  1
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $4E<<3,y5); // Bot  1
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $66<<3,y5); // Bot  1


	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  "09"+EXR0_); // LFT 0, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  "0F"+EXL0_); // RGT 0, 


	data_spawn(rm+STR_PRIO,ItmD0,$1,  $30<<3,(row3-$02)<<3,  STR_Treasure+STR_Map+"01"); // Key 


	data_rando_scene01("_00"+"_01"+"_01"+"_00"+"_00",rm, STR_GLOVE);








	//   --------------------------  0B  --------------------------- 
	//    
	rm_num  = $0B;








	//   --------------------------  0C  --------------------------- 
	//    
	rm_num  = $0C;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PC+"001", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;

	data_spawn(rm+STR_PRIO,TorchA,$1,  ($0C<<3)+4,y4,  STR_Qualified+STR_Quest+STR_Nums+"01"); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($12<<3)+4,y4,  STR_Qualified+STR_Quest+STR_Nums+"01"); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  $79<<3,y4,  STR_Qualified+STR_Quest+STR_Nums+"01"); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($3E<<3)+4,y4,  STR_Qualified+STR_Quest+STR_Nums+"02"); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($4E<<3)+4,y4,  STR_Qualified+STR_Quest+STR_Nums+"02"); // v1: Light w/ CANDLE or FIRE

	data_spawn(rm+STR_PRIO,LoDoA,$1,  $16<<3,(row0+$15)<<3); // LockedDoor
	data_spawn(rm+STR_PRXM,DoomA,$1,  $72<<3,(row0+$17)<<3); // Doomknocker  1
	data_spawn(rm+STR_PRXM,StalA,$1,  $3C<<3,(row0+$0B)<<3); // Stalfos  1


	clm3=$10; clm4=clm3-$04; clm5=clm3-$01; // clm3: elevator center clm
	data_exit(EXU0,etC0,1,  clm4,row_e0,  CLMS4,ROWS5,  clm5,row_e1,  "08"+EXD0_); // UP  0, Elevator up  
	data_Elev(EXU0_, clm3,row_e5);                                           // Elevator UP $80, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  "0D"+EXL0_); // RGT 0, 


	data_spawn(rm+STR_PRIO,ItmF0,$4,  $3A<<3,(row0+$09)<<3); // PBag v4: 200


	//data_rando_scene01("_00"+"_01"+"_00"+"_00"+"_01",rm, STR_JUMP);








	//   --------------------------  0D  --------------------------- 
	//    
	rm_num  = $0D;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PC+"011", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$11; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;
	row5=row3+$02; y5=row5<<3;

	x3=($62<<3)+4;
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($08<<3)+4,y4,  STR_Qualified+STR_Quest+STR_Nums+"01"); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($77<<3)+4,y4,  STR_Qualified+STR_Quest+STR_Nums+"01"); // v1: Light w/ CANDLE or FIRE
	//data_spawn(rm+STR_PRIO,TorchA,$1,  ($05<<3)+4,y4,  STR_Qualified+STR_Quest+STR_Nums+"01"); // v1: Light w/ CANDLE or FIRE
	//data_spawn(rm+STR_PRIO,TorchA,$1,  ($72<<3)+4,y5,  STR_Qualified+STR_Quest+STR_Nums+"01"); // v1: Light w/ CANDLE or FIRE
	//data_spawn(rm+STR_PRIO,TorchA,$1,  ($7B<<3)+4,y4,  STR_Qualified+STR_Quest+STR_Nums+"01"); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  x3,(row0+$0D)<<3,  STR_Qualified+STR_Quest+STR_Nums+"02"); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  x3,(row0+$19)<<3,  STR_Qualified+STR_Quest+STR_Nums+"02"); // v1: Light w/ CANDLE or FIRE

	data_spawn(rm+STR_PRXM,IrKnA,$3,  $36<<3,y3); // IronKnuckle  3
	data_spawn(rm+STR_PRXM,IrKnA,$2,  $56<<3,y3); // IronKnuckle  2
	data_spawn(rm+STR_PRXM,IrKnA,$2,  $72<<3,(row0+$17)<<3); // IronKnuckle  2


	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  "0C"+EXR0_); // LFT 0, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  "0E"+EXL0_); // RGT 0, 


	data_spawn(rm+STR_PRIO,ItmF0,$4,  $76<<3,(row0+$17)<<3); // PBag v4: 200


	//data_rando_scene01("_00"+"_01"+"_01"+"_00"+"_00",rm, STR_GLOVE+STR_STABDOWN);








	//   --------------------------  0E  --------------------------- 
	//   -----------------------  REBONACK  ------------------------- 
	rm_num  = $0E;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PC+"012", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$16; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;
	clms4=$08;
	clm4=$07; _a=0;
	data_spawn(rm+STR_PRIO,TorchA,$1,  ((clm4+(clms4*_a++))<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ((clm4+(clms4*_a++))<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ((clm4+(clms4*_a++))<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	clm4=$47; _a=0;
	data_spawn(rm+STR_PRIO,TorchA,$1,  ((clm4+(clms4*_a++))<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ((clm4+(clms4*_a++))<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ((clm4+(clms4*_a++))<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE

	clm3=$30; // clm3: arena center
	data_spawn(rm+STR_PRIO,ReboA,$1,  (clm3+$14)<<3,y3,  STR_Arena+"_x"+hex_str(clm3<<3)); // RebonackA
	data_spawn(rm+STR_PRIO,CrHoA,$1,  CRYSTALHOLDER_XL-($03<<3),y3); // CrystalHolder  1
	g.dm_rm[?STR_Boss+STR_Scene+STR_Name+_DUNGEON_NAME] = rm;


	_exit=data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  "0D"+EXR0_); // LFT 0, 
	g.dm_rm[?_DUNGEON_NAME+STR_Boss+STR_Scene+STR_Entrance+STR_Exit] = _exit;

	_exit=data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  0); // RGT 0, to Overworld
	g.dm_rm[?STR_Boss+STR_Dungeon+STR_Exit+STR_Name+_DUNGEON_NAME] = _exit;








	//   --------------------------  0F  --------------------------- 
	//    
	rm_num  = $0F;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PC+"016", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;
	row5=row0+$07; y5=row5<<3;

	data_spawn(rm+STR_PRIO,TorchA,$1,  ($03<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($5B<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($2C<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($32<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE

	data_spawn(rm+STR_PRIO,LoDoA,$1,  $22<<3,(row3-$02)<<3); // LockedDoor
	data_spawn(rm+STR_PRIO,SpDrA,$1,  $13<<3,y5); // DropSpawner  1
	data_spawn(rm+STR_PRIO,SpDrA,$1,  $4B<<3,y5); // DropSpawner  1
	data_spawn(rm+STR_PRXM,BubbA,$1,  $2C<<3,(row0+$16)<<3,  STR_Direction+hex_str($2|$4)); // Bubble  v$01:standard, v$02:fast


	clm3=$30; clm4=clm3-$04; clm5=clm3-$01; // clm3: elevator center clm
	data_exit(EXU0,etC0,1,  clm4,row_e0,  CLMS4,ROWS5,  clm5,row_e1,  "11"+EXD0_); // UP  0, Elevator up  
	data_Elev(EXU0_, clm3,row_e5);                                           // Elevator UP $80, 
	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  "0A"+EXR0_); // LFT 0, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  "10"+EXL0_); // RGT 0, 


	data_rando_scene01("_00"+"_01"+"_01"+"_00"+"_01",rm);








	//   --------------------------  10  --------------------------- 
	//    
	rm_num  = $10;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PC+"019", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;
	row5=row0+$11; y5=row5<<3;

	data_spawn(rm+STR_PRIO,TorchA,$1,  ($0A<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE

	data_spawn(rm+STR_PRIO,SpBuA,$1,  $14<<3,y5); // BulletSpawner  1(v1: shoot right)
	data_spawn(rm+STR_PRIO,SpBuA,$2,  $32<<3,y5); // BulletSpawner  2(v2: shoot left)
	data_spawn(rm+STR_PRXM,BubbA,$1,  $20<<3,(row0+$17)<<3,  STR_Direction+hex_str($1|$4)); // Bubble  v$01:standard, v$02:fast


	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  "0F"+EXR0_); // LFT 0, 


	data_spawn(rm+STR_PRIO,ItmE0,$1,  $31<<3,y3); // Magic Jar (Full)


	data_rando_scene01("_00"+"_00"+"_01"+"_00"+"_00",rm);







	//   --------------------------  11  --------------------------- 
	//    
	rm_num  = $11;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PC+"020", STR_View+"02", STR_ow_axis+hex_str(ow_axis));



	clm3=$1B; x3=clm3<<3;
	clm4=$24; x4=clm4<<3;
	data_spawn(rm+STR_PRIO,TorchA,$1,  x3,$07<<3,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  x4,$07<<3,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	//                                                              //
	data_spawn(rm+STR_PRIO,TorchA,$1,  x3,$11<<3,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  x4,$11<<3,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	//                                                              //
	data_spawn(rm+STR_PRIO,TorchA,$1,  x3,$1B<<3,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  x4,$1B<<3,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	//                                                              //
	data_spawn(rm+STR_PRIO,TorchA,$1,  x3,$25<<3,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  x4,$25<<3,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	//                                                              //
	data_spawn(rm+STR_PRIO,TorchA,$1,  x3,$2F<<3,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  x4,$2F<<3,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	//                                                              //
	data_spawn(rm+STR_PRIO,TorchA,$1,  x3,$39<<3,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  x4,$39<<3,  STR_Lit); // v1: Light w/ CANDLE or FIRE

	var _OBJ = Myu_A;
	var _DUR = 4; // SpTrC revolution duration
	var _PI1 = PI_MOB_BLU; // For spinning spike trap to contrast w/ red walls of palace 3
	_val=$06;
	x3=(clm1-_val)<<3;  x4=(clm1+_val)<<3;  x5=(clm1-$C)<<3;  x6=(clm1+$E)<<3;

	_val=$0A; // Each hallway $A vertically apart     
	row4=$0A-$02; // $0A: floor row of top most hallway
	data_spawn(rm+STR_PRXM,_OBJ,$1,  x3,row4<<3); // Myu

	row4 += _val; // HALLWAY 2
	data_spin_trap(SpTrC,1,  x5,(row4+4)<<3,  _PI1,  7,-1,_DUR,3*90); // SpTrC: spins on chain
	data_spin_trap(SpTrC,1,  x6,(row4+4)<<3,  _PI1,  8, 1,_DUR,2*90); // SpTrC: spins on chain
	data_spawn(rm+STR_PRXM,_OBJ,$1,  x4,row4<<3); // Myu

	row4 += _val; // HALLWAY 3
	data_spawn(rm+STR_PRXM,_OBJ,$1,  x3,row4<<3); // Myu

	row4 += _val; // HALLWAY 4
	data_spin_trap(SpTrC,1,  x5,(row4+4)<<3,  _PI1,  7,-1,_DUR,1*90); // SpTrC: spins on chain
	data_spin_trap(SpTrC,1,  x6,(row4+4)<<3,  _PI1,  8, 1,_DUR,0*90); // SpTrC: spins on chain
	data_spawn(rm+STR_PRXM,_OBJ,$1,  x4,row4<<3); // Myu

	row4 += _val; // HALLWAY 5
	data_spawn(rm+STR_PRXM,_OBJ,$1,  x3,row4<<3); // Myu

	row4 += _val; // HALLWAY 6 (btm most)
	data_spawn(rm+STR_PRXM,_OBJ,$1,  x4,row4<<3); // Myu


	clm3=$10; clm4=clm3-$04; clm5=clm3-$01; // clm3: elevator center clm
	data_exit(EXD0,etC0,1,  clm4,$3F,  CLMS4,ROWS5,  clm5,row_e3,  "0F"+EXU0_); // DWN 0, Elevator down 
	data_Elev(EXD0_, clm3,$35, "04");                                     // Elevator DW $40, 
	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,$06,  "12"+EXR0_); // LFT 0, 


	data_spawn(rm+STR_PRIO,Kakusu003,$1,  (clm1-1)<<3,row4<<3,  STR_Distance+hex_str($30<<3),STR_Treasure+STR_Map+"01"); // v5. Downthrust from high enough to kill.


	data_rando_scene01("_00"+"_00"+"_01"+"_01"+"_00",rm);








	//   --------------------------  12  --------------------------- 
	//    RAFT.  Outside rm.
	rm_num  = $12;
	set_rm_data(area+hex_str(rm_num), mus0, STR_Color+COLOR2_, STR_Tile+area_PC+"017", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17;  y3=row3<<3;
	data_NIAO_1a(rm+STR_NIAO+"0",  $0000,  1,Cloud_1_init);
	data_spawn(rm+STR_PRXM,IrKnA,$2,  $58<<3,y3); // IronKnuckle  2
	data_spawn(rm+STR_PRXM,IrKnA,$3,  $30<<3,y3); // IronKnuckle  3
	data_spawn(rm+STR_PRXM,Moa_B,$1,  $30<<3,(row0+$07)<<3); // FieryMoa  1


	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row0-$04,  "13"+EXR0_); // LFT 0, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  "11"+EXL0_); // RGT 0, 


	data_spawn(rm+STR_PRIO,ItmA2,$1,  $1E<<3,y3); // RAFT 


	//data_rando_scene01("_00"+"_01"+"_01"+"_00"+"_00",rm, STR_FAIRY);






	//   --------------------------  13  --------------------------- 
	//    HEART PIECE. Outside rm
	rm_num  = $13;
	set_rm_data(area+hex_str(rm_num), mus0, STR_Color+COLOR2_, STR_Tile+area_PC+"018", STR_ow_axis+hex_str(ow_axis));


	data_NIAO_1a(rm+STR_NIAO+"0",  $0000,  1,Cloud_1_init);


	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row0+$17,  "12"+EXL0_); // RGT 0, 


	data_spawn(rm+STR_PRIO,CONT_PIECE_OBJ_HP,CONT_PIECE_OBJ_VER_HP,  $13<<3,(row0+$15)<<3,  STR_Treasure+STR_Map+"01"); // HEART PIECE


	data_rando_scene01("_00"+"_01"+"_00"+"_00"+"_00",rm);







	//   --------------------------  14  --------------------------- 
	//    
	rm_num      = $14; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  15  --------------------------- 
	//    
	rm_num      = $15; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  16  --------------------------- 
	//    
	rm_num      = $16; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  17  --------------------------- 
	//    
	rm_num      = $17; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  18  --------------------------- 
	//    
	rm_num      = $18; 
	rm_name     = area + hex_str(rm_num); 


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
	rm_num      = $30; 
	rm_name     = area + hex_str(rm_num); 


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
	rm_num      = $40; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  41  --------------------------- 
	//    
	rm_num      = $41; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  42  --------------------------- 
	//    
	rm_num      = $42; 
	rm_name     = area + hex_str(rm_num); 


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
	rm_num  = $FB;






	//   --------------------------  FC  --------------------------- 
	//    
	rm_num  = $FC; 






	//   --------------------------  FD  --------------------------- 
	//    
	rm_num      = $FD;






	//   --------------------------  FE  --------------------------- 
	//    
	rm_num  = $FE;





	//   --------------------------  FF  --------------------------- 
	//    
	rm_num  = $FF;









}
