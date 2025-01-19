/// @description  Kakusu_update_defeated()
function Kakusu_update_defeated() {


	if(state==state_EXPLODE 
	&& !is_undefined(             dk_spawn) 
	&&  is_undefined(f.dm_kakusu[?dk_spawn]) )
	{
	    f.kakusu_count = val(f.dm_kakusu[?STR_Defeated+STR_Count]) + 1;
	    f.dm_kakusu[?STR_Defeated+STR_Count] = f.kakusu_count;
	    f.dm_kakusu[?dk_spawn] = 1;
    
	    // 0: opaque body, normal eyes
	    // 1: opaque body, cyclops eye
	    // 2: translucent body
	    var _TYPE  = 2;
	        _TYPE -= body_type==1;
	        _TYPE -= body_type==1 && eyes_type==1;
	    f.dm_kakusu[?hex_str(f.kakusu_count)+STR_Sprite+STR_Type] = _TYPE;
	}







}
