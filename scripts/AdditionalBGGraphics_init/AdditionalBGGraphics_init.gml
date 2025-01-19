/// @description  AdditionalBGGraphics_init()
function AdditionalBGGraphics_init() {


	var _i,_j,_idx, _a, _val, _count,_num;
	var _x,_y, _w,_h, _dist;
	var _len, _data;
	//var _str, _datakey1,_datakey2;
	//var _tsrc;
	//var _spr;



	scr_draw     = AdditionalBGGraphics_draw;
	scr_inst_end = Cloud_1_end;


	can_draw_self = true;
	sprite = spr_0;
	depth = DEPTH_BG1+1;
	var _xy_data = undefined;

	// sprite, palidx, depth, locations
	if(!is_undefined(dk_spawn))
	{
	    if(!is_undefined(   g.dm_rm[?dk_spawn+STR_Data+"01"]))
	    {   sprite =        g.dm_rm[?dk_spawn+STR_Data+"01"];  }
    
	    if(!is_undefined(   g.dm_rm[?dk_spawn+STR_Data+"02"]))
	    {   palidx_permut = g.dm_rm[?dk_spawn+STR_Data+"02"];  }
    
	    if(!is_undefined(   g.dm_rm[?dk_spawn+STR_Data+"03"]))
	    {   depth =         g.dm_rm[?dk_spawn+STR_Data+"03"];  }
    
	    if(!is_undefined(   g.dm_rm[?dk_spawn+STR_Data+"04"]))
	    {   _xy_data =      g.dm_rm[?dk_spawn+STR_Data+"04"];  }
	}

	/*
	if(!is_undefined(dk_spawn))
	{
	    for(_i=1; _i<=$F; _i++)
	    {
	        _data = g.dm_rm[?dk_spawn+STR_Data+hex_str(_i)];
	        if (is_undefined(_data)) break;//_i
	    }
	    //"_XY"+STR_Data
	    //STR_Depth
	    //STR_Sprite
	    //STR_Palette+STR_Index+STR_Permutation
	}
	*/

	if (depth==DEPTH_BG1 
	||  depth==DEPTH_BG2 
	||  depth==DEPTH_BG3 
	||  depth==DEPTH_BG4 
	||  depth==DEPTH_BG5 
	||  depth==DEPTH_BG6 
	||  depth==DEPTH_BG7 
	||  depth==DEPTH_BG8 )
	{
	    depth+=1;
	}
	GO_depth_init(depth);

	palidx_permut = clamp(palidx_permut, 0,PI_PERMUTATIONS-1);

	//                                       x      y
	if (is_undefined(_xy_data)) _xy_data = "0000"+"0000";

	    _len = string_length(_xy_data);
	if (_len&$7) _xy_data = string_copy(_xy_data, 1, _len-(_len&$7));



	dg_xy = ds_grid_create($00,$02);
	             _count=_len>>3;
	for(_i=0; _i<_count; _i++)
	{
	    _data = string_copy(_xy_data, (_i<<3)+1, 8);
	    _val  = string_copy(_data, 1, 4);
	    _val  = str_hex(_val);
	    _x    = _val;
	    _val  = string_copy(_data, 5, 4);
	    _val  = str_hex(_val);
	    _y    = _val;
	    ds_grid_resize(dg_xy, _i+1, ds_grid_height(dg_xy));
	    ds_grid_add(dg_xy, _i,0, _x);
	    ds_grid_add(dg_xy, _i,1, _y);
	    //if (sprite==g.SPR_ITEM_TROPHY) sdm("dg_xy[#$"+hex_str(_i)+",0]=$"+hex_str(dg_xy[#_i,0])+", "+"dg_xy[#$"+hex_str(_i)+",1]=$"+hex_str(dg_xy[#_i,1]));
	}


	Sprite_COUNT = ds_grid_width(dg_xy);


	if (global.Halloween1_enabled 
	&&  sprite==g.SPR_ITEM_TROPHY )
	{
	    can_draw_self = false;
	    state = 0;
	    for(_i=ds_list_size(g.dl_niao)-1; _i>=0; _i--)
	    {
	        if(!is_undefined(g.dl_niao[|_i]) 
	        &&  g.dl_niao[|_i]==id )
	        {
	            g.dl_niao[|_i] = noone;
	            break;//_i
	        }
	    }
	    NIAO_create2(dg_xy[#0,0]-8,dg_xy[#0,1]-8, 1,Jackolantern1_init);
	    instance_destroy();
	    /*
	    sprite = spr_Skull_2a_WRB;
	    dg_xy[#0,1] += 4;
	    */
	}







}
