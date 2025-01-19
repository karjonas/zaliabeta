/// @description  pal_swap_set(palette_sprite_index, palette_index, palette is surface);
/// @param palette_sprite_index
/// @param  palette_index
/// @param  palette is surface
function pal_swap_set() {


	// ------------------------------------------------------------
	if(!global.use_pal_swap)
	{
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}

	if(!argument[1] 
	||  argument[1]>=global.palette_image_W )
	{
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}

	if (global.palette_image_IS_SURFACE)
	{    if(!surface_exists(argument[0])) exit;  } // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	else if(!sprite_exists( argument[0])) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	//if(!sprite_exists( argument[0])) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!




	// ------------------------------------------------------------
	shader_set(global.Pal_Shader);
	var _Palette_IMAGE = argument[0];
	var _Palette_INDEX = argument[1];


	if (global.palette_image_IS_SURFACE) var _tex = surface_get_texture(_Palette_IMAGE);
	else                                 var _tex =  sprite_get_texture(_Palette_IMAGE, 0);
	texture_set_stage(            global.Pal_Texture, _tex);
	texture_set_interpolation_ext(global.Pal_Texture, 1)


	var _texel_x  = texture_get_texel_width( _tex);
	var _texel_y  = texture_get_texel_height(_tex);
	var _texel_hx = _texel_x * 0.5;
	var _texel_hy = _texel_y * 0.5;


	if (global.palette_image_IS_SURFACE)
	//if(argument[2])
	{   // palette is surface
	    var _val0 =           _texel_hx;
	    var _val1 =           _texel_hy;
	    var _val2 = 1.0     + _texel_hx;
	    var _val3 = 1.0     + _texel_hy;
	}
	else
	{   // palette is sprite
	    var _UVs  = sprite_get_uvs(_Palette_IMAGE, 0);
	    var _val0 = _UVs[0] + _texel_hx;
	    var _val1 = _UVs[1] + _texel_hy;
	    var _val2 = _UVs[2] + _texel_hx;
	    var _val3 = _UVs[3] + _texel_hy;
	}


	shader_set_uniform_f(global.Pal_Texel_Size, _texel_x, _texel_y);
	shader_set_uniform_f(global.Pal_UVs, _val0, _val1, _val2, _val3);
	shader_set_uniform_f(global.Pal_Index, _Palette_INDEX);





	/*
	///pal_swap_set(palette_sprite_index, palette_index, palette is surface);


	// ------------------------------------------------------------
	if (!global.use_pal_swap)                exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!
	if (!inRange(argument[1], 1, p.PI_LAST)) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!
	if (!sprite_exists(argument[0]))         exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!





	// ------------------------------------------------------------
	shader_set(Pal_Shader);
	var _Palette_IMAGE = argument[0];
	var _Palette_INDEX  = argument[1];


	var tex = sprite_get_texture(_Palette_IMAGE, 0);

	texture_set_stage(            Pal_Texture, tex);
	texture_set_interpolation_ext(Pal_Texture, 1)


	var texel_x  = texture_get_texel_width( tex);
	var texel_y  = texture_get_texel_height(tex);
	var texel_hx = texel_x * 0.5;
	var texel_hy = texel_y * 0.5;


	var val0 =     texel_hx;
	var val1 =     texel_hy;
	var val2 = 1.0+texel_hx;
	var val3 = 1.0+texel_hy;

	if(!argument[2]) 
	{
	    var UVs = sprite_get_uvs(_Palette_IMAGE, 0);
	    val0 = UVs[0]+texel_hx;
	    val1 = UVs[1]+texel_hy;
	    val2 = UVs[2]+texel_hx;
	    val3 = UVs[3]+texel_hy;
	}


	shader_set_uniform_f(Pal_Texel_Size, texel_x, texel_y);
	shader_set_uniform_f(Pal_UVs       , val0, val1, val2, val3);
	shader_set_uniform_f(Pal_Index     , _Palette_INDEX);
	*/




	/*
	///pal_swap_set(palette_sprite_index, palette_index, palette is surface);


	// ------------------------------------------------------------
	if (!global.use_pal_swap)                exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!
	if (!inRange(argument[1], 1, p.PI_LAST)) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!
	if (!sprite_exists(argument[0]))         exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!





	// ------------------------------------------------------------
	shader_set(Pal_Shader);
	var _Palette_IMAGE = argument[0];
	var _Palette_INDEX  = argument[1];

	if(!argument[2])
	{   //Using a sprite based palette
	    var tex = sprite_get_texture(_Palette_IMAGE, 0);
	    var UVs = sprite_get_uvs(    _Palette_IMAGE, 0);
    
	    texture_set_stage(            Pal_Texture, tex);
	    texture_set_interpolation_ext(Pal_Texture, 1)
    
	    var texel_x  = texture_get_texel_width( tex);
	    var texel_y  = texture_get_texel_height(tex);
	    var texel_hx = texel_x * 0.5;
	    var texel_hy = texel_y * 0.5;
    
	    shader_set_uniform_f(Pal_Texel_Size, texel_x, texel_y);
	    shader_set_uniform_f(Pal_UVs       , UVs[0]+texel_hx, UVs[1]+texel_hy, UVs[2]+texel_hx, UVs[3]+texel_hy);
	    shader_set_uniform_f(Pal_Index     , _Palette_INDEX);
	}
	else
	{   //Using a surface based palette
	    var tex = surface_get_texture(_Palette_IMAGE);
    
	    texture_set_stage(            Pal_Texture, tex);
	    texture_set_interpolation_ext(Pal_Texture, 1)
    
	    var texel_x  = texture_get_texel_width( tex);
	    var texel_y  = texture_get_texel_height(tex);
	    var texel_hx = texel_x * 0.5;
	    var texel_hy = texel_y * 0.5;
    
	    shader_set_uniform_f(Pal_Texel_Size, texel_x, texel_y);
	    shader_set_uniform_f(Pal_UVs       , texel_hx, texel_hy, 1.0+texel_hx, 1.0+texel_hy);
	    shader_set_uniform_f(Pal_Index     , _Palette_INDEX);
	}

	*/





}
