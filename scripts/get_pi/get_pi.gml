/// @description  get_pi(palette index base, *permutation)
function get_pi() {


	var _palette_idx = argument[0];

	// argument[1](permutation) should be 1-5. A permutation of 0 means no permutation;
	if (argument_count>1 
	&&  argument[1] mod PI_PERMUTATIONS )
	{
	    _palette_idx  = p.PI_PERMUT_BASE + (_palette_idx*PI_PERMUTATIONS);
	    _palette_idx += argument[1] mod PI_PERMUTATIONS;
	}

	return min(_palette_idx, global.palette_image_W-1);







}
