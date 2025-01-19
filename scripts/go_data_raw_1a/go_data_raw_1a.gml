function go_data_raw_1a() {

	/*

	// pd1: Proj   Data. 6D17[pID]: 6D18-6D20
	// ed1: Entity Data. 6DD5[eID]: 6DD6-6DF8
	// ed2: Entity Data. 6DF9[eID]: 6DFA-6E1C
	// ed3: Entity Data. 6E1D[eID]: 6E1E-6E40
	// ed4: Entity Data. 6E41[eID]: 6E42-6E64

	// var _e_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// gob_data_add_1a(_area + '_' + '01', _e);                           // 

	var i, j, k;
	var _area, _area1, _key1, _key2;
	var _VER_MAX = $20;


	// ed: Entity Data

	//             ed1 +  ed2 +  ed3 +  ed4 +  hp  +  xp
	var _e01_01 = "40" + "30" + "0F" + "96" + "00" + "0000"; // RestoreFairy 1
	var _e02_01 = "40" + "30" + "03" + "90" + "00" + "0000"; // Elevator 1
	// var _e03_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	var _e04_01 = "40" + "30" + "04" + "96" + "00" + "0000"; // LockedDoor 1
	// var _e05_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	var _e06_01 = "C0" + "31" + "01" + "86" + "00" + "0000"; // FallingBlock 1
	// var _e07_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	var _e08_01 = "00" + "30" + "06" + "90" + "00" + "0000"; // CrystalHolder 1
	var _e08_02 = "00" + "30" + "00" + "90" + "00" + "0000"; // CrystalHolder 2
	// var _e09_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _e0A_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _e0B_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	var _e0C_01 = "02" + "36" + "0D" + "96" + "00" + "0003"; // Barrier 1
	// var _e0D_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _e0E_01 = "A0" + "30" + "95" + "86" + "FF" + "0000"; // Pushable
	// var _e0F_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 

	// var _e10_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _e11_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _e12_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _e13_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _e14_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _e15_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _e16_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _e17_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _e18_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _e19_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _e1A_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _e1B_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _e1C_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _e1D_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _e1E_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _e1F_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 

	//             ed1 +  ed2 +  ed3 +  ed4 +  hp  +  xp
	var _e20_01 = "40" + "30" + "0F" + "86" + "00" + "0000"; // Item 1
	// var _e21_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _e22_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _e23_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _e24_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _e25_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _e26_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _e27_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _e28_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _e29_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _e2A_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _e2B_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _e2C_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _e2D_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _e2E_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _e2F_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 




	//             ed1 +  ed2 +  ed3 +  ed4 +  hp  +  xp
	var _e40_01 = "80" + "00" + "0C" + "80" + "08" + "0000"; // NPC Ache
	var _e41_01 = "C0" + "00" + "0C" + "80" + "00" + "0000"; // NPC Bot
	var _e42_01 = "00" + "00" + "00" + "80" + "00" + "0000"; // Sign
	var _e43_01 = "18" + "83" + "0C" + "80" + "00" + "0046"; // Knight & Idle
	var _e44_01 = "10" + "83" + "0C" + "80" + "00" + "0000"; // Idle
	var _e45_01 = "20" + "01" + "0C" + "80" + "00" + "0000"; // Spell Giver
	var _e46_01 = "34" + "82" + "0C" + "80" + "00" + "0000"; // Idle, NPC_9 v1,3,6,7
	// var _e47_01 = "08" + "83" + "0C" + "80" + "00" + "0046"; // Idle
	// var _e48_01 = "18" + "82" + "0C" + "80" + "00" + "0046"; // Idle
	var _e49_01 = "08" + "03" + "0C" + "80" + "00" + "0046"; // Quest
	var _e4A_01 = "18" + "03" + "0C" + "80" + "00" + "0046"; // Quest
	var _e4B_01 = "00" + "02" + "0C" + "80" + "00" + "0000"; // Quest
	var _e4C_01 = "00" + "02" + "0C" + "80" + "00" + "0000"; // Heal
	var _e4D_01 = "18" + "01" + "0C" + "80" + "00" + "0046"; // Heal
	var _e4E_01 = "00" + "03" + "0C" + "80" + "00" + "0000"; // Save
	var _e4F_01 = "10" + "03" + "0C" + "80" + "00" + "0000"; // Traffic

	// var _e50_01 = "08" + "02" + "0C" + "80" + "00" + "0046"; // Traffic
	// var _e51_01 = "18" + "02" + "0C" + "80" + "00" + "0046"; // Traffic
	// var _e52_01 = "00" + "03" + "0C" + "80" + "00" + "0000"; // Traffic
	var _e53_01 = "10" + "03" + "0C" + "80" + "00" + "0000"; // Walk
	var _e54_01 = "2C" + "02" + "0C" + "80" + "00" + "012D"; // Walk
	var _e55_01 = "2C" + "02" + "0C" + "80" + "00" + "012D"; // Walk
	var _e56_01 = "00" + "03" + "0C" + "80" + "00" + "0000"; // Walk
	var _e57_01 = "00" + "00" + "00" + "80" + "00" + "0000"; // Sign
	var _e58_01 = "00" + "00" + "00" + "80" + "00" + "0000"; // Sign
	var _e59_01 = "00" + "00" + "00" + "80" + "00" + "0000"; // NPC Spawner





	//             ed1 +  ed2 +  ed3 +  ed4 +  hp  +  xp
	// var _e60_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	var _e61_01 = "10" + "30" + "01" + "90" + "02" + "0000"; // BubbleSpawner 1
	var _e62_01 = "00" + "30" + "00" + "90" + "00" + "0000"; // BulletSpawner 1
	// var _e63_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _e64_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _e65_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _e66_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	var _e67_01 = "10" + "30" + "01" + "90" + "02" + "0000"; // RockSpawner 1
	// var _e68_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	var _e69_01 = "C0" + "31" + "01" + "90" + "00" + "0000"; // BlockSpawner 1
	// var _e6A_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _e6B_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _e6C_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _e6D_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _e6E_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _e6F_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 


	//             ed1 +  ed2 +  ed3 +  ed4 +  hp  +  xp
	var _e70_01 = "87" + "32" + "07" + "C0" + "20" + "0032"; // Horsehead
	var _e71_01 = "CA" + "33" + "07" + "C0" + "30" + "0096"; // Helmethead
	var _e72_01 = "CC" + "33" + "08" + "C0" + "48" + "012D"; // RebonackA
	var _e73_01 = "CC" + "30" + "80" + "C0" + "08" + "012D"; // RebonackB
	var _e74_01 = "8C" + "33" + "0B" + "C0" + "10" + "012D"; // Carock
	var _e75_01 = "CD" + "35" + "11" + "C0" + "90" + "01F4"; // Gooma
	var _e76_01 = "4E" + "35" + "0A" + "C0" + "C0" + "02BC"; // Barba
	var _e77_01 = "CF" + "35" + "14" + "26" + "C0" + "03E8"; // Thunderbird
	// var _e77_01 = "CF" + "35" + "00" + "26" + "C0" + "03E8"; // Thunderbird
	var _e78_01 = "4A" + "34" + "0E" + "86" + "F8" + "0096"; // ShadowLink


	//             ed1 +  ed2 +  ed3 +  ed4 +  hp  +  xp
	// var _e80_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _e81_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _e82_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _e83_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _e84_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _e85_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _e86_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _e87_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	var _e88_01 = "C2" + "40" + "01" + "46" + "03" + "0003"; // Ache 1
	// var _e88_01 = "C2" + "40" + "01" + "40" + "03" + "0003"; // Ache 1
	var _e88_02 = "84" + "42" + "80" + "40" + "08" + "000A"; // Ache 2: Acheman
	var _e89_01 = "C5" + "41" + "01" + "06" + "0C" + "0014"; // Aneru 1
	var _e8A_01 = "CA" + "A4" + "89" + "00" + "20" + "0096"; // Aruroda 1
	var _e8B_01 = "93" + "42" + "01" + "06" + "08" + "0005"; // Bago 1
	var _e8C_01 = "83" + "32" + "0F" + "56" + "08" + "0005"; // Blaze 1
	var _e8D_01 = "C7" + "81" + "01" + "06" + "08" + "0032"; // Boon 1
	// var _e8D_01 = "C7" + "81" + "01" + "00" + "08" + "0032"; // Boon 1
	// var _e8E_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _e8F_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 

	var _e90_01 = "87" + "00" + "01" + "46" + "FA" + "0032"; // Bubble 1,2. PalA
	var _e90_02 = "87" + "00" + "01" + "06" + "FA" + "0032"; // Bubble 1,2. PalB
	var _e90_03 = "C5" + "03" + "01" + "C6" + "FF" + "0014"; // Bubble 1,2. PalC
	var _e91_01 = "48" + "A2" + "80" + "00" + "12" + "0046"; // Daira 1
	var _e91_02 = "89" + "A2" + "80" + "00" + "18" + "0064"; // Daira 2
	// var _e92_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _e93_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _e94_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _e95_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _e96_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _e97_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _e98_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _e99_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _e9A_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _e9B_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	var _e9C_01 = "47" + "A2" + "80" + "00" + "10" + "0032"; // IronKnuckle 1 (orange)
	var _e9C_02 = "89" + "A3" + "80" + "00" + "18" + "0064"; // IronKnuckle 2 (red)
	var _e9C_03 = "CA" + "23" + "80" + "00" + "38" + "0096"; // IronKnuckle 3 (blue)
	// var _e9D_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _e9E_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _e9F_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 

	var _eA0_01 = "93" + "01" + "01" + "06" + "02" + "0005"; // Mau 1
	// var _eA0_01 = "93" + "01" + "01" + "00" + "02" + "0005"; // Mau 1
	// var _eA1_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _eA2_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _eA3_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _eA4_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _eA5_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _eA6_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	var _eA7_01 = "C2" + "41" + "02" + "46" + "03" + "0003"; // Myu 1
	var _eA8_01 = "84" + "41" + "01" + "06" + "04" + "000A"; // Octorok 1,2
	var _eA8_02 = "C5" + "41" + "01" + "06" + "0C" + "0014"; // Octorok 1,2
	// var _eA9_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _eAA_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _eAB_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _eAC_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	var _eAD_01 = "50" + "00" + "80" + "40" + "02" + "0000"; // Wosu 1
	// var _eAE_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 
	// var _eAF_01 = "00" + "00" + "00" + "00" + "00" + "0000"; // 

	var _eB0_01 = "80" + "81" + "01" + "06" + "18" + "002E"; // Stalfoon 1






	// ****************************************************************************
	// -----------------------------  AreaID_WestA  ----------------------------
	// ****************************************************************************


	_area = AreaID_WestA;
	//              _area +            obj  + ver , ed1  + ed2  + ed3  + ed4  +  hp  +  xp
	gob_data_add_1a(_area + obj_name(ReFaA) + '01', _e01_01);                                     // RestoreFairy 1
	gob_data_add_1a(_area + obj_name(ElevA) + '01', _e02_01);                                     // Elevator 1
	gob_data_add_1a(_area + obj_name(LoDoA) + '01', _e04_01);                                     // LockedDoor 1

	//              _area +            obj  + ver , ed1  + ed2  + ed3  + ed4  +  hp  +  xp
	gob_data_add_1a(_area + obj_name(Item )  + '01', _e20_01);                                     // Item 1

	//              _area +            obj  + ver , ed1  + ed2  + ed3  + ed4  +  hp  +  xp
	gob_data_add_1a(_area + obj_name(SpBaA) + '01', "02" + "31" + "01" + "90" + "03" + "0003");   // BagoSpawner 1
	gob_data_add_1a(_area + obj_name(SpPoA) + '01', _e61_01);                                     // BubbleSpawner 1
	gob_data_add_1a(_area + obj_name(SpGrA) + '01', "00" + "30" + "00" + "00" + "00" + "0000");   // GruntSpawner 1
	gob_data_add_1a(_area + obj_name(SpMoA) + '01', "00" + "30" + "01" + "96" + "03" + "0000");   // MobySpawner 1
	gob_data_add_1a(_area + obj_name(SpRoA) + '01', _e67_01);                                     // RockSpawner 1

	//              _area +            obj  + ver , ed1  + ed2  + ed3  + ed4  +  hp  +  xp
	gob_data_add_1a(_area + obj_name(AcheA) + '01', _e88_01);                                     // Ache 1
	gob_data_add_1a(_area + obj_name(AcheA) + '02', _e88_02);                                     // Ache 2: Acheman
	gob_data_add_1a(_area + obj_name(BagoA) + '01', "92" + "41" + "01" + "06" + "03" + "0003");   // Bago 1
	gob_data_add_1a(_area + obj_name(Bot_A) + '01', "C1" + "40" + "01" + "46" + "03" + "0002");   // Bot 1
	gob_data_add_1a(_area + obj_name(Bot_A) + '02', "81" + "40" + "01" + "46" + "03" + "0002");   // Bot 2: Bit
	gob_data_add_1a(_area + obj_name(DairA) + '01', _e91_01);                                     // Daira 1
	gob_data_add_1a(_area + obj_name(DairA) + '02', _e91_02);                                     // Daira 2
	gob_data_add_1a(_area + obj_name(DeelA) + '01', "81" + "40" + "01" + "06" + "03" + "0002");   // Deeler 1
	gob_data_add_1a(_area + obj_name(DeelA) + '02', "C2" + "40" + "01" + "06" + "04" + "0003");   // Deeler 2
	gob_data_add_1a(_area + obj_name(GeldA) + '01', "83" + "51" + "85" + "00" + "08" + "0005");   // Geldarm 1
	gob_data_add_1a(_area + obj_name(GoriA) + '01', "45" + "61" + "80" + "00" + "0C" + "0014");   // Goriya 1
	gob_data_add_1a(_area + obj_name(GoriA) + '02', "85" + "61" + "80" + "00" + "0E" + "0014");   // Goriya 2
	gob_data_add_1a(_area + obj_name(GoriA) + '03', "C6" + "A1" + "80" + "00" + "12" + "001E");   // Goriya 3
	gob_data_add_1a(_area + obj_name(LowdA) + '01', "C2" + "40" + "01" + "06" + "04" + "0003");   // Lowder 1
	gob_data_add_1a(_area + obj_name(MegmA) + '01', "C3" + "41" + "01" + "06" + "04" + "0005");   // Megmat 1
	gob_data_add_1a(_area + obj_name(Moa_A) + '01', "94" + "42" + "01" + "06" + "08" + "000A");   // Moa 1
	gob_data_add_1a(_area + obj_name(MoblA) + '01', "44" + "41" + "80" + "00" + "04" + "000A");   // Moblin 1
	gob_data_add_1a(_area + obj_name(MoblA) + '02', "85" + "41" + "80" + "00" + "0C" + "0014");   // Moblin 2
	gob_data_add_1a(_area + obj_name(MoblA) + '03', "C5" + "41" + "80" + "00" + "12" + "0014");   // Moblin 3
	gob_data_add_1a(_area + obj_name(MoblB) + '01', "50" + "40" + "80" + "00" + "02" + "0000");   // Grunt 1
	gob_data_add_1a(_area + obj_name(MobyA) + '01', "51" + "00" + "01" + "06" + "03" + "0002");   // Moby 1
	gob_data_add_1a(_area + obj_name(Myu_A) + '01', _eA7_01);                                     // Myu 1
	gob_data_add_1a(_area + obj_name(OctoA) + '01', _eA8_01);                                     // Octorok 1
	gob_data_add_1a(_area + obj_name(OctoA) + '02', _eA8_01);                                     // Octorok 2

	gob_data_add_1a(_area + obj_name(StfnA) + '01', _eB0_01);                                     // Stalfoon 1






	// ****************************************************************************
	// -----------------------------  AreaID_EastA  ----------------------------
	// ****************************************************************************


	_area = AreaID_EastA;
	//              _area +            obj  + ver , ed1  + ed2  + ed3  + ed4  +  hp  +  xp
	gob_data_add_1a(_area + obj_name(ReFaA) + '01', _e01_01);                                     // RestoreFairy 1
	gob_data_add_1a(_area + obj_name(ElevA) + '01', _e02_01);                                     // Elevator 1
	gob_data_add_1a(_area + obj_name(LoDoA) + '01', _e04_01);                                     // LockedDoor 1

	//              _area +            obj  + ver , ed1  + ed2  + ed3  + ed4  +  hp  +  xp
	gob_data_add_1a(_area + obj_name(Item )  + '01', _e20_01);                                     // Item 1

	//              _area +            obj  + ver , ed1  + ed2  + ed3  + ed4  +  hp  +  xp
	gob_data_add_1a(_area + obj_name(SpBaA) + '01', "10" + "32" + "01" + "90" + "08" + "0000");   // BagoSpawner 1
	gob_data_add_1a(_area + obj_name(SpPoA) + '01', _e61_01);                                     // BubbleSpawner 1

	//              _area +            obj  + ver , ed1  + ed2  + ed3  + ed4  +  hp  +  xp
	gob_data_add_1a(_area + obj_name(AcheA) + '01', "C3" + "41" + "02" + "46" + "03" + "0005");   // Ache 1
	gob_data_add_1a(_area + obj_name(AcheA) + '02', _e88_02);                                     // Ache 2: Acheman
	gob_data_add_1a(_area + obj_name(ArurA) + '01', _e8A_01);                                     // Aruroda 1
	gob_data_add_1a(_area + obj_name(BagoA) + '01', _e8B_01);                                     // Bago 1
	gob_data_add_1a(_area + obj_name(BoonA) + '01', _e8D_01);                                     // Boon 1
	gob_data_add_1a(_area + obj_name(Bot_A) + '01', "C1" + "41" + "01" + "46" + "04" + "0002");   // Bot 1
	gob_data_add_1a(_area + obj_name(Bot_A) + '02', "81" + "40" + "01" + "46" + "04" + "0002");   // Bot 2: Bit
	gob_data_add_1a(_area + obj_name(DeelA) + '01', "83" + "42" + "01" + "06" + "0C" + "0005");   // Deeler 1
	gob_data_add_1a(_area + obj_name(DeelA) + '02', "C4" + "40" + "01" + "06" + "0C" + "000A");   // Deeler 2
	gob_data_add_1a(_area + obj_name(GeruA) + '01', "49" + "34" + "80" + "00" + "30" + "0064");   // Geru 1 orange
	gob_data_add_1a(_area + obj_name(GeruA) + '02', "8A" + "B3" + "80" + "00" + "20" + "0096");   // Geru 2 red
	gob_data_add_1a(_area + obj_name(GeruA) + '03', "CB" + "34" + "80" + "00" + "38" + "00C8");   // Geru 3 blue
	gob_data_add_1a(_area + obj_name(GiruA) + '01', "85" + "44" + "01" + "06" + "10" + "0014");   // Girubokku 1
	gob_data_add_1a(_area + obj_name(LeevA) + '01', "C4" + "44" + "01" + "06" + "10" + "000A");   // Leever 1
	gob_data_add_1a(_area + obj_name(Moa_A) + '02', "D7" + "43" + "01" + "06" + "30" + "0032");   // Moa 2 (invisible)
	gob_data_add_1a(_area + obj_name(OctoA) + '01', _eA8_02);                                     // Octorok 1
	gob_data_add_1a(_area + obj_name(OctoA) + '02', _eA8_02);                                     // Octorok 2
	gob_data_add_1a(_area + obj_name(GeruB) + '01', "87" + "22" + "80" + "00" + "01" + "0032");   // RockGeru 1
	gob_data_add_1a(_area + obj_name(TektA) + '01', "E7" + "82" + "81" + "00" + "18" + "0032");   // Tektite 1
	gob_data_add_1a(_area + obj_name(ZoraA) + '01', "E7" + "83" + "81" + "00" + "30" + "0032");   // Zora 1

	// ****************************************************************************
	// ****************************************************************************
	// ****************************************************************************







	for (i = 0; i < 2; i++)
	{
	    if (i == 0)
	    {
	        // ****************************************************************************
	        // -----------------------------  AreaID_DthMt  ----------------------------
	        // ****************************************************************************
	        _area  = AreaID_WestA;
	        _area1 = AreaID_DthMt;
	    }
	    else
	    {
	        // ****************************************************************************
	        // -----------------------------  AreaID_MazIs  ----------------------------
	        // ****************************************************************************
	        _area  = AreaID_EastA;
	        _area1 = AreaID_MazIs;
	    }
    
    
	    for (j = 0; j < $100; j++) // all posible eID
	    {
	        for (k = 1; k < _VER_MAX + 1; k++) // all possible versions
	        {
	            if (isDefined(g.dm_go_prop[? hex_str(j)]))
	            {
	                _key1 = _area  + obj_name(g.dm_go_prop[? hex_str(j)]) + hex_str(k);
	                _key2 = _area1 + obj_name(g.dm_go_prop[? hex_str(j)]) + hex_str(k);
	                if (isDefined(g.dm_go_prop[? _key1 + "_ed1"]))
	                {
	                    g.dm_go_prop[? _key2 + "_ed1"] = g.dm_go_prop[? _key1 + "_ed1"];
	                    g.dm_go_prop[? _key2 + "_ed2"] = g.dm_go_prop[? _key1 + "_ed2"];
	                    g.dm_go_prop[? _key2 + "_ed3"] = g.dm_go_prop[? _key1 + "_ed3"];
	                    g.dm_go_prop[? _key2 + "_ed4"] = g.dm_go_prop[? _key1 + "_ed4"];
	                    g.dm_go_prop[? _key2 + "_hp"]  = g.dm_go_prop[? _key1 + "_hp"];
	                    g.dm_go_prop[? _key2 + "_xp"]  = g.dm_go_prop[? _key1 + "_xp"];
	                }
	            }
	        }
	    }
	}



	// ****************************************************************************
	// -----------------------------  AreaID_PalcA  ----------------------------
	// ****************************************************************************


	var _ar_area    = 0;
	    _ar_area[2] = AreaID_PalcE; // P5
	    _ar_area[1] = AreaID_PalcB; // P2
	    _ar_area[0] = AreaID_PalcA; // P1

	for (i = array_length_1d(_ar_area)-1; i >= 0; i--)
	{
	    _area = _ar_area[i];
	    // _area = AreaID_PalcA;
	    //              _area +            obj  + ver , ed1  + ed2  + ed3  + ed4  +  hp  +  xp
	    gob_data_add_1a(_area + obj_name(ReFaA) + '01', _e01_01);                                     // RestoreFairy 1
	    gob_data_add_1a(_area + obj_name(ElevA) + '01', _e02_01);                                     // Elevator 1
	    gob_data_add_1a(_area + obj_name(LoDoA) + '01', _e04_01);                                     // LockedDoor 1
	    gob_data_add_1a(_area + obj_name(FaBlA) + '01', _e06_01);                                     // FallingBlock 1
	    gob_data_add_1a(_area + obj_name(CrHoA) + '01', _e08_01);                                     // CrystalHolder 1
	    gob_data_add_1a(_area + obj_name(CrHoA) + '02', _e08_02);                                     // CrystalHolder 2
	    gob_data_add_1a(_area + obj_name(SpStA) + '01', "80" + "20" + "81" + "86" + "FF" + "0000");   // SpawnByStab 1
	    // gob_data_add_1a(_area + obj_name(PushA) + '01', _e0E_01);                                     // Pushable 1
    
	    //              _area +            obj  + ver , ed1  + ed2  + ed3  + ed4  +  hp  +  xp
	    gob_data_add_1a(_area + obj_name(Item )  + '01', _e20_01);                                     // Item 1
    
	    //              _area +            obj  + ver , ed1  + ed2  + ed3  + ed4  +  hp  +  xp
	    gob_data_add_1a(_area + obj_name(SpBaA) + '01', "00" + "30" + "00" + "90" + "08" + "0000");   // BagoSpawner 1
	    gob_data_add_1a(_area + obj_name(SpBuA) + '01', _e62_01);                                     // BulletSpawner 1
	    gob_data_add_1a(_area + obj_name(SpBuA) + '02', _e62_01);                                     // BulletSpawner 2
	    gob_data_add_1a(_area + obj_name(SpDrA) + '01', "80" + "30" + "01" + "90" + "FA" + "0000");   // DropSpawner 1
	    gob_data_add_1a(_area + obj_name(SpMaA) + '01', "93" + "31" + "00" + "00" + "02" + "0005");   // MauSpawner 1
	    gob_data_add_1a(_area + obj_name(SpWoA) + '01', "00" + "30" + "00" + "80" + "02" + "0000");   // WosuSpawner 1
	    gob_data_add_1a(_area + obj_name(SpBlA) + '01', _e69_01);                                     // BlockSpawner 1
    
	    //              _area +            obj  + ver , ed1  + ed2  + ed3  + ed4  +  hp  +  xp
	    gob_data_add_1a(_area + obj_name(HorsA) + '01', _e70_01);                                     // Horsehead
	    gob_data_add_1a(_area + obj_name(HelmA) + '01', _e71_01);                                     // Helmethead
	    gob_data_add_1a(_area + obj_name(GoomA) + '01', _e75_01);                                     // Gooma
    
	    //              _area +            obj  + ver , ed1  + ed2  + ed3  + ed4  +  hp  +  xp
	    gob_data_add_1a(_area + obj_name(AnerA) + '01', _e89_01);                                     // Aneru 1
	    gob_data_add_1a(_area + obj_name(AnerA) + '02', _e89_01);                                     // Aneru 2
	    gob_data_add_1a(_area + obj_name(BagoA) + '01', _e8B_01);                                     // Bago 1
	    gob_data_add_1a(_area + obj_name(Bot_A) + '01', "C1" + "41" + "01" + "46" + "04" + "0002");   // Bot 1
	    gob_data_add_1a(_area + obj_name(BubbA) + '01', _e90_01);                                     // Bubble 1
	    gob_data_add_1a(_area + obj_name(BubbA) + '02', _e90_01);                                     // Bubble 2
	    gob_data_add_1a(_area + obj_name(GumaA) + '01', "87" + "A2" + "80" + "00" + "10" + "0032");   // Guma 1
	    gob_data_add_1a(_area + obj_name(IrKnA) + '01', _e9C_01);                                     // IronKnuckle 1 (orange)
	    gob_data_add_1a(_area + obj_name(IrKnA) + '02', _e9C_02);                                     // IronKnuckle 2 (red)
	    gob_data_add_1a(_area + obj_name(IrKnA) + '03', _e9C_03);                                     // IronKnuckle 3 (blue)
	    gob_data_add_1a(_area + obj_name(MagoA) + '01', "4B" + "33" + "80" + "00" + "20" + "00C8");   // Mago 1
	    gob_data_add_1a(_area + obj_name(Mau_A) + '01', _eA0_01);                                     // Mau 1
	    gob_data_add_1a(_area + obj_name(Myu_A) + '01', _eA7_01);                                     // Myu 1
	    gob_data_add_1a(_area + obj_name(Ra__A) + '01', "D5" + "00" + "01" + "46" + "38" + "0014");   // Ra 1
	    gob_data_add_1a(_area + obj_name(StalA) + '01', "86" + "A1" + "80" + "00" + "08" + "001E");   // Stalfos 1
	    gob_data_add_1a(_area + obj_name(StalA) + '02', "C7" + "A1" + "80" + "00" + "0C" + "0032");   // Stalfos 2 (Paratamu)
	    gob_data_add_1a(_area + obj_name(WosuA) + '01', _eAD_01);                                     // Wosu 1
	    gob_data_add_1a(_area + obj_name(HeHeA) + '01', "C0" + "31" + "07" + "86" + "50" + "0000");   // HelmetheadHead 1
	    gob_data_add_1a(_area + obj_name(Moa_B) + '01', "57" + "83" + "01" + "46" + "10" + "0032");   // FieryMoa 1
	}




	// ****************************************************************************
	// -----------------------------  AreaID_PalcB  ----------------------------
	// ****************************************************************************

	    _ar_area[2] = AreaID_PalcF; // P6
	    _ar_area[1] = AreaID_PalcD; // P4
	    _ar_area[0] = AreaID_PalcC; // P3

	for (i = array_length_1d(_ar_area)-1; i >= 0; i--)
	{
	    _area = _ar_area[i];
	    // _area = AreaID_PalcB;
	    //              _area +            obj  + ver , ed1  + ed2  + ed3  + ed4  +  hp  +  xp
	    gob_data_add_1a(_area + obj_name(ReFaA) + '01', _e01_01);                                     // RestoreFairy 1
	    gob_data_add_1a(_area + obj_name(ElevA) + '01', _e02_01);                                     // Elevator 1
	    gob_data_add_1a(_area + obj_name(LoDoA) + '01', _e04_01);                                     // LockedDoor 1
	    gob_data_add_1a(_area + obj_name(FaBlA) + '01', _e06_01);                                     // FallingBlock 1
	    gob_data_add_1a(_area + obj_name(CrHoA) + '01', _e08_01);                                     // CrystalHolder 1
	    gob_data_add_1a(_area + obj_name(CrHoA) + '02', _e08_02);                                     // CrystalHolder 2
	    gob_data_add_1a(_area + obj_name(SpStA) + '01', "80" + "20" + "01" + "46" + "FF" + "0000");   // SpawnByStab 1
	    // gob_data_add_1a(_area + obj_name(PushA) + '01', _e0E_01);                                     // Pushable 1
    
	    //              _area +            obj  + ver , ed1  + ed2  + ed3  + ed4  +  hp  +  xp
	    gob_data_add_1a(_area + obj_name(Item )  + '01', _e20_01);                                     // Item 1
    
	    //              _area +            obj  + ver , ed1  + ed2  + ed3  + ed4  +  hp  +  xp
	    gob_data_add_1a(_area + obj_name(SpBuA) + '01', _e62_01);                                     // BulletSpawner 1
	    gob_data_add_1a(_area + obj_name(SpBuA) + '02', _e62_01);                                     // BulletSpawner 2
	    gob_data_add_1a(_area + obj_name(SpDrA) + '01', "80" + "30" + "01" + "90" + "02" + "0000");   // DropSpawner 1
	    gob_data_add_1a(_area + obj_name(SpMaA) + '01', "93" + "30" + "00" + "80" + "02" + "0005");   // MauSpawner 1
	    gob_data_add_1a(_area + obj_name(SpWoA) + '01', "00" + "30" + "00" + "90" + "02" + "0000");   // WosuSpawner 1
	    gob_data_add_1a(_area + obj_name(SpBlA) + '01', _e69_01);                                     // BlockSpawner 1
    
	    //              _area +            obj  + ver , ed1  + ed2  + ed3  + ed4  +  hp  +  xp
	    gob_data_add_1a(_area + obj_name(ReboA) + '01', _e72_01);                           // RebonackA
	    gob_data_add_1a(_area + obj_name(ReboB) + '01', _e73_01);                           // RebonackB
	    gob_data_add_1a(_area + obj_name(CaroA) + '01', _e74_01);                           // Carock
	    gob_data_add_1a(_area + obj_name(BarbA) + '01', _e76_01);                           // Barba
    
	    //              _area +            obj  + ver , ed1  + ed2  + ed3  + ed4  +  hp  +  xp
	    gob_data_add_1a(_area + obj_name(BlazA) + '01', _e8C_01);                           // Blaze 1
	    gob_data_add_1a(_area + obj_name(Bot_A) + '01', "C1" + "41" + "01" + "46" + "04" + "0002");   // Bot 1
	    gob_data_add_1a(_area + obj_name(BubbA) + '01', _e90_02);                                     // Bubble 1
	    gob_data_add_1a(_area + obj_name(BubbA) + '02', _e90_02);                                     // Bubble 2
	    gob_data_add_1a(_area + obj_name(DoomA) + '01', "C9" + "23" + "80" + "00" + "20" + "0064");   // Doomknocker 1
	    gob_data_add_1a(_area + obj_name(IrKnA) + '01', _e9C_01);                                     // IronKnuckle 1 (orange)
	    gob_data_add_1a(_area + obj_name(IrKnA) + '02', _e9C_02);                                     // IronKnuckle 2 (red)
	    gob_data_add_1a(_area + obj_name(IrKnA) + '03', _e9C_03);                                     // IronKnuckle 3 (blue)
	    gob_data_add_1a(_area + obj_name(Mau_A) + '01', _eA0_01);                                     // Mau 1
	    gob_data_add_1a(_area + obj_name(Myu_A) + '01', "C3" + "41" + "02" + "46" + "03" + "0005");   // Myu 1
	    gob_data_add_1a(_area + obj_name(Ra__A) + '02', "D5" + "40" + "01" + "46" + "38" + "0014");   // Ra 2
	    gob_data_add_1a(_area + obj_name(StalA) + '01', "86" + "A1" + "80" + "00" + "08" + "001E");   // Stalfos 1
	    gob_data_add_1a(_area + obj_name(StalA) + '02', "C7" + "A1" + "80" + "00" + "0C" + "0032");   // Stalfos 2 (Paratamu)
	    gob_data_add_1a(_area + obj_name(WizaA) + '01', "89" + "B3" + "80" + "00" + "01" + "0064");   // Wizard 1
	    gob_data_add_1a(_area + obj_name(WosuA) + '01', _eAD_01);                                     // Wosu 1
	    gob_data_add_1a(_area + obj_name(Moa_B) + '01', "57" + "83" + "01" + "06" + "10" + "0032");   // FieryMoa 1
	}




	// ****************************************************************************
	// -----------------------------  AreaID_PalcG  ----------------------------
	// ****************************************************************************


	_area = AreaID_PalcG;
	//              _area +            obj  + ver , ed1  + ed2  + ed3  + ed4  +  hp  +  xp
	gob_data_add_1a(_area + obj_name(ReFaA) + '01', _e01_01);                                     // RestoreFairy 1
	gob_data_add_1a(_area + obj_name(ElevA) + '01', _e02_01);                                     // Elevator 1
	gob_data_add_1a(_area + obj_name(LoDoA) + '01', _e04_01);                                     // LockedDoor 1
	gob_data_add_1a(_area + obj_name(FaBlA) + '01', "D0" + "53" + "01" + "86" + "00" + "0000");   // FallingBlock 1
	gob_data_add_1a(_area + obj_name(SpStA) + '01', "84" + "63" + "01" + "46" + "FF" + "000A");   // SpawnByStab 1
	gob_data_add_1a(_area + obj_name(BarrA) + '01', _e0C_01);                                     // Barrier 1
	// gob_data_add_1a(_area + obj_name(PushA) + '01', _e0E_01);                                     // Pushable 1

	//              _area +            obj  + ver , ed1  + ed2  + ed3  + ed4  +  hp  +  xp
	gob_data_add_1a(_area + obj_name(Item )  + '01', _e20_01);                                     // Item 1

	//              _area +            obj  + ver , ed1  + ed2  + ed3  + ed4  +  hp  +  xp
	gob_data_add_1a(_area + obj_name(SpBaA) + '01', "05" + "33" + "01" + "90" + "08" + "0014");   // BagoSpawner 1
	gob_data_add_1a(_area + obj_name(SpDrA) + '01', "82" + "40" + "01" + "06" + "04" + "0003");   // DropSpawner 1
	gob_data_add_1a(_area + obj_name(SpBlA) + '01', "C0" + "53" + "01" + "90" + "00" + "0000");   // BlockSpawner 1

	//              _area +            obj  + ver , ed1  + ed2  + ed3  + ed4  +  hp  +  xp
	gob_data_add_1a(_area + obj_name(ThunA) + '01', _e77_01);                           // Thunderbird
	gob_data_add_1a(_area + obj_name(ShLiA) + '01', _e78_01);                           // ShadowLink

	//              _area +            obj  + ver , ed1  + ed2  + ed3  + ed4  +  hp  +  xp
	gob_data_add_1a(_area + obj_name(AnerA) + '03', "85" + "44" + "01" + "06" + "0C" + "0014");   // Aneru 3
	gob_data_add_1a(_area + obj_name(BagoA) + '02', "95" + "43" + "01" + "06" + "08" + "0014");   // Bago 2
	gob_data_add_1a(_area + obj_name(Bot_A) + '01', "C4" + "43" + "01" + "46" + "30" + "000A");   // Bot 1
	gob_data_add_1a(_area + obj_name(BoBoA) + '01', "C0" + "33" + "90" + "80" + "38" + "0000");   // BossBot 1
	gob_data_add_1a(_area + obj_name(BubbA) + '01', _e90_03);                                     // Bubble 1
	gob_data_add_1a(_area + obj_name(BubbA) + '02', _e90_03);                                     // Bubble 2
	gob_data_add_1a(_area + obj_name(BubbA) + '03', "C0" + "33" + "80" + "C6" + "FF" + "0000");   // Bubble 3. GiantBubble
	gob_data_add_1a(_area + obj_name(FokkA) + '01', "88" + "35" + "80" + "00" + "30" + "0046");   // Fokka 1
	gob_data_add_1a(_area + obj_name(FokkA) + '02', "C9" + "35" + "80" + "00" + "60" + "0064");   // Fokka 2
	gob_data_add_1a(_area + obj_name(FokuA) + '01', "8B" + "34" + "80" + "00" + "90" + "00C8");   // Fokkeru 1
	gob_data_add_1a(_area + obj_name(Myu_A) + '01', "C4" + "43" + "02" + "46" + "18" + "000A");   // Myu 1
	gob_data_add_1a(_area + obj_name(Ra__A) + '03', "55" + "43" + "01" + "C6" + "60" + "0014");   // Ra 3




	// ****************************************************************************
	// -----------------------------  AreaID_TownA 0  ----------------------------
	// ****************************************************************************
	// 0,3,4,6,9

	_area = AreaID_TownA;
	//              _area +            obj  + ver , ed1  + ed2  + ed3  + ed4  +  hp  +  xp
	gob_data_add_1a(_area + obj_name(ReFaA) + '01', _e01_01);                                     // RestoreFairy 1
	gob_data_add_1a(_area + obj_name(ElevA) + '01', _e02_01);                                     // Elevator 1
	gob_data_add_1a(_area + obj_name(LoDoA) + '01', _e04_01);                                     // LockedDoor 1

	//              _area +            obj  + ver , ed1  + ed2  + ed3  + ed4  +  hp  +  xp
	gob_data_add_1a(_area + obj_name(Item ) + '01', _e20_01);                                     // Item 1

	//              _area +            obj  + ver , ed1  + ed2  + ed3  + ed4  +  hp  +  xp
	gob_data_add_1a(_area + obj_name(NPC_0) + '01', _e58_01);                        // Sign             $22
	gob_data_add_1a(_area + obj_name(NPC_0) + '03', _e57_01);                        // Mirror           $21

	gob_data_add_1a(_area + obj_name(NPC_1) + '01', _e44_01);                        // Idle             $0E
	// gob_data_add_1a(_area + obj_name(NPC_1) + '02', _e46_01);                        // Idle             $10
	// gob_data_add_1a(_area + obj_name(NPC_1) + '03', _e47_01);                        // Idle             $11
	// gob_data_add_1a(_area + obj_name(NPC_1) + '04', _e48_01);                        // Idle             $12

	gob_data_add_1a(_area + obj_name(NPC_2) + '01', _e4F_01);                        // Traffic          $19
	// gob_data_add_1a(_area + obj_name(NPC_2) + '02', _e50_01);                        // Traffic          $1A
	// gob_data_add_1a(_area + obj_name(NPC_2) + '03', _e51_01);                        // Traffic          $1B
	// gob_data_add_1a(_area + obj_name(NPC_2) + '04', _e52_01);                        // Traffic          $1C

	gob_data_add_1a(_area + obj_name(NPC_3) + '01', _e53_01);                        // Walk             $1D
	gob_data_add_1a(_area + obj_name(NPC_3) + '02', _e54_01);                        // Walk             $1E
	gob_data_add_1a(_area + obj_name(NPC_3) + '03', _e55_01);                        // Walk             $1F
	gob_data_add_1a(_area + obj_name(NPC_3) + '04', _e56_01);                        // Walk             $20

	gob_data_add_1a(_area + obj_name(NPC_4) + '01', _e4C_01);                        // Heal HP          $17
	gob_data_add_1a(_area + obj_name(NPC_4) + '02', _e4D_01);                        // Heal MP          $18
	gob_data_add_1a(_area + obj_name(NPC_4) + '03', _e4E_01);                        // Save             $24

	gob_data_add_1a(_area + obj_name(NPC_5) + '01', _e49_01);                        // Quest            $14
	// gob_data_add_1a(_area + '4A' + '01', _e4A_01);                        // Quest            $15
	// gob_data_add_1a(_area + '4B' + '01', _e4B_01);                        // Quest            $16

	gob_data_add_1a(_area + obj_name(NPC_6) + '01', _e43_01);                        // Knight    $0D
	gob_data_add_1a(_area + obj_name(NPC_6) + '02', _e43_01);                        // Knight    $0D

	gob_data_add_1a(_area + obj_name(NPC_7) + '01', _e45_01);                        // Spell Giver      $0F

	// gob_data_add_1a(_area + obj_name(NPC_0) + '03', _e57_01);                        // Mirror           $21
	// gob_data_add_1a(_area + obj_name(NPC_8) + '01', _e57_01);                        // Sign             $21

	gob_data_add_1a(_area + obj_name(NPC_9) + '01', _e46_01);                        // Bagu             $10
	gob_data_add_1a(_area + obj_name(NPC_9) + '02', _e43_01);                        // Riverman
	gob_data_add_1a(_area + obj_name(NPC_9) + '03', _e46_01);                        // 
	gob_data_add_1a(_area + obj_name(NPC_9) + '04', _e40_01);                        // Ache             $0A
	gob_data_add_1a(_area + obj_name(NPC_9) + '05', _e41_01);                        // Bot              $0B
	gob_data_add_1a(_area + obj_name(NPC_9) + '06', _e46_01);                        // Error
	gob_data_add_1a(_area + obj_name(NPC_9) + '07', _e46_01);                        // Error friend

	gob_data_add_1a(_area + obj_name(SpNPA) + '01', _e59_01);                        // Spawner          $23


	//              _area +            obj  + ver , ed1  + ed2  + ed3  + ed4  +  hp  +  xp
	gob_data_add_1a(_area + obj_name(AcheA) + '01', "C2" + "02" + "00" + "06" + "00" + "0003");   // Ache 1
	gob_data_add_1a(_area + obj_name(Bot_A) + '01', "C1" + "00" + "01" + "06" + "03" + "0002");   // Bot 1
	gob_data_add_1a(_area + obj_name(Moa_A) + '02', "C6" + "03" + "01" + "06" + "30" + "001E");   // Moa 2 (invisible)
	*/







	/*      changed data input to init_spawnData_Town()

	// NPC with specific ed1 depending on town
	// $43. old eID: $0D
	// g.dm_go_prop[? _area + "_0" + "43" + "01" + "_ed1"] = $18; // default
	g.dm_go_prop[? _area + "_2" + "43" + "01" + "_ed1"] = $44;
	g.dm_go_prop[? _area + "_3" + "43" + "01" + "_ed1"] = $44;
	g.dm_go_prop[? _area + "_5" + "43" + "01" + "_ed1"] = $48;

	// $44. old eID: $0E
	// g.dm_go_prop[? _area + "_0" + "44" + "01" + "_ed1"] = $10; // default
	g.dm_go_prop[? _area + "_3" + "44" + "01" + "_ed1"] = $2C;
	g.dm_go_prop[? _area + "_4" + "44" + "01" + "_ed1"] = $2C;

	// $46. old eID: $10
	// g.dm_go_prop[? _area + "_0" + "46" + "01" + "_ed1"] = $34; // default
	g.dm_go_prop[? _area + "_2" + "46" + "01" + "_ed1"] = $2C;
	g.dm_go_prop[? _area + "_3" + "46" + "01" + "_ed1"] = $10;

	// $48. old eID: $12
	// g.dm_go_prop[? _area + "_0" + "48" + "01" + "_ed1"] = $18; // default
	g.dm_go_prop[? _area + "_1" + "48" + "01" + "_ed1"] = $3C;

	// $53. old eID: $1D
	// g.dm_go_prop[? _area + "_0" + "53" + "01" + "_ed1"] = $10; // default
	g.dm_go_prop[? _area + "_1" + "53" + "01" + "_ed1"] = $2C;
	g.dm_go_prop[? _area + "_3" + "53" + "01" + "_ed1"] = $34;
	g.dm_go_prop[? _area + "_4" + "53" + "01" + "_ed1"] = $34;

	// $55. old eID: $1F
	// g.dm_go_prop[? _area + "_0" + "55" + "01" + "_ed1"] = $2C; // default
	g.dm_go_prop[? _area + "_1" + "55" + "01" + "_ed1"] = $18;
	g.dm_go_prop[? _area + "_3" + "55" + "01" + "_ed1"] = $18;
	g.dm_go_prop[? _area + "_4" + "55" + "01" + "_ed1"] = $3C;

	// $56. old eID: $20
	// g.dm_go_prop[? _area + "_0" + "56" + "01" + "_ed1"] = $00; // default
	g.dm_go_prop[? _area + "_2" + "56" + "01" + "_ed1"] = $3C;
	g.dm_go_prop[? _area + "_5" + "56" + "01" + "_ed1"] = $3C;



	$40. old: $0A     
	$41. old: $0B
	$42. old: $0C     00 00
	$43. old: $0D     18 83   -- --   44 --   44 --   -- --   48 --
	$44. old: $0E     10 83   -- --   -- --   2C --   2C --
	$45. old: $0F     20 01
	$46. old: $10     34 82   -- --   2C --   10 --
	$47. old: $11     08 83
	$48. old: $12     18 82   3C --
	$49. old: $14     08 03
	$4A. old: $15     18 03
	$4B. old: $16     00 02
	$4C. old: $17     00 02
	$4D. old: $18     18 01
	$4E. old: $24     00 03
	$4F. old: $19     10 03
	$50. old: $1A     08 02
	$51. old: $1B     18 02
	$52. old: $1C     00 03
	$53. old: $1D     10 03   2C --   -- --   34 --   34 --
	$54. old: $1E     2C 02
	$55. old: $1F     2C 02   18 --   -- --   18 --   3C --
	$56. old: $20     00 03   -- --   3C --   -- --   -- --   3C --
	$57. old: $21
	$58. old: $22
	$59. old: $23
	*/



	/*
	// ds_eData: Entity Data. 6D21-6E64 $144 bytes
	var _eData1, _eData2, _eData3, _eData4, _eData5;
	_eData1 = "000000000000300000000800000000000000000000000000000000000000000000000000AD95AD95AD95AD95AD95AD95AD95AD956B976B976B976B976B976B976B976B976B976B976B9756975697569756976B976B976B976B976B976B9743974397439743976B976B97B2961ED959D991D9A8960CDA2BDACFDA53DB7898789893978397BD9A93979397A997939793979397D497D497D497D497D497D49778987898789878987898789878987898BD9ABD9AE096404040C2C080C6C3000080C00018102034081810081800001810081800102C2C0000000000000002000003000102000000838301828382020303020201030202030302020300000001010400010101010C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000000868686060606060080808080808080808080808080808080808080808080808080808080";
	_eData2 = "0000000304FFFA100000380202FAFA08080C0C000000000010183802022010082030500CAD95AD95AD95AD95AD95AD95AA98AD95AD95AD95F4B9289AB698AD95AE98289AAD95AD95AD95AD95739A739AFCB8FCB8AD95AD95AD95289AAD95AD95AD95AD95A1BC7EBCAD95AD951ED959D991D947DA0CDA3EB8D19909B998ABE9AB20BAC19EBCBCBFB9D1998FD7E1D742D888D8C2D8D49A8B9ADD9BDD9B8C9C8C9C8C9C61B8BBB8C5B757BA5A965FBBC3BAEFBC5A96404040C2C1808757C0C0D5005080870093C5C540000000004789CA93934B878687CAC0C7303030414120008331310030003000304241413030303030A2A323310133A2A1323331A10F0F040201010101010101008001010001010103060000008080800001808080070707809686964646864640908640804090469006060690909090900000000000000000C0C08000";
	_eData3 = "0000000304FFFA10000008020202FA38080C0C0000000000101838020201201848C01020ADAAADAAADAAADAAADAAADAA55AFADAAADAAADAAADAA289A3CB3ADAA59AFADAC7DB4ADAAADAAADAA739A739AFCB8FCB8ADAAADAAADAA289AADAAADAAADAAADAA91AFFEB007B1ADAA1ED959D991D947DA0CDA61AFD19909B998ABE9AB3FB243B362B3BFB9D199DAAC85B442D888D8C2D8D49A8B9ADD9BDD9B8C9C8C9C8C9C61B8BBB84FAEADB05A96BCAF1FB17BAE5A96404040C3C1808757C0C0CC00508087D583C5C540000000004789CA939389C987CC4E8CC8303030414120008331313030003000403241413030303030A2A3233001B323A2333533A30F0F04020101010101018000800101010F010103060000008080800001808080080A0B8096869646464606069086C0904090064056060690909090900000008000000000C0C0C000";
	_eData4 = "0000000303030803000008020203040303040400040C1212180C0E120403030408000200AD952096AD95AD95AD95AD95AD95AD95AD95AD95AD954E984E98259625964E98AD95AD95AD95AD9531963196319631963196319631963196AD954E98AD95AD956C984E98AD9500001ED959D991D947DA0CDA2BDACFDA53DB98ABE9AB53DB15DC4FDCDFD6DFD68FD7E1D742D888D8C2D8729972997299159A159A729972997299C398319B949B7E98B59B2F994F990000404040C2C18194C2809084101081C202928484404485C548894585C6C20051C3830050023030304140404240313142303040403141414130414141A2A26161A140300041513040000F0F04020101010101018001010101010101010380808080808080800101010185008005968696464646064096064090900606900606069000000000000000000696060600000000";
	_eData5 = "000000030404300800000802020C0C08080C0C0018101008302030203801000000000000AD951096AD95AD95AD95AD95AD95AD95AD95AD95AD950A970A971B961B960A97AD95AD95AD95AD95AD95AD95F397AD95AD95AD95AD95AD95AD95AD95AD95AD9500000000000000001ED959D991D947DA0CDA2BDACFDA53DB98ABE9AB53DB15DC4FDCDFD6DFD68FD7E1D742D888D8C2D80598BC98109989992A9AAE9A909B569B909B3097000000000000000000000000404040C3C181D7C4809084101083C41093C5C540E785C4C7E7CA894ACB8700000000000030303041414043423131423030424232424141308244448183A434B334220000000000000F0F04020101010101018001010101010101010381010101818980808080000000000000968696464646064696864090900606900606069000000000000000000000000000000000";
	var _pData1, _pData2, _pData3, _pData4, _pData5, _pData6;
	_pData1 = "95000000000000000000"; // Towns
	_pData2 = "97000341865392A38000"; // PalA
	_pData3 = "AD000341855393A380C3"; // PalB
	_pData4 = "00008041814942930000"; // West DthM
	_pData5 = "00008041830103948100"; // East MazI
	_pData6 = "9C000381865382A48686"; // PalC


	// West Hyrule
	ds_map_add(ds_eData, AreaID_WestA, _eData4);
	ds_map_add(ds_pData, AreaID_WestA, _pData4);
	// East Hyrule
	ds_map_add(ds_eData, AreaID_EastA, _eData5);
	ds_map_add(ds_pData, AreaID_EastA, _pData5);

	// Death Mtn
	ds_map_add(ds_eData, AreaID_DthMt, _eData4);
	ds_map_add(ds_pData, AreaID_DthMt, _pData4);
	// Maze Isl
	ds_map_add(ds_eData, AreaID_MazIs, _eData5);
	ds_map_add(ds_pData, AreaID_MazIs, _pData5);


	// Town 1
	ds_map_add(ds_eData, AreaID_TownA + "1", _eData1);
	ds_map_add(ds_pData, AreaID_TownA + "1", _pData1);
	// Town 2
	ds_map_add(ds_eData, AreaID_TownA + "2", "000000000000300000000800000000000000000000000000000000000000000000000000AD95AD95AD95AD95AD95AD95AD95AD956B976B976B976B976B976B976B976B976B976B976B9756975697569756976B976B976B976B976B976B9743974397439743976B976B97B2961ED959D991D9A8960CDA2BDACFDA53DB7898789893978397BD9A93979397A997939793979397D497D497D497D497D497D49778987898789878987898789878987898BD9ABD9AE096404040C2C080C6C3000080C00028102010083C100818000018100818002C08180000000000000002000003000102000000838301828382020303020201030202030302020300000001010400010101010C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000000868686060606060080808080808080808080808080808080808080808080808080808080");
	ds_map_add(ds_pData, AreaID_TownA + "2", _pData1);
	// Town 3
	ds_map_add(ds_eData, AreaID_TownA + "3", "000000000000300000000800000000000000000000000000000000000000000000000000AD95AD95AD95AD95AD95AD95AD95AD956B976B976B976B976B976B976B976B976B976B976B9756975697569756976B976B976B976B976B976B9743974397439743976B976B97B2961ED959D991D9A8960CDA2BDACFDA53DB7898789893978397BD9A93979397A997939793979397D497D497D497D497D497D49778987898789878987898789878987898BD9ABD9AE096404040C2C080C6C3000080C0004410202C2C2C2C082C2C0018100818002C2C183C00000000000002000003000102000000838301828382020303020201030202030302020300000001010400010101010C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000000868686060606060080808080808080808080808080808080808080808080808080808080");
	ds_map_add(ds_pData, AreaID_TownA + "3", _pData1);
	// Town 4
	ds_map_add(ds_eData, AreaID_TownA + "4", "000000000000300000000800000000000000000000000000000000000000000000000000AD95AD95AD95AD95AD95AD95AD95AD956B976B976B976B976B976B976B976B976B976B976B9756975697569756976B976B976B976B976B976B9743974397439743976B976B97B2961ED959D991D9A8960CDA2BDACFDA53DB7898789893978397BD9A93979397A997939793979397D497D497D497D497D497D49778987898789878987898789878987898BD9ABD9AE096404040C2C080C6C3000080C000442C20103C3C3C3C183C0018100818003408180000000000000002000003000102000000838301828382020303020201030202030302020300000001010400010101010C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000000868686060606060080808080808080808080808080808080808080808080808080808080");
	ds_map_add(ds_pData, AreaID_TownA + "4", _pData1);
	// Town 5
	ds_map_add(ds_eData, AreaID_TownA + "5", "000000000000300000000800000000000000000000000000000000000000000000000000AD95AD95AD95AD95AD95AD95AD95AD956B976B976B976B976B976B976B976B976B976B976B9756975697569756976B976B976B976B976B976B9743974397439743976B976B97B2961ED959D991D9A8960CDA2BDACFDA53DB7898789893978397BD9A93979397A997939793979397D497D497D497D497D497D49778987898789878987898789878987898BD9ABD9AE096404040C2C080C6C3000080C000282C201008181008180000181008180034083C0000000000000002000003000102000000838301828382020303020201030202030302020300000001010400010101010C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000000868686060606060080808080808080808080808080808080808080808080808080808080");
	ds_map_add(ds_pData, AreaID_TownA + "5", _pData1);
	// Town 6
	ds_map_add(ds_eData, AreaID_TownA + "6", "000000000000300000000800000000000000000000000000000000000000000000000000AD95AD95AD95AD95AD95AD95AD95AD956B976B976B976B976B976B976B976B976B976B976B9756975697569756976B976B976B976B976B976B9743974397439743976B976B97B2961ED959D991D9A8960CDA2BDACFDA53DB7898789893978397BD9A93979397A997939793979397D497D497D497D497D497D49778987898789878987898789878987898BD9ABD9AE096404040C2C080C6C3000080C000483420343434343418340018100818001008183C00000000000002000003000102000000838301828382020303020201030202030302020300000001010400010101010C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000000868686060606060080808080808080808080808080808080808080808080808080808080");
	ds_map_add(ds_pData, AreaID_TownA + "6", _pData1);
	// Town 7: Old Kasuto
	ds_map_add(ds_eData, AreaID_TownA + "7", _eData1);
	ds_map_add(ds_pData, AreaID_TownA + "7", _pData1);
	// Town 8: New Kasuto
	ds_map_add(ds_eData, AreaID_TownA + "8", "000000000000300000000800000000000000000000000000000000000000000000000000AD95AD95AD95AD95AD95AD95AD95AD956B976B976B976B976B976B976B976B976B976B976B9756975697569756976B976B976B976B976B976B9743974397439743976B976B97B2961ED959D991D9A8960CDA2BDACFDA53DB7898789893978397BD9A93979397A997939793979397D497D497D497D497D497D49778987898789878987898789878987898BD9ABD9AE096404040C2C080C6C3000080C00028102010081810081800001810081800103C180000000000000002000003000102000000838301828382020303020201030202030302020300000001010400010101010C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000000868686060606060080808080808080808080808080808080808080808080808080808080");
	ds_map_add(ds_pData, AreaID_TownA + "8", _pData1);


	// Palace 1,2,5
	ds_map_add(ds_eData, AreaID_PalcA, _eData2);
	ds_map_add(ds_pData, AreaID_PalcA, _pData2);

	// Palace 3,4,6
	ds_map_add(ds_eData, AreaID_PalcB, _eData3);
	ds_map_add(ds_pData, AreaID_PalcB, _pData3);

	// Palace 7
	ds_map_add(ds_eData, AreaID_PalcC, "0000001830FF06040000020202040608080C0C00FFFF60FF00306000029038000000C0F8AD95AD95AD95AD95AD95AD95AD95AD95AD95AD95AD95AD95AD95AD95AD951DA3AD95AD95AD95AD9527A12BA13B9627A1AD95AD95AD95AD95AD95AD95AD95AD95AD95AD953BA396971ED959D991D947DA0CDA21A5CFDA53DB98ABE9AB53DB15DC4FDCDFD6DFD68FD7E1D742D888D8C2D875A075A0679675A02C9D2C9D2C9D669E679E6B9E80A1000034A2000059A3C697404040C4C484D3C2C0D080000082C30595858540C5C555C04888C990908BC0020202CF4A3030304343634140535342504040403343444430030343333535350000343301360135340F0F0402010101010101810101010101010101030101018080808000018090000D00000E9686964646460640908600909006069006060690C6C6C0C6000000000000800696062686");
	ds_map_add(ds_pData, AreaID_PalcC, _pData6);




	// ds_xp1: all enemy xp possibilties (for original game)
	// ds_pd1: Proj   Data. 6D17[pID]: 6D18-6D20
	// ds_ed1: Entity Data. 6DD5[eID]: 6DD6-6DF8
	// ds_ed2: Entity Data. 6DF9[eID]: 6DFA-6E1C
	// ds_ed3: Entity Data. 6E1D[eID]: 6E1E-6E40
	// ds_ed4: Entity Data. 6E41[eID]: 6E42-6E64

	// xp. 16 values
	ds_xp1[| $0] = $000; // 0
	ds_xp1[| $1] = $002; // 2
	ds_xp1[| $2] = $003; // 3
	ds_xp1[| $3] = $005; // 5

	ds_xp1[| $4] = $00A; // 10
	ds_xp1[| $5] = $014; // 20
	ds_xp1[| $6] = $01E; // 30
	ds_xp1[| $7] = $032; // 50

	ds_xp1[| $8] = $046; // 70
	ds_xp1[| $9] = $064; // 100
	ds_xp1[| $A] = $096; // 150
	ds_xp1[| $B] = $0C8; // 200

	ds_xp1[| $C] = $12D; // 301
	ds_xp1[| $D] = $1F4; // 500
	ds_xp1[| $E] = $2BC; // 700
	ds_xp1[| $F] = $3E8; // 1000

	var _pd1A, _pd1B, _pd1C;
	_pd1A = "000000000000000000";
	_pd1B = "000341865392A38000";
	_pd1C = "000341855393A380C3";
	var _ed1A, _ed1B, _ed1C;
	_ed1A = "4040C2C080C6C3000080C00018102034081810081800001810081800102C2C00000000";
	_ed1B = "4040C2C1808757C0C0D5005080870093C5C540000000004789CA93934B878687CAC0C7";
	_ed1C = "4040C3C1808757C0C0CC00508087D583C5C540000000004789CA939389C987CC4E8CC8";
	var _ed2A, _ed2B, _ed2C;
	_ed2A = "0000020000030001020000008383018283820203030202010302020303020203000000";
	_ed2B = "3030414120008331310030003000304241413030303030A2A323310133A2A1323331A1";
	_ed2C = "3030414120008331313030003000403241413030303030A2A3233001B323A2333533A3";
	var _ed3A, _ed3B, _ed3C;
	_ed3A = "010400010101010C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000000";
	_ed3B = "0F04020101010101010100800101000101010306000000808080000180808007070780";
	_ed3C = "0F04020101010101018000800101010F010103060000008080800001808080080A0B80";
	var _ed4A, _ed4B, _ed4C;
	_ed4A = "8686060606060080808080808080808080808080808080808080808080808080808080";
	_ed4B = "86964646864640908640804090469006060690909090900000000000000000C0C08000";
	_ed4C = "869646464606069086C0904090064056060690909090900000008000000000C0C0C000";


	    // 0: Hyrule West
	ds_list_add(ds_pd1, "008041814942930000");
	ds_list_add(ds_ed1, "4040C2C18194C2809084101081C202928484404485C548894585C6C20051C383005002");
	ds_list_add(ds_ed2, "30304140404240313142303040403141414130414141A2A26161A14030004151304000");
	ds_list_add(ds_ed3, "0F04020101010101018001010101010101010380808080808080800101010185008005");
	ds_list_add(ds_ed4, "8696464646064096064090900606900606069000000000000000000696060600000000");
	    // 1: Hyrule East
	ds_list_add(ds_pd1, "008041830103948100");
	ds_list_add(ds_ed1, "4040C3C181D7C4809084101083C41093C5C540E785C4C7E7CA894ACB87000000000000");
	ds_list_add(ds_ed2, "303041414043423131423030424232424141308244448183A434B33422000000000000");
	ds_list_add(ds_ed3, "0F04020101010101018001010101010101010380010101818980808080000000000000");
	ds_list_add(ds_ed4, "8696464646064696864090900606900606069000000000000000000000000000000000");
	    // 2: Town 1 - Rauru
	ds_list_add(ds_pd1, _pd1A);
	ds_list_add(ds_ed1, _ed1A);
	ds_list_add(ds_ed2, _ed2A);
	ds_list_add(ds_ed3, _ed3A);
	ds_list_add(ds_ed4, _ed4A);
	    // 3: Town 2 - Ruto
	ds_list_add(ds_pd1, _pd1A);
	ds_list_add(ds_ed1, "4040C2C080C6C3000080C00028102010083C100818000018100818002C081800000000");
	ds_list_add(ds_ed2, _ed2A);
	ds_list_add(ds_ed3, _ed3A);
	ds_list_add(ds_ed4, _ed4A);
	    // 4: Town 3 - Saria
	ds_list_add(ds_pd1, _pd1A);
	ds_list_add(ds_ed1, "4040C2C080C6C3000080C0004410202C2C2C2C082C2C0018100818002C2C183C000000");
	ds_list_add(ds_ed2, _ed2A);
	ds_list_add(ds_ed3, _ed3A);
	ds_list_add(ds_ed4, _ed4A);
	    // 5: Town 4 - Mido
	ds_list_add(ds_pd1, _pd1A);
	ds_list_add(ds_ed1, "4040C2C080C6C3000080C000442C20103C3C3C3C183C00181008180034081800000000");
	ds_list_add(ds_ed2, _ed2A);
	ds_list_add(ds_ed3, _ed3A);
	ds_list_add(ds_ed4, _ed4A);
	    // 6: Town 5 - Nabooru
	ds_list_add(ds_pd1, _pd1A);
	ds_list_add(ds_ed1, "4040C2C080C6C3000080C000282C201008181008180000181008180034083C00000000");
	ds_list_add(ds_ed2, _ed2A);
	ds_list_add(ds_ed3, _ed3A);
	ds_list_add(ds_ed4, _ed4A);
	    // 7: Town 6 - Darunia
	ds_list_add(ds_pd1, _pd1A);
	ds_list_add(ds_ed1, "4040C2C080C6C3000080C000483420343434343418340018100818001008183C000000");
	ds_list_add(ds_ed2, _ed2A);
	ds_list_add(ds_ed3, _ed3A);
	ds_list_add(ds_ed4, _ed4A);
	    // 8: Town 7 - Old Kasuto
	ds_list_add(ds_pd1, _pd1A);
	ds_list_add(ds_ed1, _ed1A);
	ds_list_add(ds_ed2, _ed2A);
	ds_list_add(ds_ed3, _ed3A);
	ds_list_add(ds_ed4, _ed4A);
	    // 9: Town 8 - New Kasuto
	ds_list_add(ds_pd1, _pd1A);
	ds_list_add(ds_ed1, "4040C2C080C6C3000080C00028102010081810081800001810081800103C1800000000");
	ds_list_add(ds_ed2, _ed2A);
	ds_list_add(ds_ed3, _ed3A);
	ds_list_add(ds_ed4, _ed4A);
	    // A: Palace 1 - Desert
	ds_list_add(ds_pd1, _pd1B);
	ds_list_add(ds_ed1, _ed1B);
	ds_list_add(ds_ed2, _ed2B);
	ds_list_add(ds_ed3, _ed3B);
	ds_list_add(ds_ed4, _ed4B);
	    // B: Palace 2 - Swamp
	ds_list_add(ds_pd1, _pd1B);
	ds_list_add(ds_ed1, _ed1B);
	ds_list_add(ds_ed2, _ed2B);
	ds_list_add(ds_ed3, _ed3B);
	ds_list_add(ds_ed4, _ed4B);
	    // C: Palace 3 - Island
	ds_list_add(ds_pd1, _pd1C);
	ds_list_add(ds_ed1, _ed1C);
	ds_list_add(ds_ed2, _ed2C);
	ds_list_add(ds_ed3, _ed3C);
	ds_list_add(ds_ed4, _ed4C);
	    // D: Palace 4 - Maze
	ds_list_add(ds_pd1, _pd1C);
	ds_list_add(ds_ed1, _ed1C);
	ds_list_add(ds_ed2, _ed2C);
	ds_list_add(ds_ed3, _ed3C);
	ds_list_add(ds_ed4, _ed4C);
	    // E: Palace 5 - Water
	ds_list_add(ds_pd1, _pd1B);
	ds_list_add(ds_ed1, _ed1B);
	ds_list_add(ds_ed2, _ed2B);
	ds_list_add(ds_ed3, _ed3B);
	ds_list_add(ds_ed4, _ed4B);
	    // F: Palace 6 - Tri-rock
	ds_list_add(ds_pd1, _pd1C);
	ds_list_add(ds_ed1, _ed1C);
	ds_list_add(ds_ed2, _ed2C);
	ds_list_add(ds_ed3, _ed3C);
	ds_list_add(ds_ed4, _ed4C);
	    // 10: Palace 7 - Grand
	ds_list_add(ds_pd1, "000381865382A48686");
	ds_list_add(ds_ed1, "4040C4C484D3C2C0D080000082C30595858540C5C555C04888C990908BC0020202CF4A");
	ds_list_add(ds_ed2, "3030434363414053534250404040334344443003034333353535000034330136013534");
	ds_list_add(ds_ed3, "0F0402010101010101810101010101010101030101018080808000018090000D00000E");
	ds_list_add(ds_ed4, "86964646460640908600909006069006060690C6C6C0C6000000000000800696062686");
	*/





}
