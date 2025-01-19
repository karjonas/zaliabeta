/// @description  is_in_grid(CLM, ROW, CLMS, ROWS)
function is_in_grid(argument0, argument1, argument2, argument3) {


	return argument0 >=         0   // CLM >=   0
	    && argument1 >=         0   // ROW >=   0
	    && argument0 <  argument2   // CLM < CLMS
	    && argument1 <  argument3;  // ROW < ROWS
	//                              // 







}
