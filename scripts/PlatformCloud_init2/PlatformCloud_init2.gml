/// @description  PlatformCloud_init2()
function PlatformCloud_init2() {


	solid_type  = TID_ONEWY1;

	//BODY_XL = xl + BODY_XOFF;


	if(!is_undefined(               dk_spawn) 
	&& !is_undefined(   g.dm_spawn[?dk_spawn+STR_Data+"01"]))
	{   _CloudMid_CNT = g.dm_spawn[?dk_spawn+STR_Data+"01"];  }

	CLMS = CLMS_MIN + (_CloudMid_CNT<<1);
	CLMS = clamp(CLMS, CLMS_MIN,CLMS_MAX);







}
