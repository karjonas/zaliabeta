/// @description  Ganon3_udp()
function Ganon3_udp() {


	can_draw_self        = sub_state<sub_state_EXPLODE_BODY;
	Skull_can_draw     = can_draw_self;
	SkullAura_can_draw = Skull_can_draw && SkullClingState==SkullClingState_FREE;
	//
	if(!can_draw_self 
	&&  sub_state==sub_state_EXPLODE_BODY 
	&&  Explosion_timer 
	&&  Explosion_timer>=EXPLOSION_CUE6 )
	//&& (Explosion_timer>=EXPLOSION_CUE7 || Explosion_timer&2) )
	{
	    if (Explosion_timer>=EXPLOSION_CUE8 
	    || (Explosion_timer>=EXPLOSION_CUE7 && Explosion_timer&$2) )
	    {
	        can_draw_self = true;
	    }
    
	    if (Explosion_timer>=EXPLOSION_CUE7 
	    || (Explosion_timer>=EXPLOSION_CUE6 && Explosion_timer&$2) )
	    {
	        Skull_can_draw = true;
	    }
	}

	SkullAura_can_draw &= Skull_can_draw;
	SkullAura_can_draw &= !(g.counter1&$3);

	Crystal_can_draw    = Skull_can_draw;
	Crystal_sprite         = Crystal_SPRITE2;











	if (Attack_id==Attack1_ID 
	&&  BattleState>=BattleState_Attack1_IDLE )
	{    SPRITES_idx = 1;  }
	else SPRITES_idx = 0;

	if (SlimeChange_timer)
	{
	    var _TIMING  = SlimeChange_timer >= SlimeChange_DUR1; // 0,1
	        _TIMING += SlimeChange_timer >= SlimeChange_DUR1+SlimeChange_DUR2; // 0,1,2
	        _TIMING  = $2<<_TIMING; // $2,4,8
	        _TIMING--; // $1,3,7
	    //
	    if!(SlimeChange_timer&_TIMING)
	    {   SPRITES_idx = !SPRITES_idx;  }
	}
	else if (SkullClingState==SkullClingState_CLING 
	     &&  stun_timer 
	     &&  stun_timer&$2 
	     //&&  stun_timer <= STUN_DURATION1-(STUN_DURATION1 div 3) )
	     &&  stun_timer <= STUN_DURATION1-(STUN_DURATION1>>2) )
	{
	    SPRITES_idx = 1;
	}
	else if (SkullClingState==SkullClingState_FREE)
	{
	    SPRITES_idx = 1;
	}
	/*
	SlimeChange_DUR1 = $8;
	SlimeChange_DUR2 = SlimeChange_DUR1<<1;
	SlimeChange_DUR3 = SlimeChange_DUR1<<2;
	SlimeChange_DUR0 = SlimeChange_DUR1 + SlimeChange_DUR2 + SlimeChange_DUR3;
	*/


	/*
	if (sub_state  != sub_state_BATTLE 
	||  Attack_id != Attack1_ID )
	//if (sub_state != sub_state_BATTLE 
	//|| !isVal(BattleState, BattleState_Attack1_EMERGE,BattleState_Attack1,BattleState_Attack1_MERGE1,BattleState_Attack1_MERGE2,BattleState_Attack1_MERGE3) )
	{
	    Skull_x=drawX;
	    Skull_y=drawY;
	    //Skull_x=x;
	    //Skull_y=y;
	}
	*/

	/*
	if (SlimeChange_timer)
	{
	    var _TIMING  = SlimeChange_timer >= SlimeChange_DUR1;
	        _TIMING += SlimeChange_timer >= SlimeChange_DUR1+SlimeChange_DUR2;
	        _TIMING  = $2<<_TIMING; // $2,4,8
	        _TIMING--; // $1,3,7
	    //
	    if!(SlimeChange_timer&_TIMING)
	    {    SPRITES_idx =  SlimeChange_dir;  }
	    else SPRITES_idx = !SlimeChange_dir;
	}
	*/






}
