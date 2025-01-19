depth = -1000;

FRAME_COUNTER_MAX = 48;
frameCounter = -1;

useC1 = true;
useC2 = false;
useC3 = false;

COL1 = c_red;
COL2 = c_lime;
COL3 = c_blue;

C_RAD1 = 2;
C_RAD2 = 4;
C_RAD3 = 8;

c_rads[2] = C_RAD3;
c_rads[1] = C_RAD2;
c_rads[0] = C_RAD1;

// modulus values to calculate delay
// will be calculated with the g.timer1
// which restarts every 48 frames
MOD2    = 2;    // blink every 2nd frame
MOD4    = 4;    // blink every 4th frame
MOD6    = 6;    // blink every 6th frame
MOD8    = 8;    // blink every 8th frame
MOD12   = 12;   // blink every 12th frame
MOD16   = 16;   // blink every 16th frame

PADY = 4;
PADX = 8;
SPACING = C_RAD3 * 2 + PADX;
YOFF = g.VIEW_H - C_RAD3 - PADY;
XOFF_C1 = (g.VIEW_W >>1) - SPACING;
XOFF_C2 =  g.VIEW_W >>1;
XOFF_C3 = (g.VIEW_W >>1) + SPACING;



