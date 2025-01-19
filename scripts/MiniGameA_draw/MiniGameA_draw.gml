/// @description  MiniGameA_draw()
function MiniGameA_draw() {


	if (points_can_draw)
	{
	    points_can_draw = false;
    
	    var            _TEXT = string(points);
	    if (points<10) _TEXT = "0"+_TEXT;
	    var _X = x - ((string_length(_TEXT)<<3)>>1);
	    var _Y =  viewYT()   + POINTS_Y_OFF;
	    draw_text_(_X,_Y, _TEXT);
	}




	//  -----------------------------------------------------------
	//  Debug draw
	if (g.TargetGame_case>1)
	{
	    var _text;
	    with(Target)
	    {
	        _text=string(TARGET_NUM);
	        if (TARGET_NUM<10) _text="0"+_text;
	        draw_text_(x-8,yt-9, _text);
	    }
	}

	GO_draw_body_hb();







}
