/// @description  dev_randomize_palette_shadow()
function dev_randomize_palette_shadow() {


	var _return  = 0;
	if(!irandom($17))
	{
	    _return = p.CI_GRY4;
	}
	else
	{
	    _return  = !irandom($17) + !irandom($4F);
	    _return  = _return<<4;
	    _return |= irandom($C)+1;
	    if (_return&$F==$D)
	    {   _return = p.CI_BLK1;  }
	}

	return _return;
	//return !irandom($17) + !irandom($1B) + !irandom($23);
	//return !irandom($13) + !irandom($17) + !irandom($1F);
	//return !irandom($10) + !irandom($11) + !irandom($12);
	//return irandom((1 + !irandom($0A)) + !irandom($0D));







}
