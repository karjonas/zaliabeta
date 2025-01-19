//
// Based off: https://github.com/JujuAdams/Pixel-Art-Upscaling/blob/main/objects/oAppSurfaceRenderer/Draw_64.gml
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform sampler2D u_texture;
//uniform float     u_texture_w;
//uniform float     u_texture_h;
uniform vec2 u_texel_size;
uniform vec2 u_pixel_scale;
//uniform bool u_scanlines_effect_enabled;
//uniform float u_texture_scale;


void main()
{
    float _distx = u_texel_size.x;
    float _disty = u_texel_size.y;
    vec2 _v_tex_coord = v_vTexcoord;
    vec4 _color = texture2D(u_texture, _v_tex_coord);
    /*
    vec2 _pixel_pos = v_vTexcoord / u_texel_size;
    vec2   _tex_coord = floor(_pixel_pos) + 0.5 + 1.0 - clamp((1.0-fract(_pixel_pos)*u_pixel_scale), 0.0, 1.0);
    vec2 _v_tex_coord = _tex_coord * u_texel_size;
    
    float _distx = u_texel_size.x;
    float _disty = u_texel_size.y;
    vec4 _color = texture2D(u_texture, _v_tex_coord);
    */
    
    if (true)
    {
        _color += texture2D(u_texture, vec2(_v_tex_coord.x+_distx, _v_tex_coord.y));        // right
        _color += texture2D(u_texture, vec2(_v_tex_coord.x-_distx, _v_tex_coord.y));        // left
        _color += texture2D(u_texture, vec2(_v_tex_coord.x,        _v_tex_coord.y+_disty)); // down
        _color += texture2D(u_texture, vec2(_v_tex_coord.x,        _v_tex_coord.y-_disty)); // up
        
        _color += texture2D(u_texture, vec2(_v_tex_coord.x+_distx, _v_tex_coord.y-_disty)); // right up
        _color += texture2D(u_texture, vec2(_v_tex_coord.x-_distx, _v_tex_coord.y+_disty)); // left  down
        _color += texture2D(u_texture, vec2(_v_tex_coord.x+_distx, _v_tex_coord.y+_disty)); // right down
        _color += texture2D(u_texture, vec2(_v_tex_coord.x-_distx, _v_tex_coord.y-_disty)); // left  up
    }
    //
    if (false)
    {
        _distx += _distx; // increase dist by 1 pixel
        _disty += _disty; // increase dist by 1 pixel
        _color += texture2D(u_texture, vec2(_v_tex_coord.x+_distx, _v_tex_coord.y));        // right
        _color += texture2D(u_texture, vec2(_v_tex_coord.x-_distx, _v_tex_coord.y));        // left
        _color += texture2D(u_texture, vec2(_v_tex_coord.x,        _v_tex_coord.y+_disty)); // down
        _color += texture2D(u_texture, vec2(_v_tex_coord.x,        _v_tex_coord.y-_disty)); // up
        
        _color += texture2D(u_texture, vec2(_v_tex_coord.x+_distx, _v_tex_coord.y-_disty)); // right up
        _color += texture2D(u_texture, vec2(_v_tex_coord.x-_distx, _v_tex_coord.y+_disty)); // left  down
        _color += texture2D(u_texture, vec2(_v_tex_coord.x+_distx, _v_tex_coord.y+_disty)); // right down
        _color += texture2D(u_texture, vec2(_v_tex_coord.x-_distx, _v_tex_coord.y-_disty)); // left  up
    }
    //
    _color /= 9.0;
    //_color /= 8.0;
    //_color /= 6.0;
    //_color /= 9.5;
    
    _color *= v_vColour;
    //_color.a = 0.5;
    gl_FragColor = _color;
}










/*
//
// Based off: https://github.com/h3rb/gml-pro/blob/bf2d2a38c5aa3d1ff73bcb605dbae8e16aa7022b/GML-Pro-Pack2.gmx/shaders/gles_DreamBlur.shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform sampler2D u_texture;
//uniform float     u_texture_w;
//uniform float     u_texture_h;
//uniform vec2 u_texel_size;
//uniform vec2 u_pixel_scale;
uniform float u_dist_x; // this is the same as 1 pixel distance
uniform float u_dist_y; // this is the same as 1 pixel distance
//uniform bool u_scanlines_effect_enabled;
//uniform float u_texture_scale;


void main()
{
    if (true)
    {
        float _distx = u_dist_x;
        float _disty = u_dist_y;
        vec4 _color = texture2D(u_texture, v_vTexcoord);
        
        if (true)
        {
            _color += texture2D(u_texture, vec2(v_vTexcoord.x+_distx, v_vTexcoord.y));        // right
            _color += texture2D(u_texture, vec2(v_vTexcoord.x-_distx, v_vTexcoord.y));        // left
            _color += texture2D(u_texture, vec2(v_vTexcoord.x,        v_vTexcoord.y+_disty)); // down
            _color += texture2D(u_texture, vec2(v_vTexcoord.x,        v_vTexcoord.y-_disty)); // up
            
            _color += texture2D(u_texture, vec2(v_vTexcoord.x+_distx, v_vTexcoord.y-_disty)); // right up
            _color += texture2D(u_texture, vec2(v_vTexcoord.x-_distx, v_vTexcoord.y+_disty)); // left  down
            _color += texture2D(u_texture, vec2(v_vTexcoord.x+_distx, v_vTexcoord.y+_disty)); // right down
            _color += texture2D(u_texture, vec2(v_vTexcoord.x-_distx, v_vTexcoord.y-_disty)); // left  up
        }
        //
        if (false)
        {
            _distx += _distx; // increase dist by 1 pixel
            _disty += _disty; // increase dist by 1 pixel
            _color += texture2D(u_texture, vec2(v_vTexcoord.x+_distx, v_vTexcoord.y));        // right
            _color += texture2D(u_texture, vec2(v_vTexcoord.x-_distx, v_vTexcoord.y));        // left
            _color += texture2D(u_texture, vec2(v_vTexcoord.x,        v_vTexcoord.y+_disty)); // down
            _color += texture2D(u_texture, vec2(v_vTexcoord.x,        v_vTexcoord.y-_disty)); // up
            
            _color += texture2D(u_texture, vec2(v_vTexcoord.x+_distx, v_vTexcoord.y-_disty)); // right up
            _color += texture2D(u_texture, vec2(v_vTexcoord.x-_distx, v_vTexcoord.y+_disty)); // left  down
            _color += texture2D(u_texture, vec2(v_vTexcoord.x+_distx, v_vTexcoord.y+_disty)); // right down
            _color += texture2D(u_texture, vec2(v_vTexcoord.x-_distx, v_vTexcoord.y-_disty)); // left  up
        }
        //
        _color /= 9.0;
        //_color /= 8.0;
        //_color /= 6.0;
        //_color /= 9.5;
        
        _color *= v_vColour;
        //_color.a = 0.5;
        gl_FragColor = _color;
    }
    else if (true)
    {
        vec4 _color  = texture2D(u_texture, v_vTexcoord);
             _color += texture2D(u_texture, v_vTexcoord+0.001);
             _color += texture2D(u_texture, v_vTexcoord+0.003);
             _color += texture2D(u_texture, v_vTexcoord+0.005);
             _color += texture2D(u_texture, v_vTexcoord+0.007);
             _color += texture2D(u_texture, v_vTexcoord+0.009);
             _color += texture2D(u_texture, v_vTexcoord+0.011);
        //
             _color += texture2D(u_texture, v_vTexcoord-0.001);
             _color += texture2D(u_texture, v_vTexcoord-0.003);
             _color += texture2D(u_texture, v_vTexcoord-0.005);
             _color += texture2D(u_texture, v_vTexcoord-0.007);
             _color += texture2D(u_texture, v_vTexcoord-0.009);
             _color += texture2D(u_texture, v_vTexcoord-0.011);
        //
             //_color.rgb = vec3(_color.r+_color.g+_color.b); // 
             _color.rgb = vec3((_color.r+_color.g+_color.b) / 3.0); // grayscale?
             _color /= 6.0;
             //_color /= 9.5;
        gl_FragColor = _color * v_vColour;
    }
}

*/
