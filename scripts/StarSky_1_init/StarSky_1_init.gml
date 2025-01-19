/// @description  StarSky_1_init()
function StarSky_1_init() {


	var _i, _a;

	GO_depth_init(g.DEPTH_STARS);
	//GO_pal_idx_init(p.PI_BGR2); // 


	scr_draw     = StarSky_1_Draw;
	scr_update   = StarSky_1_update;
	scr_inst_end = StarSky_1_end;


	// star sky sprites are 256x256
	SPR_W    = $100;
	SPR_H    = $100;
	SPR_XOFF = SPR_W>>1;
	SPR_YOFF = SPR_H>>1;


	    CAM_LOCKED = global.Halloween1_enabled && g.town_num;
	if (CAM_LOCKED)
	{
	    var _x,_y;
    
	    CLMS = (viewW() div SPR_W) + sign(viewW() mod SPR_W);
	    _x  = viewW_();
	    _x -= (SPR_W*CLMS)>>1;
	    _x +=  SPR_W>>1;
	    X_OFF = _x;
    
	    if (g.view_lock_rm&$C 
	    ||  g.rm_rows==1 )
	    {
	        ROWS = 1;
	        Y_OFF = SPR_H>>1;
	    }
	    else
	    {
	        ROWS = (viewH() div SPR_H) + sign(viewH() mod SPR_H);
	        _y  = viewH_();
	        _y -= (SPR_H*ROWS)>>1;
	        _y +=  SPR_H>>1;
	        Y_OFF = _y;
	    }
	}


	// SEQ GBbW



	exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!




	/*
	dl_colors = ds_list_create();
	dl_colors[|3] = p.dg_color_seq[#1,3]; // $00 Grey
	dl_colors[|2] = p.dg_color_seq[#1,2]; // $02 Blue Dark
	dl_colors[|1] = p.dg_color_seq[#1,1]; // $21 Blue Light
	dl_colors[|0] = p.dg_color_seq[#1,0]; // $30 White
	*/

	            _i=0;
	var _GREY = _i++; // 0. 
	var _BLUL = _i++; // 1. Light blue
	var _BLUD = _i++; // 2. Dark blue
	var _WHIT = _i++; // 3. 


	dg_stars = ds_grid_create($19, 3);
	STAR_CNT = ds_grid_width(dg_stars);

	dg_stars[#$00,0] = _BLUD; // 
	dg_stars[#$00,1] = $53;   // 
	dg_stars[#$00,2] = $03;   // 
	//                                                              // 
	dg_stars[#$01,0] = _BLUL; // 
	dg_stars[#$01,1] = $A3;   // 
	dg_stars[#$01,2] = $03;   // 
	//                                                              // 
	dg_stars[#$02,0] = _GREY; // 
	dg_stars[#$02,1] = $23;   // 
	dg_stars[#$02,2] = $0B;   // 
	//                                                              // 
	dg_stars[#$03,0] = _WHIT; // 
	dg_stars[#$03,1] = $7B;   // 
	dg_stars[#$03,2] = $0B;   // 
	//                                                              // 
	dg_stars[#$04,0] = _BLUL; // 
	dg_stars[#$04,1] = $E3;   // 
	dg_stars[#$04,2] = $13;   // 
	//                                                              // 
	dg_stars[#$05,0] = _GREY; // 
	dg_stars[#$05,1] = $13;   // 
	dg_stars[#$05,2] = $1B;   // 
	//                                                              // 
	dg_stars[#$06,0] = _WHIT; // 
	dg_stars[#$06,1] = $2B;   // 
	dg_stars[#$06,2] = $1B;   // 
	//                                                              // 
	dg_stars[#$07,0] = _BLUL; // 
	dg_stars[#$07,1] = $A3;   // 
	dg_stars[#$07,2] = $1B;   // 
	//                                                              // 
	//                                                              // 
	//                                                              // 
	dg_stars[#$08,0] = _WHIT; // 
	dg_stars[#$08,1] = $E3;   // 
	dg_stars[#$08,2] = $1B;   // 
	//                                                              // 
	dg_stars[#$09,0] = _BLUD; // 
	dg_stars[#$09,1] = $EB;   // 
	dg_stars[#$09,2] = $1B;   // 
	//                                                              // 
	dg_stars[#$0A,0] = _BLUL; // 
	dg_stars[#$0A,1] = $7B;   // 
	dg_stars[#$0A,2] = $23;   // 
	//                                                              // 
	dg_stars[#$0B,0] = _GREY; // 
	dg_stars[#$0B,1] = $CB;   // 
	dg_stars[#$0B,2] = $23;   // 
	//                                                              // 
	dg_stars[#$0C,0] = _WHIT; // 
	dg_stars[#$0C,1] = $EB;   // 
	dg_stars[#$0C,2] = $23;   // 
	//                                                              // 
	dg_stars[#$0D,0] = _BLUD; // 
	dg_stars[#$0D,1] = $2B;   // 
	dg_stars[#$0D,2] = $2B;   // 
	//                                                              // 
	dg_stars[#$0E,0] = _BLUL; // 
	dg_stars[#$0E,1] = $DB;   // 
	dg_stars[#$0E,2] = $2B;   // 
	//                                                              // 
	dg_stars[#$0F,0] = _GREY; // 
	dg_stars[#$0F,1] = $13;   // 
	dg_stars[#$0F,2] = $33;   // 
	//                                                              // 
	//                                                              // 
	//                                                              // 
	dg_stars[#$10,0] = _WHIT; // 
	dg_stars[#$10,1] = $CB;   // 
	dg_stars[#$10,2] = $33;   // 
	//                                                              // 
	dg_stars[#$11,0] = _BLUL; // 
	dg_stars[#$11,1] = $1B;   // 
	dg_stars[#$11,2] = $3B;   // 
	//                                                              // 
	dg_stars[#$12,0] = _BLUD; // 
	dg_stars[#$12,1] = $AB;   // 
	dg_stars[#$12,2] = $3B;   // 
	//                                                              // 
	dg_stars[#$13,0] = _GREY; // 
	dg_stars[#$13,1] = $0B;   // 
	dg_stars[#$13,2] = $43;   // 
	//                                                              // 
	dg_stars[#$14,0] = _WHIT; // 
	dg_stars[#$14,1] = $4B;   // 
	dg_stars[#$14,2] = $43;   // 
	//                                                              // 
	dg_stars[#$15,0] = _GREY; // 
	dg_stars[#$15,1] = $83;   // 
	dg_stars[#$15,2] = $4B;   // 
	//                                                              // 
	dg_stars[#$16,0] = _BLUD; // 
	dg_stars[#$16,1] = $E3;   // 
	dg_stars[#$16,2] = $4B;   // 
	//                                                              // 
	dg_stars[#$17,0] = _BLUD; // 
	dg_stars[#$17,1] = $43;   // 
	dg_stars[#$17,2] = $5B;   // 
	//                                                              // 
	//                                                              // 
	//                                                              // 
	dg_stars[#$18,0] = _BLUD; // 
	dg_stars[#$18,1] = $63;   // 
	dg_stars[#$18,2] = $5B;   // 
	//                                                              // 
	//                                                              // 
	//                                                              // 
	/*
	dg_stars[#$1,0] = 
	dg_stars[#$1,1] = $
	dg_stars[#$1,2] = $
	*/
	//                                                              // 







}
