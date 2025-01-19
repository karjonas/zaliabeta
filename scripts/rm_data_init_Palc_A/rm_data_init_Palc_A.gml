/// @description  rm_data_init_Palc_A()
function rm_data_init_Palc_A() {


	var _i, _a, _val, _dist;
	var _x,_y, _w,_h;
	var _clm,_row, _clms,_rows;
	var _pi, _obj,_ver;
	var _rm, _file, _exit, _owrc;
	var _page,_pages;
	var _data, _datakey,_dk;
	var _tsrc;
	var _ADJ1 = 4;

	map_clm_off =  0;
	map_row_off =  0;








	// *************************   PALACE 1   *************************** 
	// ------------------------------------------------------------------------------- 
	area = area_PA;

	var _DUNGEON_NUM  = $01;
	var _DUNGEON_NUM_ = hex_str(_DUNGEON_NUM);

	mus0 = STR_Dungeon+_DUNGEON_NUM_;
	//mus0 = MUS_DUNGEON1;

	var _DARK_DATA=STR_Dark+"01";
	ow_axis =  0; // 0:horizontal, 1:vertical


	var _DUNGEON_NAME = STR_Parapa_Palace;
	g.dm_dungeon[?STR_Dungeon+_DUNGEON_NUM_+STR_Name] = _DUNGEON_NAME;
	g.dm_dungeon[?STR_Dungeon+area         +STR_Name] = _DUNGEON_NAME;
	g.dm_dungeon[?STR_Dungeon+STR_Num+_DUNGEON_NAME]  = _DUNGEON_NUM;
	g.dm_dungeon[?STR_Dungeon+_DUNGEON_NUM_+STR_Area] = area;
	g.dm_dungeon[?_DUNGEON_NAME+STR_Area]             = area;







	//   --------------------------  00  --------------------------- 
	//    
	rm_num  = $00;
	set_rm_data(area+hex_str(rm_num), mus0, STR_Color+COLOR2_, STR_Tile+area_PA+"000", STR_ow_axis+hex_str(ow_axis));


	data_NIAO_1a(rm+STR_NIAO+"0",  $0000,  1,Cloud_1_init);
	data_spawn(rm+STR_PRIO,SpStA,$1,  $34<<3,(row0+$11)<<3); // SpawnByStab  2


	clm3=$70; clm4=clm3-$04; clm5=clm3-$01; // clm3: elevator center clm
	data_exit(EXD0,etC0,1,  clm4,row_e2,  CLMS4,ROWS5,  clm5,row_e3,  "04"+EXU0_); // DWN 0, Elevator down 
	data_Elev(EXD0_,  clm3,row_e5, "04");                                    // Elevator DW $40, 
	_exit=data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row0+$17,  0); // LFT 0, to Overworld  
	g.dm_rm[?get_dk_dungeon_entrance(_DUNGEON_NUM)] = _exit;
	      data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row0+$01,  "FD"+EXL0_); // RGT 0, 
	//

	data_spawn(rm+STR_PRIO,CONT_PIECE_OBJ_HP,CONT_PIECE_OBJ_VER_HP,  ($61<<3)+2,(row0+$03)<<3,  STR_Treasure+STR_Map+"01"); // HEART PIECE








	//   --------------------------  01  --------------------------- 
	//    
	rm_num  = $01;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PA+"001", STR_ow_axis+hex_str(ow_axis));


	y3=(row0+$0B)<<3;  y4=(row0+$17)<<3;
	data_spawn(rm+STR_PRIO,TorchA,$1,  $34<<3,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  $4C<<3,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  $68<<3,y3,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  $78<<3,y3,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRXM,WosuA,$1,  $44<<3,y4); // Wosu  1
	data_spawn(rm+STR_PRXM,WosuA,$1,  $6E<<3,y3); // Wosu  1


	clm3=$10; // elevator center clm
	clm4=clm3-$04;  clm5=clm3-$01;
	data_exit(EXU0,etC0,1,  clm4,row_e0,  CLMS4,ROWS5,  clm5,row_e1,  "FF"+EXD0_); // UP  0, Elevator up  
	data_exit(EXD0,etC0,1,  clm4,row_e2,  CLMS4,ROWS5,  clm5,row_e3,  "07"+EXU0_); // DWN 0, Elevator down 
	data_Elev(EXD0_+EXU0_,  clm3,row0+$14);                                  // Elevator DW $40, UP $80, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row0+$0B,  "02"+EXL0_); // RGT 0, 


	data_spawn(rm+STR_PRIO,ItmD0,$1,  $7A<<3,y3,  STR_Treasure+STR_Map+"01"); // Key 


	data_rando_scene01("_00"+"_01"+"_00"+"_01"+"_01",rm);








	//   --------------------------  02  --------------------------- 
	//    
	rm_num  = $02;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PA+"002", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($0C<<3)+4,y4); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($24<<3)+4,y4); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($3C<<3)+4,y4); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($54<<3)+4,y4); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $14<<3,y3); // Bot  1
	data_spawn(rm+STR_PRXM,WosuA,$1,  $2C<<3,y3); // Wosu  1
	data_spawn(rm+STR_PRXM,WosuA,$1,  $3C<<3,y3); // Wosu  1
	data_spawn(rm+STR_PRXM,GumaA,$1,  $70<<3,y3); // Guma  1
	data_spawn(rm+STR_PRIO,SpStA,$1,  $7A<<3,(row3-$04)<<3); // SpawnByStab  1


	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  "01"+EXR0_); // LFT 0, 


	data_spawn(rm+STR_PRIO,ItmD0,$1,  $78<<3,(row0+$16)<<3,  STR_Treasure+STR_Map+"01"); // Key


	data_rando_scene01("_00"+"_00"+"_01"+"_00"+"_00",rm);








	//   --------------------------  03  --------------------------- 
	//    
	rm_num  = $03;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PA+"013", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($33<<3)+4,y4); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRXM,StalA,$1,  $40<<3,(row0+$0B)<<3); // Stalfos  1
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $66<<3,(row0+$0D)<<3); // Bot  1
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $6A<<3,(row0+$11)<<3); // Bot  1


	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row0+$0B,  "FC"+EXR0_); // LFT 0, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  "04"+EXL0_); // RGT 0, 


	data_spawn(rm+STR_PRIO,ItmD0,$1,  $06<<3,y3,  STR_Treasure+STR_Map+"01"); // Key


	//data_rando_scene01("_00"+"_01"+"_01"+"_00"+"_00",rm, STR_GLOVE);









	//   --------------------------  04  --------------------------- 
	//    
	rm_num  = $04;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PA+"042", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3;
	y4=(row3+$01)<<3;
	y5=(row3-$01)<<3;
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($4C<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($52<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRXM,StalA,$1,  $20<<3,(row0+$0F)<<3); // Stalfos  1
	data_spawn(rm+STR_PRXM,WosuA,$1,  $28<<3,y5); // Wosu  1
	data_spawn(rm+STR_PRXM,WosuA,$1,  $72<<3,y5,  STR_Direction+string(-1)); // Wosu  1.  Data -1 means will always move left on spawn
	//data_spawn(rm+STR_PRIO,SpWoA,$1,  $00<<3,$00<<3); // WosuSpawner  1


	clm3=$50; // elevator center clm
	data_exit(EXU0,etC0,1,  clm3-4,row_e0,  CLMS4,ROWS5,  clm3-1,row_e1,  "00"+EXD0_); // UP  0, Elevator up 
	data_Elev(EXU0_, clm3,row0+$14);                                             // Elevator UP $80, 
	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  "03"+EXR0_); // LFT 0, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  "05"+EXL0_); // RGT 0, 


	data_rando_scene01("_00"+"_01"+"_01"+"_00"+"_01",rm);






	//   --------------------------  05  --------------------------- 
	//    
	rm_num  = $05;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PA+"005", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3; y4=(row3+$01)<<3;
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($27<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($57<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRXM,BubbA,$1,  $65<<3,(row0+$15)<<3,  STR_Direction+hex_str($2|$4)); // Bubble  1
	data_spawn(rm+STR_PRIO,SpWoA,$1,  $1E<<3,(row0+$07)<<3); // WosuSpawner  1
	data_spawn(rm+STR_PRIO,LoDoA,$1,  $25<<3,(row0+$15)<<3); // LockedDoor
	//data_spawn(rm+STR_PRIO,LoDoA,$1,  $22<<3,(row0+$15)<<3); // 


	data_exit(EXU0,etA4,0,  $04,row_e0,  $78,ROWS5,  $2F,row_e4,  "FD"+EXD0_); // UP  0, Pit up 
	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  "04"+EXR0_); // LFT 0,  
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  "06"+EXL0_); // RGT 0,  


	g.dm_rm[?MAP_DATAKEY1+rm+STR_Page+"00"+STR_TSRC]   = $41;
	g.dm_rm[?MAP_DATAKEY1+rm+STR_Page+"01"+STR_TSRC]   = $51;
	g.dm_rm[?MAP_DATAKEY1+rm+STR_Page+"01"+STR_ScaleY] = -1;


	//set_rm_data_2(rm, area_PA+'064');


	data_rando_scene01("_00"+"_01"+"_01"+"_00"+"_01"+STR_Pit+"8",rm);









	//   --------------------------  06  --------------------------- 
	//    
	rm_num  = $06;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PA+"006", STR_ow_axis+hex_str(ow_axis));


	y3=(row0+$18)<<3; y4=(row0+$17)<<3;
	//data_spawn(rm+STR_PRIO,TorchA,$1,  $08<<3,y3,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($23<<3)+4,y3,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($69<<3)+4,y3,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	//data_spawn(rm+STR_PRIO,TorchA,$1,  $78<<3,y3,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($4C<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($53<<3)-4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	y3=(row0+$19)<<3;
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $27<<3,y3); // Bot  1
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $6F<<3,y3); // Bot  1
	y3=(row0+$0B)<<3;
	data_spawn(rm+STR_PRXM,StalA,$1,  $2A<<3,y3); // Stalfos  1
	data_spawn(rm+STR_PRXM,StalA,$1,  $70<<3,y3); // Stalfos  1


	clm3=$50; // Elev center clm
	row3=row0+$17;
	data_exit(EXD0,etC0,1,  clm3-4,row_e2,  CLMS4,ROWS5,  clm3-1,row_e3,  "0A"+EXU0_); // DWN 0, Elevator down 
	data_Elev(EXD0_, clm3,row0+$14);                                             // Elevator DW $40, 
	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  "05"+EXR0_); // LFT 0, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  "07"+EXL0_); // RGT 0, 


	data_rando_scene01("_00"+"_01"+"_01"+"_01"+"_00",rm);








	//   --------------------------  07  --------------------------- 
	//    
	rm_num  = $07;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PA+"007", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($21<<3)+4,y4); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($4C<<3)+4,y3); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($53<<3)-4,y3); // v1: Light w/ CANDLE or FIRE
	y4=(row3+$02)<<3;
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $14<<3,y4); // Bot  1
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $28<<3,y4); // Bot  1
	y4=(row0+$0B)<<3;
	data_spawn(rm+STR_PRXM,BubbA,$1,  $10<<3,y4); // Bubble  1
	data_spawn(rm+STR_PRXM,StalA,$1,  $2D<<3,y4); // Stalfos  1
	data_spawn(rm+STR_PRIO,ReFaA,$1,  $6A<<3,(row0+$11)<<3); // RestoreFairy  1


	clm3=$50; // elevator center clm
	clm4=clm3-$04;  clm5=clm3-$01;
	data_exit(EXU0,etC0,1,  clm4,row_e0,  CLMS4,ROWS5,  clm5,row_e1,  "01"+EXD0_); // UP  0, Elevator up  
	data_exit(EXD0,etC0,1,  clm4,row_e2,  CLMS4,ROWS5,  clm5,row_e3,  "0B"+EXU0_); // DWN 0, Elevator down 
	data_Elev(EXD0_+EXU0_,  clm3,row0+$14);                                  // Elevator DW $40, UP $80, 
	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  "06"+EXR0_); // LFT 0, 


	data_rando_scene01("_00"+"_00"+"_01"+"_01"+"_01",rm);








	//   --------------------------  08  --------------------------- 
	//   ------------------------  CANDLE  ------------------------- 
	rm_num  = $08;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PA+"041", STR_ow_axis+hex_str(ow_axis));


	_val=$10; clm3=$38; row3=row0+$16; y3=row3<<3;
	data_spawn(rm+STR_PRIO,TorchA,$1,  ((clm3+(_val*0))<<3)+4,y3); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ((clm3+(_val*1))<<3)+4,y3); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ((clm3+(_val*2))<<3)+4,y3); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ((clm3+(_val*3))<<3)+4,y3); // v1: Light w/ CANDLE or FIRE
	//data_spawn(rm+STR_PRIO,TorchA,$1,  $79<<3,$14<<3); // v1: Light w/ CANDLE or FIRE

	row4=row0+$17; y4=row4<<3; y5=(row4+$02)<<3;
	data_spawn(rm+STR_PRIO,LoDoA,$1,  $24<<3,(row0+15)<<3); // LockedDoor
	data_spawn(rm+STR_PRXM,StalA,$1,  $30<<3,(row0+$0B)<<3); // Stalfos  1
	data_spawn(rm+STR_PRXM,GumaA,$1,  $58<<3,y4); // Guma  1


	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row4-$04,  "09"+EXL0_); // RGT 0, 


	data_spawn(rm+STR_PRIO,ItmA0,$1,  $12<<3,y4); // CANDLE. iID 0 


	data_rando_scene01("_00"+"_01"+"_00"+"_00"+"_00",rm);








	//   --------------------------  09  --------------------------- 
	//    
	rm_num  = $09;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PA+"009", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$16; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;
	row5=row0+$14; y5=row5<<3;
	row6=row5-$04; y6=row6<<3;
	data_spawn(rm+STR_PRIO,TorchA,$1,  $07<<3,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  $78<<3,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $0E<<3,y5); // Bot  1
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $12<<3,y6); // Bot  1
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $6C<<3,y6); // Bot  1
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $70<<3,y5); // Bot  1


	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  "08"+EXR0_); // LFT 0, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  "0A"+EXL0_); // RGT 0, 


	data_spawn(rm+STR_PRIO,ItmF0,$1,  $30<<3,(row0+$0C)<<3); // PBag 50 


	//data_rando_scene01("_00"+"_01"+"_01"+"_00"+"_00",rm);








	//   --------------------------  0A  --------------------------- 
	//    
	rm_num  = $0A;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PA+"010", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3;
	y4=(row3+1)<<3;
	x3=($13<<3)+4; _dist=$14<<3; _a=0;
	data_spawn(rm+STR_PRIO,TorchA,$1,  x3+(_dist*_a++),y4); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  x3+(_dist*_a++),y4); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  x3+(_dist*_a++),y4); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  x3+(_dist*_a++),y4); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($6C<<3)+4,y4); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($73<<3)-4,y4); // v1: Light w/ CANDLE or FIRE
	y4=(row0+$0B)<<3;
	data_spawn(rm+STR_PRXM,BubbA,$1,  $10<<3,y4); // Bubble  1
	data_spawn(rm+STR_PRXM,BubbA,$2,  $24<<3,y4); // Bubble  2:fast
	data_spawn(rm+STR_PRXM,BubbA,$1,  $38<<3,y4); // Bubble  1
	data_spawn(rm+STR_PRXM,BubbA,$1,  $4C<<3,y4); // Bubble  1


	clm3=$70; // elevator center clm
	data_exit(EXU0,etC0,1,  clm3-4,row_e0,  CLMS4,ROWS5,  clm3-1,row_e1,  "06"+EXD0_); // UP  0, Elevator up 
	data_Elev(EXU0_, clm3,row0+$14);                                             // Elevator UP $80, 
	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row0+$17,  "09"+EXR0_); // LFT 0, 


	data_rando_scene01("_00"+"_00"+"_01"+"_00"+"_01",rm);









	//   --------------------------  0B  --------------------------- 
	//    
	rm_num  = $0B;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PA+"011", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$0C; y3=row3<<3; y4=(row0+$18)<<3;
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($0C<<3)+4,y4); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($13<<3)-4,y4); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  $78<<3,y3); // v1: Light w/ CANDLE or FIRE

	data_spawn(rm+STR_PRXM,IrKnA,$1,  $30<<3,(row0+$17)<<3); // IronKnuckle  1
	data_spawn(rm+STR_PRXM,StalA,$1,  $56<<3,y3); // Stalfos  1
	data_spawn(rm+STR_PRXM,StalA,$1,  $6C<<3,y3); // Stalfos  1


	clm3=$10; // elevator center clm
	data_exit(EXU0,etC0,1,  clm3-4,row_e0,  CLMS4,ROWS5,  clm3-1,row_e1,  "07"+EXD0_); // UP  0, Elevator up 
	data_Elev(EXU0_, clm3,row0+$14);                                             // Elevator UP $80, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row0+$0B,  "0C"+EXL0_); // RGT 0, 


	data_rando_scene01("_00"+"_01"+"_00"+"_00"+"_01",rm);








	//   --------------------------  0C  --------------------------- 
	//    
	rm_num  = $0C;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PA+"229", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3; y4=(row3+$01)<<3;
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($27<<3)+4,y4); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($57<<3)+4,y4); // v1: Light w/ CANDLE or FIRE
	//data_spawn(rm+STR_PRIO,TorchA,$1,  $08<<3,y4); // v1: Light w/ CANDLE or FIRE
	//data_spawn(rm+STR_PRIO,TorchA,$1,  $78<<3,y4); // v1: Light w/ CANDLE or FIRE

	data_spawn(rm+STR_PRXM,GumaA,$1,  $20<<3,y3); // Guma  1
	data_spawn(rm+STR_PRXM,IrKnA,$1,  $6A<<3,y3); // IronKnuckle  1
	data_spawn(rm+STR_PRIO,LoDoA,$1,  $22<<3,(row0+$15)<<3); // LockedDoor


	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  "0B"+EXR0_); // LFT 0, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  "0D"+EXL0_); // RGT 0, 


	data_rando_scene01("_00"+"_01"+"_01"+"_00"+"_00",rm);








	//   --------------------------  0D  --------------------------- 
	//   -----------------------  HORSEHEAD  ------------------------ 
	rm_num  = $0D;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PA+"012", STR_ow_axis+hex_str(ow_axis));


	y3=(row0+$16)<<3;
	data_spawn(rm+STR_PRIO,TorchA,$1,  $0F<<3,y3); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  $50<<3,y3); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  $5F<<3,y3); // v1: Light w/ CANDLE or FIRE
	clm3=$30; // clm3: arena center clm
	data_spawn(rm+STR_PRIO,HorsA,$1,  (clm3+$10)<<3,(row0+$15)<<3,  STR_Arena+"_x"+hex_str(clm3<<3)); // Horsehead  1
	data_spawn(rm+STR_PRIO,CrHoA,$1,  CRYSTALHOLDER_XL,(row0+$16)<<3); // CrystalHolder  1
	g.dm_rm[?STR_Boss+STR_Scene+STR_Name+_DUNGEON_NAME] = rm;


	row3=row0+$15;
	_exit=data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  "0C"+EXR0_); // LFT 0, 
	g.dm_rm[?_DUNGEON_NAME+STR_Boss+STR_Scene+STR_Entrance+STR_Exit] = _exit;

	_exit=data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  0); // RGT 0, to Overworld 
	g.dm_rm[?STR_Boss+STR_Dungeon+STR_Exit+STR_Name+_DUNGEON_NAME] = _exit;






	//   --------------------------  0E  --------------------------- 
	//    
	rm_num      = $0E; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  0F  --------------------------- 
	//    
	rm_num      = $0F; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  10  --------------------------- 
	//    
	rm_num      = $10; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  11  --------------------------- 
	//    
	rm_num      = $11; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  12  --------------------------- 
	//    
	rm_num      = $12; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  13  --------------------------- 
	//    
	rm_num      = $13; 
	rm_name     = area + hex_str(rm_num); 


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
	rm_num      = $FB; 
	rm_name     = area + hex_str(rm_num); 


	//   --------------------------  FC  --------------------------- 
	//   
	rm_num  = $FC;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PA+"222", STR_ow_axis+hex_str(ow_axis));


	y3 = $19<<3;
	data_spawn(rm+STR_PRIO,TorchA,$1,  $09<<3,y3); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  $12<<3,y3); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  $1D<<3,y3); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  $22<<3,y3); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  $2D<<3,y3); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  $36<<3,y3); // v1: Light w/ CANDLE or FIRE


	clm3 = clms0+1;
	clm4 = -PAGE_CLMS;
	row3 = rows0-1;
	data_exit(EXD0,etA1,1,  clm4,row3,  clms1,ROWS5,  clm1,row3-4,  "00"+EXL0_); // DWN 0, Pit down  
	data_exit(EXR0,etA0,1,  clm3,-$20,  CLMS2,rows1,  clm3-5,row0+$13,  "03"+EXL0_); // RGT 0, 


	data_spawn(rm+STR_PRIO,Kakusu005,$1,  $0F<<3,$06<<3,  STR_Treasure+STR_Map+"01"); // $F,$6: Head of left-most pillar


	data_rando_scene01("_00"+"_01"+"_00"+"_01"+"_00"+STR_Pit+"4",rm);








	//   --------------------------  FD  --------------------------- 
	//   
	rm_num  = $FD;
	set_rm_data(area+hex_str(rm_num), mus0, STR_Color+COLOR2_, STR_Tile+area_PA+"253", STR_ow_axis+hex_str(ow_axis));


	data_NIAO_1a(rm+STR_NIAO+"0", $0000, 1, Cloud_1_init); // 
	data_spawn(rm+STR_PRIO,SpTrB,$2,  $19<<3,$10<<3,  STR_Speed+hex_str(3),STR_Direction+string(-1)); // SpikeTrapB v2: Short, Auto horizontal
	data_spawn(rm+STR_PRIO,SpTrB,$2,  $23<<3,$0C<<3,  STR_Speed+hex_str(2),STR_Direction+string(1)); // SpikeTrapB v2: Short, Auto horizontal
	data_spawn(rm+STR_PRIO,SpTrB,$2,  $38<<3,$0C<<3,  STR_Palette+hex_str(PI_MOB_RED),STR_Speed+hex_str(4),STR_Direction+string(-1)); // SpikeTrapB v2: Short, Auto horizontal
	data_spawn(rm+STR_PRIO,SpTrB,$2,  $48<<3,$08<<3,  STR_Speed+hex_str(1),STR_Direction+string(1)); // SpikeTrapB v2: Short, Auto horizontal
	data_spawn(rm+STR_PRIO,SpTrB,$2,  $56<<3,$08<<3,  STR_Speed+hex_str(2),STR_Direction+string(-1)); // SpikeTrapB v2: Short, Auto horizontal
	data_spawn(rm+STR_PRIO,SpTrB,$2,  $67<<3,$04<<3,  STR_Speed+hex_str(2),STR_Direction+string(1)); // SpikeTrapB v2: Short, Auto horizontal


	clm4 = -PAGE_CLMS;
	data_exit(EXD0,etA1,1,  clm4,row_e2,  clms1,ROWS5,  clm1,row2+2,  "05"+EXU0_); // DWN 0, Pit down 
	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,ROWS6,  CLM3,row0+$13,  "00"+EXR0_); // LFT 0, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,ROWS6,  clmA,row0+$02,  "FE"+EXL0_); // RGT 0, 


	g.dm_rm[?MAP_DATAKEY1+rm+STR_Page+"00"+STR_TSRC] = $41;
	g.dm_rm[?MAP_DATAKEY1+rm+STR_Page+"01"+STR_TSRC] = $50;
	g.dm_rm[?MAP_DATAKEY1+rm+STR_Page+"02"+STR_TSRC] = $51;


	data_rando_scene01("_00"+"_01"+"_01"+"_01"+"_00"+STR_Pit+"4",rm);








	//   --------------------------  FE  --------------------------- 
	//   
	rm_num  = $FE;
	set_rm_data(area+hex_str(rm_num), mus0, STR_Color+COLOR2_, STR_Tile+area_PA+"254", STR_ow_axis+hex_str(ow_axis));


	row3 =  row0+$1A; // ground lvl first 2 pages of rm
	y3   = (row0+$11)<<3;
	_pi  = PI_MOB_PUR;
	data_NIAO_1a(rm+STR_NIAO+"0",  $0000,  1,Cloud_1_init); // 
	data_spawn(rm+STR_PRXM,GlzmA,$1,  $12<<3,(row3-$E)<<3,  STR_Palette+hex_str(PI_MOB_RED)); // Gellzam
	data_spawn(rm+STR_PRXM,GeldA,$1,  $21<<3,y3,  STR_Palette+hex_str(_pi)); // Geldarm  1 
	data_spawn(rm+STR_PRXM,GeldA,$1,  $24<<3,y3,  STR_Palette+hex_str(_pi)); // Geldarm  1 
	data_spawn(rm+STR_PRXM,GeldA,$1,  $5D<<3,y3,  STR_Palette+hex_str(_pi)); // Geldarm  1 
	data_spawn(rm+STR_PRIO,SpRoA,$1,  0,0); // RockSpawner  1 


	clms3=$04; // bc of RockSpawner
	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,ROWS6,  CLM3+clms3,row0+$16,  "FD"+EXR0_); // LFT 0, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,ROWS6,  clmA-clms3,row0+$13,  "FF"+EXL0_); // RGT 0, 


	data_rando_scene01("_00"+"_01"+"_01"+"_00"+"_00",rm);








	//   --------------------------  FF  --------------------------- 
	//   
	rm_num  = $FF;
	set_rm_data(area+hex_str(rm_num), mus0, STR_Color+COLOR2_, STR_Tile+area_PA+"255", STR_ow_axis+hex_str(ow_axis));


	_pi = PI_MOB_PUR;
	y3  = (row0+$11)<<3;
	y4  = (row0+$14)<<3;
	data_NIAO_1a(rm+STR_NIAO+"0",  $0000,  1,Cloud_1_init); // 
	data_spawn(rm+STR_PRXM,GeldA,$1,  $1F<<3,y3,  STR_Palette+hex_str(_pi)); // Geldarm  1 
	data_spawn(rm+STR_PRXM,GeldA,$1,  $37<<3,y3,  STR_Palette+hex_str(_pi)); // Geldarm  1 
	data_spawn(rm+STR_PRXM,GeldA,$1,  $44<<3,y4,  STR_Palette+hex_str(_pi)); // Geldarm  1 
	data_spawn(rm+STR_PRXM,GeldA,$1,  $56<<3,y4,  STR_Palette+hex_str(_pi)); // Geldarm  1 
	data_spawn(rm+STR_PRXM,GlzmA,$1,  $31<<3,y3,  STR_Palette+hex_str(PI_MOB_RED)); // Gellzam


	clm3=$70; clm4=clm3-$04; clm5=clm3-$01; // clm3: Elevator center clm
	data_exit(EXD0,etC0,1,  clm4,row_e2,  CLMS4,ROWS5,  clm5,row_e3,  "01"+EXU0_); // DWN 0, Elevator down 
	data_Elev(EXD0_,  clm3,row0+$15, "02");                                        // Elevator DW $40, 
	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,ROWS6,  CLM3,row0+$13,  "FE"+EXR0_); // LFT 0, 


	data_rando_scene01("_00"+"_00"+"_01"+"_01"+"_00",rm);







}
