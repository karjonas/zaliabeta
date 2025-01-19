/// @description  Input_update2d()
function Input_update2d() {


	// Released
	released   = 0;
	releasedV  = 0;  // Vertical
	releasedH  = 0;  // Horizontal
	releasedHV = 0;  // Horizontal & Vertical
	releasedS  = 0;  // Start & Select
	releasedC  = 0;  // B & A
	releasedSC = 0;  // Start, Select, B, A

	if (Right_released)  // right    $01
	{
	    released     |= R;
	    releasedH    |= R;
	    releasedHV   |= R;
	}

	if (Left_released)   // left     $02
	{
	    released     |= L;
	    releasedH    |= L;
	    releasedHV   |= L;
	}

	if (Down_released)   // down     $04
	{
	    released     |= D;
	    releasedV    |= D;
	    releasedHV   |= D;
	}

	if (Up_released)     // up       $08
	{
	    released     |= U;
	    releasedV    |= U;
	    releasedHV   |= U;
	}

	if (Pause_released)  // start    $10
	{
	    released     |= S;
	    releasedS    |= S;
	    releasedSC   |= S;
	}

	if (Magic_released)  // select   $20
	{
	    released     |= E;
	    releasedS    |= E;
	    releasedSC   |= E;
	}

	if (Attack_released) // b        $40
	{
	    released     |= B;
	    releasedC    |= B;
	    releasedSC   |= B;
	}

	if (Jump_released)   // a        $80
	{
	    released     |= A;
	    releasedC    |= A;
	    releasedSC   |= A;
	}







}
