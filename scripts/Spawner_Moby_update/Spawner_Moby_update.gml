/// @description  Spawner_Moby_update()
function Spawner_Moby_update() {


	if (g.counter1&$7F) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!
	if (available_update_idx_gob(MAX_GOB1)==UIDX_NULL) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!



	// 9B48
	with(enemy_spawn_2(MobyA,1))
	{
	    is_from_spawner = true;
    
	    if (instance_exists(PlatformRaft) 
	    &&                  PlatformRaft.hspd 
	    && !(g.view_lock&$3) 
	    &&  viewXL()>0 
	    &&  viewXR()<g.rm_w )
	    {
	        if (facingDir==PlatformRaft.hspd_dir)
	        {    var _DIFF = $50 *  facingDir;  }
	        else var _DIFF = $50 * -facingDir;
	        set_xy(id, x+_DIFF, y);
	    }
	}







}
