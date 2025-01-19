/// @description  Gooma_init2()
function Gooma_init2() {


	debug1=false;
	var _i, _a, _val;


	Boss_init_2();
	Boss_init_2b(-1);

	// attack_state 0: idle/walk
	// attack_state 1: twirl/draw
	// attack_state 2: attack
	                        _a=0;
	attack_state_IDLE     = _a++;
	attack_state_DRAWBACK = _a++;
	attack_state_SWING    = _a++;
	attack_state          = attack_state_IDLE; // 0080

	// sprite_index: spr_Gooma_Placement: 24x48
	GO_set_sprite(id,spr_Gooma_1a);

	Weapon_PALIDX       = PI_MOB_BLU;

	Weapon_Ball_sprite  = 0;
	Weapon_Ball_x       = 0;
	Weapon_Ball_y       = 0;

	Weapon_Chain_sprite = 0;
	Weapon_Chain_x      = 0;



	switch(ver)
	{
	    case 1:{
	    if (f.quest_num==1) HP_IDX=$19; // $19: $90(144)
	    else                HP_IDX=$1B; // $1B: $C0(192)
	    //else                HP_IDX=$1C; // $1C: $D8(216)
	    break;}
    
	    case 2:{
	    if (f.quest_num==1) HP_IDX=$24; // $24: $240(560)
	    else                HP_IDX=$24; // $25: $2B0(688)
	    //else                HP_IDX=$25; // $25: $2B0(688)
	    break;}
	}

	hp = g.dl_HP[|HP_IDX];


	if (f.quest_num>1)
	{
	    XP_IDX += $01;
	    xp = g.dl_XP[|XP_IDX];
	}


	if (ver==2)
	{
	    GO_init_palidx(PI_MOB_RED);
	    var _PAL = "30"+"16"+"0D";
	    change_pal(strReplaceAt(p.pal_rm_new, get_pal_pos(palidx_base)+2, string_length(_PAL), _PAL));
	}


	if (g.mod_Gooma_Projectile_1 
	&&  ver==2 )
	{
	    switch(g.mod_Gooma_Projectile_1){
	    case 1:{projectile_OBJ=Flame2;    projectile_VER=1; break;}
	    case 2:{projectile_OBJ=Fireball2; projectile_VER=3; break;} // Fireball2 v3: Bounces
	    }
    
	    projectile     = projectile_OBJ;
	    projectile_ver = projectile_VER;
    
	    projectile_timer  = 0;
	    projectile_tokens = 1;
	}



	BodyHB_color = c_yellow;

	ShieldHB_color = c_white;
	ShieldHB_IDX   = 7;
	ShieldHB_idx   = ShieldHB_IDX;

	SwordHB_W = 14+g.HB_ADJ_W;
	SwordHB_H =  1+g.HB_ADJ_H;
	SwordHB_w = SwordHB_W;
	SwordHB_h = SwordHB_H;


	Boss_set_MusicBattle_props(STR_Boss+"01");







}
