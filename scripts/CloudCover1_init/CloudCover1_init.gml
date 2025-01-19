/// @description  CloudCover1_init()
function CloudCover1_init() {


	var _i,_j, _a, _x,_y, _datakey;


	scr_update   = CloudCover1_update;
	scr_draw     = CloudCover1_draw;
	scr_inst_end = CloudCover1_end;

	GO_depth_init(g.DEPTH_CLOUD);
	//GO_depth_init(DEPTH_BG8+$08);
	GO_init_palidx(PI_CLOUD_1); // 
	//palidx_permut = 5;


	if(!is_undefined(dk_spawn))
	{   _datakey =   dk_spawn+STR_Data;               _a=0;
	    if(!is_undefined( g.dm_rm[?_datakey+hex_str(++_a)]))
	    {   palidx_permut=g.dm_rm[?_datakey+hex_str(  _a)];  }
    
	    if(!is_undefined( g.dm_rm[?_datakey+hex_str(++_a)]))
	    {   GO_depth_init(g.dm_rm[?_datakey+hex_str(  _a)]);  }
    
	    if(!is_undefined( g.dm_rm[?_datakey+hex_str(++_a)]))
	    {   DRAW_YOFF +=  g.dm_rm[?_datakey+hex_str(  _a)];  }
	}
	//GO_pal_idx_init(palidx_def); // 


	CloudSpr1         = g.CloudLarge1_SPR1;
	CloudSpr1_W       = sprite_get_width( CloudSpr1);
	CloudSpr1_W_      = CloudSpr1_W>>1;
	CloudSpr1_CLMS    = CloudSpr1_W>>3;
	CloudSpr1_H       = sprite_get_height(CloudSpr1);
	CloudSpr1_H_      = CloudSpr1_H>>1;
	CloudSpr1_ROWS    = CloudSpr1_H>>3;
	CloudSpr1_COUNT_X = (g.rm_w div CloudSpr1_W) + 2;
	//                                                  //
	Clouds_DIR        = -1;


	var _SPEED = $20;
	dg_CloudLayers = ds_grid_create(0,8);
	switch(ver){
	    // ----------------------------------------
	    case 1:{
	    ds_grid_resize(dg_CloudLayers, 3,ds_grid_height(dg_CloudLayers));
	    _SPEED = $18;
	    break;}
	    // ----------------------------------------
	    case 2:{
	    ds_grid_resize(dg_CloudLayers, 3,ds_grid_height(dg_CloudLayers));
	    _SPEED = $20;
	    break;}
	}
	CloudLayers_COUNT = ds_grid_width(dg_CloudLayers);
	//sdm("CloudSpr1 "+string(CloudSpr1)+", "+"CloudSpr1_W $"+hex_str(CloudSpr1_W)+", "+"CloudSpr1_H $"+hex_str(CloudSpr1_H)+", "+"CloudSpr1_ROWS $"+hex_str(CloudSpr1_ROWS)+", "+"CloudSpr1_COUNT_X $"+hex_str(CloudSpr1_COUNT_X)+", "+"Clouds_DIR "+string(Clouds_DIR)+", "+"depth "+string(depth)+", "+"DRAW_YOFF "+string(DRAW_YOFF)+", "+"_SPEED "+string(_SPEED)+", "+"CloudLayers_COUNT "+string(CloudLayers_COUNT));



	var _XOFF = xl;
	var _YOFF = yt;
	if (g.view_lock_rm&$C) _YOFF -= g.rm_row0<<3;


	var _X1  = CloudSpr1_W_*Clouds_DIR; // sprite center x
	    _X1 += _XOFF; // add xoffset(xl)
	//
	                               _a=$09;
	var         _Y1 = cam_yt_min()+_a;
	if (ver==2) _Y1 = cam_yb_max()-_a;
	_y  = _Y1;   // sprite center y
	_y += _YOFF; // add yoffset(yt)
	//sdm("_YOFF $"+hex_str(_YOFF)+", _Y1 $"+hex_str(_Y1)+", cam_yb_max() $"+hex_str(cam_yb_max()));

	var _DISTX  =  5;
	var _DISTY  =  CloudSpr1_H_-2;
	var _disty  = _DISTY;

	var _permut = 0;


	for(_i=0; _i<CloudLayers_COUNT; _i++)
	{
	    dg_CloudLayers[#_i,0] = _X1 + (_DISTX*_i);
	    dg_CloudLayers[#_i,1] = _y;
	    //sdm("_y $"+hex_str(_y));
	    //dg_CloudLayers[#_i,1] = _y  + (_DISTY*_i);
	    dg_CloudLayers[#_i,2] = dg_CloudLayers[#_i,0];
	    dg_CloudLayers[#_i,3] = dg_CloudLayers[#_i,1];
    
	    dg_CloudLayers[#_i,4] = Clouds_DIR;
	    dg_CloudLayers[#_i,5] = max(_SPEED-(_i<<3), $01);
	    dg_CloudLayers[#_i,6] = 0;
    
	    if (_i&$1) _permut = 3;
	    else       _permut = 1;
	               _permut = 3;
	               _permut = 0;
	    dg_CloudLayers[#_i,7] = get_pi(palidx_base, _permut);
    
	    _y     += (_disty*sign_(ver==1));
	    _disty -= (_disty>>1)-4;
	    //sdm("CLOUD $"+hex_str(_i)+", 0: "+string(dg_CloudLayers[#_i,0])+", 1: "+string(dg_CloudLayers[#_i,1])+", 2: "+string(dg_CloudLayers[#_i,2])+", 3: "+string(dg_CloudLayers[#_i,3])+", 4: "+string(dg_CloudLayers[#_i,4])+", 5: "+string(dg_CloudLayers[#_i,5])+", 6: "+string(dg_CloudLayers[#_i,6]));
	}







}
