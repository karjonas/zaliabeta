/// @description  Input_Room_Start()
function Input_Room_Start() {

	if (DEV){ sdm(""); sdm("");
	    sdm("**********************************************************************************");
	    sdm("--------------------------------------------------------------------");
	    sdm(" Input_Room_Start()");
	}


	// The following relate to certain inputs held or pressed
	// They are updated in Lonk's update only under certain conditions
	hHeld = 0;      // 0742. 1: right or 2: left held
	vHeld = 0;      // 0743. 4: down or 8: up held
	heldPrev = 0;   // 0744. buttons held on the previous frame
	cPres = 0;      // 0741. $80: a and/or $40: b pressed
	dHeld = 0;      // 0017. 0: down NOT held, 1: down held


	// The buttons held when spawning at g.exit_enter
	// until they're released.
	// This can be used to prevent immediately using a door 
	// exit when spawning at it.
	held_0 = 0;


	// The first dir held/pressed after the last release
	// Can only be 0 or cardinal dirs 1,2,4,8. 
	// Cannot be diagonal dirs 5,9,6,A
	heldHV_first = 0;







}
