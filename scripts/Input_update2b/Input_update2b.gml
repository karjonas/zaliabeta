/// @description  Input_update2b()
function Input_update2b() {


	// Held
	held   = 0;
	heldV  = 0;  // Vertical
	heldH  = 0;  // Horizontal
	heldHV = 0;  // Horizontal & Vertical
	heldS  = 0;  // Start & Select
	heldC  = 0;  // B & A
	heldSC = 0;  // Start, Select, B, A

	if (Right_held)  // right    $01
	{
	    held     |= R;
	    heldH    |= R;
	    heldHV   |= R;
	}

	if (Left_held)   // left     $02
	{
	    held     |= L;
	    heldH    |= L;
	    heldHV   |= L;
	}

	if (Down_held)   // down     $04
	{
	    held     |= D;
	    heldV    |= D;
	    heldHV   |= D;
	}

	if (Up_held)     // up       $08
	{
	    held     |= U;
	    heldV    |= U;
	    heldHV   |= U;
	}

	if (Pause_held)  // start    $10
	{
	    held     |= S;
	    heldS    |= S;
	    heldSC   |= S;
	}

	if (Magic_held)  // select   $20
	{
	    held     |= E;
	    heldS    |= E;
	    heldSC   |= E;
	}

	if (Attack_held) // b        $40
	{
	    held     |= B;
	    heldC    |= B;
	    heldSC   |= B;
	}

	if (Jump_held)   // a        $80
	{
	    held     |= A;
	    heldC    |= A;
	    heldSC   |= A;
	}







}
