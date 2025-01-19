/// @description  Ganon2_udp()
function Ganon2_udp() {


	var _i, _x,_y, _val;

	can_draw_self = true;

	if (stun_timer)  _val  = stun_timer;
	else             _val  = g.counter1;

	                 _val  = _val>>2;
	                 _val &= $3;
	if (stun_timer)  _val ^= $3;
	CrystalAura_pi = _val +  CrystalAura_PI; // Aura PI


	switch( Crystal_sprite_state){
	case 1:{Crystal_sprite=Crystal_SPRITE1; Crystal_pi=PI_MOB_BLU; break;}
	case 2:{Crystal_sprite=Crystal_SPRITE2; Crystal_pi=PI_MOB_RED; break;}
	case 3:{Crystal_sprite=Crystal_SPRITE2; Crystal_pi=PI_MOB_ORG+((g.counter1>>1)&$3); break;}
	}







}
