/// @description  db_test_various_1a()
function db_test_various_1a() {

	var i, _val, _str, _rID, _case, _cast_num;
	var _num, _num1, _num2, _num3;
	_str = "";
	// _cast_num = -1;

	sdm("");
	sdm("");

	_case = 15;
	switch (_case)
	{
	    // ------------------------------------------------------------------------
    
	    case 0: // testing hex_str()
	    {
	        for (i = $1000; i < $FFFF + 1; i++)
	        {
	            if !(i & $F) sdm("");
	            _str = "$";
	            _str += hex_str(i);
	            sdm(_str);
	        }
        
	        break;
	    }
	    // ------------------------------------------------------------------------
    
	    case 1:
	    {
	        for (i = $20; i > -1; i--)
	        {
	            sdm(string((i >> 1) & 3));
	        }
        
	        break;
	    }
	    // ------------------------------------------------------------------------
    
	    case 2:
	    {
	        // -1   >> 4 or 8 = -1
	        // -101 >>      8 = -2
        
	        var _n0, _n1, _shift, _div, _spaces, _count;
	        _n0     = -1;
	        _n1     =  1;
	        _shift  =  8; // 4
	        _div    =  1 << _shift;
	        _count  = $202;
        
        
	        _spaces = "  ";
	        for (i = 0; i < _count; i++)
	        {
	            _str = "";
            
	            _str += "-$" + hex_str(abs(_n0)) + ": ";
	            // _str += _spaces + string(_n0) + ": ";
	            _str += string(_n0 div _div) + ", ";
	            _str += string(_n0 >> _shift);
            
	            sdm(_str);
            
	            _n0--;
            
	            if (i > 7)  _spaces = " ";
	            if (i > 97) _spaces = "";
	        }
        
	        sdm("");
        
        
	        _spaces = "  ";
	        for (i = 0; i < _count; i++)
	        {
	            _str = "";
            
	            _str += " $" + hex_str(abs(_n1)) + ": ";
	            // _str += " " + _spaces + string(_n1) + ": ";
	            _str += " " + string(_n1 div _div) + ", ";
	            _str += " " + string(_n1 >> _shift);
            
	            sdm(_str);
            
	            _n1++;
            
	            if (i > 7)  _spaces = " ";
	            if (i > 97) _spaces = "";
	        }
        
	        sdm("");
	        sdm("");
        
	        break;
	    }
	    // ------------------------------------------------------------------------
    
	    case 3:
	    {
	        var _num, _spaces;
	        _num = 0;
	        _spaces = "  ";
        
	        for (i = 0; i < $202; i++)
	        {
	            _str = "";
            
	            _str += _spaces + string(_num) + ": ";
	            _str += string(_num & $FF);
	            // _str += ;
            
	            sdm(_str);
            
	            _num--;
            
	            if (i > 8)  _spaces = " ";
	            if (i > 98) _spaces = "";
	        }
        
	        sdm("");
	        sdm("");
        
	        break;
	    }
	    // ------------------------------------------------------------------------
    
	    case 4:
	    {
	        var _str;
	        var _map1  = ds_map_create();
	        var _list1 = ds_list_create();
        
	        ds_list_add(_list1, 0, 1, 2, 3);
	        _str = "";
	        for(i=0;i<ds_list_size(_list1);i++) _str += string(_list1[| i]) + ", ";
	        sdm(_str);
        
	        ds_map_add_list(_map1, "listA", _list1);
        
	        ds_list_add(_list1, 4, 5, 6, 7);
	        var _list2 = _map1[? "listA"];
	        _str = "";
	        for(i=0;i<ds_list_size(_list2);i++) _str += string(_list2[| i]) + ", ";
	        sdm(_str);
        
	        ds_list_add(_list2, 8, 9, 10, 11);
	        _str = "";
	        for(i=0;i<ds_list_size(_list1);i++) _str += string(_list1[| i]) + ", ";
	        sdm(_str);
        
	        sdm("ds_exists(_list1, ds_type_list): " + string(ds_exists(_list1, ds_type_list)));
	        sdm("ds_exists(_list2, ds_type_list): " + string(ds_exists(_list2, ds_type_list)));
        
	        // ds_list_destroy(_list1);
	        // _list1 = undefined;
        
	        // _str = "";
	        // for(i=0;i<ds_list_size(_list2);i++) _str += string(_list2[| i]) + ", ";
	        // sdm(_str);
        
	        // ds_map_destroy(_map1);
	        // _map1 = undefined;
        
	        // sdm("ds_exists(_list1, ds_type_list): " + string(ds_exists(_list1, ds_type_list)));
	        // sdm("ds_exists(_list2, ds_type_list): " + string(ds_exists(_list2, ds_type_list)));
        
	        // ds_list_destroy(_list1);
	        // _list1 = undefined;
        
	        // var _list3 = _map1[? "list1"];
	        // _str = "";
	        // for(i=0;i<ds_list_size(_list3);i++) _str += string(_list3[| i]) + ", ";
	        // sdm(_str);
        
        
	        // sdm("ds_exists(_list1, ds_type_list): " + string(ds_exists(_list1, ds_type_list)));
	        // sdm("ds_exists(_list2, ds_type_list): " + string(ds_exists(_list2, ds_type_list)));
	        // sdm("ds_exists(_list3, ds_type_list): " + string(ds_exists(_list3, ds_type_list)));
        
	        _list1 = ds_list_create();
	        ds_list_add(_list1, "A", "B", "C", "D");
        
	        _str = "";
	        for(i=0;i<ds_list_size(_list1);i++) _str += string(_list1[| i]) + ", ";
	        sdm(_str);
        
        
	        ds_map_add_list(_map1, "listB", _list1);
        
	        var _json = json_encode(_map1);
        
	        ds_map_destroy(_map1);  _map1 = undefined;
        
        
        
	        var _map2 = json_decode(_json);
	        var _listA = _map2[? "listA"];
	        var _listB = _map2[? "listB"];
	        _str = "";
	        for(i=0;i<ds_list_size(_listA);i++) _str += string(_listA[| i]) + ", ";
	        sdm(_str);
	        _str = "";
	        for(i=0;i<ds_list_size(_listB);i++) _str += string(_listB[| i]) + ", ";
	        sdm(_str);
        
        
	        ds_list_add(_listA, "12", "13", "14", "15");
	        ds_list_add(_listB, "E", "F", "G", "H");
        
	        _json = "";
	        _json = json_encode(_map2);
        
	        ds_map_destroy(_map2);  _map2 = undefined;
        
        
	        var _map3 = json_decode(_json);
	        var _listC = _map3[? "listA"];
	        var _listD = _map3[? "listB"];
	        _str = "";
	        for(i=0;i<ds_list_size(_listC);i++) _str += string(_listC[| i]) + ", ";
	        sdm(_str);
	        _str = "";
	        for(i=0;i<ds_list_size(_listD);i++) _str += string(_listD[| i]) + ", ";
	        sdm(_str);
        
        
	        ds_map_destroy(_map3);  _map3 = undefined;
        
        
	        break;
	    }
	    // ------------------------------------------------------------------------
    
	    case 5:
	    {
	        // Testing if multiple lines/statements can be done in one line
        
	        var _map  = ds_map_create();
	        var _list = ds_list_create();
        
	        ds_map_destroy(_map);   _map  = undefined;
	        ds_list_destroy(_list); _list = undefined;
        
	        var _str;
	        var _val;
	        _val = $FF; _val += _val;
	        _str = "_val: $" + hex_str(_val);
	        sdm(_str);
        
	        break;
	    }
	    // ------------------------------------------------------------------------
    
	    case 6:
	    {
	        var _val;
	        _val = -1;
	        sdm("");
	        sdm("");
        
	        sdm("_val: " + string(_val));
	        _val = _val >> 4;
	        sdm("_val: " + string(_val));
	        _val = _val << 2;
	        sdm("_val: " + string(_val));
        
	        sdm("_val: " + string(_val));
        
	        sdm("");
	        sdm("");
	        sdm("------------------------------");
        
	        break;
	    }
	    // ------------------------------------------------------------------------
    
	    case 7:
	    {
	        _val = -1;
	        _str = "";
	        // _str += "";
	        _str += "_val: " + string(_val);
	        _str += ", _val & $FF: " + string(_val & $FF);
	        sdm(_str);
        
	        break;
	    }
	    // ------------------------------------------------------------------------
    
	    case 8:
	    {
	        // which substring instance will string_pos return
	        _str = "find, what, they, want,";
	        sdm("\",\" pos: "+string(string_pos(",",_str))); // output: "," pos: 5
        
	        break;
	    }
	    // ------------------------------------------------------------------------
    
	    case 9:
	    {
	        _val = 0;
	        _val--;
	        sdm("_val: " + string(_val) + ", " + hex_str(_val));
	        _val &= $3FFFFFFF;
	        sdm("_val: " + string(_val) + ", " + hex_str(_val));
	        _val = abs(_val);
	        sdm("_val: " + string(_val) + ", " + hex_str(_val));
	        _val &= $FF;
	        sdm("_val: " + string(_val) + ", " + hex_str(_val));
	        _val++;
	        sdm("_val: " + string(_val) + ", " + hex_str(_val));
        
	        break;
	    }
    
	    case 10:
	    {
	        // Will NOT checking 'if (_tid != -1)' before 'if (tile_exists(_tid))' gives error
	        // Result: no error. Output: 'tile -1 does not exist!'
	        var _tid = tile_layer_find(depth, 0, 0);
	        if (tile_exists(_tid)) sdm("tile "+string(_tid)+" exists!");
	        else                   sdm("tile "+string(_tid)+" does not exist!");
        
	        break;
	    }
    
	    case 11:
	    {
	        _num1 = 1;
	        _num2 = 0;
	        sdm("abs(  1  +  0 )  "+string(abs(_num1+_num2)));
        
	        _num1 = -1;
	        _num2 = 0;
	        sdm("abs( -1  +  0 )  "+string(abs(_num1+_num2)));
        
	        _num1 = 0;
	        _num2 = 0;
	        sdm("abs(  0  +  0 )  "+string(abs(_num1+_num2)));
        
	        _num1 = -1;
	        _num2 = 1;
	        sdm("abs( -1  +  1 )  "+string(abs(_num1+_num2)));
        
	        _num1 = -1;
	        _num2 = -1;
	        sdm("abs( -1  + -1 )  "+string(abs(_num1+_num2)));
        
	        break;
	    }
    
	    case 12:
	    {
	        // SIMULATE DC91 setFacingDir to what scenarios end w/ carry set.
	        // Also looking if any scenarios put facingDir the incorrect way.
        
	        var i, j;
	        var _c1, _lx1, _ex1;
	        var _val, _str, _str1;
        
	        var _carry, _fd;
        
        
	        var _lx, _lx_mp;
	        var _start_lxx = $F7;
	        var _start_lmp = $FF;
	        // var _start_lxx = $F8;
	        // var _start_lmp = $FE;
	        var _lxx    = _start_lxx;
	        var _lxx_mp = _start_lmp;
        
        
	        // var _start_ex  = $00;
	        // var _start_emp = $00;
	        var _start_ex  = $00;
	        var _start_emp = $FF;
	        var _ex     = _start_ex;
	        var _ex_mp  = _start_emp;
        
	        // ----------------------------------------------------
	        // var _count = $180;
	        var _count = $300;
	        for (i = 0; i < _count; i++)
	        {
	            _str    = "";
	            _carry  = 0;
            
	            _lx     = _lxx + 8;
	            _carry  = _lx > $FF;
	            _lx    &= $FF;
            
	            _lx_mp  = _lxx_mp + _carry;
	            _carry  = _lx_mp > $FF;
	            _lx_mp &= $FF;
            
	            _carry  = ((_lx    + (_ex ^ $FF))    + _carry) > $FF;
            
	            _val    = (_lx_mp  + (_ex_mp ^ $FF)) + _carry;
	            _carry  = _val > $FF;
	            _val   &= $FF;
            
	            if (_val & $80) _fd = -1;
	            else            _fd =  1;
            
	            // ----------------------------------------------------
	            // if (_lx_mp & $80) _lx1 = -((($FF - _lx_mp) << 8) + ((_lx ^ $FF) + 1));
	            if (_lx_mp & $80) _lx1 = -((($100 - _lx_mp) << 8) - _lx);
	            else              _lx1 =           (_lx_mp  << 8) + _lx;
            
	            // if (_ex_mp & $80) _ex1 = -((($FF - _ex_mp) << 8) + ((_ex ^ $FF) + 1));
	            if (_ex_mp & $80) _ex1 = -((($100 - _ex_mp) << 8) - _ex);
	            else              _ex1 =           (_ex_mp  << 8) + _ex;
            
	                _c1 =        (_fd ==  1 && _ex1 >= _lx1);
	                _c1 = _c1 || (_fd == -1 && _ex1 <  _lx1);
	                _c1 = _c1 || _carry;
	                _c1 = 1;
	            if (_c1)
	            {
	                // _str += " ";
	                _str += " fd ";
	                if (!_fd) _str += "-1";
	                else      _str += " 1";
                
	                _str += ",";
	                _str += " ";
                
	                _str += " carry "+string(_carry);
                
	                _str += ",";
	                _str += "  ";
                
                
	                _val = 4;
	                // _val = 6;
                
	                _str += " lx1 ";
	                _str1 = hex_str(abs(_lx1));
	                for (j=0;j<_val-string_length(_str1);j++) _str += " ";
	                if (_lx1 < 0) _str += "-";
	                else          _str += " ";
	                _str += "$"+_str1;
                
	                _str += " ex1 ";
	                _str1 = hex_str(abs(_ex1));
	                for (j=0;j<_val-string_length(_str1);j++) _str += " ";
	                if (_ex1 < 0) _str += "-";
	                else          _str += " ";
	                _str += "$"+_str1;
                
	                _str += ",";
	                _str += "  ";
                
                
                
	                _str += " L-mp&x $"+hex_str(_lx_mp)+" $"+hex_str(_lx);
	                _str += "  ";
	                _str += " E-mp&x $"+hex_str(_ex_mp)+" $"+hex_str(_ex);
	                // _str += " lxmp $"+hex_str(_lx_mp)+" lx $"+hex_str(_lx);
	                // _str += "  ";
	                // _str += " exmp $"+hex_str(_ex_mp)+" ex $"+hex_str(_ex);
                
	                sdm(_str);
	            }
            
	            // ----------------------------------------------------
	            if (1)
	            {
	                _ex++;
	                _ex_mp += (_ex > $FF);
	                _ex    &= $FF;
	                _ex_mp &= $FF;
	            }
	            else
	            {
	                _lxx++;
	                _lxx_mp += (_lxx > $FF);
	                _lxx    &= $FF;
	                _lxx_mp &= $FF;
	            }
	        }
        
        
	        break;
	    }
    
	    case 13: // does the 'i = value' in for loop recalculate every iteration?
	    {           // Answer: Yes
	        var _DEF = 8;
	        var _val = _DEF;
	        for (var i = _val; i > 0; i--)
	        {
	            _val++;
	            sdm(" i "+string(i)+", _val "+string(_val));
            
	            if (i > _DEF) break;
	        }
        
	        break;
	    }
    
	    case 14: // What is the highest int a var can go to and what happens when it increments from there?
	    {           // Answer: Unresolved
	        var _count = 0;
	        var _a = $FFFFFFFF;
	        var _a_prev = _a;
	        // sdm(string(_a));
	        // _a++;
	        // sdm(string(_a));
	        while (1)
	        {
	            _count++;
            
	            _a_prev = _a;
	            _a++;
            
	            if (_a == 0)
	            {
	                sdm("_a_prev: "+string(_a_prev));
	                break;
	            }
            
	            if (_count >= $FFFF)
	            {
	                sdm("_a: "+string(_a));
	                break;
	            }
	        }
        
	        break;
	    }
    
	    case 15:
	    {
	        sdm("RT  " + string(point_direction(0,0,  8,  0)));
	        sdm("DOOR_W  " + string(point_direction(0,0,  0,  8)));
	        sdm("LF  " + string(point_direction(0,0, -8,  0)));
	        sdm("UP  " + string(point_direction(0,0,  0, -8)));
        
	        break;
	    }
    
	    case 16:
	    {
        
        
	        break;
	    }
    
	    case 17:
	    {
        
        
	        break;
	    }
    
	}




	sdm("");
	sdm("");



}
