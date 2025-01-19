/// @description  Challenge_create(x, y, object_index, version)
function Challenge_create() {

	// The "Challenge" object is for checking if a particular 
	// challenge is complete and reacting to the completion.
	// Example: if (all rm enemies defeated) spawn key;


	var _ARGS = argument_count;

	var                  _arg = 0;
	var _X    = argument[_arg++];
	var _Y    = argument[_arg++];
	var _OBJ  = argument[_arg++];
	var _VER  = argument[_arg++];



	//  ---------------------------------------------------------------------------------------
	with(instance_create(_X,_Y, _OBJ))
	{
	    var _OBJ_NAME = object_get_name(object_index);
    
    
	    Challenge_init();
    
	    state = state_NORMAL;
	    ver   = _VER;
    
    
	    // get scripts from data, run scr_vars, run scr_ini1
	    GameObject_create_1a();
    
    
    
	    // --------------------------------------------------------------------------------------
	    challenge_id = _OBJ_NAME + hex_str(ver);
    
    
    
    
    
	    // --------------------------------------------------------------------------------------
	    // Secondary initializations -----------------------------------------
	    if (!is_undefined( scr_init2))
	    {   script_execute(scr_init2);  }
    
    
	    return id;
	}







}
