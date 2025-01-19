
if (g.can_use_FrameIndicator)
{
    var _x = __view_get( e__VW.XView, 0 );
    
    if (useC1 && !(g.counter0 & 1)) // blink every 2nd frame
    { draw_circle_colour( _x + XOFF_C1, YOFF, C_RAD3, COL1, COL1, false); }
    
    if (useC2 && !(g.counter0 & 3)) // blink every 4th frame
    { draw_circle_colour( _x + XOFF_C2, YOFF, C_RAD3, COL2, COL2, false); }
    
    if (useC3 && !(g.counter0 & 7)) // blink every 8th frame
    { draw_circle_colour( _x + XOFF_C3, YOFF, C_RAD3, COL3, COL3, false); }
}



/*
frameCounter++;
if (frameCounter == FRAME_COUNTER_MAX) frameCounter = 0;

if (g.can_use_FrameIndicator)
{
    if (useC1 && frameCounter mod MOD2 == 0)
        draw_circle_colour( view_xview[0] + XOFF_C1, YOFF, 
                            C_RAD3, COL1, COL1, false);
    
    if (useC2 && frameCounter mod MOD4 == 0)
        draw_circle_colour( view_xview[0] + XOFF_C2, YOFF, 
                            C_RAD3, COL2, COL2, false);
    
    if (useC3 && frameCounter mod MOD8 == 0)
        draw_circle_colour( view_xview[0] + XOFF_C3, YOFF, 
                            C_RAD3, COL3, COL3, false);
}
*/

/* */
/*  */
