/// @description  GameObjectMgr_Create()
function GameObjectMgr_Create() {

	// For NPC, Enemy, Item, Spawner, Projectile


	var _i;


	update_idx   =  0;
	UPDATE_CNT   =  max(MAX_GOB1, MAX_GOC1);
	counter      =  0; // 0485
	uIdxSwap_gob = -1; // if != -1, addToEntityList() will use eIndexSwap value
	uIdxSwap_goc = -1; // if != -1, addToProjectileList() will use pIndexSwap value


	dl_gob1 = ds_list_create(); // Enemy, Boss, ...
	repeat(MAX_GOB1) ds_list_add(dl_gob1,noone);

	dl_gob2 = ds_list_create(); // 

	dl_goc1 = ds_list_create(); // GOC (projectiles hostile)
	repeat(MAX_GOC1) ds_list_add(dl_goc1,noone);

	dl_goc2 = ds_list_create(); // Projectile Friendly
	repeat(MAX_GOC2) ds_list_add(dl_goc2,noone);







}
