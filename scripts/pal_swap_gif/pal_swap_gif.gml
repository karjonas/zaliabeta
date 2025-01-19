function pal_swap_gif() {
	/*
	Use:    pal_swap_gif(file)

	This script simply modifies palette entries of a GIF. The script looks for 
	the specified file in the Temp directory and rewrites it. If you don't want
	to use the Temp directory, be sure to change that in the code.

	The very first palette entry should be at byte $0D. Make sure all your GIF files
	have the same palette layout with all three editable colors sequentially together.
	You can use GIMP to rearrange the palette in any order you want. 


	argument0: GIF file (string with .gif extension)


	The GIF file is specified as a string containing just the name and .gif extension.

	Typically all sprites in your game would have the same palette size and setup.
	The following arguments should be set here in the script and not passed as actual
	arguments in order to speed up programming, except maybe argument1:


	argument1: Palette addresses to write to the file (optional)
	argument2: Address of the first color to edit in the file (default $0D)
	argument3: Number of colors to edit in the palette (default 3)
	argument4: Directory files are located (default temp_directory)
	argument5: Color definitions file (default "YPbPr.pal") (uses above directory)


	To pass them with the script call, simply comment out the respective line of code.


	Arguments 10 through 15 get set automatically and not passed in the script call.


	There are various ways to handle the palette. The method best suited for an NES
	game is handled near the end of this script. For larger palettes, you should store
	all palettes in a binary file and simply read from it; maybe like so (pal_define 
	could be the file ID for the palette definitions):

	    //At start of script:
	    argument1 = object_index * argument3;
	    file_bin_seek(pal_define, argument1);
    
	    //In FOR loop later:
	    if !(argument15 mod 3)
	        argument12   =    file_bin_read_byte(pal_define);
  

	RGB values for each palette entry should be stored in a simple binary file. This
	script handles colors in RGB format, not BGR like Game Maker.
	*/


	/*
	argument2    =    $0D;
	argument3    =    3;
	argument4    =    temp_directory;
	argument5    =    "YPbPr.pal";


	//Open the GIF file passed as argument0
	argument10   =   file_bin_open(argument4+"\"+argument0,1);


	//Open the RGB color definitions file
	argument11   =   file_bin_open(argument4+"\"+argument5,0);


	//Jump to the first palette entry passed as argument2
	file_bin_seek(argument10,argument2);


	for(argument15=argument2; argument15 < argument2 + 3 * argument3; argument15+=1)
	{

	//The following algorithm can be used for palettes up to 8 colors, allowing palette
	//entries to be stored in a single variable. (ex: argument1 = $0821625)
	//Note: This reads the variable FROM RIGHT TO LEFT!
	//For larger palettes, the example code earlier would go here instead.

	    argument12   =    argument1>>((argument15-argument2) div argument3 << 3) & $FF;

    
	//Write each new color to the GIF. Both lines are self-contained code based
	//on all the values set up to this point. Do not modify these lines!
 
	    file_bin_seek(argument11,argument12 * 3 + (argument15-argument2) mod 3);
	    file_bin_write_byte(argument10,file_bin_read_byte(argument11));
	}


	//Close the files

	file_bin_close(argument10);
	file_bin_close(argument11);
	*/




}
