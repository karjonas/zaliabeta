/// @description  Bot_end()
function Bot_end() {


	if (is_ver(id,Bot_A,3) 
	&&  variable_instance_exists(id,"Cover_SPR") 
	&&                               Cover_SPR 
	&&                 sprite_exists(Cover_SPR) )
	{                  sprite_delete(Cover_SPR);  }







}
