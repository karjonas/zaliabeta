/// @description  Cutscene_MoaiOpenMouth_1_draw()
function Cutscene_MoaiOpenMouth_1_draw() {


	if (TurnedIn_count)
	{
	    var _i, _x,_y, _pi;
	    var          _COUNT=ds_grid_width(dg_TurnedIn);
	    for(_i=0; _i<_COUNT; _i++)
	    {
	        if(!dg_TurnedIn[#_i,0]) continue;
        
	        // if turned in -----------------------------------
	        _x =dg_TurnedIn[#_i,3];
	        _y =dg_TurnedIn[#_i,4];
        
	        if (dg_TurnedIn[#_i,2]) // stun timer
	        {    _pi  = p.dg_PI_SEQ[#0, (dg_TurnedIn[#_i,2]>>1) & $3];  } // stun flash
	        else _pi  = PI_MOB_PUR; // PI_MOB_PUR: will be grey-scale
	        //else _pi  = PI_MOB_ORG;
        
	        switch(dg_TurnedIn[#_i,1]) // kakusu graphic type
	        {
	            // --------------------------------------
	            case 0:{ // NORM
	            draw_sprite_(spr_Bot2_Norm,    0, _x,_y, _pi);
	            draw_sprite_(spr_Bot_Eyes_1a_1,0, _x,_y, _pi);
	            draw_sprite_(spr_1x1_WHT,0, _x-1,_y+3, -1, 2,1, get_pal_color(_pi,3));
	            //draw_rect(get_pal_color(_pi,3), _x-1,_y+3, 2,1); // mouth
	            break;}
            
            
	            // --------------------------------------
	            case 1:{ // CYCLOPES EYE
	            draw_sprite_(spr_Bot2_Norm,        0, _x,_y,   _pi);
	            //draw_sprite_(spr_Eye_Closed_1a_WRB,0, _x,_y+2, _pi); // eye closed
	            draw_sprite_(spr_Eye_Open_1b_WRB,0, _x,_y+2, _pi); // eye half open
	            draw_sprite_(spr_1x1_WHT,0, _x-1,_y+1, -1, 2,1, get_pal_color(_pi,3));
	            //draw_rect(get_pal_color(_pi,3), _x-1,_y+1, 2,1); // pupil
	            break;}
            
            
	            // --------------------------------------
	            case 2:{ // TRANSPARENT
	            draw_sprite_(spr_Slime_Small_1b_WRB,      0, _x,_y, _pi); // small slime
	            draw_sprite_(spr_Slime_Transparent_1a_WRB,0, _x,_y, _pi); // transparent body
	            break;}
	        }
	    }
	}



	if(!can_draw_self) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


	draw_sprite_(sprite,0, drawX,drawY, palidx);



	GO_draw_xy_point();







}
