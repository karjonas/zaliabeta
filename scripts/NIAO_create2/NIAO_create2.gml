/// @description  NIAO_create2(xl, yt, version, init scr)
function NIAO_create2() {


	var                  _arg=0;
	var _XL   = argument[_arg++];
	var _YT   = argument[_arg++];
	var _VER  = argument[_arg++];
	var _INIT = argument[_arg++];

	var _i;
	var _inst = noone;


	for(_i=ds_list_size(g.dl_niao)-1; _i>=0; _i--)
	{
	    if(!is_undefined(g.dl_niao[|_i]))
	    {
	        if ( g.dl_niao[|_i]==noone 
	        ||  (g.dl_niao[|_i] && instance_exists(g.dl_niao[|_i]) && g.dl_niao[|_i].state==0) )
	        {
	            _inst = NIAO_create(_XL,_YT, _VER, _INIT);
	            if (g.dl_niao[|_i]!=noone) instance_destroy(g.dl_niao[|_i]);
	            g.dl_niao[|_i] = _inst;
	            break;//_i
	        }
	    }
	}
	/*
	for(_i=ds_list_size(g.dl_niao)-1; _i>=0; _i--)
	{
	    if(!is_undefined(g.dl_niao[|_i]) 
	    &&  g.dl_niao[|_i]!=noone 
	    &&  g.dl_niao[|_i] 
	    &&  instance_exists(g.dl_niao[|_i]) 
	    &&  g.dl_niao[|_i].state==0 )
	    {
	        instance_destroy(g.dl_niao[|_i]);
	        _inst = NIAO_create(_XL,_YT, _VER, _INIT);
	        g.dl_niao[|_i] = _inst;
	        break;//_i
	    }
	}
	*/


	return _inst;







}
