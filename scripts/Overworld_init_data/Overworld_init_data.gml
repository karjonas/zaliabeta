/// @description  Overworld_init_data()
function Overworld_init_data() {

	if (DEV) sdm(" Overworld_init_data()");


	if (OVERWORLD_INIT_METHOD==1)
	{   // Code automation will not happen in Overworld_init_data_1() if OVERWORLD_INIT_METHOD==1
	    Overworld_init_data_1();
	}
	else
	{   // New initialization method -----------------------------------------------
	    if (false)
	    {   // This will print the code for Overworld_init_data_2().
	        // Run it whenever a change is made to the overworld.
	        Overworld_init_data_1();
	    }
	    else
	    {
	        Overworld_init_data_2(); // Paste the code printed from Overworld_init_data_1() in Overworld_init_data_2()
	        if (g.anarkhyaOverworld_MAIN) Overworld_init_data_anarkhya();
	    }
    
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}







}
