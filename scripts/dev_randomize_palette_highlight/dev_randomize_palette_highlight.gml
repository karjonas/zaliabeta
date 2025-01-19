/// @description  dev_randomize_palette_highlight()
function dev_randomize_palette_highlight() {


	var _return  = 0;
	_return  = !irandom($01) + !irandom($03) + !irandom($05);
	//_return  = !irandom($01) + !irandom($03) + !irandom($05);
	//_return  = !irandom($01) + !irandom($02) + !irandom($03);
	//_return  = !irandom($08) + !irandom($0D) + !irandom($10);
	_return  = _return<<4;
	_return |= irandom($D);

	return _return;







}
