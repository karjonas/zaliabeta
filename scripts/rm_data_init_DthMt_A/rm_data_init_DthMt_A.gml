/// @description  rm_data_init_DthMt_A()
function rm_data_init_DthMt_A() {


	var _i, _a, _val;



	var _MapAreaName_DEATH_MOUNTAIN = "DEATH MOUNTAIN";







	// ------------------------------ DEATH MOUNTAIN ------------------------------ 
	area = area_DM;







	//   --------------------------  00  --------------------------- 
	//    Single forest tile
	rm_num  = $00;
	set_rm_data(area+hex_str(rm_num), MUS_THEWILD, STR_Tile+area_DM+"000", STR_ow_axis+"01", MapAreaName_DATAKEY+_MapAreaName_DEATH_MOUNTAIN, dk_SceneMusicThemeException+"01");


	data_NIAO_1a(rm+STR_NIAO+"0", $0000, 1, Cloud_1_init); // 
	data_NIAO_1a(rm+STR_NIAO+"1", $0000, 3, StarSky_1_init); // 
	//data_NIAO_1a(rm+STR_NIAO+'1', $0000, 2, StarSky_1_init); // 
	data_spawn(rm+STR_PRIO,ReFaA,$1,  $12<<3,(row0+$11)<<3); // $01: RestoreFairy  1 


	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,ROWS6,  clmA,row0+$16,  0); // RGT 0, to Overworld 


	data_rando_scene01("_00"+"_01"+"_00"+"_00"+"_00",rm);







	//   --------------------------  01  --------------------------- 
	//   CAVE.  
	rm_num  = $01;
	set_rm_data(area+hex_str(rm_num), MUS_THEWILD, STR_Dark+"00", STR_Tile+area_DM+"001", STR_ow_axis+"00", STR_show_ow_pos+"00", MapAreaName_DATAKEY+_MapAreaName_DEATH_MOUNTAIN, dk_SceneMusicThemeException+"01");


	row3=row0+$16; y3=row3<<3; y4=(row3+$01)<<3;
	data_spawn(rm+STR_PRIO,TorchA,$1,  $08<<3,(row0+$0B)<<3); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  $78<<3,(row3+$01)<<3); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRXM,MegmA,$1,  $90,(row3-$08)<<3); // Megmat  1
	data_spawn(rm+STR_PRXM,MegmA,$1,  $B0,(row3-$08)<<3); // Megmat  1
	data_spawn(rm+STR_PRXM,MegmA,$1,  $D0,(row3-$08)<<3); // Megmat  1
	data_spawn(rm+STR_PRXM,MegmA,$1,  $140,(row3-$06)<<3); // Megmat  1
	data_spawn(rm+STR_PRXM,MegmA,$1,  $1C0,(row3-$04)<<3); // Megmat  1
	data_spawn(rm+STR_PRXM,MegmA,$1,  $240,(row3-$02)<<3); // Megmat  1
	data_spawn(rm+STR_PRXM,MegmA,$1,  $2C0,(row3-$00)<<3); // Megmat  1
	data_spawn(rm+STR_PRXM,MegmA,$1,  $2E0,(row3-$00)<<3); // Megmat  1


	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row0+$0A,  0); // LFT 0, to Overworld
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  0); // RGT 0, to Overworld


	data_rando_scene01("_00"+"_01"+"_01"+"_00"+"_00",rm);








	//   --------------------------  02  --------------------------- 
	//   CAVE.  
	rm_num  = $02;
	set_rm_data(area+hex_str(rm_num), MUS_THEWILD, STR_Dark+"00", STR_Tile+area_DM+"002", STR_ow_axis+"00", STR_show_ow_pos+"00", MapAreaName_DATAKEY+_MapAreaName_DEATH_MOUNTAIN, dk_SceneMusicThemeException+"01");



	row3=row0+$16; y3=row3<<3; y4=(row3+$01)<<3;
	data_spawn(rm+STR_PRIO,TorchA,$1,  $08<<3,y4); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  $78<<3,y4); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRXM,MoblA,$2,  $1D0,y3); // $A4: Moblin  2
	data_spawn(rm+STR_PRXM,MoblA,$2,  $260,y3); // $A4: Moblin  2
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $A0,(row3-$02)<<3); // $8E: Bot  1
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $C0,(row3-$04)<<3); // $8E: Bot  1
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $1F0,(row3-$02)<<3); // $8E: Bot  1
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $2C0,(row3-$02)<<3); // $8E: Bot  1
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $340,y3); // $8E: Bot  1


	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  0); // LFT 0, to Overworld
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  0); // RGT 0, to Overworld


	data_rando_scene01("_00"+"_01"+"_01"+"_00"+"_00",rm);








	//   --------------------------  03  --------------------------- 
	//   CAVE.  
	rm_num  = $03;
	set_rm_data(area+hex_str(rm_num), MUS_THEWILD, STR_Dark+"00", STR_Tile+area_DM+"003", STR_ow_axis+"01", STR_show_ow_pos+"00", MapAreaName_DATAKEY+_MapAreaName_DEATH_MOUNTAIN, dk_SceneMusicThemeException+"01");


	row3=row0+$16; y3=row3<<3; y4=(row3+$01)<<3;
	data_spawn(rm+STR_PRIO,TorchA,$1,  $08<<3,y4); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  $78<<3,y4); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRXM,GoriA,$2,  $200,y3); // Goriya  2
	//data_spawn(rm+STR_PRXM,GoriA,$3,  $200,y3); // Goriya  3
	data_spawn(rm+STR_PRXM,OctoA,$1,  $C0,(row3-$02)<<3); // Octorok  1
	data_spawn(rm+STR_PRXM,OctoA,$1,  $E0,(row3-$06)<<3); // Octorok  1
	data_spawn(rm+STR_PRXM,OctoA,$1,  $100,(row3-$0A)<<3); // Octorok  1
	data_spawn(rm+STR_PRXM,OctoA,$1,  $2F0,(row3-$0A)<<3); // Octorok  1
	data_spawn(rm+STR_PRXM,OctoA,$1,  $310,(row3-$06)<<3); // Octorok  1
	data_spawn(rm+STR_PRXM,OctoA,$1,  $330,(row3-$02)<<3); // Octorok  1


	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  0); // LFT 0, to Overworld
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  0); // RGT 0, to Overworld


	data_rando_scene01("_00"+"_01"+"_01"+"_00"+"_00",rm);








	//   --------------------------  04  --------------------------- 
	//   CAVE.  "steps" rm
	rm_num  = $04;
	set_rm_data(area+hex_str(rm_num), MUS_THEWILD, STR_Dark+"00", STR_Tile+area_DM+"004", STR_ow_axis+"00", STR_show_ow_pos+"00", MapAreaName_DATAKEY+_MapAreaName_DEATH_MOUNTAIN, dk_SceneMusicThemeException+"01");


	data_spawn(rm+STR_PRIO,TorchA,$1,  $08<<3,$17<<3); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  $78<<3,$0B<<3); // v1: Light w/ CANDLE or FIRE

	data_spawn(rm+STR_PRXM,OctoA,$2,  $16<<3,(row0+$16)<<3); // Octorok  2
	data_spawn(rm+STR_PRXM,OctoA,$2,  $26<<3,(row0+$14)<<3); // Octorok  2
	data_spawn(rm+STR_PRXM,OctoA,$2,  $36<<3,(row0+$12)<<3); // Octorok  2
	data_spawn(rm+STR_PRXM,OctoA,$2,  $46<<3,(row0+$10)<<3); // Octorok  2
	data_spawn(rm+STR_PRXM,OctoA,$2,  $5A<<3,(row0+$0E)<<3); // Octorok  2


	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row0+$16,  0); // LFT 0, to Overworld 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row0+$0A,  0); // RGT 0, to Overworld 


	data_rando_scene01("_00"+"_01"+"_01"+"_00"+"_00",rm);







	//   --------------------------  05  --------------------------- 
	//   CAVE.  
	rm_num  = $05;
	set_rm_data(area+hex_str(rm_num), MUS_THEWILD, STR_Dark+"00", STR_Tile+area_DM+"005", STR_ow_axis+"00", STR_show_ow_pos+"00", MapAreaName_DATAKEY+_MapAreaName_DEATH_MOUNTAIN, dk_SceneMusicThemeException+"01");



	data_spawn(rm+STR_PRIO,TorchA,$1,  $06<<3,$13<<3); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  $79<<3,$13<<3); // v1: Light w/ CANDLE or FIRE

	data_spawn(rm+STR_PRIO,SpBaA,$1,  $F0,$40); // $60: BagoSpawner  1


	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,ROWS6,  CLM3,row0+$12,  0);        // LFT 0, to Overworld  
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,ROWS6,  clmA,row0+$12,  0);        // RGT 0, to Overworld  


	data_rando_scene01("_00"+"_01"+"_01"+"_00"+"_00",rm);








	//   --------------------------  06  --------------------------- 
	//   CAVE.  
	rm_num  = $06; 

	set_rm_data(area+hex_str(rm_num), MUS_THEWILD, STR_Dark+"00", STR_Tile+area_DM+"006", STR_ow_axis+"00", STR_show_ow_pos+"00", MapAreaName_DATAKEY+_MapAreaName_DEATH_MOUNTAIN, dk_SceneMusicThemeException+"01");



	data_spawn(rm+STR_PRIO,TorchA,$1,  $08<<3,$13<<3); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  $78<<3,$13<<3); // v1: Light w/ CANDLE or FIRE

	data_spawn(rm+STR_PRXM,OctoA,$1,  $100,$B0); // $A8: Octorok  1
	data_spawn(rm+STR_PRXM,OctoA,$1,  $130,$B0); // $A8: Octorok  1
	data_spawn(rm+STR_PRXM,OctoA,$1,  $160,$B0); // $A8: Octorok  1
	data_spawn(rm+STR_PRXM,OctoA,$1,  $290,$B0); // $A8: Octorok  1
	data_spawn(rm+STR_PRXM,OctoA,$1,  $2C0,$B0); // $A8: Octorok  1
	data_spawn(rm+STR_PRXM,OctoA,$1,  $2F0,$B0); // $A8: Octorok  1

	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,ROWS6,  CLM3,row0+$12,  0);        // LFT 0, to Overworld  
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,ROWS6,  clmA,row0+$12,  0);        // RGT 0, to Overworld  


	data_rando_scene01("_00"+"_01"+"_01"+"_00"+"_00",rm);








	//   --------------------------  07  --------------------------- 
	//   CAVE.  
	rm_num  = $07; 

	set_rm_data(area+hex_str(rm_num), MUS_THEWILD, STR_Dark+"00", STR_Tile+area_DM+"007", STR_ow_axis+"01", STR_show_ow_pos+"00", MapAreaName_DATAKEY+_MapAreaName_DEATH_MOUNTAIN, dk_SceneMusicThemeException+"01");



	data_spawn(rm+STR_PRIO,TorchA,$1,  $08<<3,$0F<<3); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  $78<<3,$0D<<3); // v1: Light w/ CANDLE or FIRE

	data_spawn(rm+STR_PRXM,MoblA,$3,  $D0,$70); // $A4: Moblin  3
	data_spawn(rm+STR_PRXM,OctoA,$2,  $1B0,$90); // $A8: Octorok  2
	data_spawn(rm+STR_PRXM,OctoA,$2,  $260,$A0); // $A8: Octorok  2
	data_spawn(rm+STR_PRXM,OctoA,$2,  $2C0,$80); // $A8: Octorok  2

	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,ROWS6,  CLM3,row0+$0E,  0);        // LFT 0, to Overworld  
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,ROWS6,  clmA,row0+$0C,  0);        // RGT 0, to Overworld  


	data_rando_scene01("_00"+"_01"+"_01"+"_00"+"_00",rm);








	//   --------------------------  08  --------------------------- 
	//   CAVE.  
	rm_num  = $08; 

	set_rm_data(area+hex_str(rm_num), MUS_THEWILD, STR_Dark+"00", STR_Tile+area_DM+"005", STR_ow_axis+"01", STR_show_ow_pos+"00", MapAreaName_DATAKEY+_MapAreaName_DEATH_MOUNTAIN, dk_SceneMusicThemeException+"01");



	data_spawn(rm+STR_PRIO,TorchA,$1,  $06<<3,$13<<3); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  $79<<3,$13<<3); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,SpBaA,$1,  $F0,$40); // $60: BagoSpawner  1


	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,ROWS6,  CLM3,row0+$12,  0);        // LFT 0, to Overworld  
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,ROWS6,  clmA,row0+$12,  0);        // RGT 0, to Overworld  


	data_rando_scene01("_00"+"_01"+"_01"+"_00"+"_00",rm);








	//   --------------------------  09  --------------------------- 
	//   CAVE.  
	rm_num  = $09;
	set_rm_data(area+hex_str(rm_num), MUS_THEWILD, STR_Dark+"00", STR_Tile+area_DM+"009", STR_ow_axis+"01", STR_show_ow_pos+"00", MapAreaName_DATAKEY+_MapAreaName_DEATH_MOUNTAIN, dk_SceneMusicThemeException+"01");


	y3=(row0+$0C)<<3;
	data_spawn(rm+STR_PRIO,TorchA,$1,  $08<<3,y3); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  $78<<3,y3); // v1: Light w/ CANDLE or FIRE
	row3=row0+$0F; y3=(row3-$02)<<3;
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $2A<<3,y3); // $8E: Bot  1
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $3A<<3,y3); // $8E: Bot  1
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $56<<3,y3); // $8E: Bot  1
	data_spawn(rm+STR_PRXM,DairA,$2,  $3E<<3,(row0+$17)<<3); // $91: Daira  2


	row3=row0+$0B;
	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  0); // LFT 0, to Overworld 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  0); // RGT 0, to Overworld 


	row3=row0+$0F; y3=row3<<3;
	data_spawn(rm+STR_PRIO,CONT_PIECE_OBJ_MP,CONT_PIECE_OBJ_VER_MP,  $32<<3,y3,  STR_Treasure+STR_Map+"01"); // MAGIC PIECE


	//data_rando_scene01("_00"+"_01"+"_01"+"_00"+"_00",rm, STR_JUMP);








	//   --------------------------  0A  --------------------------- 
	//   CAVE.  
	rm_num  = $0A;

	set_rm_data(area+hex_str(rm_num), MUS_THEWILD, STR_Dark+"00", STR_Tile+area_DM+"006", STR_ow_axis+"00", STR_show_ow_pos+"00", MapAreaName_DATAKEY+_MapAreaName_DEATH_MOUNTAIN, dk_SceneMusicThemeException+"01");



	data_spawn(rm+STR_PRIO,TorchA,$1,  $08<<3,$13<<3); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  $78<<3,$13<<3); // v1: Light w/ CANDLE or FIRE

	data_spawn(rm+STR_PRXM,OctoA,$1,  $100,$B0); // $A8: Octorok  1
	data_spawn(rm+STR_PRXM,OctoA,$1,  $130,$B0); // $A8: Octorok  1
	data_spawn(rm+STR_PRXM,OctoA,$1,  $160,$B0); // $A8: Octorok  1
	data_spawn(rm+STR_PRXM,OctoA,$1,  $290,$B0); // $A8: Octorok  1
	data_spawn(rm+STR_PRXM,OctoA,$1,  $2C0,$B0); // $A8: Octorok  1
	data_spawn(rm+STR_PRXM,OctoA,$1,  $2F0,$B0); // $A8: Octorok  1


	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,ROWS6,  CLM3,row0+$12,  0);        // LFT 0, to Overworld  
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,ROWS6,  clmA,row0+$12,  0);        // RGT 0, to Overworld  


	data_rando_scene01("_00"+"_01"+"_01"+"_00"+"_00",rm);








	//   --------------------------  0B  --------------------------- 
	//   CAVE.  
	rm_num  = $0B; 
	set_rm_data(area+hex_str(rm_num), MUS_THEWILD, STR_Dark+"00", STR_Tile+area_DM+"011", STR_ow_axis+"00", STR_show_ow_pos+"00", MapAreaName_DATAKEY+_MapAreaName_DEATH_MOUNTAIN, dk_SceneMusicThemeException+"01");


	row3=row0+$16; y3=row3<<3; y4=(row3+$01)<<3; y5=(row0+$06)<<3;
	data_spawn(rm+STR_PRIO,TorchA,$1,  $08<<3,y4); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  $78<<3,y4); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRXM,DairA,$1,  $C0,(row3-$04)<<3); // $91: Daira  1
	data_spawn(rm+STR_PRXM,GoriA,$3,  $2F0,y3); // $9A: Goriya  3
	data_spawn(rm+STR_PRXM,AcheA,$1,  $80,y5); // $88: Ache  1
	data_spawn(rm+STR_PRXM,AcheA,$1,  $E0,y5); // $88: Ache  1
	data_spawn(rm+STR_PRXM,AcheA,$1,  $120,y5); // $88: Ache  1
	data_spawn(rm+STR_PRXM,AcheA,$1,  $260,y5); // $88: Ache  1


	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  0); // LFT 0, to Overworld
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  0); // RGT 0, to Overworld


	data_rando_scene01("_00"+"_01"+"_01"+"_00"+"_00",rm);








	//   --------------------------  0C  --------------------------- 
	//   CAVE.  
	rm_num  = $0C; 
	set_rm_data(area+hex_str(rm_num), MUS_THEWILD, STR_Dark+"00", STR_Tile+area_DM+"001", STR_ow_axis+"00", STR_show_ow_pos+"00", MapAreaName_DATAKEY+_MapAreaName_DEATH_MOUNTAIN, dk_SceneMusicThemeException+"01");


	row3=row0+$16; y3=row3<<3; y4=(row3+$01)<<3;
	data_spawn(rm+STR_PRIO,TorchA,$1,  $08<<3,(row0+$0B)<<3); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  $78<<3,(row3+$01)<<3); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRXM,DairA,$1,  $1E0,(row3-$06)<<3); // $91: Daira  1
	data_spawn(rm+STR_PRXM,DairA,$1,  $330,(row3-$02)<<3); // $91: Daira  1
	data_spawn(rm+STR_PRXM,Bot_A,$2,  $A0,(row3-$08)<<3); // $8E: Bot  2
	data_spawn(rm+STR_PRXM,Bot_A,$2,  $150,(row3-$06)<<3); // $8E: Bot  2
	data_spawn(rm+STR_PRXM,Bot_A,$2,  $240,(row3-$02)<<3); // $8E: Bot  2
	data_spawn(rm+STR_PRXM,Bot_A,$2,  $2E0,(row3-$00)<<3); // $8E: Bot  2
	data_spawn(rm+STR_PRXM,Bot_A,$2,  $350,(row3-$00)<<3); // $8E: Bot  2


	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row0+$0A,  0); // LFT 0, to Overworld
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  0); // RGT 0, to Overworld


	data_rando_scene01("_00"+"_01"+"_01"+"_00"+"_00",rm);








	//   --------------------------  0D  --------------------------- 
	//   CAVE.  
	rm_num  = $0D; 
	set_rm_data(area+hex_str(rm_num), MUS_THEWILD, STR_Dark+"00", STR_Tile+area_DM+"004", STR_ow_axis+"01", STR_show_ow_pos+"00", MapAreaName_DATAKEY+_MapAreaName_DEATH_MOUNTAIN, dk_SceneMusicThemeException+"01");


	row3=row0+$16; y3=row3<<3;
	row4=row0+$0A; y4=row4<<3;
	data_spawn(rm+STR_PRIO,TorchA,$1,  $08<<3,(row3+$01)<<3); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  $78<<3,(row4+$01)<<3); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRXM,DairA,$1,  $26<<3,(row0+$10)<<3); // Daira  1
	data_spawn(rm+STR_PRXM,DairA,$1,  $52<<3,(row0+$0A)<<3); // Daira  1
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $1C<<3,(row0+$14)<<3); // Bot  1
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $2C<<3,(row0+$12)<<3); // Bot  1
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $44<<3,(row0+$0E)<<3); // Bot  1
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $6A<<3,(row0+$0A)<<3); // Bot  1


	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  0); // LFT 0, to Overworld
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row4,  0); // RGT 0, to Overworld


	data_spawn(rm+STR_PRIO,ItmE0,$1,  $0B<<3,y3); // Magic Jar (Full)
	//data_spawn(rm+STR_PRIO,CONT_PIECE_OBJ_HP,CONT_PIECE_OBJ_VER_HP,  $0B<<3,(row3+$02)<<3,  STR_Treasure+STR_Map+"01"); // HEART PIECE


	//data_rando_scene01("_00"+"_01"+"_01"+"_00"+"_00"+STR_JAR,rm);








	//   --------------------------  0E  --------------------------- 
	//   CAVE.  Route between main area and right side of DthMt exit path
	rm_num  = $0E;
	set_rm_data(area+hex_str(rm_num), MUS_THEWILD, STR_Dark+"00", STR_Tile+area_DM+"007", STR_ow_axis+"01", STR_show_ow_pos+"00", MapAreaName_DATAKEY+_MapAreaName_DEATH_MOUNTAIN, dk_SceneMusicThemeException+"01");


	data_spawn(rm+STR_PRIO,TorchA,$1,  $08<<3,$0F<<3); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  $78<<3,$0D<<3); // v1: Light w/ CANDLE or FIRE

	data_spawn(rm+STR_PRXM,OctoA,$1,  $120,$80); // $A8: Octorok  1
	data_spawn(rm+STR_PRXM,OctoA,$1,  $1C0,$80); // $A8: Octorok  1
	data_spawn(rm+STR_PRXM,OctoA,$1,  $270,$90); // $A8: Octorok  1
	data_spawn(rm+STR_PRXM,OctoA,$1,  $2D0,$70); // $A8: Octorok  1


	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,ROWS6,  CLM3,row0+$0E,  0);        // LFT 0, to Overworld  
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,ROWS6,  clmA,row0+$0C,  0);        // RGT 0, to Overworld  


	data_rando_scene01("_00"+"_01"+"_01"+"_00"+"_00",rm);








	//   --------------------------  0F  --------------------------- 
	//   CAVE.  Hammer cave, 1st floor, rm 1
	rm_num  = $0F;
	set_rm_data(area+hex_str(rm_num), MUS_THEWILD, STR_Dark+"00", STR_Tile+area_DM+"015", STR_ow_axis+"00", STR_show_ow_pos+"00", MapAreaName_DATAKEY+_MapAreaName_DEATH_MOUNTAIN);


	clms3=$09; // num of clms Torches are from rm edge
	row3=row0+$16; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;
	data_spawn(rm+STR_PRIO,TorchA,$1,  clms3<<3,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  (clms0-clms3-1)<<3,y4,  STR_Lit); // v1: Light w/ CANDLE or FIRE
	clm3=$14; clm4=$30; y4=(row0+$06)<<3;
	data_spawn(rm+STR_PRXM,DairA,$2,  $60<<3,y3); // Daira  2
	data_spawn(rm+STR_PRXM,AcheA,$2,  clm3<<3,y4); // Ache  2
	data_spawn(rm+STR_PRXM,AcheA,$2,  clm4<<3,y4); // Ache  2
	data_spawn(rm+STR_PRXM,LowdA,$1,  (clm3+$08)<<3,y3); // Lowder  1
	data_spawn(rm+STR_PRXM,LowdA,$1,  (clm3+$10)<<3,y3); // Lowder  1


	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  0); // LFT 0, to Overworld 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  "10"+EXL0_); // RGT 0, 


	data_spawn(rm+STR_PRIO,Kakusu001,$1,  0,0,  STR_Treasure+STR_Map+"01");


	data_rando_scene01("_00"+"_01"+"_01"+"_00"+"_00",rm);








	//   --------------------------  10  --------------------------- 
	//   CAVE.  Hammer cave, 1st floor, rm 2 (with elevator)
	rm_num  = $10;
	set_rm_data(area+hex_str(rm_num), MUS_THEWILD, STR_Dark+"00", STR_Tile+area_DM+"016", STR_ow_axis+"00", STR_show_ow_pos+"00", MapAreaName_DATAKEY+_MapAreaName_DEATH_MOUNTAIN);


	clm3=$50; clm4=clm3-$04; clm5=clm3-$01; // clm3: elevator center clm
	row3=row0+$16; y3=row3<<3;
	row4=row0+$0A; y4=(row4+$01)<<3;
	data_spawn(rm+STR_PRIO,TorchA,$1,  $08<<3,y4); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  (clm4<<3)+4,y3); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  $78<<3,y4); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRXM,DairA,$1,  $230,y3); // Daira  1
	data_spawn(rm+STR_PRXM,MegmA,$1,  $180,y3); // Megmat  1
	data_spawn(rm+STR_PRXM,MegmA,$1,  $190,y3); // Megmat  1
	data_spawn(rm+STR_PRXM,MegmA,$1,  $1B0,y3); // Megmat  1
	data_spawn(rm+STR_PRXM,LowdA,$1,  $2D0,y3); // Lowder  1
	data_spawn(rm+STR_PRXM,LowdA,$1,  $2F0,y3); // Lowder  1
	data_spawn(rm+STR_PRXM,LowdA,$1,  $320,y3); // Lowder  1


	data_exit(EXD0,etC0,1,  clm4,row_e2,  CLMS4,ROWS5,  clm5,row_e3,  "13"+EXU0_); // DWN 0, Elevator down 
	data_Elev(EXD0_,  clm3,row0+$13);                                        // Elevator DW $40, 
	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row4,  "0F"+EXR0_); // LFT 0, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row4,  "11"+EXL0_); // RGT 0, 


	data_rando_scene01("_00"+"_01"+"_01"+"_01"+"_00",rm);








	//   --------------------------  11  --------------------------- 
	//   CAVE.  Hammer cave, 1st floor, right most rm
	rm_num  = $11;
	set_rm_data(area+hex_str(rm_num), MUS_THEWILD, STR_Dark+"00", STR_Tile+area_WA+"239", STR_ow_axis+"00", STR_show_ow_pos+"00", MapAreaName_DATAKEY+_MapAreaName_DEATH_MOUNTAIN);


	x3=(clms0-$09)<<3;
	row3=row0+$16; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;
	row5=row3+$02; y5=row5<<3;
	//data_spawn(rm+STR_PRIO,TorchA,$1,  $08<<3,y4); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRXM,OctoA,$1,  $1A<<3,y5); // Octorok  1
	data_spawn(rm+STR_PRXM,OctoA,$1,  $22<<3,y5); // Octorok  1
	data_spawn(rm+STR_PRXM,OctoA,$1,  $26<<3,y5); // Octorok  1
	//data_spawn(rm+STR_PRXM,OctoA,$1,  $1E<<3,y3); // Octorok  1
	//data_spawn(rm+STR_PRXM,OctoA,$1,  $26<<3,y3); // Octorok  1
	//data_spawn(rm+STR_PRXM,OctoA,$1,  $2A<<3,y3); // Octorok  1


	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,ROWS6,  CLM3,row3,  "10"+EXR0_); // LFT 0, 


	data_spawn(rm+STR_PRIO,CONT_PIECE_OBJ_HP,CONT_PIECE_OBJ_VER_HP,  ($2C<<3)-2,y5,  STR_Treasure+STR_Map+"01"); // HEART PIECE


	data_rando_scene01("_00"+"_00"+"_01"+"_00"+"_00",rm);







	//   --------------------------  12  --------------------------- 
	//   CAVE.  HAMMER Caves, Lower floor. Left most scene.
	rm_num  = $12;
	set_rm_data(area+hex_str(rm_num), MUS_THEWILD, STR_Dark+"00", STR_Tile+area_WA+"238", STR_ow_axis+"00", STR_show_ow_pos+"00", MapAreaName_DATAKEY+_MapAreaName_DEATH_MOUNTAIN);


	x3=(clms0-$09)<<3; row3=row0+$16; y3=row3<<3; y4=(row3+$01)<<3;
	//data_spawn(rm+STR_PRIO,TorchA,$1,  $28<<3,$19<<3); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRXM,OctoA,$1,  $18<<3,y3); // Octorok  1
	data_spawn(rm+STR_PRXM,OctoA,$1,  $1C<<3,y3); // Octorok  1
	data_spawn(rm+STR_PRXM,OctoA,$1,  $22<<3,y3); // Octorok  1


	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  "13"+EXL0_); // RGT 0, 


	data_spawn(rm+STR_PRIO,ItmE0,$1,  $12<<3,y3); // Magic Jar (Full)


	//data_rando_scene01("_00"+"_01"+"_00"+"_00"+"_00"+STR_JAR,rm);








	//   --------------------------  13  --------------------------- 
	//   CAVE.  HAMMER Caves, Lower Floor.   rm w/ Elevator
	rm_num  = $13; 
	set_rm_data(area+hex_str(rm_num), MUS_THEWILD, STR_Dark+"00", STR_Tile+area_DM+"019", STR_ow_axis+"00", STR_show_ow_pos+"00", MapAreaName_DATAKEY+_MapAreaName_DEATH_MOUNTAIN);


	clm3=$50; clm4=clm3-$04; clm5=clm3-$01; // clm3: elevator center clm
	row3=row0+$16; y3=row3<<3; y4=(row3+$01)<<3;
	data_spawn(rm+STR_PRIO,TorchA,$1,  $08<<3,y4); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  (clm4<<3)+4,y4); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  $78<<3,y4); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRXM,DairA,$2,  $100,y3-($04<<3)); // Daira  2
	data_spawn(rm+STR_PRXM,DairA,$2,  $3B0,y3); // Daira  2
	data_spawn(rm+STR_PRXM,Myu_A,$1,  $D0,y3-($02<<3)); // Myu  1
	data_spawn(rm+STR_PRXM,Myu_A,$1,  $160,y3); // Myu  1


	data_exit(EXU0,etC0,1,  clm4,row_e0,  CLMS4,ROWS5,  clm5,row_e1,  "10"+EXD0_); // UP  0, Elevator up  
	data_Elev(EXU0_,  clm3,row_e5);                                          // Elevator UP $80, 
	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  "12"+EXR0_); // LFT 0, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  "14"+EXL0_); // RGT 0, 


	data_rando_scene01("_00"+"_01"+"_01"+"_00"+"_01",rm);








	//   --------------------------  14  --------------------------- 
	//   CAVE.  HAMMER Caves, Lower Floor. Next to HAMMER scene.
	rm_num  = $14;
	set_rm_data(area+hex_str(rm_num), MUS_THEWILD, STR_Dark+"00", STR_Tile+area_DM+"020", STR_ow_axis+"00", STR_show_ow_pos+"00", MapAreaName_DATAKEY+_MapAreaName_DEATH_MOUNTAIN);



	data_spawn(rm+STR_PRIO,TorchA,$1,  $08<<3,$0D<<3); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  $78<<3,$0D<<3); // v1: Light w/ CANDLE or FIRE
	//data_spawn(rm+STR_PRXM,TektA,$1,  $40<<3,(row0+$12)<<3); // Tektite  1
	//data_spawn(rm+STR_PRXM,TektA,$1,  $40<<3,(row0+$14)<<3); // Tektite  1
	data_spawn(rm+STR_PRXM,Myu_A,$1,  $40<<3,(row0+$14)<<3); // Myu  1


	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,ROWS6,  CLM3,row0+$0C,  "13"+"10");             // LFT 0,  
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,ROWS6,  clmA,row0+$0C,  "15"+"20");             // RGT 0,  


	data_rando_scene01("_00"+"_01"+"_01"+"_00"+"_00",rm);







	//   --------------------------  15  --------------------------- 
	//   CAVE. ------------------  HAMMER  ------------------------- 
	rm_num  = $15; 
	set_rm_data(area+hex_str(rm_num), MUS_THEWILD, STR_Dark+"00", STR_Tile+area_DM+"021", STR_ow_axis+"00", STR_show_ow_pos+"00", MapAreaName_DATAKEY+_MapAreaName_DEATH_MOUNTAIN);


	row3=row0+$16; y3=row3<<3; y4=(row3+$01)<<3;
	data_spawn(rm+STR_PRIO,TorchA,$1,  $08<<3,y4); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  $58<<3,y4); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRXM,DairA,$1,  $160,y3); // Daira  1
	data_spawn(rm+STR_PRXM,DairA,$2,  $2F0,y3); // Daira  2


	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  "14"+EXR0_); // LFT 0, 


	data_spawn(rm+STR_PRIO,ItmA6,$1,  $77<<3,(row3-$02)<<3); // HAMMER


	data_rando_scene01("_00"+"_00"+"_01"+"_00"+"_00",rm);








	//   --------------------------  16  --------------------------- 
	//   CAVE.  
	rm_num  = $16;
	set_rm_data(area+hex_str(rm_num), MUS_THEWILD, STR_Dark+"00", STR_Tile+area_DM+"016", STR_ow_axis+"00", STR_show_ow_pos+"00", MapAreaName_DATAKEY+_MapAreaName_DEATH_MOUNTAIN, dk_SceneMusicThemeException+"01");


	clm3=$50; clm4=clm3-$04; clm5=clm3-$01; // clm3: elevator center clm
	row3=row0+$16; y3=row3<<3;
	row4=row0+$0A; y4=(row4+$01)<<3;
	y5=(row0+$06)<<3;
	data_spawn(rm+STR_PRIO,TorchA,$1,  $08<<3,y4); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  (clm4<<3)+4,y3); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  $78<<3,y4); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRXM,DairA,$1,  $60<<3,y3); // Daira  1
	data_spawn(rm+STR_PRXM,GoriA,$2,  $32<<3,y3); // Goriya  2
	data_spawn(rm+STR_PRXM,LowdA,$1,  $2C<<3,y3); // Lowder  1
	data_spawn(rm+STR_PRXM,LowdA,$1,  $38<<3,y3); // Lowder  1


	data_exit(EXD0,etC0,1,  clm4,row_e2,  CLMS4,ROWS5,  clm5,row_e3,  "17"+EXU0_); // DWN 0, Elevator down 
	data_Elev(EXD0_, clm3,row0+$13);                                               // Elevator DW $40, 
	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row4,  0); // LFT 0, to Overworld 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row4,  0); // RGT 0, to Overworld 


	data_rando_scene01("_00"+"_01"+"_01"+"_01"+"_00",rm);








	//   --------------------------  17  --------------------------- 
	//   CAVE.  
	rm_num  = $17;
	set_rm_data(area+hex_str(rm_num), MUS_THEWILD, STR_Dark+"00", STR_Tile+area_DM+"019", STR_ow_axis+"00", STR_show_ow_pos+"00", MapAreaName_DATAKEY+_MapAreaName_DEATH_MOUNTAIN, dk_SceneMusicThemeException+"01");


	clm3=$50; clm4=clm3-$04; clm5=clm3-$01; // clm3: elevator center clm
	row3=row0+$16; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;
	row5=row0+$06; y5=row5<<3;
	data_spawn(rm+STR_PRIO,TorchA,$1,  $08<<3,y4); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  (clm4<<3)+4,y4); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  $78<<3,y4); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRXM,GoriA,$2,  $66<<3,y3); // Goriya  2
	data_spawn(rm+STR_PRXM,AcheA,$1,  $28<<3,y5); // Ache  1
	data_spawn(rm+STR_PRXM,AcheA,$1,  $60<<3,y5); // Ache  1
	data_spawn(rm+STR_PRXM,MegmA,$1,  $2C<<3,y3); // Megmat  1
	data_spawn(rm+STR_PRXM,MegmA,$1,  $2F<<3,y3); // Megmat  1
	data_spawn(rm+STR_PRXM,MegmA,$1,  $34<<3,y3); // Megmat  1
	data_spawn(rm+STR_PRXM,LowdA,$1,  $18<<3,(row0+$14)<<3); // Lowder  1


	data_exit(EXU0,etC0,1,  clm4,row_e0,  CLMS4,ROWS5,  clm5,row_e1,  "16"+EXD0_); // UP  0, Elevator up 
	data_Elev(EXU0_, clm3,row0+$14);                                               // Elevator UP $80, 
	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  0); // LFT 0, to Overworld 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  0); // RGT 0, to Overworld 


	data_rando_scene01("_00"+"_01"+"_01"+"_00"+"_01",rm);








	//   --------------------------  18  --------------------------- 
	//   CAVE.  
	rm_num  = $18;
	set_rm_data(area+hex_str(rm_num), MUS_THEWILD, STR_Dark+"00", STR_Tile+area_DM+"008", STR_ow_axis+"01", STR_show_ow_pos+"00", MapAreaName_DATAKEY+_MapAreaName_DEATH_MOUNTAIN, dk_SceneMusicThemeException+"01");


	clm3=$50; clm4=clm3-$04; clm5=clm3-$01; // clm3: elevator center clm
	row3=row0+$16; y3=row3<<3;
	row4=row3+$01; y4=row4<<3;
	row5=row3-$02; y5=row5<<3;
	row6=row0+$06; y6=row6<<3;
	data_spawn(rm+STR_PRIO,TorchA,$1,  $08<<3,y4); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  (clm4<<3)+4,y3); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  $78<<3,y4); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRXM,DairA,$1,  $6A<<3,y3); // Daira  1
	data_spawn(rm+STR_PRXM,AcheA,$1,  $12<<3,y6); // Ache  1
	data_spawn(rm+STR_PRXM,AcheA,$1,  $1C<<3,y6); // Ache  1
	data_spawn(rm+STR_PRXM,AcheA,$1,  $28<<3,y6); // Ache  1
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $16<<3,y5); // Bot  1
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $22<<3,y5); // Bot  1


	data_exit(EXD0,etC0,1,  clm4,row_e2,  CLMS4,ROWS5,  clm5,row_e3,  "19"+EXU0_); // DWN 0, Elevator down 
	data_Elev(EXD0_, clm3,row0+$13);                                               // Elevator DW $80, 
	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  0); // LFT 0, to Overworld 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  0); // RGT 0, to Overworld 


	data_rando_scene01("_00"+"_01"+"_01"+"_01"+"_00",rm);





 


	//   --------------------------  19  --------------------------- 
	//   CAVE.  
	rm_num  = $19;
	set_rm_data(area+hex_str(rm_num), MUS_THEWILD, STR_Dark+"00", STR_Tile+area_DM+"022", STR_ow_axis+"00", STR_show_ow_pos+"00", MapAreaName_DATAKEY+_MapAreaName_DEATH_MOUNTAIN, dk_SceneMusicThemeException+"01");


	clm3=$50; clm4=clm3-$04; clm5=clm3-$01; // clm3: elevator center clm
	row3=row0+$12; y3=row3<<3;
	row4=row0+$15; y4=row4<<3;
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($1F<<3)+4,y4); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  (clm4<<3)+4,(row0+$18)<<3); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  ($6B<<3)+4,y4); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,SpBaA,$1,  0,0); // BagoSpawner  1


	data_exit(EXU0,etC0,1,  clm4,row_e0,  CLMS4,ROWS5,  clm5,row_e1,  "18"+EXD0_); // UP  0, Elevator up 
	data_Elev(EXU0_, clm3,row0+$14);                                               // Elevator UP $80, 
	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,ROWS6,  CLM3,row3,  0); // LFT 0, to Overworld  
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,ROWS6,  clmA,row3,  0); // RGT 0, to Overworld  


	data_rando_scene01("_00"+"_01"+"_01"+"_00"+"_01",rm);








	//   --------------------------  1A  --------------------------- 
	//   CAVE.      MAGIC 2 
	rm_num  = $1A;
	set_rm_data(area+hex_str(rm_num), MUS_THEWILD, STR_Dark+"00", STR_Tile+area_DM+"026", STR_ow_axis+"00", STR_show_ow_pos+"00", MapAreaName_DATAKEY+_MapAreaName_DEATH_MOUNTAIN);


	row3=row0+$16; y3=row3<<3; y4=(row3+$01)<<3;
	data_spawn(rm+STR_PRIO,TorchA,$1,  $08<<3,(row0+$0B)<<3); // v1: Light w/ CANDLE or FIRE


	data_exit(EXU0,etA0,0,  $2C,row_e0,  $08,ROWS5,  $2F,row_e4,  0); // UP  0, Pit up to Overworld
	//data_exit(EXU0,etA0,0,  -$20,row_e0,  clms1,ROWS5,  $2F,row_e4,  0); // UP  0, Pit up to Overworld
	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row0+$0A,  0); // LFT 0, to Overworld
	//data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row0+$0A,  '25'+EXR0_); // LFT 0, 


	data_spawn(rm+STR_PRIO,CONT_PIECE_OBJ_MP,CONT_PIECE_OBJ_VER_MP,  $2E<<3,y3+$10,  STR_Treasure+STR_Map+"01"); // MAGIC PIECE


	data_rando_scene01("_00"+"_00"+"_01"+"_00"+"_01"+STR_Pit+"8",rm);







	//   --------------------------  1B  --------------------------- 
	//    
	rm_num  = $1B;








	//   --------------------------  1C  --------------------------- 
	//    Cave. Death Mtn E exit  
	rm_num  = $1C;
	set_rm_data(area+hex_str(rm_num), MUS_THEWILD, STR_Dark+"00", STR_Tile+area_DM+"001", STR_ow_axis+"01", STR_show_ow_pos+"00", MapAreaName_DATAKEY+_MapAreaName_DEATH_MOUNTAIN);


	row3=row0+$16; y3=row3<<3; y4=(row3+$01)<<3;
	data_spawn(rm+STR_PRIO,TorchA,$1,  $08<<3,(row0+$0B)<<3); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  $78<<3,(row3+$01)<<3); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $1C<<3,(row0+$0E)<<3); // Bot  1 
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $3C<<3,(row0+$12)<<3); // Bot  1 
	data_spawn(rm+STR_PRXM,MegmA,$1,  $20<<3,(row0+$0A)<<3); // Megmat  1 
	data_spawn(rm+STR_PRXM,MegmA,$1,  $42<<3,(row0+$10)<<3); // Megmat  1 


	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row0+$0A,  0); // LFT 0, to Overworld
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  0); // RGT 0, to Overworld


	data_rando_scene01("_00"+"_01"+"_01"+"_00"+"_00",rm);








	//   --------------------------  1D  --------------------------- 
	//   Desert encounter               - ENCOUNTER -  
	rm_num  = $1D; 
	set_rm_data(area+hex_str(rm_num), MUS_THEWILD, STR_Color+COLOR3_, STR_Tile+area_WA+"030", STR_ow_axis+"00", STR_Encounter+hex_str(ENC_A1), MapAreaName_DATAKEY+_MapAreaName_DEATH_MOUNTAIN, dk_SceneMusicThemeException+"01");


	data_NIAO_1a(rm+STR_NIAO+"0", $0000, 1, Cloud_1_init); //   


	data_spawn(rm+STR_PRXM,GeldA,$1,  $A0,$80); // $96: Geldarm  1
	data_spawn(rm+STR_PRXM,GeldA,$1,  $E0,$80); // $96: Geldarm  1
	data_spawn(rm+STR_PRXM,GeldA,$1,  $1A0,$60); // $96: Geldarm  1
	data_spawn(rm+STR_PRXM,GeldA,$1,  $210,$80); // $96: Geldarm  1
	data_spawn(rm+STR_PRXM,GeldA,$1,  $280,$80); // $96: Geldarm  1

	data_spawn(rm+STR_PRIO,SpRoA,$1,  $F0,$C0); // $67: RockSpawner  1

	data_spawn(rm+STR_PRXM,LowdA,$1,  $70,$B0,  STR_Strong+STR_Encounter); // $9E: Lowder  1
	data_spawn(rm+STR_PRXM,GoriA,$3,  $A0,$A0,  STR_Strong+STR_Encounter); // $9A: Goriya  3
	data_spawn(rm+STR_PRXM,GoriA,$3,  $260,$A0,  STR_Strong+STR_Encounter); // $9A: Goriya  3
	data_spawn(rm+STR_PRXM,LowdA,$1,  $2A0,$B0,  STR_Strong+STR_Encounter); // $9E: Lowder  1


	row3 = row0+$12;
	row4 = row0+$14;
	data_exit(EXM0,etB0,0,  $30,row3,  CLMS2,ROWS2,  CLM5,row3,  0); // MID 0, to Overworld 
	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,ROWS6,  CLM3,row4,  0); // LFT 0, to Overworld 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,ROWS6,  clmA,row4,  0); // RGT 0, to Overworld 









	//   --------------------------  1E  --------------------------- 
	//    
	rm_num  = $1E;








	//   --------------------------  1F  --------------------------- 
	//    Cave from West Death Mtn to hole
	rm_num  = $1F;
	set_rm_data(area+hex_str(rm_num), MUS_THEWILD, STR_Dark+"00", STR_Tile+area_DM+"027", STR_ow_axis+"00", STR_show_ow_pos+"00", MapAreaName_DATAKEY+_MapAreaName_DEATH_MOUNTAIN, dk_SceneMusicThemeException+"01");


	row3=row0+$0C; y3=row3<<3;
	row4=row0+$08; y4=row4<<3;
	data_spawn(rm+STR_PRIO,TorchA,$1,  $08<<3,(row3+$01)<<3); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRIO,TorchA,$1,  $77<<3,(row4+$01)<<3); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRXM,Myu_A,$1,  $24<<3,(row0+$0E)<<3); // Myu  1
	data_spawn(rm+STR_PRXM,Myu_A,$1,  $2A<<3,(row0+$0E)<<3); // Myu  1
	data_spawn(rm+STR_PRXM,Myu_A,$1,  $36<<3,(row0+$14)<<3); // Myu  1
	data_spawn(rm+STR_PRXM,Myu_A,$1,  $50<<3,(row0+$14)<<3); // Myu  1
	data_spawn(rm+STR_PRXM,Myu_A,$1,  $66<<3,(row0+$10)<<3); // Myu  1


	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,ROWS6,  CLM3,row3,  0); // LFT 0, to Overworld 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,ROWS6,  clmA,row4,  0); // RGT 0, to Overworld 






	//   --------------------------  20  --------------------------- 
	/*
	//    Death Mtn - Secret volcanic caves - West entrance
	rm_num  = $20;
	set_rm_data(area+hex_str(rm_num), MUS_THEWILD, STR_Color+COLOR2_, STR_Tile+area_DM+'028', STR_ow_axis+'00', MapAreaName_DATAKEY+_MapAreaName_DEATH_MOUNTAIN);


	data_NIAO_1a(rm+STR_NIAO+'0', $0000, 1, Cloud_1_init); //   
	data_spawn(rm+STR_PRXM,Myu_A,$1,  $10<<3,y2); // $A7: Myu  1 
	data_spawn(rm+STR_PRXM,Myu_A,$1,  $2E<<3,(row0+$16)<<3); // $A7: Myu  1 


	row3 = row0+$16;
	row4 = row0+$1F;
	clm3 = -PAGE_CLMS;
	data_exit(EXD0,etA1,1,  clm3,row4,  clms1,ROWS5,  clm1-3,row_e3,  '21'+EXU0_); // DWN 0, Pit down 
	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,ROWS6,  CLM3,row3,  0); // LFT 0, to Overworld 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,ROWS6,  clmA,row3,  0); // RGT 0, to Overworld 
	*/






	//   --------------------------  21  --------------------------- 
	//    Death Mtn - Secret volcanic caves - 
	rm_num  = $21;
	set_rm_data(area+hex_str(rm_num), MUS_THEWILD, STR_Tile+area_DM+"029", STR_ow_axis+"01", STR_show_ow_pos+"00", MapAreaName_DATAKEY+_MapAreaName_DEATH_MOUNTAIN);


	row3=row0+$14;
	//data_spawn(rm+STR_PRIO,TorchA,$1,  $0A<<3,(row3+$01)<<3); // v1: Light w/ CANDLE or FIRE
	//data_spawn(rm+STR_PRIO,TorchA,$1,  (clms0-8)<<3,(row0+$0B)<<3); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRXM,Myu_A,$1,  $10<<3,(row3+$02)<<3); // Myu  1 
	data_spawn(rm+STR_PRXM,Myu_A,$1,  $4E<<3,(row0+$0E)<<3); // Myu  1 
	data_spawn(rm+STR_PRXM,DeelA,$1,  $38<<3,(row0+$08)<<3,  STR_Distance+hex_str($0E<<3)); // Deeler  1 


	data_exit(EXU0,etA0,0,  $0C,row_e0,  $08,ROWS5,  $0F,row_e4,  "20"+EXD0_); // UP  0, Pit up 
	//data_exit(EXU0,etA0,0,  $00,row_e0,  clms0,ROWS5,  $0F,row_e4,  '20'+EXD0_); // UP  0, Pit up 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row0+$0A,  "22"+EXL0_); // RGT 0, 


	data_rando_scene01("_00"+"_01"+"_00"+"_00"+"_01"+STR_Pit+"8",rm);








	//  =============================================================================
	ow_axis = 0;

	//   --------------------------  22  --------------------------- 
	//    Death Mtn - Secret volcanic caves - 
	rm_num  = $22;
	set_rm_data(area+hex_str(rm_num), MUS_THEWILD, STR_Tile+area_DM+"030", STR_ow_axis+hex_str(ow_axis), STR_show_ow_pos+"00", MapAreaName_DATAKEY+_MapAreaName_DEATH_MOUNTAIN);


	y3 = (row0+$11)<<3;
	//data_spawn(rm+STR_PRIO,TorchA,$1,  $09<<3,y3); // v1: Light w/ CANDLE or FIRE
	//data_spawn(rm+STR_PRIO,TorchA,$1,  (clms0-8)<<3,y3); // v1: Light w/ CANDLE or FIRE
	clm3 = $12;
	y3 = (row0+$05)<<3;
	data_spawn(rm+STR_PRXM,AcheA,$1,  $44<<3,y3); // $88: Ache  1
	data_spawn(rm+STR_PRXM,AcheA,$1,  $50<<3,y3); // $88: Ache  1
	data_spawn(rm+STR_PRXM,AcheA,$1,  $5C<<3,y3); // $88: Ache  1


	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,ROWS6,  CLM3,row0+$08,  "21"+EXR0_); // LFT 0, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,ROWS6,  clmA,row0+$10,  "23"+EXL0_); // RGT 0, 


	data_spawn(rm+STR_PRIO,ItmG0,$1,  $4C<<3,(row0+$13)<<3,  STR_Treasure+STR_Map+"01"); // Extra Life Doll







	//   --------------------------  23  --------------------------- 
	//    Death Mtn - Secret volcanic caves - Under south entrance
	rm_num  = $23;
	set_rm_data(area+hex_str(rm_num), MUS_THEWILD, STR_Tile+area_DM+"031", STR_ow_axis+hex_str(ow_axis), STR_show_ow_pos+"00", MapAreaName_DATAKEY+_MapAreaName_DEATH_MOUNTAIN);


	//data_spawn(rm+STR_PRIO,TorchA,$1,  $08<<3,(row0+$13)<<3); // v1: Light w/ CANDLE or FIRE
	//data_spawn(rm+STR_PRIO,TorchA,$1,  (clms0-9)<<3,(row0+$03)<<3); // v1: Light w/ CANDLE or FIRE
	//data_spawn(rm+STR_PRIO,TorchA,$1,  ($1C<<3)+4,(row0+$0F)<<3); // v1: Light w/ CANDLE or FIRE
	y3  = ((row0+$08)<<3)-3;
	data_spawn(rm+STR_PRXM,DeelA,$1,  $10<<3,y3,  STR_Distance+hex_str($0C<<3)); // Deeler  1 
	data_spawn(rm+STR_PRXM,DeelA,$1,  $34<<3,y3,  STR_Distance+hex_str($0C<<3)); // Deeler  1 
	data_spawn(rm+STR_PRXM,Myu_A,$1,  $50<<3,(row0+$16)<<3); // Myu  1 


	row5 = -PAGE_ROWS;
	clm3 = $20; // Elevator center clm
	data_exit(EXU0,etC0,1,  clm3-4,row0-$0F,  CLMS4,ROWS5,  clm3-1,row0+$05,  "2F"+EXD0_); // UP  0, Elevator up 
	data_Elev(EXU0_, clm3,row0+$0C);                                            // Elevator UP $80, 
	data_exit(EXL0,etA0,1,  CLM2,row5,  CLMS2,rows1,  CLM3,row0+$12,  "22"+EXR0_); // LFT 0, 
	data_exit(EXR0,etA0,1,  clm2,row5,  CLMS2,rows1,  clmA,row0+$02,  "30"+EXL0_); // RGT 0, 






	//   --------------------------  24  --------------------------- 
	//    Water shoals btm-rgt of DthMt, BOOTS locked
	rm_num  = $24;
	set_rm_data(area+hex_str(rm_num), MUS_THEWILD, STR_Color+COLOR3_, STR_Tile+area_DM+"032", STR_ow_axis+"00", STR_show_ow_pos+"00", MapAreaName_DATAKEY+_MapAreaName_DEATH_MOUNTAIN, dk_SceneMusicThemeException+"01");


	row3 = row0+$14;
	data_NIAO_1a(rm+STR_NIAO+"0", $0000, 1, Cloud_1_init); // 
	y3 = (row0+$1A)<<3;
	y4 = (row0+$16)<<3;
	data_spawn(rm+STR_PRXM,OctoA,$1,  $1A<<3,y3); // $A8: Octorok  1 
	data_spawn(rm+STR_PRXM,OctoA,$1,  $28<<3,y4); // $A8: Octorok  1 
	data_spawn(rm+STR_PRXM,OctoA,$1,  $48<<3,y3); // $A8: Octorok  1 
	data_spawn(rm+STR_PRXM,OctoA,$1,  $5C<<3,y4); // $A8: Octorok  1 
	row3 = row0+$14;


	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,ROWS6,  CLM3,row3,  0); // LFT 0, to Overworld 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,ROWS6,  clmA,row0+$18,  0); // RGT 0, to Overworld 


	data_spawn(rm+STR_PRIO,CONT_PIECE_OBJ_MP,CONT_PIECE_OBJ_VER_MP,  $65<<3,row3<<3,  STR_Treasure+STR_Map+"01"); // MAGIC PIECE
	//data_spawn(rm+STR_PRIO,CONT_PIECE_OBJ_MP,CONT_PIECE_OBJ_VER_MP,  $65<<3,row3<<3,  STR_Treasure+STR_Map+"02"); // MAGIC PIECE


	data_rando_scene01("_00"+"_01"+"_01"+"_00"+"_00",rm);






	//   --------------------------  25  --------------------------- 
	/*
	//      Exiting MAGIC PIECE rm under boulder
	rm_num  = $25;  
	set_rm_data(area+hex_str(rm_num), MUS_THEWILD, STR_Dark+'01', STR_Tile+area_WA+'027', STR_ow_axis+'00', STR_show_ow_pos+'00');


	data_spawn(rm+STR_PRIO,TorchA,$1,  (clms0-8)<<3,(row0+$17)<<3); // v1: Light w/ CANDLE or FIRE
	data_spawn(rm+STR_PRXM,Bot_A,$2,  $0C<<3,(row0+$0A)<<3); // Bot  2
	data_spawn(rm+STR_PRXM,Bot_A,$2,  $1C<<3,(row0+$14)<<3); // Bot  2
	data_spawn(rm+STR_PRXM,Bot_A,$2,  $29<<3,(row0+$16)<<3); // Bot  2


	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row0-$02,  0); // LFT 0, to Overworld
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row0+$16,  '1A'+EXL0_); // RGT 0, 
	*/






	//   --------------------------  26  --------------------------- 
	//    
	rm_num  = $26;


	//   --------------------------  27  --------------------------- 
	//   Forest encounter               - ENCOUNTER -  
	rm_num  = $27;
	set_rm_data(area+hex_str(rm_num), MUS_THEWILD, STR_Tile+area_WA+"040", STR_ow_axis+"00", STR_Encounter+hex_str(ENC_A1), MapAreaName_DATAKEY+_MapAreaName_DEATH_MOUNTAIN, dk_SceneMusicThemeException+"01");


	row3=row0+$17; y3=row3<<3; row4=row0+$0B; y4=row4<<3;
	data_spawn(rm+STR_PRXM,MoblA,$2,  $0E<<3,y3); // Moblin  2 
	data_spawn(rm+STR_PRXM,MoblA,$2,  $52<<3,y3); // Moblin  2 
	data_spawn(rm+STR_PRXM,DeelA,$2,  $16<<3,y4); // Deeler  2 
	data_spawn(rm+STR_PRXM,DeelA,$2,  $4E<<3,y4); // Deeler  2 
	data_spawn(rm+STR_PRXM,DeelA,$1,  $3A<<3,y4); // Deeler  1 

	data_spawn(rm+STR_PRIO,SpMoA,$1,  $00<<3,(row0+$00)<<3,STR_Strong+STR_Encounter); // MobySpawner  1 
	data_spawn(rm+STR_PRXM,MoblA,$3,  $0A<<3,y3,STR_Strong+STR_Encounter); // Moblin  3 
	data_spawn(rm+STR_PRXM,MoblA,$3,  $52<<3,y3,STR_Strong+STR_Encounter); // Moblin  3 
	data_spawn(rm+STR_PRXM,DeelA,$2,  $0E<<3,y4,STR_Strong+STR_Encounter); // Deeler  2 
	data_spawn(rm+STR_PRXM,DeelA,$2,  $4A<<3,y4,STR_Strong+STR_Encounter); // Deeler  2 


	data_exit(EXM0,etB0,0,  clm1,row3,  CLMS2,ROWS2,  clm1,row3,  0); // MID 0, to Overworld 
	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row3,  0); // LFT 0, to Overworld 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row3,  0); // RGT 0, to Overworld 







	//   --------------------------  28  --------------------------- 
	//    
	rm_num  = $28;





	//   --------------------------  29  --------------------------- 
	//    
	rm_num  = $29;







	//   --------------------------  2A  --------------------------- 
	//    
	rm_num  = $2A; 



	//   --------------------------  2B  --------------------------- 
	//    
	rm_num  = $2B; 



	//   --------------------------  2C  --------------------------- 
	//    Bridge between Saria & DthMt
	rm_num  = $2C;
	set_rm_data(area+hex_str(rm_num), MUS_THEWILD, STR_Color+COLOR3_, STR_Tile+area_DM+"038", STR_ow_axis+"01", MapAreaName_DATAKEY+_MapAreaName_DEATH_MOUNTAIN);


	data_NIAO_1a(rm+STR_NIAO+"0", $0000, 1, Cloud_1_init); // 
	y3 = (row0+$05)<<3;
	y4 = y3-$10;
	data_spawn(rm+STR_PRXM,LowdA,$1,  $1E<<3,y3); // Lowder  1 
	data_spawn(rm+STR_PRXM,LowdA,$1,  $3E<<3,y3); // Lowder  1 
	data_spawn(rm+STR_PRXM,LowdA,$1,  $5E<<3,y3); // Lowder  1 
	data_spawn(rm+STR_PRXM,MoblA,$2,  $2E<<3,y4); // Moblin  2 
	data_spawn(rm+STR_PRXM,MoblA,$2,  $5E<<3,y4); // Moblin  2 
	y3 = (row0+$1A)<<3;
	y4 = (row0+$16)<<3;
	data_spawn(rm+STR_PRXM,BagiA,$1,  $16<<3,y3); // Bagin
	data_spawn(rm+STR_PRXM,BagiA,$1,  $4F<<3,y3); // Bagin
	data_spawn(rm+STR_PRXM,BagiA,$1,  $76<<3,y3); // Bagin
	data_spawn(rm+STR_PRXM,OctoA,$1,  $22<<3,y4); // Octorok  1 
	data_spawn(rm+STR_PRXM,OctoA,$1,  $3D<<3,y4); // Octorok  1 
	data_spawn(rm+STR_PRXM,OctoA,$1,  $5A<<3,y4); // Octorok  1 


	row3  = row0+$08;
	rows3 = PAGE_ROWS;
	rows4 = rows3+row3;
	rows5 =(rows0-row3)+PAGE_ROWS;
	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,ROWS6,  CLM3,row0+$02,  0); // LFT 0, to Overworld 
	data_exit(EXR0,etA0,1,  clm2,-rows3,  CLMS2,rows4,  clmA,row0+$03,  0); // RGT 0, to Overworld 
	data_exit(EXR1,etA0,1,  clm2,row3,  CLMS2,rows5,  clmA,row0+$14,  "2D"+EXL0_); // RGT 1, 


	data_spawn(rm+STR_PRIO,Kakusu002,$1,  $0A<<3,(row0+$16)<<3,  STR_Treasure+STR_Map+"01"); // Idle, sitting under bridge


	//data_rando_scene01("_00"+"_01"+"_01"+"_00"+"_00",rm);






	//   --------------------------  2D  --------------------------- 
	//    Path to lower part(under the bridge) of 2C. 
	rm_num  = $2D;
	set_rm_data(area+hex_str(rm_num), MUS_THEWILD, STR_Color+COLOR3_, STR_Tile+area_DM+"033", STR_ow_axis+"00", MapAreaName_DATAKEY+_MapAreaName_DEATH_MOUNTAIN);


	data_NIAO_1a(rm+STR_NIAO+"0",  $0000,  1,Cloud_1_init); // 
	y3=(row0+$1A)<<3;
	data_spawn(rm+STR_PRXM,BagiA,$1,  $17<<3,y3); // Bagin
	data_spawn(rm+STR_PRXM,BagiA,$1,  $2D<<3,y3); // Bagin
	data_spawn(rm+STR_PRXM,OctoA,$1,  $1C<<3,(row0+$10)<<3); // Octorok  1 


	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,rows1,  CLM3,row0+$12,  "2C"+EXR1_); // LFT 0, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row0+$0C,  0); // RGT 0, to Overworld 


	data_rando_scene01("_00"+"_01"+"_01"+"_00"+"_00",rm);






	//   --------------------------  2E  --------------------------- 
	//    Path to lower part(under the bridge) of 2C. Next to DthMt east bridge exit. 
	rm_num  = $2E;
	/*
	set_rm_data(area+hex_str(rm_num), MUS_THEWILD, STR_Color+COLOR3_, STR_Tile+area_DM+'040', STR_ow_axis+'01', MapAreaName_DATAKEY+_MapAreaName_DEATH_MOUNTAIN);


	data_NIAO_1a(rm+STR_NIAO+'0', $0000, 1, Cloud_1_init); // 
	y3 = (row0+$16)<<3;
	y4 = (row0+$1A)<<3;
	data_spawn(rm+STR_PRXM,OctoA,$1,  $16<<3,y3); // Octorok  1 
	data_spawn(rm+STR_PRXM,OctoA,$1,  $29<<3,y3); // Octorok  1 
	data_spawn(rm+STR_PRXM,OctoA,$1,  $3C<<3,y4); // Octorok  1 
	data_spawn(rm+STR_PRXM,OctoA,$1,  $4E<<3,y4); // Octorok  1 


	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,ROWS6,  CLM3,row0+$14,  0); // LFT 0, to Overworld 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,ROWS6,  clmA,row0+$18,  0); // RGT 0, to Overworld 
	*/






	//   --------------------------  2F  --------------------------- 
	//    Death Mtn - Secret volcanic caves - South entrance
	rm_num  = $2F; 
	set_rm_data(area+hex_str(rm_num), MUS_THEWILD, STR_Dark+"00", STR_Tile+area_DM+"012", STR_ow_axis+"01", STR_show_ow_pos+"00", MapAreaName_DATAKEY+_MapAreaName_DEATH_MOUNTAIN);


	data_spawn(rm+STR_PRIO,TorchA,$1,  $37<<3,(row0+$17)<<3); // v1: Light w/ CANDLE or FIRE


	clm3=$10; clm4=clm3-$04; clm5=clm3-$01; // clm3: elevator center clm
	data_exit(EXD0,etC0,1,  clm4,row_e2,  CLMS4,ROWS5,  clm5,row_e3,  "23"+EXU0_); // DWN 0, Elevator down 
	data_Elev(EXD0_,  clm3,row0+$13);                                        // Elevator DW $40, 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,rows1,  clmA,row0+$16,  0); // RGT 0, to Overworld


	data_rando_scene01("_00"+"_01"+"_00"+"_01"+"_00",rm);








	//  =======================================================================
	ow_axis = 0;

	//   --------------------------  30  --------------------------- 
	//    Death Mtn - Secret volcanic caves - 
	rm_num  = $30;
	set_rm_data(area+hex_str(rm_num), MUS_THEWILD, STR_Tile+area_DM+"014", STR_ow_axis+hex_str(ow_axis), STR_show_ow_pos+"00", MapAreaName_DATAKEY+_MapAreaName_DEATH_MOUNTAIN);


	//data_spawn(rm+STR_PRIO,TorchA,$1,  $08<<3,(row0+$0F)<<3); // v1: Light w/ CANDLE or FIRE
	//data_spawn(rm+STR_PRIO,TorchA,$1,  (clms0-9)<<3,(row0+$15)<<3); // v1: Light w/ CANDLE or FIRE
	y3  = (row0+$1A)<<3;
	_val = DEPTH_BG1;
	data_spawn(rm+STR_PRXM,BagiA,$1,  $0B<<3,y3,  STR_Depth+string(_val)); // Bagin
	data_spawn(rm+STR_PRXM,BagiA,$1,  $1A<<3,y3,  STR_Depth+string(_val)); // Bagin
	data_spawn(rm+STR_PRXM,BagiA,$1,  $44<<3,y3,  STR_Depth+string(_val)); // Bagin
	data_spawn(rm+STR_PRXM,BagiA,$1,  $4F<<3,y3,  STR_Depth+string(_val)); // Bagin
	y3 = (row0+$07)<<3;
	data_spawn(rm+STR_PRXM,AcheA,$1,  $28<<3,y3); // Ache  1
	data_spawn(rm+STR_PRXM,AcheA,$1,  $36<<3,y3); // Ache  1


	row3 = row0+$0A;
	row5 = -PAGE_ROWS;
	data_exit(EXL0,etA0,1,  CLM2,row5,  CLMS2,rows1,  CLM3,row0+$06,  "23"+EXR0_); // LFT 0, 
	data_exit(EXR0,etA0,1,  clm2,row5,  CLMS2,rows1,  clmA,row0+$14,  "31"+EXL0_); // RGT 0, 


	clm3=$2C; y3=(row0+$14)<<3;
	data_spawn(rm+STR_PRIO,ItmAF,$1,  (clm3<<3)+4,y3); // RING


	data_rando_scene01("_00"+"_01"+"_01"+"_00"+"_00",rm);








	//   --------------------------  31  --------------------------- 
	//    Boulder Circle secret
	rm_num  = $31;
	set_rm_data(area+hex_str(rm_num), MUS_THEWILD, STR_Tile+area_DM+"013", STR_ow_axis+hex_str(ow_axis), STR_show_ow_pos+"00", MapAreaName_DATAKEY+_MapAreaName_DEATH_MOUNTAIN);


	//data_spawn_2a(STR_Challenge,Challenge_IntermittentPlatformSequence,4,  $00,$00, -1, STR_HIDDEN+hex_str(TID_HIDE_1&$F)); // 
	y3  = (row0+$13)<<3;
	//data_spawn(rm+STR_PRIO,TorchA,$1,  $4A<<3,y3); // v1: Light w/ CANDLE or FIRE
	//data_spawn(rm+STR_PRIO,TorchA,$1,  $08<<3,y3); // v1: Light w/ CANDLE or FIRE
	y3  = (row0+$1A)<<3;
	_val = DEPTH_BG1;
	data_spawn(rm+STR_PRXM,BagiA,$1,  $14<<3,y3,  STR_Depth+string(_val)); // Bagin
	data_spawn(rm+STR_PRXM,BagiA,$1,  $1F<<3,y3,  STR_Depth+string(_val)); // Bagin
	data_spawn(rm+STR_PRXM,BagiA,$1,  $2C<<3,y3,  STR_Depth+string(_val)); // Bagin
	y3  = (row0+$14)<<3;
	data_spawn(rm+STR_PRXM,Myu_A,$1,  $55<<3,y3); // Myu  1 


	data_exit(EXU0,etA0,0,  $4C,row_e0,  $08,ROWS5,  $4F,row_e4,  0); // UP  0, Pit up, to Overworld
	//data_exit(EXU0,etA0,0,  $40,row_e0,  PAGE_CLMS,ROWS5,  $4F,row_e4,  0); // UP  0, Pit up, to Overworld
	data_exit(EXL0,etA0,1,  CLM2,-PAGE_ROWS,  CLMS2,rows1,  CLM3,row0+$12,  "30"+EXR0_); // LFT 0, 


	data_rando_scene01("_00"+"_00"+"_01"+"_00"+"_01"+STR_Pit+"8",rm);






	//   --------------------------  32  --------------------------- 
	//   Field encounter 2         - ENCOUNTER -   
	rm_num  = $32;
	set_rm_data(area+hex_str(rm_num), MUS_THEWILD, STR_Color+COLOR2_, STR_Tile+area_WA+"034", STR_ow_axis+"00", STR_Encounter+hex_str(ENC_A1), dk_SceneMusicThemeException+"01");


	data_NIAO_1a(rm+STR_NIAO+"0",  $0000,  1,Cloud_1_init);
	row3=row0+$16; y3=row3<<3;
	row4=row3+$02; y4=row4<<3;
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $1C<<3,y4); // Bot  1 
	data_spawn(rm+STR_PRXM,Bot_A,$1,  $3C<<3,y4); // Bot  1 
	data_spawn(rm+STR_PRXM,MegmA,$1,  $20<<3,y4); // Megmat  1 
	data_spawn(rm+STR_PRXM,MegmA,$1,  $42<<3,y4); // Megmat  1 

	data_spawn(rm+STR_PRXM,MegmA,$1,  $0C<<3,y4,STR_Strong+STR_Encounter); // Megmat  1 
	data_spawn(rm+STR_PRXM,GoriA,$1,  $20<<3,y3,STR_Strong+STR_Encounter); // Goriya  1 
	data_spawn(rm+STR_PRXM,GoriA,$1,  $3E<<3,y3,STR_Strong+STR_Encounter); // Goriya  1 


	data_exit(EXM0,etB0,0,  $30,row3,  CLMS2,ROWS2,  CLM5,row3,  0); // MID 0, to Overworld 
	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,ROWS6,  CLM3,row3,  0); // LFT 0, to Overworld 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,ROWS6,  clmA,row3,  0); // RGT 0, to Overworld 








	//   --------------------------  33  --------------------------- 
	//    Volcano               - ENCOUNTER -  
	rm_num  = $33;
	set_rm_data(area+hex_str(rm_num), MUS_THEWILD, STR_Tile+area_EA+"060", STR_ow_axis+"00", STR_Encounter+hex_str(ENC_A1), dk_SceneMusicThemeException+"01");


	row3=row0+$12; y3=row3<<3;
	row4=row3-$02; y4=row4<<3;
	row5=row3-$04; y5=row5<<3;
	data_spawn(rm+STR_PRXM,Moa_A,$2,  $0A<<3,y5); // Moa  2 
	data_spawn(rm+STR_PRXM,Moa_A,$2,  $20<<3,y4); // Moa  2 
	data_spawn(rm+STR_PRXM,Moa_A,$2,  $32<<3,y5); // Moa  2 
	data_spawn(rm+STR_PRXM,Moa_A,$2,  $52<<3,y4); // Moa  2 
	data_spawn(rm+STR_PRXM,GiruA,$1,  $16<<3,y4); // Girubokku  1 
	data_spawn(rm+STR_PRXM,GiruA,$1,  $42<<3,y3); // Girubokku  1 

	data_spawn(rm+STR_PRXM,Moa_A,$2,  $0E<<3,y5,STR_Strong+STR_Encounter); // Moa  2 
	data_spawn(rm+STR_PRXM,Moa_A,$2,  $1C<<3,y4,STR_Strong+STR_Encounter); // Moa  2 
	data_spawn(rm+STR_PRXM,Moa_A,$2,  $32<<3,y5,STR_Strong+STR_Encounter); // Moa  2 
	data_spawn(rm+STR_PRXM,Moa_A,$2,  $4C<<3,y4,STR_Strong+STR_Encounter); // Moa  2 
	data_spawn(rm+STR_PRXM,GeruA,$3,  $0A<<3,y3,STR_Strong+STR_Encounter); // Geru  3 
	data_spawn(rm+STR_PRXM,GeruA,$3,  $44<<3,y3,STR_Strong+STR_Encounter); // Geru  3 


	data_exit(EXM0,etB0,0,  $30,row3,  CLMS2,ROWS2,  CLM5,row3,  0); // MID 0, to Overworld 
	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,ROWS6,  CLM3,row3+$02,  0); // LFT 0, to Overworld 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,ROWS6,  clmA,row3-$02,  0); // RGT 0, to Overworld 








	//   --------------------------  34  --------------------------- 
	//   Cemetery encounter               - ENCOUNTER -  
	rm_num  = $34;
	set_rm_data(area+hex_str(rm_num), MUS_THEWILD, STR_Color+COLOR4_, STR_Tile+area_WA+"053", STR_ow_axis+"00", STR_Encounter+hex_str(ENC_A1), MapAreaName_DATAKEY+_MapAreaName_DEATH_MOUNTAIN, dk_SceneMusicThemeException+"01");


	row3=row0+$16; y3=row3<<3; y4=(row3+$01)<<3;
	data_NIAO_1a(rm+STR_NIAO+"0",  $0000,  1,Cloud_1_init);
	data_spawn(rm+STR_PRXM,Moa_A,$1,  $96,(row0+$16)<<3); // Moa  1
	data_spawn(rm+STR_PRXM,Moa_A,$1,  $80,(row0+$10)<<3); // Moa  1
	data_spawn(rm+STR_PRXM,Moa_A,$1,  $E0,(row0+$16)<<3); // Moa  1
	data_spawn(rm+STR_PRXM,Moa_A,$1,  $100,(row0+$14)<<3); // Moa  1
	data_spawn(rm+STR_PRXM,Moa_A,$1,  $1D0,(row0+$0C)<<3); // Moa  1
	data_spawn(rm+STR_PRXM,Moa_A,$1,  $1F0,(row0+$14)<<3); // Moa  1
	data_spawn(rm+STR_PRXM,Moa_A,$1,  $290,(row0+$10)<<3); // Moa  1
	data_spawn(rm+STR_PRXM,Moa_A,$1,  $2E0,(row0+$12)<<3); // Moa  1

	data_spawn(rm+STR_PRXM,DairA,$2,  $90,(row0+$16)<<3,STR_Strong+STR_Encounter); // Daira  2
	data_spawn(rm+STR_PRXM,DairA,$2,  $250,(row0+$10)<<3,STR_Strong+STR_Encounter); // Daira  2
	data_spawn(rm+STR_PRXM,Moa_A,$1,  $50,(row0+$0E)<<3,STR_Strong+STR_Encounter); // Moa  1
	data_spawn(rm+STR_PRXM,Moa_A,$1,  $D0,(row0+$14)<<3,STR_Strong+STR_Encounter); // Moa  1
	data_spawn(rm+STR_PRXM,Moa_A,$1,  $1F0,(row0+$12)<<3,STR_Strong+STR_Encounter); // Moa  1
	data_spawn(rm+STR_PRXM,Moa_A,$1,  $2A0,(row0+$0E)<<3,STR_Strong+STR_Encounter); // Moa  1


	row4=row0+$14;
	data_exit(EXM0,etB0,0,  $30,row4,  CLMS2,ROWS2,  CLM5,row4,  0); // MID 0, to Overworld 
	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,ROWS6,  CLM3,row3,  0); // LFT 0, to Overworld 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,ROWS6,  clmA,row3,  0); // RGT 0, to Overworld 









	//   --------------------------  35  --------------------------- 
	//    
	rm_num  = $35; 



	//   --------------------------  36  --------------------------- 
	//    
	rm_num  = $36; 



	//   --------------------------  37  --------------------------- 
	//    
	rm_num  = $37; 



	//   --------------------------  38  --------------------------- 
	//    
	rm_num  = $38; 



	//   --------------------------  39  --------------------------- 
	//   Path encounter               - ENCOUNTER -  
	rm_num  = $39;

	set_rm_data(area+hex_str(rm_num), MUS_THEWILD, STR_Color+COLOR3_, STR_Tile+area_WA+"058", STR_ow_axis+"00", STR_Encounter+hex_str(ENC_B1), MapAreaName_DATAKEY+_MapAreaName_DEATH_MOUNTAIN, dk_SceneMusicThemeException+"01");


	data_NIAO_1a(rm+STR_NIAO+"0", $0000, 1, Cloud_1_init); //   


	row3 = row2-2;
	data_exit(EXM0,etB0,0,  clm1,row3,  CLMS2,ROWS2,  clm1+1,row3,  0); // MID 0, to Overworld 
	data_exit(EXL0,etA0,1,  CLM2,ROW0,  CLMS2,ROWS6,  CLM3,row3,  0); // LFT 0, to Overworld 
	data_exit(EXR0,etA0,1,  clm2,ROW0,  CLMS2,ROWS6,  clmA,row3,  0); // RGT 0, to Overworld 









	//   --------------------------  3A  --------------------------- 
	//    
	rm_num  = $3A; 



	//   --------------------------  3B  --------------------------- 
	//    
	rm_num  = $3B; 



	//   --------------------------  3C  --------------------------- 
	//    
	rm_num  = $3C; 



	//   --------------------------  3D  --------------------------- 
	//    
	rm_num  = $3D; 



	//   --------------------------  3E  --------------------------- 
	//    
	rm_num  = $3E; 



	//   --------------------------  3F  --------------------------- 
	//    
	rm_num  = $3F; 



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
	rm_num  = $43; 



	//   --------------------------  44  --------------------------- 
	//    
	rm_num  = $44; 



	//   --------------------------  45  --------------------------- 
	//    
	rm_num  = $45; 



	//   --------------------------  46  --------------------------- 
	//    
	rm_num  = $46; 



	//   --------------------------  47  --------------------------- 
	//    
	rm_num  = $47; 



	//   --------------------------  48  --------------------------- 
	//    
	rm_num  = $48; 



	//   --------------------------  49  --------------------------- 
	//    
	rm_num  = $49; 



	//   --------------------------  4A  --------------------------- 
	//    
	rm_num  = $4A; 



	//   --------------------------  4B  --------------------------- 
	//    
	rm_num  = $4B; 



	//   --------------------------  4C  --------------------------- 
	//    
	rm_num  = $4C; 



	//   --------------------------  4D  --------------------------- 
	//    
	rm_num  = $4D; 



	//   --------------------------  4E  --------------------------- 
	//    
	rm_num  = $4E; 



	//   --------------------------  4F  --------------------------- 
	//    
	rm_num  = $4F; 



	//   --------------------------  50  --------------------------- 
	//    
	rm_num  = $50; 



	//   --------------------------  51  --------------------------- 
	//    
	rm_num  = $51; 



	//   --------------------------  52  --------------------------- 
	//    
	rm_num  = $52; 



	//   --------------------------  53  --------------------------- 
	//    
	rm_num  = $53; 



	//   --------------------------  54  --------------------------- 
	//    
	rm_num  = $54; 



	//   --------------------------  55  --------------------------- 
	//    
	rm_num  = $55; 



	//   --------------------------  56  --------------------------- 
	//    
	rm_num  = $56; 



	//   --------------------------  57  --------------------------- 
	//    
	rm_num  = $57; 



	//   --------------------------  58  --------------------------- 
	//    
	rm_num  = $58; 



	//   --------------------------  59  --------------------------- 
	//    
	rm_num  = $59; 



	//   --------------------------  5A  --------------------------- 
	//    
	rm_num  = $5A; 



	//   --------------------------  5B  --------------------------- 
	//    
	rm_num  = $5B; 



	//   --------------------------  5C  --------------------------- 
	//    
	rm_num  = $5C; 



	//   --------------------------  5D  --------------------------- 
	//    
	rm_num  = $5D; 



	//   --------------------------  5E  --------------------------- 
	//    
	rm_num  = $5E; 



	//   --------------------------  5F  --------------------------- 
	//    
	rm_num  = $5F; 



	//   --------------------------  60  --------------------------- 
	//    
	rm_num  = $60; 



	//   --------------------------  61  --------------------------- 
	//    
	rm_num  = $61; 



	//   --------------------------  62  --------------------------- 
	//    
	rm_num  = $62; 



	//   --------------------------  63  --------------------------- 
	//    
	rm_num  = $63; 



	//   --------------------------  64  --------------------------- 
	//    
	rm_num  = $64; 



	//   --------------------------  65  --------------------------- 
	//    
	rm_num  = $65; 



	//   --------------------------  66  --------------------------- 
	//    
	rm_num  = $66; 



	//   --------------------------  67  --------------------------- 
	//    
	rm_num  = $67; 



	//   --------------------------  68  --------------------------- 
	//    
	rm_num  = $68; 



	//   --------------------------  69  --------------------------- 
	//    
	rm_num  = $69; 



	//   --------------------------  6A  --------------------------- 
	//    
	rm_num  = $6A; 



	//   --------------------------  6B  --------------------------- 
	//    
	rm_num  = $6B; 



	//   --------------------------  6C  --------------------------- 
	//    
	rm_num  = $6C; 



	//   --------------------------  6D  --------------------------- 
	//    
	rm_num  = $6D; 



	//   --------------------------  6E  --------------------------- 
	//    
	rm_num  = $6E; 



	//   --------------------------  6F  --------------------------- 
	//    
	rm_num  = $6F; 



	//   --------------------------  70  --------------------------- 
	//    
	rm_num  = $70; 



	//   --------------------------  71  --------------------------- 
	//    
	rm_num  = $71; 



	//   --------------------------  72  --------------------------- 
	//    
	rm_num  = $72; 



	//   --------------------------  73  --------------------------- 
	//    
	rm_num  = $73; 



	//   --------------------------  74  --------------------------- 
	//    
	rm_num  = $74; 



	//   --------------------------  75  --------------------------- 
	//    
	rm_num  = $75; 



	//   --------------------------  76  --------------------------- 
	//    
	rm_num  = $76; 



	//   --------------------------  77  --------------------------- 
	//    
	rm_num  = $77; 



	//   --------------------------  78  --------------------------- 
	//    
	rm_num  = $78; 



	//   --------------------------  79  --------------------------- 
	//    
	rm_num  = $79; 



	//   --------------------------  7A  --------------------------- 
	//    
	rm_num  = $7A; 



	//   --------------------------  7B  --------------------------- 
	//    
	rm_num  = $7B; 



	//   --------------------------  7C  --------------------------- 
	//    
	rm_num  = $7C; 



	//   --------------------------  7D  --------------------------- 
	//    
	rm_num  = $7D; 



	//   --------------------------  7E  --------------------------- 
	//    
	rm_num  = $7E; 



	//   --------------------------  7F  --------------------------- 
	//    
	rm_num  = $7F; 



	//   --------------------------  80  --------------------------- 
	//    
	rm_num  = $80; 



	//   --------------------------  81  --------------------------- 
	//    
	rm_num  = $81; 



	//   --------------------------  82  --------------------------- 
	//    
	rm_num  = $82; 



	//   --------------------------  83  --------------------------- 
	//    
	rm_num  = $83; 



	//   --------------------------  84  --------------------------- 
	//    
	rm_num  = $84; 



	//   --------------------------  85  --------------------------- 
	//    
	rm_num  = $85; 



	//   --------------------------  86  --------------------------- 
	//    
	rm_num  = $86; 



	//   --------------------------  87  --------------------------- 
	//    
	rm_num  = $87; 



	//   --------------------------  88  --------------------------- 
	//    
	rm_num  = $88; 



	//   --------------------------  89  --------------------------- 
	//    
	rm_num  = $89; 



	//   --------------------------  8A  --------------------------- 
	//    
	rm_num  = $8A; 



	//   --------------------------  8B  --------------------------- 
	//    
	rm_num  = $8B; 



	//   --------------------------  8C  --------------------------- 
	//    
	rm_num  = $8C; 



	//   --------------------------  8D  --------------------------- 
	//    
	rm_num  = $8D; 



	//   --------------------------  8E  --------------------------- 
	//    
	rm_num  = $8E; 



	//   --------------------------  8F  --------------------------- 
	//    
	rm_num  = $8F; 



	//   --------------------------  90  --------------------------- 
	//    
	rm_num  = $90; 



	//   --------------------------  91  --------------------------- 
	//    
	rm_num  = $91; 



	//   --------------------------  92  --------------------------- 
	//    
	rm_num  = $92; 



	//   --------------------------  93  --------------------------- 
	//    
	rm_num  = $93; 



	//   --------------------------  94  --------------------------- 
	//    
	rm_num  = $94; 



	//   --------------------------  95  --------------------------- 
	//    
	rm_num  = $95; 



	//   --------------------------  96  --------------------------- 
	//    
	rm_num  = $96; 



	//   --------------------------  97  --------------------------- 
	//    
	rm_num  = $97; 



	//   --------------------------  98  --------------------------- 
	//    
	rm_num  = $98; 



	//   --------------------------  99  --------------------------- 
	//    
	rm_num  = $99; 



	//   --------------------------  9A  --------------------------- 
	//    
	rm_num  = $9A; 



	//   --------------------------  9B  --------------------------- 
	//    
	rm_num  = $9B; 



	//   --------------------------  9C  --------------------------- 
	//    
	rm_num  = $9C; 



	//   --------------------------  9D  --------------------------- 
	//    
	rm_num  = $9D; 



	//   --------------------------  9E  --------------------------- 
	//    
	rm_num  = $9E; 



	//   --------------------------  9F  --------------------------- 
	//    
	rm_num  = $9F; 



	//   --------------------------  A0  --------------------------- 
	//    
	rm_num  = $A0; 



	//   --------------------------  A1  --------------------------- 
	//    
	rm_num  = $A1; 



	//   --------------------------  A2  --------------------------- 
	//    
	rm_num  = $A2; 



	//   --------------------------  A3  --------------------------- 
	//    
	rm_num  = $A3; 



	//   --------------------------  A4  --------------------------- 
	//    
	rm_num  = $A4; 



	//   --------------------------  A5  --------------------------- 
	//    
	rm_num  = $A5; 



	//   --------------------------  A6  --------------------------- 
	//    
	rm_num  = $A6; 



	//   --------------------------  A7  --------------------------- 
	//    
	rm_num  = $A7; 



	//   --------------------------  A8  --------------------------- 
	//    
	rm_num  = $A8; 



	//   --------------------------  A9  --------------------------- 
	//    
	rm_num  = $A9; 



	//   --------------------------  AA  --------------------------- 
	//    
	rm_num  = $AA; 



	//   --------------------------  AB  --------------------------- 
	//    
	rm_num  = $AB; 



	//   --------------------------  AC  --------------------------- 
	//    
	rm_num  = $AC; 



	//   --------------------------  AD  --------------------------- 
	//    
	rm_num  = $AD; 



	//   --------------------------  AE  --------------------------- 
	//    
	rm_num  = $AE; 



	//   --------------------------  AF  --------------------------- 
	//    
	rm_num  = $AF; 



	//   --------------------------  B0  --------------------------- 
	//    
	rm_num  = $B0; 



	//   --------------------------  B1  --------------------------- 
	//    
	rm_num  = $B1; 



	//   --------------------------  B2  --------------------------- 
	//    
	rm_num  = $B2; 



	//   --------------------------  B3  --------------------------- 
	//    
	rm_num  = $B3; 



	//   --------------------------  B4  --------------------------- 
	//    
	rm_num  = $B4; 



	//   --------------------------  B5  --------------------------- 
	//    
	rm_num  = $B5; 



	//   --------------------------  B6  --------------------------- 
	//    
	rm_num  = $B6; 



	//   --------------------------  B7  --------------------------- 
	//    
	rm_num  = $B7; 



	//   --------------------------  B8  --------------------------- 
	//    
	rm_num  = $B8; 



	//   --------------------------  B9  --------------------------- 
	//    
	rm_num  = $B9; 



	//   --------------------------  BA  --------------------------- 
	//    
	rm_num  = $BA; 



	//   --------------------------  BB  --------------------------- 
	//    
	rm_num  = $BB; 



	//   --------------------------  BC  --------------------------- 
	//    
	rm_num  = $BC; 



	//   --------------------------  BD  --------------------------- 
	//    
	rm_num  = $BD; 



	//   --------------------------  BE  --------------------------- 
	//    
	rm_num  = $BE; 



	//   --------------------------  BF  --------------------------- 
	//    
	rm_num  = $BF; 



	//   --------------------------  C0  --------------------------- 
	//    
	rm_num  = $C0; 



	//   --------------------------  C1  --------------------------- 
	//    
	rm_num  = $C1; 



	//   --------------------------  C2  --------------------------- 
	//    
	rm_num  = $C2; 



	//   --------------------------  C3  --------------------------- 
	//    
	rm_num  = $C3; 



	//   --------------------------  C4  --------------------------- 
	//    
	rm_num  = $C4; 



	//   --------------------------  C5  --------------------------- 
	//    
	rm_num  = $C5; 



	//   --------------------------  C6  --------------------------- 
	//    
	rm_num  = $C6; 



	//   --------------------------  C7  --------------------------- 
	//    
	rm_num  = $C7; 



	//   --------------------------  C8  --------------------------- 
	//    
	rm_num  = $C8; 



	//   --------------------------  C9  --------------------------- 
	//    
	rm_num  = $C9; 



	//   --------------------------  CA  --------------------------- 
	//    
	rm_num  = $CA; 



	//   --------------------------  CB  --------------------------- 
	//    
	rm_num  = $CB; 



	//   --------------------------  CC  --------------------------- 
	//    
	rm_num  = $CC; 



	//   --------------------------  CD  --------------------------- 
	//    
	rm_num  = $CD; 



	//   --------------------------  CE  --------------------------- 
	//    
	rm_num  = $CE; 



	//   --------------------------  CF  --------------------------- 
	//    
	rm_num  = $CF; 



	//   --------------------------  D0  --------------------------- 
	//    
	rm_num  = $D0; 



	//   --------------------------  D1  --------------------------- 
	//    
	rm_num  = $D1; 



	//   --------------------------  D2  --------------------------- 
	//    
	rm_num  = $D2; 



	//   --------------------------  D3  --------------------------- 
	//    
	rm_num  = $D3; 



	//   --------------------------  D4  --------------------------- 
	//    
	rm_num  = $D4; 



	//   --------------------------  D5  --------------------------- 
	//    
	rm_num  = $D5; 



	//   --------------------------  D6  --------------------------- 
	//    
	rm_num  = $D6; 



	//   --------------------------  D7  --------------------------- 
	//    
	rm_num  = $D7; 



	//   --------------------------  D8  --------------------------- 
	//    
	rm_num  = $D8; 



	//   --------------------------  D9  --------------------------- 
	//    
	rm_num  = $D9; 



	//   --------------------------  DA  --------------------------- 
	//    
	rm_num  = $DA; 



	//   --------------------------  DB  --------------------------- 
	//    
	rm_num  = $DB; 



	//   --------------------------  DC  --------------------------- 
	//    
	rm_num  = $DC; 



	//   --------------------------  DD  --------------------------- 
	//    
	rm_num  = $DD; 



	//   --------------------------  DE  --------------------------- 
	//    
	rm_num  = $DE; 



	//   --------------------------  DF  --------------------------- 
	//    
	rm_num  = $DF; 



	//   --------------------------  E0  --------------------------- 
	//    
	rm_num  = $E0; 



	//   --------------------------  E1  --------------------------- 
	//    
	rm_num  = $E1; 



	//   --------------------------  E2  --------------------------- 
	//    
	rm_num  = $E2; 



	//   --------------------------  E3  --------------------------- 
	//    
	rm_num  = $E3; 



	//   --------------------------  E4  --------------------------- 
	//    
	rm_num  = $E4; 



	//   --------------------------  E5  --------------------------- 
	//    
	rm_num  = $E5; 



	//   --------------------------  E6  --------------------------- 
	//    
	rm_num  = $E6; 



	//   --------------------------  E7  --------------------------- 
	//    
	rm_num  = $E7; 



	//   --------------------------  E8  --------------------------- 
	//    
	rm_num  = $E8; 



	//   --------------------------  E9  --------------------------- 
	//    
	rm_num  = $E9; 



	//   --------------------------  EA  --------------------------- 
	//    
	rm_num  = $EA; 



	//   --------------------------  EB  --------------------------- 
	//    
	rm_num  = $EB; 



	//   --------------------------  EC  --------------------------- 
	//    
	rm_num  = $EC; 



	//   --------------------------  ED  --------------------------- 
	//    
	rm_num  = $ED; 



	//   --------------------------  EE  --------------------------- 
	//    
	rm_num  = $EE; 



	//   --------------------------  EF  --------------------------- 
	//    
	rm_num  = $EF; 



	//   --------------------------  F0  --------------------------- 
	//    
	rm_num  = $F0; 



	//   --------------------------  F1  --------------------------- 
	//    
	rm_num  = $F1; 



	//   --------------------------  F2  --------------------------- 
	//    
	rm_num  = $F2; 



	//   --------------------------  F3  --------------------------- 
	//    
	rm_num  = $F3; 



	//   --------------------------  F4  --------------------------- 
	//    
	rm_num  = $F4; 



	//   --------------------------  F5  --------------------------- 
	//    
	rm_num  = $F5; 



	//   --------------------------  F6  --------------------------- 
	//    
	rm_num  = $F6; 



	//   --------------------------  F7  --------------------------- 
	//    
	rm_num  = $F7; 



	//   --------------------------  F8  --------------------------- 
	//    
	rm_num  = $F8; 



	//   --------------------------  F9  --------------------------- 
	//    
	rm_num  = $F9; 



	//   --------------------------  FA  --------------------------- 
	//    
	rm_num  = $FA; 



	//   --------------------------  FB  --------------------------- 
	//    
	rm_num  = $FB; 



	//   --------------------------  FC  --------------------------- 
	//    
	rm_num  = $FC; 



	//   --------------------------  FD  --------------------------- 
	//    
	rm_num  = $FD; 



	//   --------------------------  FE  --------------------------- 
	//    
	rm_num  = $FE; 



	//   --------------------------  FF  --------------------------- 
	//    
	rm_num  = $FF; 







}
