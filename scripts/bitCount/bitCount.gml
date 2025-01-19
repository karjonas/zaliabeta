/// @description  bitCount(uint)
function bitCount(argument0) {


	var    _count     = 0;
	while (argument0 != 0)
	{
	       _count    += (argument0&$1);
	       argument0  =  argument0>>1;
	}

	return _count;




}
