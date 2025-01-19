/// @description  init_mod_control_props()
function init_mod_control_props() {


	var _i,_j, _a;



	mod_PC_OUTLINE_COLOR        =  0; // OG
	//mod_PC_OUTLINE_COLOR        =  1; // Use a darker color option 1
	//mod_PC_OUTLINE_COLOR        =  2; // Use a darker color option 2


	mod_ANIMATE_LIQUID          =  0;
	mod_ANIMATE_LIQUID          =  1;

	mod_CLOUD_MOVEMENT          =  0; // 0: OG, clouds do not move
	mod_CLOUD_MOVEMENT          =  1; // 1: clouds move left across sky.


	mod_OldKasutoFire           =  0; // 0: OG. No fire
	mod_OldKasutoFire           =  1; // 1: Animated fire on houses
	mod_OldKasutoFire           =  2; // 2: Animated fire on houses is interactable


	// Draw a chain from Stalfos to ceiling as Stalfos is waiting to drop.
	mod_STALFOS_CHAIN           =  0;
	mod_STALFOS_CHAIN           =  1;

	// The look of the Great Palace barrier.
	mod_BARRIER_LOOK            =  0; // 0: OG
	mod_BARRIER_LOOK            =  1; // Value is version


	mod_BossHPBarFlash          =  0; // 0: OG
	//mod_BossHPBarFlash          =  1; // 1: Boss hp flashes when damaged


	mod_ScreenShake             =  0; // 
	mod_ScreenShake             =  1; // 


	mod_PC_ENTER_FROM_CHIMNEY   =  0;
	mod_PC_ENTER_FROM_CHIMNEY   =  1; // Darunia upthrust house, ..


	mod_RM_BRIGHTNESS_SYS       =  0; // value is version
	mod_RM_BRIGHTNESS_SYS       =  1; // 1: Light torches to brighten a dark rm.
	mod_RM_BRIGHTNESS_SYS       =  2; // 2: Possesion of CANDLE gives 1 room brightness point automatically, lighting torches adds more room brightness






	mod_ContinueScreen_Music        =  0; // 0: OG. No audio
	mod_ContinueScreen_Music        =  1; // 1: Zelda 1 Continue screen music


	mod_LOW_HP_SOUND                =  0; // OG
	mod_LOW_HP_SOUND                =  1; // Sound plays less frequently after a num of plays.





	// OG will soft lock if level up window activates on the same frame as rm change.
	mod_FIX_SOFTLOCK_LVLUP_1    = 0;
	mod_FIX_SOFTLOCK_LVLUP_1    = 1; // fixes bug

	// OG will soft lock if level up window activates when dialogue window is open.
	mod_FIX_SOFTLOCK_LVLUP_2    = 0;
	mod_FIX_SOFTLOCK_LVLUP_2    = 1; // fixes bug












	mod_START_RUN_LIVES         =  0; // 0: OG. Start with 3
	mod_START_RUN_LIVES         =  1; // 1: Start with 3 + any acquired life dolls


	// 0: OG, 5: Max(next char delay = 0)
	// The higher the value, the faster the dialogue.
	// Users can set this in options menu.
	mod_DLG_SPEED = 2;




	                                  _a=1;
	mod_ContinueFrom_DNGN           = _a; _a=_a<<1; // DNGN: Gameover in dungeon: Continue from dungeon entrance.
	mod_ContinueFrom_TWN1           = _a; _a=_a<<1; // TWN1: Gameover in OW:      Continue from last house player saved at.
	mod_ContinueFrom_TWN2           = _a; _a=_a<<1; // TWN2: From file select,    Continue from last house player saved at.

	mod_ContinueFrom                =  0; // 0: OG. Continue starts you in N Palace
	mod_ContinueFrom                = mod_ContinueFrom_DNGN;
	mod_ContinueFrom                = mod_ContinueFrom_TWN1;
	mod_ContinueFrom                = mod_ContinueFrom_TWN2;
	mod_ContinueFrom                = mod_ContinueFrom_DNGN | mod_ContinueFrom_TWN1;
	mod_ContinueFrom                = mod_ContinueFrom_DNGN | mod_ContinueFrom_TWN1 | mod_ContinueFrom_TWN2;










	mod_RetainXPWithSaveNPC         =  0; // OG. Lose all xp
	mod_RetainXPWithSaveNPC         =  1; // Saving with NPC with save current xp

	mod_Gameover_XP_PENALTY         =  0.00; // 0.00: OG. Keep 00% of current xp
	mod_Gameover_XP_PENALTY         =  0.25; // 0.25:     Keep 25% of current xp


	mod_ConfirmGODeathOnXPRise      =  0; // OG. Enemy death its xp reward doesn't count if leave rm before xp is done rising. 
	//mod_ConfirmGODeathOnXPRise      =  1; // Enemy death and its xp reward confirmed some time during xp rise.






	mod_EnterTownSideOption         =  0; // 0: OG. Always start at right end of town
	mod_EnterTownSideOption         =  1; // 1: Start at left or right end of town, depending on g.ow.pc_dir


	// COND: CONDitions
	mod_BuildBridge_COND            =  0; // 0: Talk to NPC (OG)
	mod_BuildBridge_COND            =  1; // 1: Talk to NPC but NPC is waiting in booth outside.
	mod_BuildBridge_COND            =  2; // 2: Talk to NPC only once and bridge will auto build when PC is close enough.





	mod_STAT_RESTORE_1          =  0; // 0: OG
	mod_STAT_RESTORE_1          =  1; // 1: Stat restore can start in Level-Up Menu after leveling up Life or Magic







	mod_CAST_SPELL_CONDITION            =  0; // 0: OG. Entering a diff rm readies g.spell_selected spell.
	mod_CAST_SPELL_CONDITION            =  1; // 1: MUST open spell menu to ready a spell.

	// In OG, you can't cancel a spell once it's primed.
	// For QOL, to prevent accidentally using up magic, this will allow you to cancel the primed spell.
	mod_SPELL_CANCEL                    =  0; // 0: OG. Once the spell menu is opened. The spell will always be primed/
	mod_SPELL_CANCEL                    =  1; // 1: Going to the item or map part of the pause menu will cancel the spell.

	mod_SHOW_MAGIC_REMAINING_NUM        =  0; // 
	mod_SHOW_MAGIC_REMAINING_NUM        =  1; // The top of the spell menu will display remaining magic as a value.

	mod_HUD_SPELL_READY                 =  0; // 
	mod_HUD_SPELL_READY                 =  1; // HUD will display which spell is ready to be cast.

	mod_IndicateSpellUnaffordable       =  0; // 
	mod_IndicateSpellUnaffordable       =  1; // In spell menu & HUD, any unaffordable spell will be diff color

	mod_IndicateSpellActive             =  0; // 
	mod_IndicateSpellActive             =  1; // In spell menu & HUD, any active spell will be diff color


	mod_SpellSHIELD_NAME                =  0; // 0: "SHIELD" (OG)
	mod_SpellSHIELD_NAME                =  1; // 1: "PROTECT"


	mod_LevelLIFE_NAME              =  0; // 0: "LIFE" (OG)
	//mod_LevelLIFE_NAME              =  1; // 1: "DEFENSE"


	mod_MENU_SPELLS_XOFF        = -1; // 0: mod is OFF
	mod_MENU_SPELLS_YOFF        =  1; // 


	mod_AcquireSpellRequirement = 0; // 0: Current max mp must be more than spell cost
	mod_AcquireSpellRequirement = 1; // 1: No requirement

	mod_WISEMEN_RESTORE_MP      =  0;
	mod_WISEMEN_RESTORE_MP      =  1;

	mod_WISEMEN_CAST_SPELL      =  0;
	mod_WISEMEN_CAST_SPELL      =  1; // When acquiring a spell, it is cast.

	mod_HEAL_NPC_DELAY1         =  0;
	mod_HEAL_NPC_DELAY1         =  1; // Healer/Saver: Delay face toward door.


	mod_REFLECT_more_obj        =  0; // 0: OG. Only SoundWave can be reflected
	mod_REFLECT_more_obj        =  1; // 1: Various other proj can be reflected and damage enemies









	mod_QuestNewKasuto              = 0; // 0: OG. Requires player to have all magic containers sans the quest reward one.
	mod_QuestNewKasuto              = 1; // 1: No requirement

	mod_QuestNabooru                = 0; // 0: OG. Requires player to to open dialogue w/ fountain to the left
	mod_QuestNabooru                = 1; // 1: Player must explore caves under town and defeat enemies

	mod_QUEST_MIRROR                = 0; // 0: OG. Mirror is in next house left of quest npc
	mod_QUEST_MIRROR                = 1; // 1: Mirror is in Saria Cemetery

	mod_MedicinePlantItem           =  0; // 0: OG. Bottle of medicine
	mod_MedicinePlantItem           =  1; // 1: Plant/Flower

	mod_FlowerItemAnim              =  0; // 0: No anim
	//mod_FlowerItemAnim              =  1; // 1: 3 colors of the flower part sequence in intervals

	mod_MedicineLocation            =  0; // 0: OG
	mod_MedicineLocation            =  1; // 1: The next scene to the right of OG scene


	mod_PATH_TO_RAFT            =  0; // value is version
	mod_PATH_TO_RAFT            =  1; // 1: Vertical gauntlet before RAFT-item rm.


	mod_KINGS_TOMB              =  0;
	mod_KINGS_TOMB              =  1;


	mod_AllKeyItem                  =  0; // 0: OG. Magical Key is secret building in New Kasuto
	mod_AllKeyItem                  =  1; // 1: Magical Key in Great Palace and Power Bracelet takes its place



















	mod_PCUpdate1               =  0; // 0: OG. when pc.iframes_timer==1,2 GO_update_cam_vars() and scs update are skipped every other frame
	mod_PCUpdate1               =  1; // 1: cam vars and scs will not be skipped


	mod_PCJumpDirBalancing      =  0; // 0: OG. getting enough hspd to get a higher jump is slightly easier moving right
	mod_PCJumpDirBalancing      =  1; // 1: left and right balanced


	mod_PCFairyCSOFF            =  0; // 0: OG. 
	mod_PCFairyCSOFF            =  1; // 1: Better PC Fairy CS OFF points


	mod_PCSword2                =  0; // 0: OG. No diff
	mod_PCSword2                =  1; // 1: Sword length is 2 extra pixels
	mod_PCSword2                =  2; // 2: Sword length is 3 extra pixels
	mod_PCSword2                =  3; // 3: Sword length is 3 extra pixels except during Shadow Boss, it's 2 extra


	mod_CuccoUpDownThrustHB     =  0; // 0: Use normal up/downthrust hb size
	mod_CuccoUpDownThrustHB     =  1; // 1: Nerf width of up/downthrust hb


	mod_PCBeamHP                =  0; // 0: OG/Norm. Need hp at max
	mod_PCBeamHP                =  1; // 1: With ITM_SWORD, need max hp - 1 bar/square



	// When PC is around the edge of a map page and stabbing right, 
	// if PC's ogX(8 pixels left of center x), and the sword_hb_xl 
	// are in different map pages, the game considers this as 
	// stabbing left (because ogX&$FF > sword_hb_xl&$FF) in the 
	// sword hb collision check and pushes the sword hb 2 extra pixels right.
	// This is how the Dark Lonk exploit works in OG.
	mod_fix_og_swordhb_exploit  = 0; // OG
	//mod_fix_og_swordhb_exploit  = 1;


	mod_HowDownStabAffectsVSPD      =  0; // 0: OG. Downstab collision sets vspd to a contstant, even if that's slower than your current vspd.
	//mod_HowDownStabAffectsVSPD      =  1; // 1: Downstab collision sets vspd only if it's faster than current vspd.
	//mod_HowDownStabAffectsVSPD      =  2; // 2: Downstab collision adds its vspd to current vspd.


	mod_PC_CUCCO_1              =  0; // value is version
	mod_PC_CUCCO_1              =  1; // value is version

	mod_PC_CUCCO_2              =  0; // normal damage
	//mod_PC_CUCCO_2              =  1; // extra damage

	// TODO: Finish cucco attack frenzy
	// When PC is cucco, depending on taken damage data, a 
	// cucco frenzy attack will occur sending cuccos flying at the enemy.
	mod_PC_CUCCO_3              =  0; // value is version
	//mod_PC_CUCCO_3              =  1; // value is version


	// Holding B allows an attack frenzy of multiple stabs after initial stab.
	// This can be toggled in options menu if user has SWORD item.
	mod_StabFrenzy             =  0; // 0: Off, 1: On


	mod_SKIP_HOLD_ITEM          =  0;
	//mod_SKIP_HOLD_ITEM          =  1;






	mod_CRUMBLE_TILES           =  0; // 0: OG. Only csMid can activate a block's crumble
	mod_CRUMBLE_TILES           =  1; // 1: Each csBtm(1 for each foot) will be checked.












	mod_SpawnByStab_DungeonEntrance =  0; // 0: OG
	mod_SpawnByStab_DungeonEntrance =  1; // 1: Greatly reduce chance of IronKnuckle spawning instead of red jar.

	mod_SpawnByStab_Block           =  0; // 0: OG. Player can easily miss the SpawnByStab hb, but still break the block.
	mod_SpawnByStab_Block           =  1; // 1: Spawn happens only if the block is broken.


	// QOL for magic requirement scenarios with no way to restore MP.
	mod_EXTRA_ENEMIES_TO_FARM_MAGIC = 0;
	mod_EXTRA_ENEMIES_TO_FARM_MAGIC = 1;





	mod_destroy_go_on_death =  0; // 0: state is set to 0 but instance remains until another takes its slot.
	mod_destroy_go_on_death =  1; // 1: To improve performance, inst is destroyed when not needed anymore.


	mod_ZoraProjectileXY        =  0; // 0: OG. Projectile spawn xy wonky in certain positions
	mod_ZoraProjectileXY        =  1; // 1: Set spawn xy closer to mouth


	mod_IronKnuckle_AggroAI     =  0; // 0: OG, 
	mod_IronKnuckle_AggroAI     =  1; // 1: Must face PC to aggro, 
	mod_IronKnuckle_AggroAI     =  2; // 2: Must face PC to aggro if outside of og view area
	mod_IronKnuckle_AggroAI     =  3; // 3: Must face PC to aggro if outside of og view area, No special behavior towards cucco

	mod_IronKnuckle_AggroAI2    =  0; // 0: OG. Will lose aggro about 5 pixels below max regular jump height
	mod_IronKnuckle_AggroAI2    =  1; // 1: Stay aggro on PC up to max regular jump height

	mod_IronKnuckle_AggroAI3    =  0; // 0: OG. Lose aggro if PC.yb>IronKnuckle.yb
	mod_IronKnuckle_AggroAI3    =  1; // 1:     Lose aggro if PC.yb+7>IronKnuckle.yb

	mod_IronKnuckle_ShieldAI    =  0; // 0: OG, 
	//mod_IronKnuckle_ShieldAI    =  1; // 1: Shield defense AI mod 1, 

	mod_IronKnuckle_AttackAI    =  0; // 0: OG, 
	//mod_IronKnuckle_AttackAI    =  1; // 1: Reduced attack frequency


	// Wide screen making it much more diff.
	mod_Mau_SPAWN_FREQ          =  0; // OG
	mod_Mau_SPAWN_FREQ          =  1; // Nerf spawn freq. 
	mod_Mau_SPAWN_FREQ          =  2; // Limit num Mau spawned to..


	mod_Ra_HP   =  0; // 0: OG
	mod_Ra_HP   =  1; // 1: Reduced HP because OG is too high


	// 0:OG. Stalfos at 9695, sets pc.swrd_collidable=false  if pc's behavior is upthrust.
	// I beleive the devs just meant to make Stalfos invulnerable to upthrust, 
	// however, this could cause pc sword collision w/ other GO to be skipped.
	mod_STALFOS_CONTROL1        =  0; // 
	mod_STALFOS_CONTROL1        =  1; // 


	// Balance Mago's Projectile spawn x
	mod_MAGO_ADJ1               =  0; // 
	mod_MAGO_ADJ1               =  1; // 

	// Prevent teleporting in walls and over pits
	mod_MAGO_ADJ2               =  0; // 
	// mod_MAGO_ADJ2               =  1; // 

	// When only 1 Mago is spawned, give better chance of teleporting closer to PC.
	mod_MAGO_ADJ3               =  0; // 
	mod_MAGO_ADJ3               =  1; // 


	mod_Wizard_TELEPORT_AREA    =  0; // 0: OG. Wizards only teleport in mappage 1
	mod_Wizard_TELEPORT_AREA    =  1; // 1: Wizards can teleport in any mappage
	mod_Wizard_TELEPORT_AREA    =  2; // 2: Wizards can teleport in any mappage but with some room edge padding


	mod_FenserFix1              =  0; // 0: OG. Fenser(a HelmetHead head) can fall to ground again after a while but doesnt rise all the way back to correct y
	mod_FenserFix1              =  1; // 1: Will rise back to correct height.


	// Kakusu are special enemies hidden in the world.
	mod_KAKUSU                  =  0;
	mod_KAKUSU                  =  1;



	mod_SAFE_ENCOUNTER_ENEMIES  =  0; // 
	mod_SAFE_ENCOUNTER_ENEMIES  =  1; // Safe encounters(like Paths) have a change to spawn enemies














	mod_BossExplosionsCenteredOnBoss = 0; // 0: OG. Explosions centered around upper left of boss
	mod_BossExplosionsCenteredOnBoss = 1; // 1: Explosions centered around center of boss

	mod_NoBossKeyDrop       =  0; // 0: OG. Key drops after defeating boss
	mod_NoBossKeyDrop       =  1; // 1: Arena gates are removed after defeating boss


	mod_BossRoar                    =  0; // 0: OG. No roar.
	//mod_BossRoar                    =  1; // 1: Zelda 1 boss roar


	mod_Quest2BossDifficulty    =  0; // 0: OG. No change from quest 1
	mod_Quest2BossDifficulty    =  1; // 1: Bosses have added difficulty in quest 2


	mod_HelmetHead_Vulnerability    =  0; // 0: OG
	mod_HelmetHead_Vulnerability    =  1; // 1: Only vulnerable once new head is fully grown.
	//mod_HelmetHead_Vulnerability    =  2; // 2: Same as 1 but less delay for 1st quest

	mod_HelmetHead_MoreHead         =  0; // 0: OG
	mod_HelmetHead_MoreHead         =  1; // 1: 1 extra head will spawn


	mod_RebonackA_HBBalance         =  0; // 0: OG. BodyHB has same offset for both facing dirs and therefor unbalanced
	mod_RebonackA_HBBalance         =  1; // 1: BodyHB is same regardless of facing dir


	// VulnDur: Vulnerability Duration
	// Another solution to this issue might be to lessen the arena width
	// 1: Increase vulnerability duration to compensate for the wider arena which makes it less likely for Carock to get hit.
	mod_Carock_VulnDur          =  0; // 0: OG. 
	mod_Carock_VulnDur          =  1; // 1: Increase vulnerability duration

	mod_CAROCK_ATK_2            =  0;
	mod_CAROCK_ATK_2            =  1;

	mod_CAROCK_ATK_3            =  0;
	mod_CAROCK_ATK_3            =  1;


	mod_Gooma_Projectile_1          =  0; // OG, no projectile
	//mod_Gooma_Projectile_1          =  1; // Shoots Flame2 when weapon is swung
	//mod_Gooma_Projectile_1          =  2; // Shoots bouncing Fireball2 when twirling weapon


	mod_P5HorseHead             =  0; // 0: OG(American). There's a blue IronKnuckle in the false wall room.
	mod_P5HorseHead             =  1; // 1: Like the FDS version, HorseHead is in the false wall room.


	mod_Barba_Aim               =  0; // 0: OG. Projectiles dont aim very well
	mod_Barba_Aim               =  1; // 1: Improved projectile aim

	mod_BARBA_BEAM_ATK          =  0;
	//mod_BARBA_BEAM_ATK          =  1;

	mod_BARBA_PROJ_BOUNCE       =  0;
	mod_BARBA_PROJ_BOUNCE       =  1;

	mod_BARBA_ANTI_DOWNSTAB     =  0;
	//mod_BARBA_ANTI_DOWNSTAB     =  1; // Barba does not take damage to downstab as if the top of its head is a solid.


	mod_ShadowBoss_ADJ1         =  0; // 0: OG: Too easy with SWORD Item
	mod_ShadowBoss_ADJ1         =  1; // 1: SWORD Item balancing

	mod_ShadowBoss_DrawWithFairy=  0; // 0: OG. ShadowBoss does NOT draw if PC is fairy form
	mod_ShadowBoss_DrawWithFairy=  1; // 1: ShadowBoss will still draw







}
