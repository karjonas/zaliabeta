/// @description  GO_add_palidx_set()
function GO_add_palidx_set() {


	if (rm_pal_qual_lit() 
	||  GO_pal_qual_lit() )
	{    palidx_base += p.PI_LIT1;  }
	else palidx_base += p.PI_DRK1;







}
