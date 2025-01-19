/// @description  FS_cursor_menu_move()
function FS_cursor_menu_move() {


	for(var _i=0; _i<5; _i++)
	{
	    if ( cursor_menu & OPT_ELIM)
	    {    cursor_menu = 1;  }
	    else cursor_menu = cursor_menu<<1;
    
	    if (menu_options & cursor_menu) break;
	}







}
