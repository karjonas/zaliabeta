/// @description  get_xp_next(stat type)
function get_xp_next(argument0) {


	switch(argument0){
	case STAT_ATK:{return f.dg_xp_next[#argument0,f.level_atk]; break;}
	case STAT_MAG:{return f.dg_xp_next[#argument0,f.level_mag]; break;}
	case STAT_LIF:{return f.dg_xp_next[#argument0,f.level_lif]; break;}
	}

	return XP_MAX;








	/*
	switch (argument0)
	{
	    case STAT_ATK:
	    {
	        return f.dg_xp_next[# argument0, f.level_atk];
	        break;
	    }
    
	    case STAT_MAG:
	    {
	        return f.dg_xp_next[# argument0, f.level_mag];
	        break;
	    }
    
	    case STAT_LIF:
	    {
	        return f.dg_xp_next[# argument0, f.level_lif];
	        break;
	    }
	}

	        return 9999;
	*/








	/*
	if (argument0 == STAT_ATK) return f.dg_xp_next[# argument0, f.level_atk];
	if (argument0 == STAT_MAG) return f.dg_xp_next[# argument0, f.level_mag];
	if (argument0 == STAT_LIF) return f.dg_xp_next[# argument0, f.level_lif];

	                             return 9999;
	*/





	/*
	/// get_stat_xp_next(stat index)

	if (!isVal(argument0, STAT_ATK, STAT_MAG, STAT_LIF)) argument0 = STAT_ATK;


	                              var _stat_level = 0;
	     if (argument0 == STAT_ATK) _stat_level = f.level_atk;
	else if (argument0 == STAT_MAG) _stat_level = f.level_mag;
	else if (argument0 == STAT_LIF) _stat_level = f.level_lif;


	//              atk                mag                lif
	var _data1 = "000103070B131F23"+"00010204080D1723"+"0000010305090F23"; // 9659-9670
	var _data2 = "C8F4E8D0B8884028"+"642CBCB098AC7028"+"32969020DCC4A028"; // 9671-9688
	var _idx   = ((argument0 <<3) + _stat_level) - 1;


	            // required xp
	return    (str_hex(_data1, _idx) <<8) 
	        +  str_hex(_data2, _idx);
	*/





	/*
	/// get_stat_xp_next(stat index)

	var                 _stat_idx = argument0 & 3;
	if (_stat_idx == 3) _stat_idx = 0;

	var                      _stat_level = 0;
	     if (_stat_idx == 0) _stat_level = f.level_atk;
	else if (_stat_idx == 1) _stat_level = f.level_mag;
	else if (_stat_idx == 2) _stat_level = f.level_lif;

	var _data1, _data2, _idx, _val1, _val2;
	//              atk                mag                lif
	_data1 = "000103070B131F23"+"00010204080D1723"+"0000010305090F23"; // 9659-9670
	_data2 = "C8F4E8D0B8884028"+"642CBCB098AC7028"+"32969020DCC4A028"; // 9671-9688
	_idx   = ((_stat_idx <<3) + _stat_level) - 1;
	_val1  = str_hex(_data1, _idx);
	_val2  = str_hex(_data2, _idx);

	return (_val1 <<8) + _val2; // required xp

	*/





}
