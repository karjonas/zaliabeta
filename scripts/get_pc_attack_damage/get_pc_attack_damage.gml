/// @description  get_pc_attack_damage()
function get_pc_attack_damage() {


	var _damage  = g.pc.dl_ATTACK_DAMAGE[|f.level_atk];

	if (g.mod_PC_CUCCO_2    // Gives PC Cucco extra atk dmg
	&&  pc_is_cucco() )
	{
	    _damage += 1 + (f.level_atk>=4) + (f.level_atk>=6); // +1,2,3
	}


	return _damage;







}
