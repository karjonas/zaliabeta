/// @description  Leever_init2()
function Leever_init2() {


	var _i, _a, _val;


	ds_list_add(dl_sprites,spr_Leever1);
	ds_list_add(dl_sprites,spr_Leever2);
	GO_init_palidx(PI_MOB_BLU);
	GO_depth_init(DEPTH_BG7+3);

	                  _a=1;
	SUB_STATE_NEWXY = _a++;
	SUB_STATE_SURFC = _a++; // Surface. In ground, moving up to surface.
	SUB_STATE_MOVEX = _a++;
	SUB_STATE_SBMRG = _a++; // Submerge. Moving down to under ground.
	sub_state       = SUB_STATE_NEWXY;


	IN_GROUND_YOFF    = -4;
	IN_GROUND_Y_DEF   =    (cam_yt_max()-8)  + ($18<<3) + IN_GROUND_YOFF; // OG: $BC
	IN_GROUND_ROW_MIN = max(cam_yt_min(), $03<<3) >>3;
	//IN_GROUND_ROW_MAX =    (cam_yb_max()>>3) - 1;


	var _YT = find_solid_point(xl,IN_GROUND_ROW_MIN<<3, 0,1, 0, (IN_GROUND_Y_DEF-IN_GROUND_YOFF)<<$C);
	    _YT = ((_YT>>$C) & $FF8) + IN_GROUND_YOFF;
	set_xlyt(id, xl, _YT);


	_val = g.dm_rm[?g.rm_name+STR_Ground+STR_Row];
	if(!is_undefined(_val))
	{
	    IN_GROUND_ROW_MIN = _val;
	    set_xlyt(id, xl, (IN_GROUND_ROW_MIN<<3)+IN_GROUND_YOFF);
	}







}
