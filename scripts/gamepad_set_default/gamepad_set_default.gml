/// @description  gamepad_set_default()
function gamepad_set_default() {


	with(Input)
	{
	    GP_right    = GP_right_DEFAULT;
	    GP_left     = GP_left_DEFAULT;
	    GP_down     = GP_down_DEFAULT;
	    GP_up       = GP_up_DEFAULT;
	    GP_magic    = GP_magic_DEFAULT;
	    GP_pause    = GP_pause_DEFAULT;
	    GP_jump     = GP_jump_DEFAULT;   // Xbox A button
	    GP_attack   = GP_attack_DEFAULT; // Xbox X button
	    GP_other1   = GP_other1_DEFAULT; // Xbox B button
	    GP_other2   = GP_other2_DEFAULT; // Xbox Y button
	    GP_other3   = GP_other3_DEFAULT;
	    GP_other4   = GP_other4_DEFAULT;
	    GP_other5   = GP_other5_DEFAULT;
	    GP_other6   = GP_other6_DEFAULT;
    
    
	    if (gamepad_slot)
	    {
	        var _GP_NAME = gamepad_get_description(gamepad_slot);
	        var _GP_NUM  = dm_UserInputConfig[?_GP_NAME+"_gamepad_num"];
	        if(!is_undefined(_GP_NUM))
	        {
	            var _DATAKEY = "gamepad"+hex_str(_GP_NUM)+"_gp_";
	            //                                                  //
	            dm_UserInputConfig[?_DATAKEY+"right"]  = GP_right;
	            dm_UserInputConfig[?_DATAKEY+"left"]   = GP_left;
	            dm_UserInputConfig[?_DATAKEY+"down"]   = GP_down;
	            dm_UserInputConfig[?_DATAKEY+"up"]     = GP_up;
	            //                                                  //
	            dm_UserInputConfig[?_DATAKEY+"magic"]  = GP_magic;
	            dm_UserInputConfig[?_DATAKEY+"pause"]  = GP_pause;
	            //                                                  //
	            dm_UserInputConfig[?_DATAKEY+"jump"]   = GP_jump;
	            dm_UserInputConfig[?_DATAKEY+"attack"] = GP_attack;
	            //                                                  //
	            dm_UserInputConfig[?_DATAKEY+"other1"] = GP_other1;
	            dm_UserInputConfig[?_DATAKEY+"other2"] = GP_other2;
	            dm_UserInputConfig[?_DATAKEY+"other3"] = GP_other3;
	            dm_UserInputConfig[?_DATAKEY+"other4"] = GP_other4;
	            dm_UserInputConfig[?_DATAKEY+"other5"] = GP_other5;
	            dm_UserInputConfig[?_DATAKEY+"other6"] = GP_other6;
	            //                                                  //
	            save_game_pref();
	        }
	    }
	}







}
