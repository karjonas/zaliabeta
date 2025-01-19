//sdm("GameObject_Destroy_1. "+object_get_name(object_index));

GO_instance_end();


if (variable_instance_exists(id,"scr_destroy") 
&& !is_undefined(                scr_destroy) 
&&  script_exists(               scr_destroy) )
{   script_execute(              scr_destroy);  }






