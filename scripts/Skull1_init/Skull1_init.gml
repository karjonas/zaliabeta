/// @description  Skull1_init()
function Skull1_init() {


	can_draw_self = true;


	if (ver==2 
	&& !global.Halloween1_enabled )
	{
	    can_draw_self = false;
	    state = 0;
	    for(_i=ds_list_size(g.dl_niao)-1; _i>=0; _i--)
	    {
	        if(!is_undefined(g.dl_niao[|_i]) 
	        &&  g.dl_niao[|_i]==id )
	        {
	            g.dl_niao[|_i] = noone;
	            break;//_i
	        }
	    }
	    instance_destroy();
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}


	scr_draw = Skull1_draw;


	GO_sprite_init(spr_Skull04);
	//GO_sprite_init(spr_Skull_2a_WRB);
	GO_init_palidx(PI_MOB_ORG);
	GO_depth_init(DEPTH_BG3-1);

	if(!is_undefined(dk_spawn))
	{
	    if(!is_undefined(g.dm_rm[?dk_spawn+STR_Data+"01"]))
	    {   x =      val(g.dm_rm[?dk_spawn+STR_Data+"01"]);  }
    
	    if(!is_undefined(g.dm_rm[?dk_spawn+STR_Data+"02"]))
	    {   y =      val(g.dm_rm[?dk_spawn+STR_Data+"02"]);  }
    
	    set_xy(id,x,y);
    
	    if(!is_undefined(g.dm_rm[?dk_spawn+STR_Data+"03"]))
	    {   depth =  val(g.dm_rm[?dk_spawn+STR_Data+"03"]);  }
    
	    GO_depth_init(depth);
	}







}
