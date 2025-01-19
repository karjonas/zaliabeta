/// @description  dev_draw_app_frame_count()
function dev_draw_app_frame_count() {


	if (global.App_frame_count_can_draw 
	||  global.App_frame_count_unpaused_can_draw 
	||  global.Room_frame_count_can_draw )
	{
	    var _xl,_yt, _w;
	    var _PAD1 = $01;
	    var _PAD_Y = $04;
	    var _XL = viewXL() + ($01<<3);
	    var _YT = viewYB() - ($02<<3);
	    var _H1 = $8 + (_PAD1<<1);
	    var _text = "";
    
	    if (global.App_frame_count_can_draw)
	    {
	        _text = string(global.App_frame_count);
	        _w = (string_length(_text)<<3) + (_PAD1<<1);
	        _xl = _XL;
	        _yt = _YT;
	        draw_rect(c_black, _xl-_PAD1,_yt-_PAD1, _w,_H1);
	        draw_text_(_xl,_yt, _text, -1,PI_GUI_1);
	    }
    
	    if (global.App_frame_count_unpaused_can_draw)
	    {
	        _text = string(global.App_frame_count_unpaused);
	        _w = (string_length(_text)<<3) + (_PAD1<<1);
        
	        _xl  = _XL;
	        _yt -= _PAD1;
	        _yt -= _PAD_Y;
	        _yt -= _PAD1;
	        _yt -= $8;
	        draw_rect(c_black, _xl-_PAD1,_yt-_PAD1, _w,_H1);
	        draw_text_(_xl,_yt, _text, -1,PI_GUI_1);
	    }
    
	    if (global.App_frame_count_unpaused_can_draw)
	    {
	        _text = string(global.Room_frame_count);
	        _w = (string_length(_text)<<3) + (_PAD1<<1);
        
	        _xl  = _XL;
	        _yt -= _PAD1;
	        _yt -= _PAD_Y;
	        _yt -= _PAD1;
	        _yt -= $8;
	        draw_rect(c_black, _xl-_PAD1,_yt-_PAD1, _w,_H1);
	        draw_text_(_xl,_yt, _text, -1,PI_GUI_1);
	    }
	}







}
