/// @description  eID = $11
// event_inherited();

// eID = $11;
HP_IDX      = $0B; // g.dl_HP_DEFAULT[|$0B] = $12
hp          = g.dl_HP[|HP_IDX];
//hp          = $12;
// projectile = Fireball2;
// usdScr = usd_Slog;
dl_sprites[|0] = spr_Slog1;
dl_sprites[|1] = spr_Slog2;
// setSprIndex(dl_sprites[|0]);
// behaviors |= BVR_JUMP;
// behaviors |= BVR_SHOT;

GO_init_palidx(PI_MOB_BLU);


