/// @description  init_vars_go_3a()
function init_vars_go_3a() {


	HP_IDX = 0; // idx of g.dl_HP
	hp     = 0; // 00C2[eIndex]

	xp_can_draw = false;
	XP_IDX = 0; // idx of g.dl_XP
	xp     = 0;

	// ABL_IDLE = $01;
	// ABL_WALK = $02;
	// ABL_JUMP = $04;
	// ABL_ATCK = $08;
	// ABL_SHOT = $10;
	// ABL: ABLe/ABiLity/capABiLities
	// Bits that represent a capability in GameObject.abilities
	abilities  = 0;
	abilities |= ABL_IDLE;


	// Data Key for accessing spawn data in g.dm_spawn
	dk_spawn = undefined; // datakey spawn

	// Part of mapkey for g.dm_spawnData that holds the spawn data for this instance.
	// Example: spawn_x = g.dm_spawnData[? get_spawn_data_key(spawn_idx)+"_x"];
	spawn_idx = -1; // 00BC[uIdx]



	var                       _a=1;
	SPAWN_TRIGGER_TYPE_PRIO = _a++; // PRIOrity.  Spawned at room enter
	SPAWN_TRIGGER_TYPE_PRXM = _a++; // PRoXiMity. Spawned by proximity to cam.
	SPAWN_TRIGGER_TYPE_SPNR = _a++; // SPawNeR.   Spawned by a spawner object.
	spawn_trigger_type = 0;


	is_from_spawner = false;


	// respawn_type: Value representing if and when GO can respawn.
	// 0: never, 1: off screen, 2: refresh area, 3: refresh rm, 4: 30 seconds (on or off screen)
	RESPAWN_TYPE = 0;
	respawn_type = 0;


	ATTACK_LEVEL = 0; // default
	attack_level = 0; // current used

	// PC sword to GO body-hb reaction. 
	// Each byte is reaction type. Each bit of a byte is sword atk type
	// $01: stab high, $02: stab low, $04: thrust dw, $08: thrust up, $10: , $20: , $40: , $80: 
	// $0000FF: take dmg, $00FF00: body is like a shield/solid, $FF0000: extra pushback/bounce
	REACT_SWORD = 0; // def stored in data
	react_sword = 0; // current used

	// Reaction to PC proj collide with body
	// PC projectile bits. 0: none, 1: Beam, 2: FIRE, 4: 
	// 0 means no reaction, projectile will just move right through.
	// body is vulnerable:      $0000FF
	// disintigrate on body:    $00FF00
	// ?                        $FF0000
	REACT_PROJ = 0; // def stored in data
	react_proj = 0; // current used

	// value representing what effect THNUNDER has on GO. 0: no effect
	// 1: All HP
	// 2: $32 HP (50)
	// 3: $02 HP (Thunderbird)
	REACT_THUNDER = 0; // def stored in data
	react_thunder = 0; // current used

	// value representing what effect SPELL has on GO. 0: no effect
	// 1: Turn into Bot, 2: Turn into Ache, 3: Turn into RestoreFairy, ..
	REACT_SPELL = 0; // def stored in data
	react_spell = 0; // current used

	// id for XP Drain effect. 0: none, 1: All
	XP_DRAIN = 0; // def stored in data
	xp_drain = 0; // current used


	// value representing what the GO can give. exp, pBag, bottle, ...
	// Drop type. 0: none, 1: small, 2: big, 3: bomb, ...
	// DROP_TYPE = 0;
	// drop_type = 0;

	// Bits representing what kind of items go can drop
	DROP_BITS = 0; // 
	drop_bits = 0; // 

	drop_item_obj = 0; // 
	drop_item_ver = 1; // 




	// Typically for Projectile
	REACT_BODY = 0;
	react_body = REACT_BODY;

	REACT_SHIELD = 0;
	react_shield = REACT_SHIELD;




	SpawnByStab_inst = noone;


	is_hostile = is_ancestor(object_index,Enemy) || is_ancestor(object_index,ProjectileHostile);







}
