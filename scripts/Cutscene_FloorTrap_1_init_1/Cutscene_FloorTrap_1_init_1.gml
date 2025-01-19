/// @description  Cutscene_FloorTrap_1_init_1()
function Cutscene_FloorTrap_1_init_1() {


	Cutscene_init();

	var _i, _a;

	                      _a=1;
	sub_state_IDLE      = _a++;
	sub_state_ACTIVE    = _a++;
	sub_state_DONE      = _a++;
	sub_state           = sub_state_IDLE;


	Zelda_SPR1  = spr_Zelda_Pose_2a;
	Zelda_SPR2  = spr_Zelda_Pose_3a;
	Zelda_X     = ($25<<3)+4;
	//Zelda_X     = ($59<<3)+4;
	Zelda_Y     = ((g.rm_rows-PAGE_ROWS)+$18)<<3;
	Zelda_XSCALE= sign_(g.exit_enter.side&1);
	Zelda_PI    = PI_MOB_RED;
	//Zelda_PI    = PI_BGR_4;


	Trigger_DIST    = $14<<3;
	//Trigger_X = $48<<3;
	timer = 0;
	PC_LOCK = PC_LOCK_ALL & ~PC_LOCK_VSPD;
	//PC_LOCK = PC_LOCK_ALL & ~(PC_LOCK_HSPD|PC_LOCK_VSPD);



	CrumbleGround_state     = 1;

	CrumbleGround_DEPTH     = DEPTH_BG2-1;

	CrumbleGround_CLM       = $08;
	//CrumbleGround_CLM       = $38;
	CrumbleGround_CLMS      = $4A-CrumbleGround_CLM;
	CrumbleGround_ROW       = (g.rm_rows-PAGE_ROWS)+$1C;
	CrumbleGround_ROWS      =  g.rm_rows-CrumbleGround_ROW;

	CrumbleGround_Block_CLMS= CrumbleGround_CLMS>>1;
	CrumbleGround_Block_ROWS= CrumbleGround_ROWS>>1;

	CrumbleGround1_DUR      = $08;
	CrumbleGround2_DUR      = $08;
	//CrumbleGround2_DUR      = $04;

	CrumbleGround1_TS       = ts_Man_made_6a_WRB;
	CrumbleGround2_TS       = ts_Man_made_6a_WRB;
	/*
	CrumbleGround1_TS       = ts_Man_made_4a_WRB;
	CrumbleGround2_TS       = ts_Man_made_4a_WRB;
	*/


	MetalBlock_COUNT        = $10;
	MetalBlock_CLM          = CrumbleGround_CLM;
	MetalBlock_ROW          = CrumbleGround_ROW-$2;


	dg_TSRC = ds_grid_create(2,4);
	         _i=0;
	dg_TSRC[#_i,0] = $DF;
	dg_TSRC[#_i,1] = $ED;
	dg_TSRC[#_i,2] = $FA;
	dg_TSRC[#_i,3] = $EF;
	         _i++;
	dg_TSRC[#_i,0] = $EB;
	dg_TSRC[#_i,1] = $EC;
	dg_TSRC[#_i,2] = dg_TSRC[#_i,1];
	dg_TSRC[#_i,3] = dg_TSRC[#_i,0];
	/*
	dg_TSRC = ds_grid_create(2,4);
	         _i=0;
	dg_TSRC[#_i,0] = $2E;                // $2E
	dg_TSRC[#_i,1] = dg_TSRC[#_i,0]+$01; // $2F
	dg_TSRC[#_i,2] = dg_TSRC[#_i,0]+$10; // $3E
	dg_TSRC[#_i,3] = dg_TSRC[#_i,2]+$01; // $3F
	         _i++;
	dg_TSRC[#_i,0] = $2C;                // $2C
	dg_TSRC[#_i,1] = dg_TSRC[#_i,0]+$01; // $2D
	dg_TSRC[#_i,2] = dg_TSRC[#_i,1];     // $2D
	dg_TSRC[#_i,3] = dg_TSRC[#_i,0];     // $2C
	*/











}
