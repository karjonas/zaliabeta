/// @description  Magnot_init2()
function Magnot_init2() {


	var _i, _val;

	/*
	                   _i=0;
	sub_state_IDLE0  = _i++;
	sub_state_IDLE1  = _i++;
	//sub_state_ATTACKING = _i++;
	sub_state_MOVING = _i++;
	sub_state        = sub_state_IDLE0;
	*/
	DRAW_YOFF = 0;


	switch(1){// test diff sprites
	case 1:{
	SPR_A = spr_Magnot_1d;
	SPR_B = spr_Magnot_1b;
	SPR_C = spr_Magnot_1c;
	GO_set_sprite(id,SPR_A);
	break;}
	case 2:{break;}
	case 3:{break;}
	case 4:{break;}
	}


	GO_init_palidx(PI_MOB_RED);
	GO_init_palidx(PI_MOB_BLU);
	GO_init_palidx(PI_MOB_PUR);


	SPR_SPIKES_A    = spr_Spike_ball_Spikes_1a;
	SPR_SPIKES_B    = spr_Spike_ball_Spikes_1b;
	SPR_SPIKES_C    = spr_Spike_ball_Spikes_1c;
	spikes_spr      = SPR_SPIKES_A;


	PUPIL_COLOR     = get_pal_color(get_pi(palidx), 3);
	pupil_xoff      = 0;
	pupil_yoff      = 0;


	Idle_DURATION1 = $40;
	Idle_timer     = Idle_DURATION1;
	//Idle_position  = 0;
	//has_attacked
	auto_return_state = false;


	SPEED1 = $20;
	speed1 = SPEED1;

	hspd = 0;
	vspd = 0;


	switch(ver){
	case 1:{move_dirs=$3; break;}
	case 2:{move_dirs=$C; break;}
	case 3:{move_dirs=$F; break;}
	}



	trig_canDraw = false;
	trig_color   = c_red;

	var _REACH = $08;
	// horizontal
	trig_hori_W = ww;
	trig_hori_H = hh+_REACH;
	trig_hori_w = trig_hori_W;
	trig_hori_h = trig_hori_H;
	trig_hori_x = x-(trig_hori_w>>1);
	trig_hori_y = y-(trig_hori_h>>1);
	// vertical
	trig_vert_W = ww+_REACH;
	trig_vert_H = hh;
	trig_vert_w = trig_vert_W;
	trig_vert_h = trig_vert_H;
	trig_vert_x = x-(trig_vert_w>>1);
	trig_vert_y = y-(trig_vert_h>>1);



	update_trig_hb_1();
	//trig_canDraw = false;

	/*
	sdm("");sdm("");
	var _str  = " ";
	    _str += "hX $" + hex_str(trig_hX) + ", ";
	    _str += "hY $" + hex_str(trig_hY) + ", ";
	    _str += "hW $" + hex_str(trig_hW) + ", ";
	    _str += "hH $" + hex_str(trig_hH) + ", ";
	sdm(_str);
	    _str  = " ";
	    _str += "vX $" + hex_str(trig_vX) + ", ";
	    _str += "vY $" + hex_str(trig_vY) + ", ";
	    _str += "vW $" + hex_str(trig_vW) + ", ";
	    _str += "vH $" + hex_str(trig_vH) + ", ";
	sdm(_str);
	sdm("");sdm("");
	*/







}
