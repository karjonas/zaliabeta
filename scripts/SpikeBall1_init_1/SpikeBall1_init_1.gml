/// @description  SpikeBall1_init_1()
function SpikeBall1_init_1() {


	Projectile_init();
	//
	HSPD1   = $20;
	VSPD1   = HSPD1;


	switch(ver)
	{
	    case 1:{
	    dl_sprites[|1]   = spr_Spike_ball_4a;
	    dl_sprites[|0]   = spr_Spike_ball_4a;
	    break;}
    
	    case 2:{
	    dl_sprites[|1]   = spr_EnergyBall_1b;
	    dl_sprites[|0]   = spr_EnergyBall_1a;
	    break;}
	}
	//SpikeBall_spr       = spr_Spike_ball_4a;
	/*
	SpikeBall_SPR4      = spr_Spike_ball_4a;
	SpikeBall_SPR5      = spr_Spike_ball_5a;
	SpikeBall_SPR6      = spr_Spike_ball_6a;
	SpikeBall_SPR7      = spr_Spike_ball_7a;
	SpikeBall_spr       = SpikeBall_SPR4;
	*/
	//g.dm_go_prop[?object_get_name(object_index)+hex_str(ver)+STR_Placement_spr] = SpikeBall_spr;
	GO_sprite_init(dl_sprites[|0]);


	timer = $140; // life duration
	collided_solid_counter = 0;







}
