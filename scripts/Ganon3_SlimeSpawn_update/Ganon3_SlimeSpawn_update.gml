/// @description  Ganon3_SlimeSpawn_update()
function Ganon3_SlimeSpawn_update() {


	if (SlimeSpawn_tokens)
	{
	    if (SlimeSpawn_timer)
	    {
	        SlimeSpawn_timer--;
	        if!(SlimeSpawn_timer&$F)
	        {
	            SlimeSpawn_tokens--;
	            var _X  = x-8;
	                _X += irandom(2)*sign_(irandom(1));
	            with(GameObject_create(_X,yt+4, Bot_A,4))
	            {
	                GO_init_palidx(choose(PI_MOB_ORG,PI_MOB_RED,PI_MOB_BLU,PI_MOB_PUR));
	                GO_depth_init(other.depth+1);
	                hspd = byte( ($20+irandom($10)) * sign_(irandom(1)));
	                vspd = byte(-($18+irandom($10)));
	                ogr  = OGR_JUMP;
	            }
	        }
	    }
	}
	else
	{
	    SlimeSpawn_timer = 0;
	}

	if (g.spell_cast_this_frame==SPL_SPEL)
	{
	    SlimeSpawn_tokens = 6 + irandom(4);
	    SlimeSpawn_timer  = SlimeSpawn_DURATION1;
	}







}
