/// @description  Ganon3_Fire_update()
function Ganon3_Fire_update() {


	var _i,_j, _idx, _val;
	var _c1;
	var _DUR1=$8;


	// TODO: adjust fire positions for diff sprites
	var _coverage=0;
	var _dl_shuffle=ds_list_create();
	for(_i=0; _i<9; _i++) ds_list_add(_dl_shuffle, _i);

	for(_i=ds_grid_width(dg_fire)-1; _i>=0; _i--)
	{
	    if (dg_fire[#_i,$3])
	    {   dg_fire[#_i,$3]--;  }
    
	    if (dg_fire[#_i,$3])
	    //if (dg_fire[#_i,$3]>=Fire_DURATION3)
	    {
	        _val=$18;
	        if (abs8b(hspd)>=_val 
	        ||  abs8b(vspd)>=_val )
	        {   // moving can put out flames faster
	            _val = max(abs8b(hspd),abs8b(vspd));
	            _val = (_val>>4) >>1;
	            dg_fire[#_i,$3] -= (!!_val);
	        }
	    }
    
    
	    // dg_fire[#_i,$2]: flammable state
	    if(!dg_fire[#_i,$3] 
	    &&  dg_fire[#_i,$2] != -1) // -1: never flammable, 0: not flammable, 1: flammable
	    {   dg_fire[#_i,$2]  =  1;  }
    
	    if(!dg_fire[#_i,$3])       continue;
	    if (Attack_id==Attack1_ID) continue;
    
    
	    // Fire_DURATION2=$C, Fire_DURATION3=$C
	    _c1 = inRange(dg_fire[#_i,$3], Fire_DURATION3,Fire_DURATION1-Fire_DURATION2);
    
	        _coverage+=_c1;
	    if (_coverage>=$6)
	    {
	        for(_j=ds_grid_width(dg_fire)-1; _j>=0; _j--)
	        {
	            if(!dg_fire[#_j,$3]) continue;
	            if (dg_fire[#_j,$3] <= Fire_DURATION3+_DUR1) continue;
            
	            dg_fire[#_j,$3]  = Fire_DURATION3;
	            dg_fire[#_j,$3] += irandom(_DUR1) * sign_(irandom(1));
	        }
        
	        aud_play_sound(get_audio_theme_track(dk_StrikeEnemy));
        
	        //SlimeChange_dir     = 1; // to transparent
	        SlimeChange_timer   = SlimeChange_DUR1;
	        stun_timer  = STUN_DURATION1; // STUN_DURATION1=$30
	        //timer2      = stun_timer;
        
	        timer       = 0;
	        Attack_id   = Attack1_ID;
	        BattleState = BattleState_Attack1_INIT;
	        continue;
	    }
    
    
	    if (_c1 
	    &&  Attack_id!=Attack1_ID )
	    {   // spread fire
	        ds_list_shuffle( _dl_shuffle);
	        for(_j=0; _j<9; _j++) // surrounding tiles
	        {           _idx=_dl_shuffle[|_j];
	            switch( _idx){
	            case 0:{_idx=_i-Slime_CLMS-1; break;}
	            case 1:{_idx=_i-Slime_CLMS;   break;}
	            case 2:{_idx=_i-Slime_CLMS+1; break;}
	            case 3:{_idx=_i-1;            break;}
	            case 5:{_idx=_i+1;            break;}
	            case 6:{_idx=_i+Slime_CLMS-1; break;}
	            case 7:{_idx=_i+Slime_CLMS;   break;}
	            case 8:{_idx=_i+Slime_CLMS+1; break;}
	            }
	            _idx = ((ww>>3)*(hh>>3)) - 1;
	            _idx = max(0,_idx);
	            if (dg_fire[#_idx,$2]==1  // $2: flammable state
	            && !irandom(2) )
	            {   // spread fire
	                Ganon3_Fire_update_1a(_idx, _idx div Slime_CLMS);
	                break; // _j
	            }
	        }
	    }
	}
	ds_list_destroy(_dl_shuffle); _dl_shuffle=undefined;







}
