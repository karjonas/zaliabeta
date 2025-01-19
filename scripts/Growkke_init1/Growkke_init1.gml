/// @description  Growkke_init1()
function Growkke_init1() {


	/*
	What if only the PlantPart parts were collidable?
	    This could be used to make Growkke an obstacle and 
	    obstacle courses with inst groups.
	    The collidable parts would need to be obvious.
	        Stem would be a BGR PI and PlantPart would 
	        be a MOB PI.
	*/


	GameObjectB_init();


	var _i,_j, _a, _idx, _val, _count;


	LoseSegmentSound_NUM = 2;



	// ----------------------------------------------------------------------
	// g.Leaf_SPR1
	Segment_SPR1 = spr_0;
	Segment_SPR2 = spr_0;
	//Segment_SPR1 = g.SignPole_SPR1; // white & blue
	//Segment_SPR2 = g.SignPole_SPR2; // red   & blue




	// ---------------------------------------------------------------------
	SEGMENT_MIN = $01 + $03;
	SEGMENT_MAX = $10;
	SEGMENT_CNT = irandom(SEGMENT_MAX-SEGMENT_MIN) + SEGMENT_MIN;

	Segment_CanDraw_cnt = SEGMENT_CNT;


	FLIP_DELAY1     =  1<<8; // min time until next xscale flip
	FLIP_DELAY2     = (1<<6)-1;  // 
	// DELAY1_DUR      = $100; // min time until next xscale flip







}
