/// @description  data_pit(exit name, clm diff to linked exit, row diff to linked exit)
function data_pit(argument0, argument1, argument2) {


	g.dm_rm[?argument0+STR_Destination+STR_Clm+STR_Count] = argument1;
	g.dm_rm[?argument0+STR_Destination+STR_Row+STR_Count] = argument2;







}
