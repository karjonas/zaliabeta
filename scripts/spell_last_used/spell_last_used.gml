/// @description  spell_last_used()
function spell_last_used() {


	return g.dl_spell_history[|ds_list_size(g.dl_spell_history)-1];







}
