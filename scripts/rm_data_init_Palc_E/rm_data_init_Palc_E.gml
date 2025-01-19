/// @description  rm_data_init_Palc_E()
function rm_data_init_Palc_E() {


	var _i, _a, _val, _dist;
	var _x,_x1,_x2,_y,_yt, _w,_w2,_w3, _h,_h2,_h3;
	var _clm,_clm2, _row,_row2, _clms,_rows;
	var _pi, _obj;
	var _rm, _file, _data, _exit, _owrc;
	var _exit, _file;
	var _exit_name = EXIT_NAME_GAME_START;
	//var _Ra_VER = 1; // P5 OG
	var _Ra_VER = 2; // mod








	// *************************   PALACE 5   *************************** 
	// ------------------------------------------------------------------------------- 
	area = area_PE;

	var _DUNGEON_NUM  = $05;
	var _DUNGEON_NUM_ = hex_str(_DUNGEON_NUM);

	mus0 = STR_Dungeon+_DUNGEON_NUM_;
	//mus0 = MUS_DUNGEON1;

	var _DARK_DATA=STR_Dark+"01";
	ow_axis =  0; // 0:horizontal, 1:vertical


	var _DUNGEON_NAME = STR_Palace_On_The_Sea;
	g.dm_dungeon[?STR_Dungeon+_DUNGEON_NUM_+STR_Name] = _DUNGEON_NAME;
	g.dm_dungeon[?STR_Dungeon+area         +STR_Name] = _DUNGEON_NAME;
	g.dm_dungeon[?STR_Dungeon+STR_Num+_DUNGEON_NAME]  = _DUNGEON_NUM;
	g.dm_dungeon[?STR_Dungeon+_DUNGEON_NUM_+STR_Area] = area;
	g.dm_dungeon[?_DUNGEON_NAME+STR_Area]             = area;








	//   --------------------------  00  --------------------------- 23
	//    
	rm_num  = $00;
	set_rm_data(area+hex_str(rm_num), mus0, STR_Color+COLOR2_, STR_Tile+area_PE+"040", STR_ow_axis+hex_str(ow_axis));


	data_NIAO_1a(rm+STR_NIAO+"0",  $0000,  1,Cloud_1_init);
	y3=(row0+$0A)<<3; y4=(row0+$12)<<3;
	_val=$19;
	data_spawn(rm+STR_PRIO,SpStA,$2,  (_val-1)<<3,y4); // SpawnByStab  2
	data_spawn(rm+STR_PRIO,SpStA,$2,  (clms0-_val-1)<<3,y4); // SpawnByStab  2
	data_spawn(rm+STR_PRIO,MagnA,$2,  $20<<3,y3); // Magnot 2
	data_spawn(rm+STR_PRIO,MagnA,$2,  $28<<3,y3); // Magnot 2
	data_spawn(rm+STR_PRIO,MagnA,$2,  $30<<3,y3); // Magnot 2
	data_spawn(rm+STR_PRIO,MagnA,$2,  $4E<<3,y3); // Magnot 2
	data_spawn(rm+STR_PRIO,MagnA,$2,  $56<<3,y3); // Magnot 2
	data_spawn(rm+STR_PRIO,MagnA,$2,  $5E<<3,y3); // Magnot 2


	clm3=$40; clm4=clm3-$04; clm5=clm3-$01; // clm3: elevator center clm
	data_exit(EXD0,etC0,1,  clm4,row_e2,  CLMS4,ROWS5,  clm5,row_e3,  "01"+EXU0_); // DWN 0, Elevator down 
	data_Elev(EXD0_,  clm3,row0+$13, "04");                                  // Elevator DW $40, 
	row3=row0+$19;
	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  0); // LFT 0, to Overworld
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  0); // RGT 0, to Overworld
	g.dm_rm[?get_dk_dungeon_entrance(_DUNGEON_NUM)] = exit_name_l0;


	data_spawn(rm+STR_PRIO,ItmF0,$4,  $5A<<3,(row0+$04)<<3); // PBag v4: 200 


	//data_rando_scene01("_00"+"_01"+"_01"+"_01"+"_00",rm, STR_JUMP);








	//   --------------------------  01  --------------------------- 24
	//    
	rm_num  = $01;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PE+"001", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;

	data_spawn(rm+STR_PRIO,TorchA,$1,  ($0C<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($12<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  $78<<3,(row0+$0C)<<3,  STR_Lit); // v1: Light w/ CANDLE or FIRE

	data_spawn(rm+STR_PRIO,SpBuA,$1,  $40<<3,(row0+$0D)<<3); // BulletSpawner  1
	data_spawn(rm+STR_PRXM,AnerA,$1,  $4E<<3,(row0+$17)<<3); // Aneru  1
	data_spawn(rm+STR_PRXM,AnerA,$1,  $56<<3,(row0+$15)<<3); // Aneru  1
	data_spawn(rm+STR_PRXM,AnerA,$1,  $5E<<3,(row0+$13)<<3); // Aneru  1
	data_spawn(rm+STR_PRXM,AnerA,$1,  $66<<3,(row0+$11)<<3); // Aneru  1
	data_spawn(rm+STR_PRXM,AnerA,$1,  $6E<<3,(row0+$0F)<<3); // Aneru  1


	clm3=$10; clm4=clm3-$04; clm5=clm3-$01; // clm3: elevator center clm
	data_exit(EXU0,etC0,1,  clm4,row_e0,  CLMS4,ROWS5,  clm5,row_e1,  "00"+EXD0_); // UP  0, Elevator up  
	data_Elev(EXU0_,  clm3,row_e5);                                          // Elevator UP $80, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row0+$0B,  "02"+EXL0_); // RGT 0, 


	data_rando_scene01("_00"+"_01"+"_00"+"_00"+"_01",rm);








	//   --------------------------  02  --------------------------- 
	//    
	rm_num  = $02;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PE+"025", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;

	data_spawn(rm+STR_PRIO,TorchA,$1,  ($0C<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($77<<3)+4,(row0+$0C)<<3,  STR_Lit); // v1: Light w/ CANDLE or FIRE

	data_spawn(rm+STR_PRXM,BubbA,$1,  $20<<3,(row0+$17)<<3,  STR_Direction+hex_str($2|$8)); // Bubble  1
	data_spawn(rm+STR_PRXM,BubbA,$1,  $47<<3,(row0+$0C)<<3,  STR_Direction+hex_str($2|$4)); // Bubble  1
	data_spawn(rm+STR_PRXM,BubbA,$1,  $78<<3,(row0+$07)<<3,  STR_Direction+hex_str($2|$4)); // Bubble  1


	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row0+$17,  "01"+EXR0_); // LFT 0, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row0+$0B,  "03"+EXL0_); // RGT 0, 


	data_spawn(rm+STR_PRIO,ItmD0,$1,  $73<<3,(row0+$0C)<<3,  STR_Treasure+STR_Map+"02"); // Key 


	data_rando_scene01("_00"+"_01"+"_01"+"_00"+"_00",rm, STR_FAIRY);








	//   --------------------------  03  --------------------------- 26
	//    
	rm_num  = $03;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PE+"003", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$15; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;
	row5=row0+$05; y5=row5<<3;
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($07<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($77<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRXM,Ra__A,$1,  $36<<3,y5); // Ra  1
	data_spawn(rm+STR_PRXM,Ra__A,$1,  $48<<3,y5); // Ra  1


	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  "02"+EXR0_); // LFT 0, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  "04"+EXL0_); // RGT 0, 


	data_spawn(rm+STR_PRIO,ItmF0,$4,  $4C<<3,(row0+$09)<<3); // PBag v4: 200


	//data_rando_scene01("_00"+"_01"+"_01"+"_00"+"_00",rm);







	//   --------------------------  04  --------------------------- 
	//    
	rm_num  = $04;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PE+"028", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;

	data_spawn(rm+STR_PRIO,TorchA,$1,  ($0B<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($6C<<3)+4,y3,  STR_Lit); // v1: Light w/ CANDLE or FIRE

	row4=row0+$09; y4=row4<<3;
	data_spawn(rm+STR_PRIO,LoDoA,$1,  $5E<<3,(row3-$02)<<3); // LockedDoor
	// mod. Added extra DropSpawners to farm magic if going back through rm 02
	data_spawn(rm+STR_PRXM,SpDrA,$1,  $1A<<3,y4); // DropSpawner  1
	data_spawn(rm+STR_PRXM,SpDrA,$1,  $32<<3,y4); // DropSpawner  1
	data_spawn(rm+STR_PRXM,SpDrA,$1,  $4A<<3,y4); // DropSpawner  1
	//data_spawn(rm+STR_PRXM,SpDrA,$1,  $38<<3,y4); // DropSpawner  1.  OG
	data_spawn(rm+STR_PRXM,IrKnA,$2,  $2E<<3,y3); // IronKnuckle  2
	data_spawn(rm+STR_PRXM,IrKnA,$2,  $46<<3,y3); // IronKnuckle  2


	clm3=$70; clm4=clm3-$04; clm5=clm3-$01; // clm3: elevator center clm
	data_exit(EXD0,etC0,1,  clm4,row_e2,  CLMS4,ROWS5,  clm5,row_e3,  "09"+EXU0_); // DWN 0, Elevator down 
	data_Elev(EXD0_,  clm3,row_e5, "03");                                    // Elevator DW $40, 
	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  "03"+EXR0_); // LFT 0, 


	data_rando_scene01("_00"+"_00"+"_01"+"_01"+"_00",rm);








	//   --------------------------  05  --------------------------- 28
	//    
	rm_num  = $05;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PE+"005", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3;
	row4=row0+$0B; y4=row4<<3;
	row5=row3+$01; y5=row5<<3;

	data_spawn(rm+STR_PRIO,TorchA,$1,  ($12<<3)+4,y3,  STR_Qualified+STR_Quest+STR_Nums+"01"); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($77<<3)+4,(row4+$01)<<3,  STR_Qualified+STR_Quest+STR_Nums+"01"); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  $34<<3,y5); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  $4C<<3,y5); // v1: Light w/ CANDLE or FIRE

	data_spawn(rm+STR_PRIO,LoDoA,$1,  $22<<3,(row3-$02)<<3); // LockedDoor
	data_spawn(rm+STR_PRXM,IrKnA,$1,  $1E<<3,y3); // IronKnuckle  1
	data_spawn(rm+STR_PRXM,IrKnA,$3,  $3A<<3,y3); // IronKnuckle  3
	data_spawn(rm+STR_PRXM,IrKnA,$2,  $68<<3,(row0+$0B)<<3); // IronKnuckle  2


	clm3=$10; clm4=clm3-$04; clm5=clm3-$01; // clm3: elevator center clm
	data_exit(EXD0,etC0,1,  clm4,row_e2,  CLMS4,ROWS5,  clm5,row_e3,  "0B"+EXU0_); // DWN 0, Elevator down 
	data_Elev(EXD0_,  clm3,row_e5, "03");                                    // Elevator DW $40, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row4,  "06"+EXL0_); // RGT 0, 


	data_rando_scene01("_00"+"_01"+"_00"+"_01"+"_00",rm);








	//   --------------------------  06  --------------------------- 
	//   -------------------------  GOOMA  -------------------------- 
	rm_num  = $06;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PE+"006", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$15; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;

	data_spawn(rm+STR_PRIO,TorchA,$1,  $0F<<3,y4,  STR_Lit,STR_Qualified+STR_Quest+STR_Nums+"01"); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  $51<<3,y4,  STR_Lit,STR_Qualified+STR_Quest+STR_Nums+"01"); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  $5F<<3,y4,  STR_Lit,STR_Qualified+STR_Quest+STR_Nums+"01"); // v1: Light w/ CANDLE or FIRE
	//                                                                                                  //
	data_spawn(rm+STR_PRIO,TorchA,$1,  $0F<<3,y4,  STR_Qualified+STR_Quest+STR_Nums+"02"); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  $51<<3,y4,  STR_Qualified+STR_Quest+STR_Nums+"02"); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  $5F<<3,y4,  STR_Qualified+STR_Quest+STR_Nums+"02"); // v1: Light w/ CANDLE or FIRE

	clm3=$30; // clm3: arena center clm
	data_spawn(rm+STR_PRIO,GoomA,$1,  (clm3+$0F)<<3,y3,  STR_Arena+"_x"+hex_str(clm3<<3)); // Gooma  1
	data_spawn(rm+STR_PRIO,CrHoA,$1,  CRYSTALHOLDER_XL,y3); // CrystalHolder  1
	g.dm_rm[?STR_Boss+STR_Scene+STR_Name+_DUNGEON_NAME] = rm;


	_exit=data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  "05"+EXR0_); // LFT 0, 
	g.dm_rm[?_DUNGEON_NAME+STR_Boss+STR_Scene+STR_Entrance+STR_Exit] = _exit;

	_exit=data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  0);         // RGT 0, to Overworld 
	g.dm_rm[?STR_Boss+STR_Dungeon+STR_Exit+STR_Name+_DUNGEON_NAME] = _exit;


	set_rm_data_1a(rm_name, area_PE+"026", 2); // 026: 2nd Quest. Spikes on floor








	//   --------------------------  07  --------------------------- 2A
	//    
	rm_num  = $07;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PE+"005", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3;
	row4=row0+$0B; y4=row4<<3;

	data_spawn(rm+STR_PRIO,TorchA,$1,  ($12<<3)+4,y3,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($77<<3)+4,(row4+$01)<<3,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,BlazA,$2,  ($2E<<3)+4,y3); // Blaze v2
	data_spawn(rm+STR_PRIO,SpStA,$1,  $54<<3,(row0+$0D)<<3); // SpawnByStab  1
	//data_spawn(rm+STR_PRXM,Moa_B,$1,  $1E<<3,(row0+$0B)<<3); // FieryMoa  1
	data_spawn(rm+STR_PRXM,IrKnA,$1,  $20<<3,y3); // IronKnuckle  1
	data_spawn(rm+STR_PRXM,IrKnA,$1,  $3C<<3,y3); // IronKnuckle  1
	data_spawn(rm+STR_PRXM,IrKnA,$1,  $6A<<3,y4); // IronKnuckle  1


	clm3=$10; clm4=clm3-$04; clm5=clm3-$01; // clm3: elevator center clm
	data_exit(EXD0,etC0,1,  clm4,row_e2,  CLMS4,ROWS5,  clm5,row_e3,  "0D"+EXU0_); // DWN 0, Elevator down 
	data_Elev(EXD0_,  clm3,row_e5);                                          // Elevator DW $40, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row4,  "08"+EXL0_); // RGT 0, 


	data_rando_scene01("_00"+"_01"+"_00"+"_01"+"_00",rm);








	//   --------------------------  08  --------------------------- 
	//    
	rm_num  = $08;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PE+"007", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$16; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;

	data_spawn(rm+STR_PRIO,TorchA,$1,  ($07<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($77<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE

	data_spawn(rm+STR_PRIO,Spawner_FallingBlock,$1,  $36<<3,(row0+$06)<<3); // BlockSpawner  1
	data_spawn(rm+STR_PRXM,Moa_B,$1,  $1E<<3,(row0+$10)<<3); // FieryMoa  1


	row3=row0+$16;
	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  "07"+EXR0_); // LFT 0, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  "09"+EXL0_); // RGT 0, 


	data_spawn(rm+STR_PRIO,ItmD0,$1,  $40<<3,(row0+$06)<<3,  STR_Treasure+STR_Map+"02"); // Key 


	data_rando_scene01("_00"+"_01"+"_01"+"_00"+"_00",rm, STR_GLOVE);








	//   --------------------------  09  --------------------------- 2C
	//    
	rm_num  = $09;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PE+"008", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;
	data_spawn(rm+STR_PRIO,TorchA,$1,  $08<<3,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($4C<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($52<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  $78<<3,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRXM,BubbA,$1,  $1E<<3,(row0+$0B)<<3); // Bubble  1
	data_spawn(rm+STR_PRXM,MagoA,$1,  $24<<3,y3); // Mago  1
	data_spawn(rm+STR_PRXM,MagoA,$1,  $68<<3,y3); // Mago  1


	clm3=$50; clm4=clm3-$04; clm5=clm3-$01; // clm3: elevator center clm
	data_exit(EXU0,etC0,1,  clm4,row_e0,  CLMS4,ROWS5,  clm5,row_e1,  "04"+EXD0_); // UP  0, Elevator up  
	data_Elev(EXU0_,  clm3,row_e5);                                          // Elevator UP $80, 
	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  "08"+EXR0_); // LFT 0, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  "0A"+EXL0_); // RGT 0, 


	data_rando_scene01("_00"+"_01"+"_01"+"_00"+"_01",rm);








	//   --------------------------  0A  --------------------------- 
	//    
	rm_num  = $0A;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PE+"009", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;
	x3=($0C<<3)+4; _dist=$18<<3; _a=0;
	data_spawn(rm+STR_PRIO,TorchA,$1,  x3+(_dist*_a++),y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  x3+(_dist*_a++),y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  x3+(_dist*_a++),y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  x3+(_dist*_a++),y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,SpDrA,$1,  $6E<<3,(row0+$09)<<3); // DropSpawner  1
	data_spawn(rm+STR_PRXM,AnerA,$2,  $18<<3,y3); // Aneru  2
	data_spawn(rm+STR_PRXM,AnerA,$2,  $30<<3,y3); // Aneru  2
	data_spawn(rm+STR_PRXM,AnerA,$2,  $48<<3,y3); // Aneru  2
	data_spawn(rm+STR_PRXM,AnerA,$2,  $60<<3,y3); // Aneru  2
	data_spawn(rm+STR_PRXM,Myu_A,$1,  $26<<3,y3); // Myu  1
	data_spawn(rm+STR_PRXM,Myu_A,$1,  $42<<3,y3); // Myu  1


	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  "09"+EXR0_); // LFT 0, 


	data_spawn(rm+STR_PRIO,CONT_PIECE_OBJ_MP,CONT_PIECE_OBJ_VER_MP,  $73<<3,y3,  STR_Treasure+STR_Map+"02"); // MAGIC PIECE
	//data_spawn(rm+STR_PRIO,CONT_PIECE_OBJ_HP,CONT_PIECE_OBJ_VER_HP,  $73<<3,y3,  STR_Treasure+STR_Map+"02"); // HEART PIECE


	data_rando_scene01("_00"+"_00"+"_01"+"_00"+"_00",rm);








	//   --------------------------  0B  --------------------------- 2E
	//    
	rm_num  = $0B;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PE+"010", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($19<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($4C<<3)+4,y3,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($52<<3)+4,y3,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($78<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE

	data_spawn(rm+STR_PRIO,SpStA,$1,  $60<<3,(row0+$11)<<3); // SpawnByStab  1
	data_spawn(rm+STR_PRXM,IrKnA,$2,  $1A<<3,(row0+$17)<<3); // IronKnuckle  2
	data_spawn(rm+STR_PRXM,GumaA,$1,  $70<<3,(row0+$0F)<<3); // Guma  1
	data_spawn(rm+STR_PRXM,BubbA,$1,  $16<<3,(row0+$0D)<<3); // Bubble  1
	data_spawn(rm+STR_PRXM,BubbA,$1,  $36<<3,(row0+$0D)<<3); // Bubble  1


	clm3=$50; clm4=clm3-$04; clm5=clm3-$01; // clm3: elevator center clm
	data_exit(EXU0,etC0,1,  clm4,row_e0,  CLMS4,ROWS5,  clm5,row_e1,  "05"+EXD0_); // UP  0, Elevator up  
	data_exit(EXD0,etC0,1,  clm4,row_e2,  CLMS4,ROWS5,  clm5,row_e3,  "12"+EXU0_); // DWN 0, Elevator down 
	data_Elev(EXD0_+EXU0_,  clm3,row_e5);                                    // Elevator DW $40, UP $80, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  "0C"+EXL0_); // RGT 0, 


	data_spawn(rm+STR_PRIO,ItmF0,$4,  $0C<<3,(row0+$0F)<<3); // PBag v4: 200


	//data_rando_scene01("_00"+"_01"+"_00"+"_01"+"_01",rm, STR_GLOVE+STR_JUMP+STR_STABDOWN+STR_STABUP);








	//   --------------------------  0C  --------------------------- 
	//    
	rm_num  = $0C;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PE+"011", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;

	data_spawn(rm+STR_PRIO,TorchA,$1,  ($09<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($75<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($4C<<3)+4,y3,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($52<<3)+4,y3,  STR_Lit); // v1: Light w/ CANDLE or FIRE

	row5=row0+$09; y5=row5<<3;
	row6=row0+$0B; y6=row6<<3;
	data_spawn(rm+STR_PRIO,LoDoA,$1,  $26<<3,(row0+$15)<<3); // LockedDoor
	data_spawn(rm+STR_PRIO,SpDrA,$1,  $46<<3,y5); // DropSpawner  1
	data_spawn(rm+STR_PRIO,SpDrA,$1,  $58<<3,y5); // DropSpawner  1
	data_spawn(rm+STR_PRXM,BubbA,$1,  $1C<<3,y6); // Bubble  1
	data_spawn(rm+STR_PRXM,BubbA,$1,  $2C<<3,(row0+$09)<<3); // Bubble  1
	data_spawn(rm+STR_PRXM,BubbA,$1,  $42<<3,y6); // Bubble  1
	data_spawn(rm+STR_PRXM,BubbA,$1,  $72<<3,y6); // Bubble  1


	clm3=$50; clm4=clm3-$04; clm5=clm3-$01; // clm3: elevator center clm
	data_exit(EXD0,etC0,1,  clm4,row_e2,  CLMS4,ROWS5,  clm5,row_e3,  "13"+EXU0_); // DWN 0, Elevator down 
	data_Elev(EXD0_, clm3,row_e5);                                                 // Elevator DW $40, 
	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  "0B"+EXR0_); // LFT 0, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  "0D"+EXL0_); // RGT 0, 


	data_spawn(rm+STR_PRIO,ItmF0,$4,  $4E<<3,(row0+$0D)<<3); // PBag v4: 200


	//data_rando_scene01("_00"+"_01"+"_01"+"_01"+"_00",rm, STR_JUMP);








	//   --------------------------  0D  --------------------------- 30
	//    
	rm_num  = $0D;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PE+"012", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;

	data_spawn(rm+STR_PRIO,TorchA,$1,  ($07<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($77<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($4C<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($52<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE

	data_spawn(rm+STR_PRXM,MagoA,$1,  $16<<3,y3); // Mago  1
	data_spawn(rm+STR_PRXM,MagoA,$1,  $3C<<3,y3); // Mago  1
	data_spawn(rm+STR_PRXM,MagoA,$1,  $6A<<3,y3); // Mago  1
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $1A<<3,y3); // Bot  1
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $32<<3,y3); // Bot  1
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $74<<3,y3); // Bot  1


	clm3=$50; clm4=clm3-$04; clm5=clm3-$01; // clm3: elevator center clm
	data_exit(EXU0,etC0,1,  clm4,row_e0,  CLMS4,ROWS5,  clm5,row_e1,  "07"+EXD0_); // UP  0, Elevator up  
	data_Elev(EXU0_, clm3,row_e5);                                           // Elevator UP $80, 
	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  "0C"+EXR0_); // LFT 0, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  "0E"+EXL0_); // RGT 0, 


	data_rando_scene01("_00"+"_01"+"_01"+"_00"+"_01",rm);








	//   --------------------------  0E  --------------------------- 
	//    
	rm_num  = $0E;
	set_rm_data(area+hex_str(rm_num), mus0, STR_Tile+area_PE+"013", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$11; y3=row3<<3;
	data_spawn(rm+STR_PRIO,SpBaA,$1,  $1E<<3,(row0+$07)<<3); // BagoSpawner  1
	data_spawn(rm+STR_PRXM,IrKnA,$2,  $34<<3,y3); // IronKnuckle  2
	data_spawn(rm+STR_PRXM,IrKnA,$2,  $4E<<3,y3); // IronKnuckle  2


	row3=row0+$17;
	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  "0D"+EXR0_); // LFT 0, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  "0F"+EXL0_); // RGT 0, 


	data_rando_scene01("_00"+"_01"+"_01"+"_00"+"_00",rm);








	//   --------------------------  0F  --------------------------- 32
	//    
	rm_num  = $0F;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PE+"014", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;

	data_spawn(rm+STR_PRIO,TorchA,$1,  ($07<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($77<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE

	data_spawn(rm+STR_PRIO,SpStA,$1,  $54<<3,(row0+$11)<<3); // SpawnByStab  1
	data_spawn(rm+STR_PRXM,IrKnA,$3,  $46<<3,y3); // IronKnuckle  3
	data_spawn(rm+STR_PRXM,WosuA,$1,  $1E<<3,y3); // Wosu  1
	data_spawn(rm+STR_PRXM,BubbA,$22,  $6B<<3,(row0+$0F)<<3,  STR_Direction+hex_str($4)); // Bubble  v$20: Bubble-cling
	data_spawn(rm+STR_PRXM,BubbA,$1,  $1C<<3,(row0+$0B)<<3); // Bubble  1


	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  "0E"+EXR0_); // LFT 0, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  "10"+EXL0_); // RGT 0, 


	data_spawn(rm+STR_PRIO,ItmD0,$1,  $6C<<3,(row0+$13)<<3,  STR_Treasure+STR_Map+"02"); // Key 








	//   --------------------------  10  --------------------------- 
	//    
	rm_num  = $10;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PE+"004", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;

	data_spawn(rm+STR_PRIO,TorchA,$1,  $03<<3,y4,  STR_Lit,STR_Qualified+STR_Quest+STR_Nums+"01"); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($6C<<3)+4,y3,  STR_Lit,STR_Qualified+STR_Quest+STR_Nums+"01"); // v1: Light w/ CANDLE or FIRE

	row4=row0+$0B; y4=row4<<3;
	row5=row3-$02; y5=row5<<3;
	x3=$14<<3; _dist=$0C<<3; _i=0;
	data_spawn(rm+STR_PRIO,BlazA,$1,  (x3+(_dist*(_i++)))+4,y5,  STR_Qualified+STR_Quest+STR_Nums+"02"); // Blaze  1
	data_spawn(rm+STR_PRIO,BlazA,$1,  (x3+(_dist*(_i++)))+4,y5,  STR_Qualified+STR_Quest+STR_Nums+"02"); // Blaze  1
	data_spawn(rm+STR_PRIO,BlazA,$1,  (x3+(_dist*(_i++)))+4,y5,  STR_Qualified+STR_Quest+STR_Nums+"02"); // Blaze  1
	data_spawn(rm+STR_PRIO,BlazA,$1,  (x3+(_dist*(_i++)))+4,y5,  STR_Qualified+STR_Quest+STR_Nums+"02"); // Blaze  1
	data_spawn(rm+STR_PRIO,BlazA,$1,  (x3+(_dist*(_i++)))+4,y5,  STR_Qualified+STR_Quest+STR_Nums+"02"); // Blaze  1
	data_spawn(rm+STR_PRIO,BlazA,$1,  (x3+(_dist*(_i++)))+4,y5,  STR_Qualified+STR_Quest+STR_Nums+"02"); // Blaze  1
	data_spawn(rm+STR_PRXM,StalA,$2,  $16<<3,y4); // Stalfos  2
	data_spawn(rm+STR_PRXM,StalA,$2,  $2E<<3,y4); // Stalfos  2
	data_spawn(rm+STR_PRXM,StalA,$2,  $46<<3,y4); // Stalfos  2


	clm3=$70; clm4=clm3-$04; clm5=clm3-$01; // clm3: elevator center clm
	data_exit(EXD0,etC0,1,  clm4,row_e2,  CLMS4,ROWS5,  clm5,row_e3,  "17"+EXU0_); // DWN 0, Elevator down 
	data_Elev(EXD0_, clm3,row_e5);                                           // Elevator DW $40, 
	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  "0F"+EXR0_); // LFT 0, 


	data_rando_scene01("_00"+"_00"+"_01"+"_01"+"_00",rm);








	//   --------------------------  11  --------------------------- 34
	//    
	rm_num  = $11;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PE+"022", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$13; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;

	data_spawn(rm+STR_PRIO,TorchA,$1,  $04<<3,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  $7A<<3,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE

	//                                                              //
	data_spawn(rm+STR_PRXM,Moa_B,$1,  $10<<3,(row0+$0B)<<3); // FieryMoa  1
	data_spawn(rm+STR_PRXM,Moa_B,$1,  $50<<3,(row0+$0B)<<3); // FieryMoa  1
	//                                                              //
	data_spawn(rm+STR_PRIO,BubbA,$12,  $09<<3,(row0+$11)<<3,  STR_Qualified+STR_Quest+STR_Nums+"02"); // Bubble v$10(dormant)
	data_spawn(rm+STR_PRIO,BubbA,$12,  $0C<<3,(row0+$0F)<<3); // Bubble v$10(dormant)
	data_spawn(rm+STR_PRIO,BubbA,$12,  $10<<3,(row0+$11)<<3,  STR_Qualified+STR_Quest+STR_Nums+"02"); // Bubble v$10(dormant)
	data_spawn(rm+STR_PRIO,BubbA,$12,  $14<<3,(row0+$0B)<<3,  STR_Qualified+STR_Quest+STR_Nums+"02"); // Bubble v$10(dormant)
	//                                                              //
	data_spawn(rm+STR_PRIO,BubbA,$12,  $18<<3,(row0+$13)<<3); // Bubble v$10(dormant)
	data_spawn(rm+STR_PRIO,BubbA,$12,  $1C<<3,(row0+$11)<<3); // Bubble v$10(dormant)
	data_spawn(rm+STR_PRIO,BubbA,$12,  $1F<<3,(row0+$15)<<3,  STR_Qualified+STR_Quest+STR_Nums+"02"); // Bubble v$10(dormant)
	data_spawn(rm+STR_PRIO,BubbA,$12,  $22<<3,(row0+$11)<<3,  STR_Qualified+STR_Quest+STR_Nums+"02"); // Bubble v$10(dormant)
	//                                                              //
	data_spawn(rm+STR_PRIO,BubbA,$12,  $26<<3,(row0+$17)<<3); // Bubble v$10(dormant)
	data_spawn(rm+STR_PRIO,BubbA,$12,  $2A<<3,(row0+$10)<<3,  STR_Qualified+STR_Quest+STR_Nums+"02"); // Bubble v$10(dormant)
	data_spawn(rm+STR_PRIO,BubbA,$12,  $2C<<3,(row0+$11)<<3); // Bubble v$10(dormant)
	data_spawn(rm+STR_PRIO,BubbA,$12,  $2F<<3,(row0+$0E)<<3,  STR_Qualified+STR_Quest+STR_Nums+"02"); // Bubble v$10(dormant)
	//                                                              //
	data_spawn(rm+STR_PRIO,BubbA,$12,  $32<<3,(row0+$15)<<3,  STR_Qualified+STR_Quest+STR_Nums+"02"); // Bubble v$10(dormant)
	data_spawn(rm+STR_PRIO,BubbA,$12,  $34<<3,(row0+$12)<<3); // Bubble v$10(dormant)
	data_spawn(rm+STR_PRIO,BubbA,$12,  $38<<3,(row0+$15)<<3); // Bubble v$10(dormant)
	data_spawn(rm+STR_PRIO,BubbA,$12,  $3D<<3,(row0+$11)<<3,  STR_Qualified+STR_Quest+STR_Nums+"02"); // Bubble v$10(dormant)
	//                                                              //
	data_spawn(rm+STR_PRIO,BubbA,$12,  $3F<<3,(row0+$0D)<<3); // Bubble v$10(dormant)
	data_spawn(rm+STR_PRIO,BubbA,$12,  $42<<3,(row0+$15)<<3,  STR_Qualified+STR_Quest+STR_Nums+"02"); // Bubble v$10(dormant)
	data_spawn(rm+STR_PRIO,BubbA,$12,  $48<<3,(row0+$15)<<3,  STR_Qualified+STR_Quest+STR_Nums+"02"); // Bubble v$10(dormant)
	data_spawn(rm+STR_PRIO,BubbA,$12,  $4A<<3,(row0+$11)<<3); // Bubble v$10(dormant)
	//                                                              //
	data_spawn(rm+STR_PRIO,BubbA,$12,  $50<<3,(row0+$0F)<<3,  STR_Qualified+STR_Quest+STR_Nums+"02"); // Bubble v$10(dormant)
	data_spawn(rm+STR_PRIO,BubbA,$12,  $54<<3,(row0+$10)<<3,  STR_Qualified+STR_Quest+STR_Nums+"02"); // Bubble v$10(dormant)


	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,ROWS6,  CLM3,row3,  "1D"+EXR0_); // LFT 0, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,ROWS6,  clmA,row3,  "12"+EXL0_); // RGT 0, 


	data_rando_scene01("_00"+"_01"+"_01"+"_00"+"_00",rm, STR_JUMP);








	//   --------------------------  12  --------------------------- 
	//    
	rm_num  = $12;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PE+"016", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;

	data_spawn(rm+STR_PRIO,TorchA,$1,  ($13<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($27<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($3B<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($4F<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($6C<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($72<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE

	row4=row0+$0B; y4=row4<<3;
	data_spawn(rm+STR_PRXM,MagoA,$1,  $20<<3,y3); // Mago  1
	data_spawn(rm+STR_PRXM,MagoA,$1,  $3E<<3,y3); // Mago  1
	data_spawn(rm+STR_PRXM,MagoA,$1,  $5C<<3,y3); // Mago  1
	data_spawn(rm+STR_PRXM,BubbA,$1,  $16<<3,y4); // Bubble  1
	data_spawn(rm+STR_PRXM,BubbA,$1,  $52<<3,y4); // Bubble  1


	clm3=$70; clm4=clm3-$04; clm5=clm3-$01; // clm3: elevator center clm
	data_exit(EXU0,etC0,1,  clm4,row_e0,  CLMS4,ROWS5,  clm5,row_e1,  "0B"+EXD0_); // UP  0, Elevator up  
	data_Elev(EXU0_,  clm3,row_e5);                                          // Elevator UP $80, 
	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  "11"+EXR0_); // LFT 0, 


	data_spawn(rm+STR_PRIO,ItmF0,$5,  $30<<3,(row0+$0F)<<3); // PBag v5: 250


	//data_rando_scene01("_00"+"_00"+"_01"+"_00"+"_01",rm, STR_JUMP);









	//   --------------------------  13  --------------------------- 36
	//    
	rm_num  = $13;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PE+"010", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;
	row5=row0+$0F; y5=row5<<3;
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($19<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($4C<<3)+4,y3,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($52<<3)+4,y3,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($78<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRXM,IrKnA,$2,  $70<<3,y5); // IronKnuckle  2
	data_spawn(rm+STR_PRXM,GumaA,$1,  $30<<3,y5); // Guma  1
	data_spawn(rm+STR_PRXM,BubbA,$2,  $06<<3,(row0+$0B)<<3); // Bubble  2


	clm3=$50; clm4=clm3-$04; clm5=clm3-$01; // clm3: elevator center clm
	data_exit(EXU0,etC0,1,  clm4,row_e0,  CLMS4,ROWS5,  clm5,row_e1,  "0C"+EXD0_); // UP  0, Elevator up  
	data_exit(EXD0,etC0,1,  clm4,row_e2,  CLMS4,ROWS5,  clm5,row_e3,  "19"+EXU0_); // DWN 0, Elevator down 
	data_Elev(EXD0_+EXU0_,  clm3,row_e5);                                    // Elevator DW $40, UP $80, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  "14"+EXL0_); // RGT 0, 


	data_spawn(rm+STR_PRIO,ItmD0,$1,  $78<<3,y5,  STR_Treasure+STR_Map+"02"); // Key 
	data_spawn(rm+STR_PRIO,ItmF0,$4,  $0C<<3,y5); // PBag v4: 200








	//   --------------------------  14  --------------------------- 
	//    area_PE+'027': Room with floor spikes
	rm_num  = $14;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PE+"027", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;

	data_spawn(rm+STR_PRIO,TorchA,$1,  ($07<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($77<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE

	row4=row0+$0B; y4=row4<<3;
	row5=row3-$04; y5=row5<<3;
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $13<<3,y5); // Bot  1
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $29<<3,y5); // Bot  1
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $35<<3,y5); // Bot  1
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $49<<3,y5); // Bot  1
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $55<<3,y5); // Bot  1
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $6B<<3,y5); // Bot  1
	data_spawn(rm+STR_PRXM,BubbA,$2,  $16<<3,y4); // Bubble  1
	data_spawn(rm+STR_PRXM,BubbA,$2,  $52<<3,y4); // Bubble  1


	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  "13"+EXR0_); // LFT 0, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  "15"+EXL0_); // RGT 0, 


	data_rando_scene01("_00"+"_01"+"_01"+"_00"+"_00",rm, STR_JUMP);








	//   --------------------------  15  --------------------------- 38
	//    
	rm_num  = $15;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PE+"018", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;
	if (g.mod_P5HorseHead)
	{
	    data_spawn(rm+STR_PRIO,TorchA,$1,  ($07<<3)+4,y4); // v1: Light w/ CANDLE or FIRE
	    data_spawn(rm+STR_PRIO,TorchA,$1,  ($37<<3)+4,y4); // v1: Light w/ CANDLE or FIRE
	    data_spawn(rm+STR_PRIO,TorchA,$1,  ($77<<3)+4,y4); // v1: Light w/ CANDLE or FIRE
	    clm3=$20; // arena center clm
	    data_spawn(rm+STR_PRIO,HorsA,$1,  (clm3+$0B)<<3,(row0+$15)<<3,  STR_Arena+"_x"+hex_str(clm3<<3),  STR_Qualified+STR_Quest+STR_Nums+"02"); // Horsehead  1
	    data_spawn(rm+STR_PRXM,IrKnA,$3,  $38<<3,y3,  STR_Qualified+STR_Quest+STR_Nums+"01"); // IronKnuckle  3
	}
	else
	{
	    data_spawn(rm+STR_PRIO,TorchA,$1,  ($07<<3)+4,y4,  STR_Qualified+STR_Quest+STR_Nums+"01"); // v1: Light w/ CANDLE or FIRE
	    data_spawn(rm+STR_PRIO,TorchA,$1,  ($77<<3)+4,y4,  STR_Qualified+STR_Quest+STR_Nums+"01"); // v1: Light w/ CANDLE or FIRE
	    data_spawn(rm+STR_PRIO,TorchA,$1,  ($3C<<3)+4,y4,  STR_Qualified+STR_Quest+STR_Nums+"02"); // v1: Light w/ CANDLE or FIRE
	    data_spawn(rm+STR_PRXM,IrKnA,$3,  $38<<3,y3); // IronKnuckle  3
	}


	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  "14"+EXR0_); // LFT 0, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  "16"+EXL0_); // RGT 0, 



	if (g.mod_P5HorseHead) set_rm_data_1a(rm_name, area_PE+"029", 2); // 2nd Quest tile data. For HorseHead


	data_rando_scene01("_00"+"_01"+"_01"+"_00"+"_00",rm);








	//   --------------------------  16  --------------------------- 
	//    
	rm_num  = $16;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PE+"011", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;

	data_spawn(rm+STR_PRIO,TorchA,$1,  ($09<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($75<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($4C<<3)+4,y3,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($52<<3)+4,y3,  STR_Lit); // v1: Light w/ CANDLE or FIRE

	row5=row0+$09; y5=row5<<3;
	data_spawn(rm+STR_PRIO,SpDrA,$1,  $46<<3,y5); // DropSpawner  1
	data_spawn(rm+STR_PRIO,SpDrA,$1,  $58<<3,y5); // DropSpawner  1
	data_spawn(rm+STR_PRXM,MagoA,$1,  $12<<3,y3); // Mago  1
	data_spawn(rm+STR_PRXM,MagoA,$1,  $3A<<3,y3); // Mago  1
	data_spawn(rm+STR_PRXM,MagoA,$1,  $68<<3,y3); // Mago  1


	clm3=$50; clm4=clm3-$04; clm5=clm3-$01; // clm3: elevator center clm
	data_exit(EXD0,etC0,1,  clm4,row_e2,  CLMS4,ROWS5,  clm5,row_e3,  "1B"+EXU0_); // DWN 0, Elevator down 
	data_Elev(EXD0_,  clm3,row_e5);                                          // Elevator DW $40, 
	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  "15"+EXR0_); // LFT 0, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  "17"+EXL0_); // RGT 0, 


	data_rando_scene01("_00"+"_01"+"_01"+"_01"+"_00",rm);








	//   --------------------------  17  --------------------------- 3A
	//    
	rm_num  = $17;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PE+"016", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;

	data_spawn(rm+STR_PRIO,TorchA,$1,  ($13<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($27<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($3B<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($4F<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($6C<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($72<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE

	data_spawn(rm+STR_PRIO,SpStA,$1,  $36<<3,(row0+$13)<<3); // SpawnByStab  1
	data_spawn(rm+STR_PRXM,MagoA,$1,  $26<<3,(row0+$17)<<3); // Mago  1
	data_spawn(rm+STR_PRXM,MagoA,$1,  $4E<<3,(row0+$17)<<3); // Mago  1
	data_spawn(rm+STR_PRXM,WosuA,$1,  $0C<<3,(row0+$0F)<<3); // Wosu  1
	data_spawn(rm+STR_PRXM,WosuA,$1,  $48<<3,(row0+$0F)<<3); // Wosu  1


	clm3=$70; clm4=clm3-$04; clm5=clm3-$01; // clm3: elevator center clm
	data_exit(EXU0,etC0,1,  clm4,row_e0,  CLMS4,ROWS5,  clm5,row_e1,  "10"+EXD0_); // UP  0, Elevator up  
	data_Elev(EXU0_,  clm3,row_e5);                                          // Elevator UP $80, 
	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row0+$17,  "16"+EXR0_); // LFT 0, 


	data_rando_scene01("_00"+"_00"+"_01"+"_00"+"_01",rm);








	//   --------------------------  18  --------------------------- 
	//    
	rm_num  = $18;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PE+"015", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;

	data_spawn(rm+STR_PRIO,TorchA,$1,  ($33<<3)+4,y4); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($73<<3)+4,y4,  STR_Qualified+STR_Quest+STR_Nums+"01"); // v1: Light w/ CANDLE or FIRE

	row4=row0+$09; y4=row4<<3;
	row5=row0+$0F; y5=row5<<3;
	data_spawn(rm+STR_PRIO,SpStA,$1,  $22<<3,y5); // SpawnByStab  1
	data_spawn(rm+STR_PRIO,SpDrA,$1,  $28<<3,y4); // DropSpawner  1
	data_spawn(rm+STR_PRIO,SpDrA,$1,  $6C<<3,y4); // DropSpawner  1
	data_spawn(rm+STR_PRXM,IrKnA,$2,  $1C<<3,y3); // IronKnuckle  2
	data_spawn(rm+STR_PRXM,IrKnA,$2,  $42<<3,y5); // IronKnuckle  2
	data_spawn(rm+STR_PRXM,IrKnA,$2,  $5E<<3,y3); // IronKnuckle  2


	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  "19"+EXL0_); // RGT 0, 


	data_rando_scene01("_00"+"_01"+"_00"+"_00"+"_00",rm);








	//   --------------------------  19  --------------------------- 3C
	//    
	rm_num  = $19;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PE+"016", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;

	data_spawn(rm+STR_PRIO,TorchA,$1,  ($13<<3)+4,y4,  STR_Lit,STR_Qualified+STR_Quest+STR_Nums+"01"); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($27<<3)+4,y4); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($3B<<3)+4,y4); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($4F<<3)+4,y4); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($6C<<3)+4,y4,  STR_Qualified+STR_Quest+STR_Nums+"01"); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($72<<3)+4,y4,  STR_Lit,STR_Qualified+STR_Quest+STR_Nums+"01"); // v1: Light w/ CANDLE or FIRE

	row4=row0+$0B; y4=row4<<3;
	data_spawn(rm+STR_PRXM,Ra__A,$1,  $36<<3,y3); // Ra  1
	data_spawn(rm+STR_PRXM,Ra__A,$1,  $48<<3,y3); // Ra  1
	data_spawn(rm+STR_PRXM,BubbA,$1,  $16<<3,y4); // Bubble  1
	data_spawn(rm+STR_PRXM,BubbA,$1,  $38<<3,y4); // Bubble  1


	clm3=$70; clm4=clm3-$04; clm5=clm3-$01; // clm3: elevator center clm
	data_exit(EXU0,etC0,1,  clm4,row_e0,  CLMS4,ROWS5,  clm5,row_e1,  "13"+EXD0_); // UP  0, Elevator up  
	data_Elev(EXU0_, clm3,row_e5);                                           // Elevator UP $80, 
	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  "18"+EXR0_); // LFT 0, 


	data_rando_scene01("_00"+"_00"+"_01"+"_00"+"_01",rm);








	//   --------------------------  1A  --------------------------- 
	//   -------------------------  FLUTE  -------------------------- 
	rm_num  = $1A;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PE+"019", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;

	data_spawn(rm+STR_PRIO,TorchA,$1,  ($2F<<3)+4,y4); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($47<<3)+4,y4); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($5F<<3)+4,y4,  STR_Qualified+STR_Quest+STR_Nums+"01"); // v1: Light w/ CANDLE or FIRE
	//data_spawn(rm+STR_PRIO,TorchA,$1,  $78<<3,(row0+$14)<<3,  STR_Qualified+STR_Quest+STR_Nums+"01"); // v1: Light w/ CANDLE or FIRE

	data_spawn(rm+STR_PRIO,LoDoA,$1,  $24<<3,(row3-$02)<<3); // LockedDoor
	data_spawn(rm+STR_PRIO,SpStA,$1,  $78<<3,(row0+$0B)<<3); // SpawnByStab  1
	data_spawn(rm+STR_PRXM,IrKnA,$3,  $2A<<3,y3); // IronKnuckle  3
	data_spawn(rm+STR_PRXM,IrKnA,$1,  $4C<<3,y3); // IronKnuckle  1


	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row0+$13,  "1B"+EXL0_); // RGT 0, 


	data_spawn(rm+STR_PRIO,ItmA4,$1,  $12<<3,y3); // FLUTE


	data_rando_scene01("_00"+"_01"+"_00"+"_00"+"_00",rm);








	//   --------------------------  1B  --------------------------- 3E
	//    
	rm_num  = $1B;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PE+"016", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;

	data_spawn(rm+STR_PRIO,TorchA,$1,  ($13<<3)+4,y4,  STR_Lit,STR_Qualified+STR_Quest+STR_Nums+"01"); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($27<<3)+4,y4,  STR_Lit,STR_Qualified+STR_Quest+STR_Nums+"01"); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($3B<<3)+4,y4,  STR_Lit,STR_Qualified+STR_Quest+STR_Nums+"01"); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($4F<<3)+4,y4,  STR_Lit,STR_Qualified+STR_Quest+STR_Nums+"01"); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($6C<<3)+4,y4,  STR_Lit,STR_Qualified+STR_Quest+STR_Nums+"01"); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($72<<3)+4,y4,  STR_Lit,STR_Qualified+STR_Quest+STR_Nums+"01"); // v1: Light w/ CANDLE or FIRE
	//                                                                                                      //
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($27<<3)+4,y4,  STR_Qualified+STR_Quest+STR_Nums+"02"); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($3B<<3)+4,y4,  STR_Qualified+STR_Quest+STR_Nums+"02"); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($4F<<3)+4,y4,  STR_Qualified+STR_Quest+STR_Nums+"02"); // v1: Light w/ CANDLE or FIRE

	data_spawn(rm+STR_PRIO,LoDoA,$1,  $62<<3,(row0+$15)<<3); // LockedDoor
	data_spawn(rm+STR_PRIO,SpMaA,$1,  $1E<<3,(row0+$07)<<3); // MauSpawner  1
	data_spawn(rm+STR_PRXM,MagoA,$1,  $12<<3,y3); // Mago  1
	data_spawn(rm+STR_PRXM,MagoA,$1,  $2E<<3,y3); // Mago  1
	data_spawn(rm+STR_PRXM,MagoA,$1,  $54<<3,y3); // Mago  1


	clm3=$70; clm4=clm3-$04; clm5=clm3-$01; // clm3: elevator center clm
	data_exit(EXU0,etC0,1,  clm4,row_e0,  CLMS4,ROWS5,  clm5,row_e1,  "16"+EXD0_); // UP  0, Elevator up  
	data_Elev(EXU0_,  clm3,row_e5);                                          // Elevator UP $80, 
	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  "1A"+EXR0_); // LFT 0, 


	data_rando_scene01("_00"+"_00"+"_01"+"_00"+"_01",rm);









	//   --------------------------  1C  --------------------------- 
	//    
	rm_num      = $1C; 






	//   --------------------------  1D  --------------------------- 
	//    
	rm_num  = $1D;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PE+"023", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;

	data_spawn(rm+STR_PRIO,TorchA,$1,  $5A<<3,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE

	var _PI1 = PI_MOB_BLU; // For spinning spike trap to contrast w/ red walls of palace 3
	y3=(row0+$13)<<3; y4=(row0+$15)<<3;                   _a=0;
	data_spin_trap(SpTrC,1,  $50<<3,y4,  _PI1,  7,  1,5, (_a++)*90); // SpTrC: spins on chain
	data_spin_trap(SpTrC,1,  $40<<3,y3,  _PI1,  6, -1,3, (_a++)*90); // SpTrC: spins on chain
	data_spin_trap(SpTrC,1,  $30<<3,y4,  _PI1,  7,  1,4, (_a++)*90); // SpTrC: spins on chain
	data_spin_trap(SpTrC,1,  $20<<3,y3,  _PI1,  6, -1,3, (_a++)*90); // SpTrC: spins on chain
	data_spawn(rm+STR_PRXM,BubbA,$22,  $10<<3,(row0+$11)<<3,  STR_Direction+hex_str($4)); // v$20: Bubble-cling
	data_spawn(rm+STR_PRXM,BubbA,$22,  $20<<3,(row0+$19)<<3,  STR_Direction+hex_str($4)); // v$20: Bubble-cling
	data_spawn(rm+STR_PRXM,BubbA,$22,  $40<<3,(row0+$19)<<3,  STR_Direction+hex_str($4)); // v$20: Bubble-cling
	data_spawn(rm+STR_PRXM,BubbA,$22,  $2E<<3,(row0+$0B)<<3,  STR_Direction+hex_str($4)); // v$20: Bubble-cling
	data_spawn(rm+STR_PRXM,BubbA,$22,  $4E<<3,(row0+$0B)<<3,  STR_Direction+hex_str($4)); // v$20: Bubble-cling


	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  "11"+EXL0_); // RGT 0, 


	data_spawn(rm+STR_PRIO,ItmD0,$1,  $0F<<3,(row0+$11)<<3,  STR_Treasure+STR_Map+"02"); // Key


	data_rando_scene01("_00"+"_01"+"_00"+"_00"+"_00",rm);








	//   --------------------------  1E  --------------------------- 
	//    
	rm_num  = $1E;




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
