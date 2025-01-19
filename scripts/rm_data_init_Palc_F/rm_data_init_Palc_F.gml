function rm_data_init_Palc_F() {



	var _i, _a, _idx, _dist, _count;
	var _val, _val1, _val2, _val3, _val4, _val5, _val6;
	var _dir, _dir1,_dir2,_dir3,_dir4;
	var _x,_x1,_x2,_y,_yt,_y2,_y3, _w,_w2,_w3, _h,_h2,_h3;
	var _clm,_clm2, _row,_row2, _clms,_rows;
	var _pi, _obj;
	var _rm, _file, _data, _exit, _owrc;
	var _datakey; 









	// *************************   PALACE 6   *************************** 
	// ------------------------------------------------------------------------------- 
	area = area_PF;

	var _DUNGEON_NUM  = $06;
	var _DUNGEON_NUM_ = hex_str(_DUNGEON_NUM);

	mus0 = STR_Dungeon+_DUNGEON_NUM_;
	//mus0 = MUS_DUNGEON1;

	var _DARK_DATA=STR_Dark+"01";
	ow_axis =  0; // 0:horizontal, 1:vertical


	var _DUNGEON_NAME = STR_Three_Eye_Rock_Palace;
	g.dm_dungeon[?STR_Dungeon+_DUNGEON_NUM_+STR_Name] = _DUNGEON_NAME;
	g.dm_dungeon[?STR_Dungeon+area         +STR_Name] = _DUNGEON_NAME;
	g.dm_dungeon[?STR_Dungeon+STR_Num+_DUNGEON_NAME]  = _DUNGEON_NUM;
	g.dm_dungeon[?STR_Dungeon+_DUNGEON_NUM_+STR_Area] = area;
	g.dm_dungeon[?_DUNGEON_NAME+STR_Area]             = area;









	//   --------------------------  00  --------------------------- 24
	//    
	rm_num  = $00;
	set_rm_data(area+hex_str(rm_num), mus0, STR_Color+COLOR2_, STR_Tile+area_PF+"000", STR_ow_axis+hex_str(ow_axis));


	data_NIAO_1a(rm+STR_NIAO+"0",  $0000,  1,Cloud_1_init);
	data_spawn(rm+STR_PRIO,SpStA,$2,  $34<<3,(row0+$11)<<3); // SpawnByStab  2


	clm3=$70; clm4=clm3-$04; clm5=clm3-$01; // clm3: elevator center clm
	data_exit(EXD0,etC0,1,  clm4,row_e2,  CLMS4,ROWS5,  clm5,row_e3,  "02"+EXU0_); // DWN 0, Elevator down 
	data_Elev(EXD0_,  clm3,row_e5, "04");                                    // Elevator DW $40, 
	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row0+$17,  0); // LFT 0, to Overworld  
	g.dm_rm[?get_dk_dungeon_entrance(_DUNGEON_NUM)] = exit_name_l0;


	data_rando_scene01("_00"+"_00"+"_01"+"_01"+"_00",rm);








	//   --------------------------  01  --------------------------- 
	//    
	rm_num  = $01;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PF+"034", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$10; y3=row3<<3;
	row4=row3+$02; y4=row4<<3;

	data_spawn(rm+STR_PRIO,TorchA,$1,  ($37<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($57<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($77<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE

	row4=row3-$07; y4=row4<<3; // highest row for spiketrap
	_val1=hex_str($00<<3); _val2=_val1; // idle duration
	_dir3=$8; _val3=$04<<3;
	_dir4=$8; _val4=$05<<3;
	_dir5=$4; _val5=_val3;

	data_spawn(rm+STR_PRIO,SpTrA,$1,  $28<<3,(row4+$00)<<3,  STR_Duration+_val1,STR_Speed+hex_str(_val4),STR_Direction+hex_str(_dir4)); // SpikeTrapA $1
	data_spawn(rm+STR_PRIO,SpTrA,$1,  $2D<<3,(row4+$04)<<3,  STR_Duration+_val1,STR_Speed+hex_str(_val3),STR_Direction+hex_str(_dir3)); // SpikeTrapA $1
	//                                                                                                                      //
	data_spawn(rm+STR_PRIO,SpTrA,$1,  $41<<3,(row4+$00)<<3,  STR_Duration+_val1,STR_Speed+hex_str(_val4),STR_Direction+hex_str(_dir4)); // SpikeTrapA $1
	data_spawn(rm+STR_PRIO,SpTrA,$1,  $47<<3,(row4+$03)<<3,  STR_Duration+_val1,STR_Speed+hex_str(_val3),STR_Direction+hex_str(_dir3)); // SpikeTrapA $1
	data_spawn(rm+STR_PRIO,SpTrA,$1,  $4D<<3,(row4+$06)<<3,  STR_Duration+_val1,STR_Speed+hex_str(_val3),STR_Direction+hex_str(_dir3)); // SpikeTrapA $1
	//                                                                                                                      //
	data_spawn(rm+STR_PRIO,SpTrA,$1,  $61<<3,(row4+$00)<<3,  STR_Duration+_val1,STR_Speed+hex_str(_val3),STR_Direction+hex_str(_dir3)); // SpikeTrapA $1
	data_spawn(rm+STR_PRIO,SpTrA,$1,  $69<<3,(row4+$06)<<3,  STR_Duration+_val1,STR_Speed+hex_str(_val3),STR_Direction+hex_str(_dir3)); // SpikeTrapA $1
	data_spawn(rm+STR_PRIO,SpTrA,$1,  $71<<3,(row4+$05)<<3,  STR_Duration+_val1,STR_Speed+hex_str(_val5),STR_Direction+hex_str(_dir5)); // SpikeTrapA $1

	/*
	row4=row3-$07; y4=row4<<3; // highest row for spiketrap
	_val1=hex_str($00<<3); _val2=_val1; // idle duration
	_val3=hex_str($04<<3); _val4=hex_str($05<<3); _val5=hex_str(byte_negate(str_hex(_val3))); // speed

	data_spawn(rm+STR_PRIO,SpTrA,$2,  $28<<3,(row4+$00)<<3,  STR_Duration+_val1,STR_Speed+_val4); // SpikeTrapA. v2: Vertical
	data_spawn(rm+STR_PRIO,SpTrA,$2,  $2D<<3,(row4+$04)<<3,  STR_Duration+_val1,STR_Speed+_val3); // SpikeTrapA. v2: Vertical
	//                                                                                                                      //
	data_spawn(rm+STR_PRIO,SpTrA,$2,  $41<<3,(row4+$00)<<3,  STR_Duration+_val1,STR_Speed+_val4); // SpikeTrapA. v2: Vertical
	data_spawn(rm+STR_PRIO,SpTrA,$2,  $47<<3,(row4+$03)<<3,  STR_Duration+_val1,STR_Speed+_val3); // SpikeTrapA. v2: Vertical
	data_spawn(rm+STR_PRIO,SpTrA,$2,  $4D<<3,(row4+$06)<<3,  STR_Duration+_val1,STR_Speed+_val3); // SpikeTrapA. v2: Vertical
	//                                                                                                                      //
	data_spawn(rm+STR_PRIO,SpTrA,$2,  $61<<3,(row4+$00)<<3,  STR_Duration+_val1,STR_Speed+_val3); // SpikeTrapA. v2: Vertical
	data_spawn(rm+STR_PRIO,SpTrA,$2,  $69<<3,(row4+$06)<<3,  STR_Duration+_val1,STR_Speed+_val3); // SpikeTrapA. v2: Vertical
	data_spawn(rm+STR_PRIO,SpTrA,$2,  $71<<3,(row4+$05)<<3,  STR_Duration+_val1,STR_Speed+_val5); // SpikeTrapA. v2: Vertical
	*/
	//                                                                                                                      //
	//                                                                                                                      //
	row4=row3+$02; y4=row4<<3;
	data_spawn(rm+STR_PRXM,Bot_A,$2,  $18<<3,y4); // Bot  2
	data_spawn(rm+STR_PRXM,Bot_A,$2,  $24<<3,y4); // Bot  2
	data_spawn(rm+STR_PRXM,Bot_A,$2,  $3B<<3,y4); // Bot  2
	data_spawn(rm+STR_PRXM,Bot_A,$2,  $56<<3,y4); // Bot  2
	data_spawn(rm+STR_PRIO,PushA,$1,  $16<<3,(row3-$01)<<3,  STR_Palette+hex_str(PI_BGR_2)); // Pushable


	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  "02"+EXL0_); // RGT 0, 


	row5=row3-$06; y5=row5<<3;
	data_spawn(rm+STR_PRIO,ItmD0,$1,  $13<<3,y5,  STR_Treasure+STR_Map+"02"); // Key
	data_spawn(rm+STR_PRIO,ItmF0,$6,  $0B<<3,y5); // PBag v6: 300







	//   --------------------------  02  --------------------------- 
	//    
	rm_num  = $02;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PF+"002", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3;
	row4=row0+$12; y4=row4<<3;

	data_spawn(rm+STR_PRIO,TorchA,$1,  ($0F<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($33<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($4C<<3)+4,y3,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($52<<3)+4,y3,  STR_Lit); // v1: Light w/ CANDLE or FIRE

	data_spawn(rm+STR_PRXM,BubbA,$1,  $12<<3,(row0+$0F)<<3); // Bubble  1
	data_spawn(rm+STR_PRXM,BubbA,$1,  $30<<3,(row0+$0F)<<3); // Bubble  1
	data_spawn(rm+STR_PRXM,BubbA,$2,  $6A<<3,(row0+$0B)<<3); // Bubble  2
	data_spawn(rm+STR_PRXM,BubbA,$1,  $72<<3,(row0+$17)<<3); // Bubble  1


	clm3=$50; clm4=clm3-$04; clm5=clm3-$01; // clm3: elevator center clm
	data_exit(EXU0,etC0,1,  clm4,row_e0,  CLMS4,ROWS5,  clm5,row_e1,  "00"+EXD0_); // UP  0, Elevator up  
	data_exit(EXD0,etC0,1,  clm4,row_e2,  CLMS4,ROWS5,  clm5,row_e3,  "03"+EXU0_); // DWN 0, Elevator down 
	data_Elev(EXD0_+EXU0_,  clm3,row_e5);                                    // Elevator DW $40, UP $80, 
	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  "01"+EXR0_); // LFT 0, 


	data_spawn(rm+STR_PRIO,ItmF0,$5,  $5C<<3,(row0+$0F)<<3); // PBag v5: 250


	//data_rando_scene01("_00"+"_00"+"_01"+"_01"+"_01",rm, STR_GLOVE+STR_JUMP+STR_STABUP);








	//   --------------------------  03  --------------------------- 
	//    
	rm_num  = $03;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PF+"003", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;

	data_spawn(rm+STR_PRIO,TorchA,$1,  ($0C<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($12<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  $78<<3,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE

	data_spawn(rm+STR_PRIO,LoDoA,$1,  $15<<3,(row3-$02)<<3); // LockedDoor
	//data_spawn(rm+STR_PRIO,LoDoA,$1,  $16<<3,(row3-$02)<<3); // LockedDoor
	data_spawn(rm+STR_PRXM,DoomA,$1,  $5A<<3,y3); // Doomknocker  1
	data_spawn(rm+STR_PRXM,WizaA,$1,  $2A<<3,y3); // Wizard  1
	data_spawn(rm+STR_PRXM,WizaA,$1,  $50<<3,y3); // Wizard  1


	clm3=$10; clm4=clm3-$04; clm5=clm3-$01; // clm3: elevator center clm
	data_exit(EXU0,etC0,1,  clm4,row_e0,  CLMS4,ROWS5,  clm5,row_e1,  "02"+EXD0_); // UP  0, Elevator up  
	data_Elev(EXU0_,  clm3,row_e5);                                          // Elevator UP $80, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  "04"+EXL0_); // RGT 0, 


	data_rando_scene01("_00"+"_01"+"_00"+"_00"+"_01",rm);








	//   --------------------------  04  --------------------------- 
	//    Endless pit 1
	rm_num  = $04;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PF+"004", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;

	data_spawn(rm+STR_PRIO,TorchA,$1,  ($0D<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($47<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($77<<3)+4,(row0+$0C)<<3,  STR_Lit); // v1: Light w/ CANDLE or FIRE

	data_spawn(rm+STR_PRIO,LoDoA,$1,  $4E<<3,(row3-$02)<<3); // LockedDoor
	data_spawn(rm+STR_PRIO,SpStA,$2,  $3C<<3,(row0+$0D)<<3); // SpawnByStab  2
	data_spawn(rm+STR_PRXM,IrKnA,$3,  $16<<3,y3); // IronKnuckle  3
	data_spawn(rm+STR_PRXM,IrKnA,$3,  $52<<3,y3); // IronKnuckle  3


	data_exit(EXU0,etA4,0,  $24,row_e0,  $1C,ROWS5,  $2F,row_e4,  "13"+EXD0_); // UP  0, Pit up 
	data_exit(EXD0,etA1,1,  $26,row_e2,  $14,ROWS5,  $33,row_e3,  "09"+EXU0_); // DWN 0, Pit down 
	data_pit(exit_name_d0,0,2);
	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  "03"+EXR0_); // LFT 0, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row0+$0B,  "05"+EXL0_); // RGT 0, 


	//data_rando_scene01("_00"+"_01"+"_01"+"_01"+"_01"+STR_Pit+"C",rm);








	//   --------------------------  05  --------------------------- 
	//    
	rm_num  = $05;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PF+"005", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;

	data_spawn(rm+STR_PRIO,TorchA,$1,  ($07<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($77<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($3F<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE

	row4=row0+$11; y4=row4<<3;
	data_spawn(rm+STR_PRIO,SpBuA,$1,  $1A<<3,y4); // BulletSpawner  1
	data_spawn(rm+STR_PRIO,SpBuA,$2,  $38<<3,y4); // BulletSpawner  2
	data_spawn(rm+STR_PRIO,SpBuA,$1,  $46<<3,y4); // BulletSpawner  1
	data_spawn(rm+STR_PRIO,SpBuA,$2,  $64<<3,y4); // BulletSpawner  2
	data_spawn(rm+STR_PRXM,WizaA,$1,  $34<<3,y3); // Wizard  1
	data_spawn(rm+STR_PRXM,WizaA,$1,  $4A<<3,y3); // Wizard  1
	data_spawn(rm+STR_PRXM,WizaA,$1,  $66<<3,y3); // Wizard  1


	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  "04"+EXR0_); // LFT 0, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  "06"+EXL0_); // RGT 0, 


	data_rando_scene01("_00"+"_01"+"_01"+"_00"+"_00",rm);








	//   --------------------------  06  --------------------------- 
	//    
	rm_num  = $06;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PF+"006", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;

	data_spawn(rm+STR_PRIO,TorchA,$1,  ($07<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($77<<3)+4,(row0+$0E)<<3,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($52<<3)+4,y3,  STR_Lit); // v1: Light w/ CANDLE or FIRE

	data_spawn(rm+STR_PRXM,DoomA,$1,  $5C<<3,y3); // Doomknocker  1
	data_spawn(rm+STR_PRXM,IrKnA,$3,  $1E<<3,y3); // IronKnuckle  3
	data_spawn(rm+STR_PRXM,BubbA,$2,  $10<<3,(row0+$0D)<<3); // Bubble  2
	data_spawn(rm+STR_PRXM,BubbA,$2,  $36<<3,(row0+$11)<<3); // Bubble  2


	clm3=$50; clm4=clm3-$04; clm5=clm3-$01; // clm3: elevator center clm
	data_exit(EXD0,etC0,1,  clm4,row_e2,  CLMS4,ROWS5,  clm5,row_e3,  "0A"+EXU0_); // DWN 0, Elevator down 
	data_Elev(EXD0_,  clm3,row_e5);                                          // Elevator DW $40, 
	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row0+$17,  "05"+EXR0_); // LFT 0, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row0+$0D,  "07"+EXL0_); // RGT 0, 


	data_spawn(rm+STR_PRIO,ItmF0,$5,  $2E<<3,y3); // PBag v5: 250


	//data_rando_scene01("_00"+"_01"+"_01"+"_01"+"_00",rm, STR_GLOVE);







	//   --------------------------  07  --------------------------- 
	//    False floor room
	rm_num  = $07;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PF+"007", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;

	data_spawn(rm+STR_PRIO,TorchA,$1,  ($13<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($6B<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	//data_spawn(rm+STR_PRIO,TorchA,$1,  ($07<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	//data_spawn(rm+STR_PRIO,TorchA,$1,  ($77<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($29<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($3F<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($55<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE

	row4=row0+$11; y4=row4<<3;
	data_spawn(rm+STR_PRIO,SpStA,$2,  $60<<3,y4); // SpawnByStab  2
	data_spawn(rm+STR_PRXM,Moa_B,$1,  $1E<<3,y4); // FieryMoa  1
	data_spawn(rm+STR_PRXM,WizaA,$1,  $24<<3,y3); // Wizard  1
	data_spawn(rm+STR_PRXM,WizaA,$1,  $6A<<3,y3); // Wizard  1


	data_exit(EXD0,etA1,1,  $4E,row_e2,  $0C,ROWS5,  $53,row_e3,  "0B"+EXU0_); // DWN 0, Pit down 
	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  "06"+EXR0_); // LFT 0, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  "08"+EXL0_); // RGT 0, 








	//   --------------------------  08  --------------------------- 
	//   ------------------------  CROSS  -------------------------- 
	rm_num  = $08;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PF+"008", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;

	data_spawn(rm+STR_PRIO,TorchA,$1,  ($07<<3)+4,y4,  STR_Lit,STR_Qualified+STR_Quest+STR_Nums+"01"); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($0F<<3)+4,y4,  STR_Lit,STR_Qualified+STR_Quest+STR_Nums+"01"); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($17<<3)+4,y4,  STR_Lit,STR_Qualified+STR_Quest+STR_Nums+"01"); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($47<<3)+4,y4,  STR_Lit,STR_Qualified+STR_Quest+STR_Nums+"01"); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($4F<<3)+4,y4,  STR_Lit,STR_Qualified+STR_Quest+STR_Nums+"01"); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($57<<3)+4,y4,  STR_Lit,STR_Qualified+STR_Quest+STR_Nums+"01"); // v1: Light w/ CANDLE or FIRE
	//                                                                                                      //
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($07<<3)+4,y4,  STR_Qualified+STR_Quest+STR_Nums+"02"); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($0F<<3)+4,y4,  STR_Qualified+STR_Quest+STR_Nums+"02"); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($17<<3)+4,y4,  STR_Qualified+STR_Quest+STR_Nums+"02"); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($47<<3)+4,y4,  STR_Qualified+STR_Quest+STR_Nums+"02"); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($4F<<3)+4,y4,  STR_Qualified+STR_Quest+STR_Nums+"02"); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($57<<3)+4,y4,  STR_Qualified+STR_Quest+STR_Nums+"02"); // v1: Light w/ CANDLE or FIRE

	data_spawn(rm+STR_PRXM,ReboA,$1,  $44<<3,y3,  STR_Arena+"_x"+hex_str($30<<3)); // RebonackA  2


	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  "07"+EXR0_); // LFT 0, 


	data_spawn(rm+STR_PRIO,ItmA5,$1,  $6C<<3,y3); // CROSS 


	//data_rando_scene01("_00"+"_00"+"_01"+"_00"+"_00",rm, STR_STABDOWN);








	//   --------------------------  09  --------------------------- 
	//    Endless pit 2
	rm_num  = $09;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PF+"009", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;

	data_spawn(rm+STR_PRIO,TorchA,$1,  $21<<3,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  $46<<3,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE

	data_spawn(rm+STR_PRXM,IrKnA,$3,  $16<<3,y3); // IronKnuckle  3
	data_spawn(rm+STR_PRXM,IrKnA,$3,  $52<<3,y3); // IronKnuckle  3


	data_exit(EXU0,etA4,0,  $18,row_e0,  $34,ROWS5,  $2F,row_e4,  "04"+EXD0_); // UP  0, Pit up 
	data_exit(EXD0,etA1,1,  $26,row_e2,  $18,ROWS5,  $30,row_e3,  "0C"+EXU0_); // DWN 0, Pit down 
	data_pit(exit_name_d0,0,2);


	data_spawn(rm+STR_PRIO,ItmD0,$1,  $06<<3,y3,  STR_Treasure+STR_Map+"02"); // Key
	//data_spawn(rm+STR_PRIO,ItmF0,$5,  $2E<<3,y3); // PBag v5: 250


	data_rando_scene01("_00"+"_00"+"_00"+"_01"+"_01"+STR_Pit+"C",rm);








	//   --------------------------  0A  --------------------------- 2E
	//    
	rm_num  = $0A;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PF+"032", STR_ow_axis+hex_str(ow_axis));


	row4=row0+$18; y4=row4<<3;

	data_spawn(rm+STR_PRIO,TorchA,$1,  ($4C<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($52<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE

	y3=(row0+$0D)<<3;
	y4=(row0+$09)<<3;
	data_spawn(rm+STR_PRIO,LoDoA,$1,  $54<<3,(row0+$15)<<3); // LockedDoor
	data_spawn(rm+STR_PRIO,SpDrA,$1,  $37<<3,y4); // DropSpawner  1
	data_spawn(rm+STR_PRIO,SpDrA,$1,  $67<<3,y4); // DropSpawner  1
	data_spawn(rm+STR_PRXM,AttaA,$1,  $10<<3,y3); // Atta  1
	data_spawn(rm+STR_PRXM,AttaA,$1,  $30<<3,y3); // Atta  1
	data_spawn(rm+STR_PRXM,AttaA,$1,  $70<<3,y3); // Atta  1


	clm3=$50; clm4=clm3-$04; clm5=clm3-$01; // clm3: elevator center clm
	data_exit(EXU0,etC0,1,  clm4,row_e0,  CLMS4,ROWS5,  clm5,row_e1,  "06"+EXD0_); // UP  0, Elevator up  
	data_Elev(EXU0_,  clm3,row_e5);                                          // Elevator UP $80, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row0+$13,  "0B"+EXL0_); // RGT 0, 


	data_spawn(rm+STR_PRIO,ItmF0,$6,  $05<<3,(row0+$11)<<3); // PBag v6: 300


	data_rando_scene01("_00"+"_01"+"_00"+"_00"+"_01",rm);








	//   --------------------------  0B  --------------------------- 
	//    
	rm_num  = $0B;
	set_rm_data(area+hex_str(rm_num), mus0, STR_Tile+area_PF+"035", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$13; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;

	data_spawn(rm+STR_PRIO,TorchA,$1,  ($09<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE

	data_spawn(rm+STR_PRXM,Moa_B,$1,  $23<<3,y3); // FieryMoa  1
	data_spawn(rm+STR_PRXM,IrKnA,$2,  $6E<<3,y3); // IronKnuckle  2
	data_spawn(rm+STR_PRXM,BubbA,$2,  $3C<<3,(row0+$0B)<<3); // Bubble  2
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $23<<3,(row0+$15)<<3); // Bot  1


	data_exit(EXU0,etA4,0,  $42,row_e0,  $1A,ROWS5,  $4E,row_e4,  "07"+EXD0_); // UP  0, Pit up 
	//data_exit(EXU0,etA4,0,  $00,row_e0,  $76,ROWS5,  $4E,row_e4,  '07'+EXD0_); // UP  0, Pit up 
	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  "0A"+EXR0_); // LFT 0, 


	data_spawn(rm+STR_PRIO,ItmD0,$1,  $71<<3,(row0+$0F)<<3,  STR_Treasure+STR_Map+"02"); // Key
	//data_spawn(rm+STR_PRIO,ItmD0,$1,  $78<<3,(row0+$0F)<<3,  STR_Treasure+STR_Map+"02"); // Key


	data_rando_scene01("_00"+"_00"+"_01"+"_00"+"_01"+STR_Pit+"8",rm);







	//   --------------------------  0C  --------------------------- 
	//    Endless pit 3
	rm_num  = $0C;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PF+"011", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;

	data_spawn(rm+STR_PRIO,TorchA,$1,  ($77<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE

	data_spawn(rm+STR_PRIO,LoDoA,$1,  $52<<3,(row3-$02)<<3); // LockedDoor
	data_spawn(rm+STR_PRXM,IrKnA,$3,  $6C<<3,y3); // IronKnuckle  3


	data_exit(EXU0,etA4,0,  $1C,row_e0,  $64,ROWS5,  $2F,row_e4,  "09"+EXD0_); // UP  0, Pit up 
	data_exit(EXD0,etA1,1,  $22,row_e2,  $1C,ROWS5,  $2F,row_e3,  "13"+EXU0_); // DWN 0, Pit down 
	data_pit(exit_name_d0,0,2);
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  "0D"+EXL0_); // RGT 0, 


	data_spawn(rm+STR_PRIO,ItmF0,$5,  $1D<<3,y3); // PBag v5: 250. MOD, moved this from rm PalcF_13


	data_rando_scene01("_00"+"_01"+"_00"+"_01"+"_01"+STR_Pit+"C",rm);








	//   --------------------------  0D  --------------------------- 
	//    
	rm_num  = $0D;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PF+"012", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$12; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;

	data_spawn(rm+STR_PRIO,TorchA,$1,  ($07<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($77<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE

	_rm  = rm_name;
	data_spawn(rm+STR_PRXM,Myu_A,$1,  $1A0,$A0); // $A7: Myu  1
	data_spawn(rm+STR_PRXM,Ra__A,$2,  $1B0,$60); // $A9: Ra  2
	data_spawn(rm+STR_PRXM,Myu_A,$1,  $1F0,$A0); // $A7: Myu  1
	data_spawn(rm+STR_PRXM,Ra__A,$2,  $240,$60); // $A9: Ra  2
	data_spawn(rm+STR_PRXM,Myu_A,$1,  $2E0,$A0); // $A7: Myu  1
	data_spawn(rm+STR_PRXM,Myu_A,$1,  $330,$A0); // $A7: Myu  1


	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,ROWS6,  CLM3,row0+$12,  "0C"+"10");   // LFT 0,  
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,ROWS6,  clmA,row0+$12,  "0E"+"20");   // RGT 0,  


	data_rando_scene01("_00"+"_01"+"_01"+"_00"+"_00",rm, STR_GLOVE);









	//   --------------------------  0E  --------------------------- 
	//    
	rm_num  = $0E;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PF+"013", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;

	//data_spawn(rm+STR_PRIO,TorchA,$1,  ($07<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	//data_spawn(rm+STR_PRIO,TorchA,$1,  ($77<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($1F<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($3F<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($5F<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE

	data_spawn(rm+STR_PRXM,IrKnA,$2,  $40<<3,y3); // IronKnuckle  2
	data_spawn(rm+STR_PRXM,WizaA,$1,  $22<<3,y3); // Wizard  1
	data_spawn(rm+STR_PRXM,WizaA,$1,  $5E<<3,y3); // Wizard  1


	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  "0D"+EXR0_); // LFT 0, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  "0F"+EXL0_); // RGT 0, 


	data_rando_scene01("_00"+"_01"+"_01"+"_00"+"_00",rm);








	//   --------------------------  0F  --------------------------- 
	//    
	rm_num  = $0F;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PF+"022", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$0D; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;

	data_spawn(rm+STR_PRIO,TorchA,$1,  ($09<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($76<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE

	row4=row0+$09; y4=row4<<3;
	data_spawn(rm+STR_PRIO,SpDrA,$1,  $2E<<3,y4); // DropSpawner  1
	data_spawn(rm+STR_PRIO,SpDrA,$1,  $50<<3,y4); // DropSpawner  1
	data_spawn(rm+STR_PRXM,BubbA,$2,  $1E<<3,y3); // Bubble  2
	data_spawn(rm+STR_PRXM,BubbA,$2,  $40<<3,y3); // Bubble  2
	data_spawn(rm+STR_PRXM,BubbA,$2,  $62<<3,y3); // Bubble  2


	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  "0E"+EXR0_); // LFT 0, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  "10"+EXL0_); // RGT 0, 


	data_rando_scene01("_00"+"_01"+"_01"+"_00"+"_00",rm, STR_JUMP+STR_FAIRY);








	//   --------------------------  10  --------------------------- 
	//    
	rm_num  = $10;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PF+"015", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;

	data_spawn(rm+STR_PRIO,TorchA,$1,  ($07<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($77<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($4C<<3)+4,y3,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($52<<3)+4,y3,  STR_Lit); // v1: Light w/ CANDLE or FIRE

	row4=row0+$0B; y4=row4<<3;
	data_spawn(rm+STR_PRIO,LoDoA,$1,  $58<<3,(row0+$15)<<3); // LockedDoor
	data_spawn(rm+STR_PRXM,Moa_B,$1,  $3E<<3,y3); // FieryMoa  1
	data_spawn(rm+STR_PRXM,StalA,$2,  $2A<<3,y4); // Stalfos  2
	data_spawn(rm+STR_PRXM,BubbA,$2,  $6A<<3,y4); // Bubble  2
	data_spawn(rm+STR_PRXM,Myu_A,$1,  $68<<3,y3); // Myu  1


	clm3=$50; clm4=clm3-$04; clm5=clm3-$01; // clm3: elevator center clm
	data_exit(EXD0,etC0,1,  clm4,row_e2,  CLMS4,ROWS5,  clm5,row_e3,  "14"+EXU0_); // DWN 0, Elevator down 
	data_Elev(EXD0_, clm3,row_e5);                                           // Elevator DW $40, 
	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  "0F"+EXR0_); // LFT 0, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  "11"+EXL0_); // RGT 0, 


	data_rando_scene01("_00"+"_01"+"_01"+"_01"+"_00",rm);








	//   --------------------------  11  --------------------------- 
	//    
	rm_num  = $11;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PF+"024", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$15; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($17<<3)+4,y4,  STR_Lit,STR_Qualified+STR_Quest+STR_Nums+"01"); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($1F<<3)+4,y4,  STR_Lit,STR_Qualified+STR_Quest+STR_Nums+"01"); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($27<<3)+4,y4,  STR_Lit,STR_Qualified+STR_Quest+STR_Nums+"01"); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($57<<3)+4,y4,  STR_Lit,STR_Qualified+STR_Quest+STR_Nums+"01"); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($5F<<3)+4,y4,  STR_Lit,STR_Qualified+STR_Quest+STR_Nums+"01"); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($67<<3)+4,y4,  STR_Lit,STR_Qualified+STR_Quest+STR_Nums+"01"); // v1: Light w/ CANDLE or FIRE
	//                                                                                                      //
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($17<<3)+4,y4,  STR_Qualified+STR_Quest+STR_Nums+"02"); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($1F<<3)+4,y4,  STR_Qualified+STR_Quest+STR_Nums+"02"); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($27<<3)+4,y4,  STR_Qualified+STR_Quest+STR_Nums+"02"); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($57<<3)+4,y4,  STR_Qualified+STR_Quest+STR_Nums+"02"); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($5F<<3)+4,y4,  STR_Qualified+STR_Quest+STR_Nums+"02"); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($67<<3)+4,y4,  STR_Qualified+STR_Quest+STR_Nums+"02"); // v1: Light w/ CANDLE or FIRE

	x3=x0+($14<<3);
	data_spawn(rm+STR_PRXM,ReboA,$2,  x3,y3,  STR_Arena+"_x"+hex_str(x0)); // RebonackA  v3. Tougher


	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  "10"+EXR0_); // LFT 0, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  "1B"+EXL0_); // RGT 0, 


	//data_rando_scene01("_00"+"_01"+"_01"+"_00"+"_00",rm, STR_STABDOWN);








	//   --------------------------  12  --------------------------- 
	//    
	rm_num  = $12;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PF+"016", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$0A; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;
	row5=row3+$02; y5=row5<<3;

	data_spawn(rm+STR_PRIO,TorchA,$1,  ($07<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE

	data_spawn(rm+STR_PRXM,IrKnA,$3,  $5E<<3,y3); // IronKnuckle 3
	data_spawn(rm+STR_PRXM,BubbA,$2,  $78<<3,y5); // Bubble  2
	data_spawn(rm+STR_PRXM,BubbA,$2,  $7A<<3,y5); // Bubble  2
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $10<<3,y5); // Bot  1
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $16<<3,y5); // Bot  1


	data_exit(EXD0,etA1,1,  -CLMS1,row_e2,  clms1,ROWS5,  $2F,row_e3,  "15"+EXU0_); // DWN 0, Pit down 
	data_pit(exit_name_d0, 0,2);
	row4    =  row0+$02;
	rows3   =  row4-ROW0;
	rows4   = (rows0-row4) + PAGE_ROWS;
	row5    =  row0-$04;
	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows3,  CLM3,row4-$06,  "1B"+EXR0_); // LFT 0, 
	data_exit(EXL1,etA0,1,  CLM2,row4,  CLMS2,rows4,  CLM3,row3,  "1B"+EXR1_); // LFT 1, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row0-$04,  "1C"+EXL0_); // RGT 0, 


	data_spawn(rm+STR_PRIO,CONT_PIECE_OBJ_MP,CONT_PIECE_OBJ_VER_MP,  $78<<3,y5,  STR_Treasure+STR_Map+"02"); // MAGIC PIECE
	//data_spawn(rm+STR_PRIO,ItmG0,$1,  $78<<3,y3); // Extra Life Doll 
	//data_spawn(rm+STR_PRIO,ItmF0,$8,  $78<<3,y3); // PBag 8: 500 









	//   --------------------------  13  --------------------------- 
	//    Endless pit 4. Last one
	rm_num  = $13;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PF+"009", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;

	data_spawn(rm+STR_PRIO,TorchA,$1,  $21<<3,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  $46<<3,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE

	row3=row0+$19; y3=row3<<3;
	data_spawn(rm+STR_PRXM,BubbA,$1,  $14<<3,y3); // Bubble  1
	data_spawn(rm+STR_PRXM,BubbA,$1,  $4E<<3,y3); // Bubble  1


	data_exit(EXU0,etA4,0,  $18,row_e0,  $34,ROWS5,  $2F,row_e4,  "0C"+EXD0_); // UP  0, Pit up 
	data_exit(EXD0,etA1,1,  $26,row_e2,  $18,ROWS5,  $30,row_e3,  "04"+EXU0_); // DWN 0, Pit down 


	g.FallingKey1_spawn_datakey = data_spawn(rm+STR_PRIO,ItmD0,$1,  $38<<3,(row0+$0D)<<3,  STR_Treasure+STR_Map+"02"); // Key.  Spawns in mid air falling into pit.
	data_spawn(rm+STR_PRIO,ItmF0,$4,  $06<<3,(row0+$17)<<3); // PBag v4: 200








	//   --------------------------  14  --------------------------- 
	//    
	rm_num  = $14;
	set_rm_data(area+hex_str(rm_num), mus0, STR_Tile+area_PF+"017", STR_View+"03", STR_ow_axis+hex_str(ow_axis));


	clms3 = $09; // num clms from Elev xc to each Bubble
	row3  = row0+$0C;



	data_spawn(rm+STR_PRXM,BubbA,$1,  (clm1-clms3-1)<<3,row3<<3); // $90: Bubble  1
	data_spawn(rm+STR_PRXM,BubbA,$2,  (clm1+clms3-1)<<3,row3<<3); // $90: Bubble  2


	clm3 = clm1-4; // Elev xl clm
	clm4 = clm1-1; // PC spawn_y clm
	data_exit(EXU0,etC0,1,  clm3,row_e0,  CLMS4,ROWS5,  clm4,row0+$05,  "10"+EXD0_); // UP  0, Elevator up 
	data_exit(EXD0,etC0,1,  clm3,row_e2,  CLMS4,ROWS5,  clm4,row0+$1B,  "18"+EXU0_); // DWN 0, Elevator down 
	data_Elev(EXD0_+EXU0_,  clm1,row_e5);                                            // Elevator DW $40, UP $80, 


	g.dm_rm[?MAP_DATAKEY1+rm+STR_Page+"00"+STR_TSRC] = $FF;
	g.dm_rm[?MAP_DATAKEY1+rm+STR_Page+"01"+STR_TSRC] = $35;
	g.dm_rm[?MAP_DATAKEY1+rm+STR_Page+"02"+STR_TSRC] = $FF;


	data_rando_scene01("_00"+"_00"+"_00"+"_00"+"_01",rm);








	//   --------------------------  15  --------------------------- 
	//    
	rm_num  = $15;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PF+"018", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$14; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;

	data_spawn(rm+STR_PRIO,TorchA,$1,  ($3F<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($4B<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($57<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE

	data_spawn(rm+STR_PRXM,StalA,$2,  (clm0+2)<<3,(row0+$0B)<<3); // Stalfos  2


	clm4=-PAGE_CLMS;
	data_exit(EXU0,etA4,0,  $04,row_e0,  $18,ROWS5,  $0F,row_e4,  "12"+"40"); // UP  0, Pit up 
	data_exit(EXD0,etA1,1,  clm4,row_e2,  clms1,ROWS5,  $0F,row_e3,  "1A"+"80"); // DWN 0, Pit down 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  "16"+"20"); // RGT 0, 









	//   --------------------------  16  --------------------------- 
	//   -------------------------  BARBA  ----------------------- 
	rm_num  = $16;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PF+"033", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$14; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;
	data_spawn(rm+STR_PRIO,TorchA,$1,  $06<<3,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  $0D<<3,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  $52<<3,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  $59<<3,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE

	clm3=$30; // arena center
	data_spawn(rm+STR_PRIO,BarbA,$1,  (clm3+$06)<<3,(row0+$18)<<3,  STR_Arena+"_x"+hex_str(clm3<<3)); // Barba  1
	data_spawn(rm+STR_PRIO,CrHoA,$1,  ($6E<<3)-4,row3<<3); // CrystalHolder  1
	g.dm_rm[?STR_Boss+STR_Scene+STR_Name+_DUNGEON_NAME] = rm;


	_exit=data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  "15"+EXR0_); // LFT 0, 
	g.dm_rm[?_DUNGEON_NAME+STR_Boss+STR_Scene+STR_Entrance+STR_Exit] = _exit;

	_exit=data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  0);          // RGT 0, to Overworld 
	g.dm_rm[?STR_Boss+STR_Dungeon+STR_Exit+STR_Name+_DUNGEON_NAME] = _exit;


	// 2nd Quest tile data. Less platform surface than 1st quest.
	set_rm_data_1a(rm,area_PF+"019",2);








	//   --------------------------  17  --------------------------- 
	//    
	rm_num  = $17;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PF+"001", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;

	data_spawn(rm+STR_PRIO,TorchA,$1,  ($09<<3)+4,y4); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($75<<3)+4,y4,  STR_Qualified+STR_Quest+STR_Nums+"01"); // v1: Light w/ CANDLE or FIRE

	data_spawn(rm+STR_PRIO,SpStA,$2,  $22<<3,y3); // SpawnByStab  2
	data_spawn(rm+STR_PRIO,SpMaA,$1,  $1E<<3,y3); // MauSpawner  1
	data_spawn(rm+STR_PRXM,IrKnA,$2,  $44<<3,(row0+$0B)<<3); // IronKnuckle  2


	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  "18"+EXL0_); // RGT 0, 


	data_spawn(rm+STR_PRIO,ItmD0,$1,  ($25<<3)+4,(row0+$19)<<3,  STR_Treasure+STR_Map+"02"); // Key 
	data_spawn(rm+STR_PRIO,ItmF0,$4,  $4A<<3,(row0+$17)<<3); // PBag v4: 200








	//   --------------------------  18  --------------------------- 
	//    
	rm_num  = $18;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PF+"020", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;

	//data_spawn(rm+STR_PRIO,TorchA,$1,  $03<<3,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	//data_spawn(rm+STR_PRIO,TorchA,$1,  $7C<<3,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($25<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($4C<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($52<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE

	row4=row0+$0B; y4=row4<<3;
	data_spawn(rm+STR_PRIO,LoDoA,$1,  $57<<3,(row0+$15)<<3); // LockedDoor
	data_spawn(rm+STR_PRXM,StalA,$2,  $18<<3,y4); // Stalfos  2
	data_spawn(rm+STR_PRXM,StalA,$2,  $66<<3,y4); // Stalfos  2
	data_spawn(rm+STR_PRXM,WizaA,$1,  $10<<3,y3); // Wizard  1
	data_spawn(rm+STR_PRXM,WizaA,$1,  $36<<3,y3); // Wizard  1
	data_spawn(rm+STR_PRXM,WizaA,$1,  $68<<3,y3); // Wizard  1
	data_spawn(rm+STR_PRXM,WosuA,$1,  $44<<3,y3); // Wosu  1


	clm3=$50; clm4=clm3-$04; clm5=clm3-$01; // clm3: elevator center clm
	data_exit(EXU0,etC0,1,  clm4,row_e0,  CLMS4,ROWS5,  clm5,row_e1,  "14"+EXD0_); // UP  0, Elevator up  
	data_Elev(EXU0_, clm3,row_e5);                                           // Elevator UP $80, 
	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  "17"+EXR0_); // LFT 0, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  "19"+EXL0_); // RGT 0, 


	data_rando_scene01("_00"+"_01"+"_01"+"_00"+"_01",rm);








	//   --------------------------  19  --------------------------- 
	//    
	rm_num  = $19;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PF+"013", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;

	//data_spawn(rm+STR_PRIO,TorchA,$1,  ($07<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	//data_spawn(rm+STR_PRIO,TorchA,$1,  ($77<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($1F<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($3F<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($5F<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE

	data_spawn(rm+STR_PRXM,Moa_B,$1,  $3E<<3,y3); // FieryMoa  1
	data_spawn(rm+STR_PRXM,IrKnA,$2,  $22<<3,y3); // IronKnuckle  2
	data_spawn(rm+STR_PRXM,IrKnA,$2,  $4E<<3,y3); // IronKnuckle  2


	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  "18"+EXR0_); // LFT 0, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  "1F"+EXL0_); // RGT 0, 
	//data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  '1A'+EXL0_); // RGT 0, 


	data_rando_scene01("_00"+"_01"+"_01"+"_00"+"_00",rm);








	//   --------------------------  1A  --------------------------- 
	//    
	rm_num  = $1A;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PF+"021", STR_ow_axis+hex_str(ow_axis));


	clm3=$0F; x3=(clm3<<3)+4;
	row3=row0+$17; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($0B<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($2F<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($4D<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	//for(_i=0;_i<3;_i++) data_spawn(rm+STR_PRIO,TorchA,$1,  x3+($10*_i),y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	//for(_i=0;_i<4;_i++) data_spawn(rm+STR_PRIO,TorchA,$1,  x3+($20*_i),y4,  STR_Lit,STR_Qualified+STR_Quest+STR_Nums+"01"); // v1: Light w/ CANDLE or FIRE
	//for(_i=0;_i<3;_i++) data_spawn(rm+STR_PRIO,TorchA,$1,  x3+($20*_i),y4,          STR_Qualified+STR_Quest+STR_Nums+"02"); // v1: Light w/ CANDLE or FIRE
	row4=row0+$0B; y4=row4<<3;
	data_spawn(rm+STR_PRIO,SpStA,$1,  $78<<3,y3); // SpawnByStab  1
	data_spawn(rm+STR_PRXM,BubbA,$2,  $1C<<3,y4); // Bubble  2
	data_spawn(rm+STR_PRXM,BubbA,$1,  $22<<3,y3); // Bubble  1
	data_spawn(rm+STR_PRXM,BubbA,$1,  $40<<3,y3); // Bubble  1
	data_spawn(rm+STR_PRXM,BubbA,$2,  $42<<3,y4); // Bubble  2
	data_spawn(rm+STR_PRXM,BubbA,$1,  $64<<3,y3); // Bubble  1


	data_exit(EXU0,etA4,0,  $20,row_e0,  $20,ROWS5,  $2F,row_e4,  "15"+EXD0_); // UP  0, Pit up 
	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  "1F"+EXR0_); // LFT 0, 
	//data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  '19'+EXR0_); // LFT 0, 


	data_spawn(rm+STR_PRIO,ItmF0,$8,  ($73<<3)+4,(row0+$0F)<<3); // PBag 8: 500 
	//data_spawn(rm+STR_PRIO,CONT_PIECE_OBJ_MP,CONT_PIECE_OBJ_VER_MP,  $73<<3,(row0+$0F)<<3,  STR_Treasure+STR_Map+"02"); // MAGIC PIECE


	//data_rando_scene01("_00"+"_00"+"_01"+"_00"+"_01"+STR_Pit+"8",rm);







	//   --------------------------  1B  --------------------------- 
	//    
	rm_num  = $1B;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PF+"025", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$16; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;

	data_spawn(rm+STR_PRIO,TorchA,$1,  ($0F<<3)+4,y4,  STR_Lit,STR_Qualified+STR_Quest+STR_Nums+"01"); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($1F<<3)+4,y4,  STR_Lit,STR_Qualified+STR_Quest+STR_Nums+"01"); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($3F<<3)+4,y4); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($5F<<3)+4,y4,  STR_Lit,STR_Qualified+STR_Quest+STR_Nums+"01"); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($6F<<3)+4,y4,  STR_Lit,STR_Qualified+STR_Quest+STR_Nums+"01"); // v1: Light w/ CANDLE or FIRE

	y3  = (row0+$06)<<3;
	y4  = (row0+$00)<<3;
	y5  = (row0+$0E)<<3;
	clm3  = $2C;
	clms3 = $08;
	clms4 = clms3+$08;
	clms5 = clms3>>1;
	data_spawn(rm+STR_PRXM,BubbA,$2,  $1F<<3,y5); // Bubble  2
	data_spawn(rm+STR_PRXM,BubbA,$2,  $3F<<3,y5); // Bubble  2
	data_spawn(rm+STR_PRXM,BubbA,$2,  $5F<<3,y5); // Bubble  2
	data_spawn(rm+STR_PRXM,Moa_B,$1,  $1E<<3,y3); // FieryMoa  1

	data_spawn(rm+STR_PRIO,Spawner_FallingBlock,$2,  (clm3+(clms4*0))<<3,y4,  STR_Clms+hex_str(clms5)); // BlockSpawner  2
	data_spawn(rm+STR_PRIO,Spawner_FallingBlock,$2,  (clm3+(clms4*2))<<3,y4,  STR_Clms+hex_str(clms5)); // BlockSpawner  2


	row3    = ROW0; // -$20
	row4    = row0+$01; // ceiling floor
	row5    = row4+$02;
	row6    = row5-$06;
	rows3   = row5-row3;

	row7    = row0+$16;
	rows4   =(rows0-row5) + PAGE_ROWS;
	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row7,  "11"+EXR0_); // LFT 0, 
	data_exit(EXR0,etA0,1,  clm2,row3,  CLMS2,rows3,  clmA,row6,  "12"+EXL0_); // RGT 0, 
	data_exit(EXR1,etA0,1,  clm2,row5,  CLMS2,rows4,  clmA,row7,  "12"+EXL1_); // RGT 1, 





	//   --------------------------  1C  --------------------------- 
	//    
	rm_num  = $1C;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PF+"026", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$17; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;

	data_spawn(rm+STR_PRIO,TorchA,$1,  ($0C<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($12<<3)+4,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE

	data_spawn(rm+STR_PRXM,BubbA,$2,  $30<<3,(row0+$0D)<<3); // Bubble  2


	clm3=$10; clm4=clm3-$04; clm5=clm3-$01; // clm3: elevator center clm
	data_exit(EXU0,etC0,1,  clm4,row_e0,  CLMS4,ROWS5,  clm5,row_e1,  "1E"+EXD0_); // UP  0, Elevator up  
	data_Elev(EXU0_,  clm3,row0+$15);                                        // Elevator UP $80, 
	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row0+$17,  "12"+EXR0_); // LFT 0, 


	data_spawn(rm+STR_PRIO,ItmF0,$6,  $20<<3,(row0+$11)<<3); // PBag v6: 300


	//data_rando_scene01("_00"+"_00"+"_01"+"_00"+"_01",rm, STR_GLOVE+STR_JUMP+STR_STABUP);








	//   --------------------------  1D  --------------------------- 
	//    
	rm_num  = $1D;





	//   --------------------------  1E  --------------------------- 
	//    
	rm_num  = $1E;
	set_rm_data(area+hex_str(rm_num), mus0, STR_Tile+area_PF+"028", STR_ow_axis+hex_str(ow_axis));


	data_NIAO_1a(rm+STR_NIAO+"0", $0000, 1,Cloud_1_init); // 
	data_NIAO_1a(rm+STR_NIAO+"1", $0000, 3,StarSky_1_init); // 
	x3=$46<<3;  x4=$3F<<3;



	data_spawn_2a(STR_Challenge,Challenge_BlockConfiguration,2,  x3,(row0+$0E)<<3);
	data_spawn(rm+STR_PRIO,Spawner_FallingBlock,$2,  x3,(row0+$00)<<3,  STR_Clms+hex_str($B)); // Spawner_FallingBlock  1
	data_spawn(rm+STR_PRIO,BlckB,$1,  x4,(row0+$03)<<3,  STR_Palette+hex_str(PI_BGR_2)); // BlockB
	row3=row0+$18;  row4=row3+$02;  y3=row4<<3;
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $1D<<3,y3); // Bot  1
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $2C<<3,(row0+$0E)<<3); // Bot  1
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $39<<3,y3); // Bot  1
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $5D<<3,y3); // Bot  1
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $65<<3,y3); // Bot  1


	clm3=$10; // elevator center clm
	data_exit(EXD0,etC0,1,  clm3-4,row_e2,  CLMS4,ROWS5,  clm3-1,row_e3,  "1C"+EXU0_); // DWN 0, Elevator down 
	data_Elev(EXD0_, clm3,row0+$16, "06");                                       // Elevator DW $40, 


	x4=(clm1-1)<<3;  //x4=$3F<<3;
	data_spawn(rm+STR_PRIO,Kakusu014,$1,  x4,(row0+$14)<<3,  STR_Treasure+STR_Map+"02"); // Block Configuration reward

	_a=$00;       _datakey=MAP_DATAKEY1+rm+STR_Page;
	g.dm_rm[?_datakey+hex_str(_a++)+STR_TSRC] = MAP_TSRC_BLANK;
	g.dm_rm[?_datakey+hex_str(_a++)+STR_TSRC] = MAP_TSRC_BLANK;
	g.dm_rm[?_datakey+hex_str(_a++)+STR_TSRC] = MAP_TSRC_BLANK;
	g.dm_rm[?_datakey+hex_str(_a++)+STR_TSRC] = MAP_TSRC_BLANK;
	g.dm_rm[?_datakey+hex_str(_a++)+STR_TSRC] = $42;
	g.dm_rm[?_datakey+hex_str(_a++)+STR_TSRC] = MAP_TSRC_D0;
	g.dm_rm[?_datakey+hex_str(_a++)+STR_TSRC] = MAP_TSRC_D0;
	g.dm_rm[?_datakey+hex_str(_a++)+STR_TSRC] = MAP_TSRC_B0;




	//   --------------------------  1F  --------------------------- 
	//    
	rm_num  = $1F;
	set_rm_data(area+hex_str(rm_num), mus0, _DARK_DATA, STR_Tile+area_PF+"029", STR_ow_axis+hex_str(ow_axis));


	row3=row0+$15; y3=row3<<3;
	row4=row3+$03; y4=row4<<3;

	data_spawn(rm+STR_PRIO,TorchA,$1,  ($11<<3)+4,y4,  STR_Lit,STR_Qualified+STR_Quest+STR_Nums+"01"); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($30<<3)+4,y4); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($4E<<3)+4,y4); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($6D<<3)+4,y4,  STR_Lit,STR_Qualified+STR_Quest+STR_Nums+"01"); // v1: Light w/ CANDLE or FIRE

	data_spawn(rm+STR_PRXM,GumaA,$1,  $10<<3,y3); // Guma  1
	data_spawn(rm+STR_PRXM,GumaA,$1,  $26<<3,y3); // Guma  1
	data_spawn(rm+STR_PRXM,GumaA,$1,  $44<<3,y3); // Guma  1
	data_spawn(rm+STR_PRXM,GumaA,$1,  $62<<3,y3); // Guma  1


	row3=row0+$15;
	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  "19"+EXR0_); // LFT 0, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  "1A"+EXL0_); // RGT 0, 


	data_spawn(rm+STR_PRIO,ItmD0,$1,  $3E<<3,(row0+$07)<<3,  STR_Treasure+STR_Map+"02"); // Key


	//data_rando_scene01("_00"+"_01"+"_01"+"_00"+"_00",rm, STR_GLOVE+STR_JUMP);








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
