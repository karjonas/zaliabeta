/// @description  Ganon3_ProjRain_update()
function Ganon3_ProjRain_update() {


	var _i;


	if (ProjRain_cooldown)
	{   ProjRain_cooldown--;  }

	if (ProjRain_timer)
	{   ProjRain_timer--;  }




	// Update Spawned Projectiles ---------------------------
	var _avail="";
	for(_i=ProjRain_MAX-1; _i>=0; _i--)
	{
	    if (dg_ProjRain[#_i,$4]==1)
	    {
	        dg_ProjRain[#_i,$0] += dg_ProjRain[#_i,$2]; // $2: hspd
	        dg_ProjRain[#_i,$1] += dg_ProjRain[#_i,$3]; // $3: vspd
	        if (rectInView(dg_ProjRain[#_i,$0]-8,dg_ProjRain[#_i,$1]-8, $10,$10) )
	        {   // collision check
	            if (hp) Ganon3_ProjRain_update_1a(_i);
	        }
	        else
	        {
	            dg_ProjRain[#_i,$4]=0; // despawn
	        }
	    }
	    else if (dg_ProjRain[#_i,$4]==2)
	    //||  dg_ProjRain[#_i,$5] )
	    {
	        //dg_ProjRain[#_i,$4] =2;
        
	        if (dg_ProjRain[#_i,$5]) // $5 disintigrate timer
	        {   dg_ProjRain[#_i,$5]--;  }
        
	        if(!dg_ProjRain[#_i,$5])
	        {   dg_ProjRain[#_i,$4]=0;  } // despawn
	    }
    
	    if(!dg_ProjRain[#_i,$4])
	    {
	        _avail += hex_str(_i);
	    }
	    /*
	    switch(dg_ProjRain[#_i,$4]) // $4: state
	    {   // ----------------------------------------
	        case 1:{
	        dg_ProjRain[#_i,$0] += dg_ProjRain[#_i,$2]; // $2: hspd
	        dg_ProjRain[#_i,$1] += dg_ProjRain[#_i,$3]; // $3: vspd
	        if (rectInView(dg_ProjRain[#_i,$0]-8,dg_ProjRain[#_i,$1]-8, $10,$10) )
	        {   // collision check
	            if (hp) Ganon3_ProjRain_update_1a(_i);
	        }
	        else
	        {
	            dg_ProjRain[#_i,$4]=0; // despawn
	        }
	        break;}
        
	        // ----------------------------------------
	        case 2:{
	        if (dg_ProjRain[#_i,$5]) // $5 disintigrate timer
	        {   dg_ProjRain[#_i,$5]--;  }
        
	        if(!dg_ProjRain[#_i,$5])
	        {   dg_ProjRain[#_i,$4]=0;  } // despawn
	        break;}
	    }
    
	    if(!dg_ProjRain[#_i,$4])
	    {
	        _avail += hex_str(_i);
	    }
	    */
	}




	if(!ProjRain_timer 
	||  p.Flash_Bgr_timer2>1 )
	//||  ProjRain_timer>=ProjRain_DURATION1 ) // There is a delay
	{
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}



	//var _DUR0=$14;
	var _TIME=ProjRain_timer;
	var _DUR1=ProjRain_DURATION1;
	var _DUR2=$14;
	//var _DUR2=$18;
	var _DUR3=_DUR2+(_DUR2 div 3);
	//var _DUR3=_DUR2+(_DUR2>>1);
	     if (_TIME > _DUR1-_DUR2) p.background_color_index=COLOR_IDX1; // RED4
	else if (_TIME > _DUR1-_DUR3) p.background_color_index=COLOR_IDX2; // ORG4
	else                          p.background_color_index=COLOR_IDX0; // VLT4




	// Update Projectile Spawn ---------------------------
	if(!(g.counter1&$F) 
	&&  hp 
	&&  string_length(_avail) )
	{
	    _i=string_length(_avail)>>1;
	    _i=irandom(_i-1);
	    _i=string_copy(_avail, (_i<<1)+1, 2);
	    _i=str_hex(_i);
	    //
	    dg_ProjRain[#_i,$4] = 1; // $4: state
    
	    var _OFF  = (GROUND_Y-($0C<<3)) - (viewYT()-8);
	    var _DIST = viewW()+$10;
	    var _VAL  = irandom(_DIST-1);
	    dg_ProjRain[#_i,$0]  = viewXL()+_OFF+_VAL;
	    dg_ProjRain[#_i,$0]  = min(dg_ProjRain[#_i,$0], viewXR()+4);
    
	    dg_ProjRain[#_i,$1]  = viewYT()-4; 
	    dg_ProjRain[#_i,$1] += max(0, _VAL-(_DIST-_OFF));
    
	    dg_ProjRain[#_i,$2]  = -(1+irandom(1)); // $2: hspd
	    dg_ProjRain[#_i,$3]  =   1+irandom(1);  // $3: vspd
	}







}
