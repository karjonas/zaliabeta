/// @description  Cutscene_ShadowBoss_update_1a()
function Cutscene_ShadowBoss_update_1a() {


	if (is_undefined(        BOSS_SPAWN_DK))
	{   with(BOSS_OBJ) other.BOSS_SPAWN_DK = dk_spawn;  }

	var _SB_DEFEATED  = false;
	if(!is_undefined(BOSS_SPAWN_DK)){
	    _SB_DEFEATED  = get_defeated_dk() + BOSS_SPAWN_DK;
	    _SB_DEFEATED  = val(f.dm_quests[?_SB_DEFEATED]);
	}


	return _SB_DEFEATED;







}
