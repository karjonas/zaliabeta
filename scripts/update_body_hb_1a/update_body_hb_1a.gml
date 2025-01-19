/// @description  update_body_hb_1a()
function update_body_hb_1a() {


	//  BodyHB_idx. 0:g.dg_BODY_HB[#0,i] is all 0,   -1:inst will manually set in its update
	if(!BodyHB_idx)
	{
	    BodyHB_can_draw = BodyHB_idx!=BODY_HB_IDX_DYNAMIC; // BODY_HB_IDX_DYNAMIC: -2
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}


	if (is_ancestor(object_index,ProjectileHostile)) // Projectile Hostile
	{    BodyHB_can_draw = true;  }
	else BodyHB_can_draw = state==state_NORMAL;


	BodyHB_xoff = g.dg_BODY_HB[#BodyHB_idx,0];
	BodyHB_yoff = g.dg_BODY_HB[#BodyHB_idx,1];
	BodyHB_w    = g.dg_BODY_HB[#BodyHB_idx,2];
	BodyHB_h    = g.dg_BODY_HB[#BodyHB_idx,3];
	BodyHB_r    = g.dg_BODY_HB[#BodyHB_idx,4]; // radius

	update_body_hb();







}
