/// @description  Helmethead_udp()
function Helmethead_udp() {


	// BD75
	can_draw_self = true;

	// BD7D
	if (inRange(counter&$7, $3,$5))
	{    Legs_sprite = spr_Boss_legs1B;  }
	else Legs_sprite = spr_Boss_legs1A; // open


	// BD98
	Head_sprite = dl_Head_SPRITES[|Head_num-1];

	if(!pending_death) Head_xscale = dir_to_pc(id);

	if ( Head_sprite==spr_Helmethead_head_4) // 4: Added Content: Extra head
	{    Head_xoff =  -Head_xscale;  }
	else Head_xoff = 0;

	Head_yoff = -7 + -12 + min(Head_spawn_timer,$10); // when $10 frames to go







}
