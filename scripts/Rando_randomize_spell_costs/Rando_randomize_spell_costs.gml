/// @description  Rando_randomize_spell_costs()
function Rando_randomize_spell_costs() {


	var _i,_j;
	var _val, _val0,_val1,_val2;
	var _datakey;
	var _min, _max;


	//if (DEBUG){sdm(""); dm_debug_data[?STR_Data+'01'+hex_str(++debug_data_count)]="";}

	random_set_seed(Rando_SEED);

	_datakey = STR_Spell+STR_Cost;
	var _LEVEL_COUNT = ds_grid_height(g.dg_spell_cost);


	switch(3)
	{
	    // ----------------------------------------------------------------
	    case 1:{// Version before 2024/06/23
	    for(_i=ds_grid_width(g.dg_spell_cost)-1; _i>=0; _i--) // Each spell
	    {
	        _val0 = -1;
	        _val2 =  1;
	        for(_j=_LEVEL_COUNT-1; _j>=0; _j--) // Each magic level
	        {
	            _val1 = g.dg_spell_cost[#_i,_j];
	            if (_val0 == -1) // first one
	            {   _val2  = _val1;  }
            
	            if (_val0 == -1  // first one
	            ||  _val1 != _val0 )
	            {
	                _val0  = _val1;
                
	                _max   = _val0 + round(_val0 * .10);
	                _min   = _val0 - round(_val0 * .25);
	                _val   = _min + irandom(_max-_min);
                
	                _min   = _val2+2; // _val2 is cost from previous _j iteration. +2: keep mp costs even
	                _min   =(_min>>1)<<1; // keep mp costs even
                
	                _max   = SPELL_COST_MAX-(_j<<1); // <<1: keep mp costs even
                
	                _val   = clamp(_val, _min,_max);
	                _val   =(_val>>1)<<1; // keep mp costs even
	                _val2  = _val;
	            }
	            dm_save_data[?_datakey+hex_str(_i)+hex_str(_j)] = _val2;
            
	            if (0&&DEBUG){
	            if(!_j){sdm(""); dm_debug_data[?STR_Data+"01"+hex_str(++debug_data_count)]="";}
	            debug_str  = _datakey+"_"+hex_str(_i)+hex_str(_j);
	            debug_str += " "+string(_val2)+" $"+hex_str(_val2);
	            sdm(debug_str); dm_debug_data[?STR_Data+"01"+hex_str(++debug_data_count)] = debug_str;
	            }
	        }
	    }
	    break;}
    
    
    
    
    
    
    
    
	    // ----------------------------------------------------------------
	    case 2:{// Version as of 2024/06/23
	    var _spell_bit, _max_cost;
    
	    for(_i=ds_grid_width(g.dg_spell_cost)-1; _i>=1; _i--) // Each spell
	    {
	        _spell_bit = $1<<(_i-1);
	        _max_cost = val(g.dm_Spell[?hex_str(_spell_bit)+STR_Rando+STR_Cost+STR_Max], Container_AMT*3);
	        //_max_cost = val(dm_spells[?hex_str(_spell_bit)+STR_Max+STR_Cost], Container_AMT*3);
	        /*
	        switch($1<<(_i-1)){
	        default:      {_max_cost=Container_AMT*4; break;}
	        case SPL_PRTC:{_max_cost=Container_AMT*3; break;}
	        case SPL_JUMP:{_max_cost=Container_AMT*3; break;}
	        case SPL_LIFE:{_max_cost=Container_AMT*3; break;}
	        case SPL_FARY:{_max_cost=Container_AMT*4; break;}
	        case SPL_FIRE:{_max_cost=Container_AMT*3; break;}
	        case SPL_RFLC:{_max_cost=Container_AMT*3; break;}
	        case SPL_SPEL:{_max_cost=Container_AMT*3; break;}
	        case SPL_THUN:{_max_cost=Container_AMT*5; break;}
	        case SPL_SUMM:{_max_cost=Container_AMT*4; break;}
	        }
	        */
        
	        for(_j=_LEVEL_COUNT-1; _j>=0; _j--) // Each magic level
	        {
	            _val1 = g.dg_spell_cost[#_i,_j];
	            _val1 = min(_val1,_max_cost);
            
	            _max  = _val1 + round(_val1 * .10);
	            _min  = _val1 - round(_val1 * .25);
	            _val  = _min + irandom(_max-_min);
            
	            _val  = clamp(_val, 2,_max_cost);
	            _val  =(_val>>1)<<1; // keep mp costs even
            
	            _val2 = _val;
            
	            dm_save_data[?_datakey+hex_str(_i)+hex_str(_j)] = _val;
            
            
	            if (0&&DEBUG){
	            if(!_j){sdm(""); dm_debug_data[?STR_Data+"01"+hex_str(++debug_data_count)]="";}
	            debug_str  = _datakey+"_"+hex_str(_i)+hex_str(_j);
	            debug_str += " "+string(_val2)+" $"+hex_str(_val2);
	            sdm(debug_str); dm_debug_data[?STR_Data+"01"+hex_str(++debug_data_count)] = debug_str;
	            }
	        }
	    }
	    break;}
    
    
    
    
    
    
    
    
	    // ----------------------------------------------------------------
	    case 3:{// Version as of 2024/09/29
	    var _spell_bit, _max_cost;
	    var _COUNT1 = 8;
    
	    for(_i=ds_grid_width(g.dg_spell_cost)-1; _i>=1; _i--) // Each spell
	    {
	        _spell_bit = $1<<(_i-1);
	        _max_cost = val(g.dm_Spell[?hex_str(_spell_bit)+STR_Rando+STR_Cost+STR_Max], Container_AMT*3);
	        //_max_cost = val(dm_spells[?hex_str(_spell_bit)+STR_Max+STR_Cost], Container_AMT*3);
	        /*
	        switch(_spell_bit){
	        default:      {_max_cost=Container_AMT*3; break;}
	        case SPL_PRTC:{_max_cost=Container_AMT*3; break;}
	        case SPL_JUMP:{_max_cost=Container_AMT*3; break;}
	        case SPL_LIFE:{_max_cost=Container_AMT*3; break;}
	        case SPL_FARY:{_max_cost=Container_AMT*4; break;}
	        case SPL_FIRE:{_max_cost=Container_AMT*2; break;}
	        case SPL_RFLC:{_max_cost=Container_AMT*3; break;}
	        case SPL_SPEL:{_max_cost=Container_AMT*3; break;}
	        case SPL_THUN:{_max_cost=Container_AMT*5; break;}
	        case SPL_SUMM:{_max_cost=Container_AMT*3; break;}
	        }
	        */
	        _max_cost = min(_max_cost,g.dg_spell_cost[#_i,0]);
        
	        _val0 = _max_cost;
	        for(_j=0; _j<_LEVEL_COUNT; _j++) // Each magic level
	        {
	            _val1 = g.dg_spell_cost[#_i,_j];
	            _val1 = min(_val1,_max_cost);
	            //_val1 = min(_val0,_val1,_max_cost);
            
	            _max  = _val1 + round(_val1 * .10);
	            _min  = _val1 - round(_val1 * .25);
	            _val  = _min + irandom(_max-_min);
            
	            _val  = min(_val,_val0-(2*(_j>0))); // cannot be more expensive than previous(_j-1: _val0) magic level
	            _val  = clamp(_val, 2,_max_cost);
	            _val  =(_val>>1)<<1; // keep mp costs even
            
	            _val0 = _val;
            
	            dm_save_data[?_datakey+hex_str(_i)+hex_str(_j)] = _val;
            
            
	            if (0&&DEBUG){
	            if(!_j){sdm(""); dm_debug_data[?STR_Data+"01"+hex_str(++debug_data_count)]="";}
	            _val2 = val(g.dm_Spell[?hex_str(_spell_bit)+STR_Name], string_repeat("?",_COUNT1));
	            _val2 = string(_val2)+string_repeat(" ",_COUNT1-string_length(_val2));
	            debug_str  = _datakey+" "+_val2+" ";
	            debug_str += hex_str(_i)+hex_str(_j)+". ";
	            debug_str += "$"+hex_str(min(g.dg_spell_cost[#_i,_j],_max_cost))+" ---> ";
	            debug_str += "$"+hex_str(_val0)+"("+string(_val0)+")";
	            sdm(debug_str); dm_debug_data[?STR_Data+"01"+hex_str(++debug_data_count)] = debug_str;
	            }
	        }
	    }
	    break;}
	}







}
