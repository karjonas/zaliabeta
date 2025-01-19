/// @description  SpikeBall1_init_2()
function SpikeBall1_init_2() {


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
	//g.dm_go_prop[?object_get_name(object_index)+hex_str(ver)+STR_Placement_spr] = SpikeBall_spr;
	GO_sprite_init(dl_sprites[|0]);







}
