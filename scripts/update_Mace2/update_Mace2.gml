/// @description  update_Mace2()
function update_Mace2() {


	// AD0D
	if (counter) counter--;

	if(!counter 
	||  counter&$80 )
	{   // AD17
	    facingDir = -facingDir;
	    hspd      = byte_negate(hspd);
	    counter   = $80;
    
	        reverse_ctr++;
	    if (reverse_ctr>=2 
	    &&  is_ancestor(source_object,DoomA) )
	    {   // OG would remove if off screen, so this compensates.
	        state = 0;
	        exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	    }
	}

	// ADB4, ADBF
	Projectile_update_3a(true); // Projectile_update_1a(pID != 8);







}
