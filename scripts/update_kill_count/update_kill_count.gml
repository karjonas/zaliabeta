/// @description  update_kill_count()
function update_kill_count() {


	// E880  --------------------  ENEMY DEATH  -------------------------
	if(!drop_bits)
	{
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}



	// ----------------------------------------------------------------------
	// ----------------------------------------------------------------------
	var _TYPE1 = g.DROP_JAR1 | g.DROP_BAG1;
	var _TYPE2 = g.DROP_JAR2 | g.DROP_BAG3;
	    _TYPE1 = (drop_bits&_TYPE1)==_TYPE1;
	    _TYPE2 = (drop_bits&_TYPE2)==_TYPE2;
	//
	if(!_TYPE1 
	&& !_TYPE2 )
	{
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}




	// ----------------------------------------------------------------------
	// ----------------------------------------------------------------------
	     if (_TYPE1)  g.kill_count1++;
	else if (_TYPE2)  g.kill_count2++;

	if (g.kill_count1<g.KILL_COUNT1 
	&&  g.kill_count2<g.KILL_COUNT2 )
	{
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}





	// ----------------------------------------------------------------------
	// ----------------------------------------------------------------------
	var _C1 = false; // MOD. If true, don't drop pbag, only Jar $10. So pbags can't be farmed from infinite spawners
	if (_TYPE1)
	{
	    if (is_from_spawner 
	    ||  respawn_type==1   // if infinite respawn
	    ||  respawn_type==4 ) // if infinite respawn
	    {
	        _C1 = true; // if true, don't drop pbag, only Jar $10
        
	        // Limit drops from infinite respawning GO
	        var _count=0;
	        with(Item)
	        {
	            if (state 
	            &&  IS_DROP )
	            {
	                if (is_ver(id,ItmF0,1)   // PBag 50
	                ||  is_ver(id,ItmE0,2) ) // Jar $10
	                {
	                        _count++;
	                    if (_count>=6)
	                    {
	                        exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	                    }
	                }
	            }
	        }
	    }
	}



	// E870-E87F
	// TYPE1: drop_item = str_hex("90908A9090909090", rand()&7); // 90 90 8A 90 90 90 90 90
	// TYPE2: drop_item = str_hex("918C918C8C918C91", rand()&7); // 91 8C 91 8C 8C 91 8C 91
	if (_TYPE1) // normal enemies
	{
	     g.kill_count1 = 0;
	     if (isVal(rand()&$7, 2) && !_C1){drop_item_obj=ItmF0; drop_item_ver=1;} // PBag 50
	     else                            {drop_item_obj=ItmE0; drop_item_ver=2;} // Jar $10
	}
	else if (_TYPE2) // tougher enemies
	{
	     g.kill_count2 = 0;
	     if (isVal(rand()&$7, 1,3,4,6))  {drop_item_obj=ItmF0; drop_item_ver=4;} // PBag 200
	     else                            {drop_item_obj=ItmE0; drop_item_ver=1;} // Jar full
	}







}
