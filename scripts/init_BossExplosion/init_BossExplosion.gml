function init_BossExplosion() {

	GO_depth_init(DEPTH_ENEMY_EXPLOSION);

	dl_sprites[|1] = g.BossExplosion_SPR2; // big
	dl_sprites[|0] = g.BossExplosion_SPR1; // small
	GO_sprite_init(dl_sprites[|0]);
	GO_init_palidx(PI_MOB_ORG);

	timer = g.BossExplosion_Inst_DURATION; // life duration timer
	//timer = $F; // life duration timer
	//boss = noone;







}
