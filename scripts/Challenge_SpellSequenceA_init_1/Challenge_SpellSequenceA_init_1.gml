/// @description  Challenge_SpellSequenceA_init_1()
function Challenge_SpellSequenceA_init_1() {


	Challenge_SpellSequence_init();


	var _i, _a;

	                      _a=1;
	SUB_STATE_SEQU      = _a++; // Listening for spell sequence
	//SUB_STATE_TRIG      = _a++; // Triggered
	SUB_STATE_CMPL1     = _a++; // CMP1: CoMPlete 1.  Waiting for end of spell flash.
	SUB_STATE_CMPL2     = _a++; // CMP2: CoMPlete 2
	SUB_STATE_CMPL3     = _a++; // CMP2: CoMPlete 3
	//SUB_STATE_DONE      = _a++; // Done 
	//SUB_STATE_DSTR1     = _a++; // Destroy 1. Remove solid tiles and explode.
	sub_state           = SUB_STATE_SEQU;


	//DUR_DELAY_CMP1 = $40; // Delay completion start
	//DUR_DELAY_CMP2 = $20; // Delay completion reward


	BLOCK_SPR = g.Block1_SPR1;




	//SND_BRDG_CRBL
	//SND_BLOK_BRK1
	//SND_SECRET_1A
	//SND_ENMY_DTH1







}
