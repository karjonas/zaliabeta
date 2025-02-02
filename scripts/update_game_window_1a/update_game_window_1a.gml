/// @description  update_game_window_1a()
function update_game_window_1a() {


	switch(g.MouseCursor_HideVer)
	{
	    default:{ // Never hide
	    window_set_cursor(cr_default)
	    break;}
    
    
	    case 1:{ // 1: Always hide
	    window_set_cursor(cr_none)
	    break;}
    
    
	    case 2:{ // 2: Hide for fullscreen only
	    if (window_get_fullscreen()) window_set_cursor(cr_none);
	    else                         window_set_cursor(cr_default);
	    break;}
	}







	// ----------------------------------------------------------------------------------------
	//  POSITIONING  -----------------------------------------------------------------------
	if(!window_get_fullscreen())
	{
	    var _WINDOW_W = window_get_width();
	    var _WINDOW_H = window_get_height();
    
    
	    if (g.Fullscreen_toggled 
	    ||  g.WindowScale_changed )
	    {
	        if (window_get_x()+(_WINDOW_W>>1) != g.window_center_x 
	        ||  window_get_y()+(_WINDOW_H>>1) != g.window_center_y )
	        {
	            window_set_position_(g.window_center_x-(_WINDOW_W>>1), g.window_center_y-(_WINDOW_H>>1));
	        }
	    }
	    else
	    {
	        // Track g.window_center_x/y if window has been moved/dragged 
	        // and so toggling fullscreen doesn't re-center the window.
	        if (g.window_center_x != window_get_x()+(_WINDOW_W>>1) 
	        ||  g.window_center_y != window_get_y()+(_WINDOW_H>>1) )
	        {
	            g.window_center_x  = window_get_x()+(_WINDOW_W>>1);
	            g.window_center_y  = window_get_y()+(_WINDOW_H>>1);
	        }
	    }
	}








	// ----------------------------------------------------------------------------------------
	if (g.Fullscreen_toggled 
	||  g.WindowScale_changed )
	{
	    g.Fullscreen_toggled  = false;
	    g.WindowScale_changed = false;
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}







	// ----------------------------------------------------------------------------------------
	//  FULLSCREEN  --------------------------------------------------------------------

	// Trying to prevent white flash on fullscreen toggle. Not sure if flash is one frame or several.
	//if (window_get_colour()!=c_black)
	//{   window_set_colour(   c_black);  }

	//if(!g.WindowScale_changed) // If was not scaled prev frame
	var _WILL_TOGGLE_FULLSCREEN = false;
	if (Input.keypressed_prev==0 
	&&  (keyboard_check_pressed(g.Fullscreen_KEY) || (keyboard_check_pressed(vk_escape) && window_get_fullscreen())) )
	{
	    _WILL_TOGGLE_FULLSCREEN = true;
	}
	else
	{
	    if (g.gui_state==g.gui_state_OPTIONS 
	    &&  g.OPTIONS_MENU.Menu_in_focus==g.OPTIONS_MENU.Menu_MAIN 
	    &&  g.OPTIONS_MENU.MainOption==g.OPTIONS_MENU.MainOption_FULLSCREEN 
	    && !abs(bit_dir(gui_tmr_cursor_v())) )
	    {
	        if (Input.Jump_pressed 
	        ||  abs(bit_dir(gui_tmr_cursor_h())) )
	        {
	            _WILL_TOGGLE_FULLSCREEN = true;
	        }
	    }
	}

	if (_WILL_TOGGLE_FULLSCREEN)
	{
	    g.Fullscreen_toggled = true;
	    window_set_fullscreen(!window_get_fullscreen()); // Toggle fullscreen
	    if(!window_get_fullscreen()) g.WindowScale_changed = window_set_scale(g.WindowScale_scale);
	    save_game_pref();
	}










	// ----------------------------------------------------------------------------------------
	//  SCALING  -----------------------------------------------------------------------
	if(!_WILL_TOGGLE_FULLSCREEN)
	{
	    var _SCALE_DIR = 0;
	    if ( keyboard_check_pressed(ord("Z"))
	    //if (Input.keypressed_prev==0 
	    //&&  keyboard_check(vk_control) 
	    &&  keyboard_check_pressed(g.WindowScale_KEY) )
	    {
	        _SCALE_DIR = sign_(!keyboard_check(vk_shift));
	    }
	    else
	    {
	        if (g.gui_state==g.gui_state_OPTIONS 
	        &&  g.OPTIONS_MENU.Menu_in_focus==g.OPTIONS_MENU.Menu_MAIN 
	        &&  g.OPTIONS_MENU.MainOption==g.OPTIONS_MENU.MainOption_APP_SCALE 
	        && !abs(bit_dir(gui_tmr_cursor_v())) )
	        {
	            _SCALE_DIR = bit_dir(gui_tmr_cursor_h());
	        }
	    }
    
    
	    if (_SCALE_DIR!=0)
	    {   // scale window
	        if (window_set_scale(window_get_scale()+_SCALE_DIR)) // if scale changed
	        {
	            g.WindowScale_changed = true; // For positioning the window on the NEXT frame
	            window_set_fullscreen(false);
	            save_game_pref();
	        }
	    }
	}







}
