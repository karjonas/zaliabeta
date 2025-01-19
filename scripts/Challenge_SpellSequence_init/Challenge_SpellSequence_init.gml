/// @description  Challenge_SpellSequence_init()
function Challenge_SpellSequence_init() {


	Challenge_init();

	dl_spell_seq = ds_list_create();
	//dl_spell_hist = ds_list_create();
	SpellHist_COUNT1 = ds_list_size(g.dl_spell_history);
	SpellHist_count  = SpellHist_COUNT1;







}
