/// @description  Barba_udp()
function Barba_udp() {


	// B290
	var _i, _val;


	can_draw_self = true;


	if (sub_state==sub_state_ATTACK 
	&&  (timer-$30)&$FF < $30 )
	{
	    if (((timer&$30)>>4)&$1)
	    {    Head_sprite = Head_SPRITE2;  } // mouth open half
	    else Head_sprite = Head_SPRITE3; // mouth open full
	}
	else     Head_sprite = Head_SPRITE1; // mouth closed


	// _val:  0  1  2  3    4  5  6  7    8  9  A  B    C  D  E  F
	//       00 01 02 01   00 FF FE FF   00 01 02 01   00 FF FE FF
	//_data = "00010201" + "00FFFEFF"  + "00010201" + "00FFFEFF";
	for(_i=Segment_COUNT-1; _i>=0; _i--)
	{
	        _val = ((g.counter1>>3)&$7) + _i; // every 8 frames
	    if (_val&$1) dl_xoff[|_i] = (_val&$1) * -sign_(_val&$4); // 1,3,5,7,9,B,D,F
	    else         dl_xoff[|_i] = (_val&$2) * -sign_(_val&$4); // 0,2,4,6,8,A,C,E
	}







}
