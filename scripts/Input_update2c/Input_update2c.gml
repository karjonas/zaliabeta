/// @description  Input_update2c()
function Input_update2c() {


	// Pressed
	pressed   = 0;
	pressedV  = 0;  // Vertical
	pressedH  = 0;  // Horizontal
	pressedHV = 0;  // Horizontal & Vertical
	pressedS  = 0;  // Start & Select
	pressedC  = 0;  // B & A
	pressedSC = 0;  // Start, Select, B, A

	if (Right_pressed)  // right    $01
	{
	    pressed     |= R;
	    pressedH    |= R;
	    pressedHV   |= R;
	}

	if (Left_pressed)   // left     $02
	{
	    pressed     |= L;
	    pressedH    |= L;
	    pressedHV   |= L;
	}

	if (Down_pressed)   // down     $04
	{
	    pressed     |= D;
	    pressedV    |= D;
	    pressedHV   |= D;
	}

	if (Up_pressed)     // up       $08
	{
	    pressed     |= U;
	    pressedV    |= U;
	    pressedHV   |= U;
	}

	if (Pause_pressed)  // start    $10
	{
	    pressed     |= S;
	    pressedS    |= S;
	    pressedSC   |= S;
	}

	if (Magic_pressed)  // select   $20
	{
	    pressed     |= E;
	    pressedS    |= E;
	    pressedSC   |= E;
	}

	if (Attack_pressed) // b        $40
	{
	    pressed     |= B;
	    pressedC    |= B;
	    pressedSC   |= B;
	}

	if (Jump_pressed)   // a        $80
	{
	    pressed     |= A;
	    pressedC    |= A;
	    pressedSC   |= A;
	}







}
