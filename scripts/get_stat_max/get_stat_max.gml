/// @description  get_stat_max(stat type str)
function get_stat_max(argument0) {


	if (argument0==STR_Heart) return cont_cnt_hp()*Container_AMT; // Container_AMT=$20
	if (argument0==STR_Magic) return cont_cnt_mp()*Container_AMT; // Container_AMT=$20
	                          return 0;
	//







}
