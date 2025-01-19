/// @description  Spawner_Mau_update()
function Spawner_Mau_update() {


	// B861
	if (g.counter1&$7F   // every 128 frames: 2.133s
	||  g.view_at_rm_edge&$3 )
	{
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}



	switch(g.mod_Mau_SPAWN_FREQ)
	{   // Wide screen making rm much more 
	    // difficult by alowing too many to spawn.
	    // ------------------------------------------------------------------------
	    // ------------------------------------------------------------------------
	    case 1:{
	    var _count1 = 0;
	    var _count2 = 0;
	    with(Enemy)
	    {
	        if (state!=state_NORMAL) continue;
        
	        if (is_ancestor(object_index,Mau_A)) _count1++;
	        else                                 _count2++;
	    }
	    var _LIMIT  = max(3, 6-(_count2 div 2)); // 3-6
	    if (_LIMIT <= _count1) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	    break;}
    
    
    
    
    
	    // ------------------------------------------------------------------------
	    // ------------------------------------------------------------------------
	    case 2:{
	    var         _count1  = 0;
	    with(Mau_A) _count1 += state==state_NORMAL && ocsH1(id);
	    if (        _count1 >= 3) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	    break;}
	}





	// B876
	with(enemy_spawn_1(Mau_A,1))
	{
	    is_from_spawner = true;
	}







}
