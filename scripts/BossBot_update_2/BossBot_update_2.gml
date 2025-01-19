/// @description  BossBot_update_2()
function BossBot_update_2() {


	var _i, _x,_y, _xOff,_yOff, _carry;
	for(_i=0; _i<5; _i++)
	{
	         if (isVal(_i,4))   _xOff =   8;
	    else if (isVal(_i,3,2)) _xOff =  -8;
	    else if (isVal(_i,1,0)) _xOff = -24;
	    _x = xl + _xOff + 1;
    
    
	    _carry = (byte(xl) + byte(_xOff))               > $FF;
	    _carry = ((xl>>8)  + byte($FF+(_i<4)) + _carry) > $FF;
    
	         if (isVal(_i,2))   _yOff = 0;
	    else if (isVal(_i,0,4)) _yOff = 4;
	    else if (isVal(_i,1,3)) _yOff = 8;
	    _y = yt + _yOff + _carry;
    
    
	    with(GameObject_create(_x,_y, Bot_A,1))
	    {
	        hspd = ((g.dl_RandomOG[|2+update_idx]&$1F) + $F0) &$FF;
	        vspd = $D0;
	        HP_IDX     = $1C; // g.dl_HP_DEFAULT[|$1C] = $D8
	        hp         = g.dl_HP[|HP_IDX];
	        stun_timer = 1;
	    }
	}







}
