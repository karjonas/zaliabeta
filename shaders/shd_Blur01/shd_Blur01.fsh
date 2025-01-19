//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform sampler2D u_texture;
uniform float     u_texture_w;
uniform float     u_texture_h;
uniform float u_dist_x; // this is the same as 1 pixel distance
uniform float u_dist_y; // this is the same as 1 pixel distance
//uniform bool u_scanlines_effect_enabled;
uniform float u_texture_scale;
//uniform float u_texture_scale;


void main()
{
    float _texture_scale = floor(u_texture_scale);
    //int _texture_scale = u_texture_scale;
    //_texture_scale = min(1,_texture_scale);
    //float _texture_scale = u_texture_scale;
    float _distx = u_dist_x;
    float _disty = u_dist_y;
    //float _distx2 = _distx*float(_texture_scale);
    //float _disty2 = _disty*float(_texture_scale);
    //float _distx2 = _distx*_texture_scale;
    //float _disty2 = _disty*_texture_scale;
    bool _RIGHT = true;
    bool _LEFT  = true;
    bool _DOWN  = true;
    bool _UP    = true;
    if (_texture_scale>1.0)
    {
        float _sub_pixel_x = mod(floor(u_texture_w*v_vTexcoord.x), _texture_scale);
        float _sub_pixel_y = mod(floor(u_texture_h*v_vTexcoord.y), _texture_scale);
        //int _sub_pixel_x = mod(floor(u_texture_w*v_vTexcoord.x), _texture_scale);
        //int _sub_pixel_y = mod(floor(u_texture_h*v_vTexcoord.y), _texture_scale);
        //int _sub_pixel_x = mod(int(floor(u_texture_w*v_vTexcoord.x)), _texture_scale);
        //int _sub_pixel_y = mod(int(floor(u_texture_h*v_vTexcoord.y)), _texture_scale);
        //int _sub_pixel_x = int(mod(floor(u_texture_w*v_vTexcoord.x), _texture_scale));
        //int _sub_pixel_y = int(mod(floor(u_texture_h*v_vTexcoord.y), _texture_scale));
        //if (mod(floor(u_texture_h*v_vTexcoord.y), u_line_height*2.0) < u_line_height)
        
        _RIGHT = bool(_sub_pixel_x==_texture_scale-1.0);
        _LEFT  = bool(_sub_pixel_x==0.0);
        _DOWN  = bool(_sub_pixel_y==_texture_scale-1.0);
        _UP    = bool(_sub_pixel_y==0.0);
    }
    
    vec4 _color = texture2D(u_texture, v_vTexcoord);
    //float _BRIGHTNESS = dot(_color.rgb, vec3(0.2126, 0.7152, 0.0722)); // Luminance
    
    if (_RIGHT 
    ||  _LEFT 
    ||  _DOWN 
    ||  _UP )
    {
        if (_RIGHT)          _color += texture2D(u_texture, vec2(v_vTexcoord.x+_distx, v_vTexcoord.y));
        if (_LEFT)           _color += texture2D(u_texture, vec2(v_vTexcoord.x-_distx, v_vTexcoord.y));
        if (_DOWN)           _color += texture2D(u_texture, vec2(v_vTexcoord.x,        v_vTexcoord.y+_disty));
        if (_UP)             _color += texture2D(u_texture, vec2(v_vTexcoord.x,        v_vTexcoord.y-_disty));
        
        if (_RIGHT && _UP)   _color += texture2D(u_texture, vec2(v_vTexcoord.x+_distx, v_vTexcoord.y-_disty));
        if (_RIGHT && _DOWN) _color += texture2D(u_texture, vec2(v_vTexcoord.x+_distx, v_vTexcoord.y+_disty));
        if (_LEFT  && _UP)   _color += texture2D(u_texture, vec2(v_vTexcoord.x-_distx, v_vTexcoord.y-_disty));
        if (_LEFT  && _DOWN) _color += texture2D(u_texture, vec2(v_vTexcoord.x-_distx, v_vTexcoord.y+_disty));
        
        _color /= 9.0;
        //_color /= 8.0;
        //_color /= 6.0;
        //_color /= 9.5;
        
        _color *= v_vColour;
        //_color.a = 0.5;
    }
    
    gl_FragColor = _color;
}




/*
varying vec2 v_vTexcoord;
uniform vec2 u_resolution;
uniform vec2 u_direction; // (1.0, 0.0) for horizontal, (0.0, 1.0) for vertical

void main()
{
    vec2 _TEX_OFFSET = u_direction / u_resolution; // Calculate texture offset
    vec4 _result = vec4(0.0);

    // Simple blur kernel
    _result += texture2D(gm_BaseTexture, v_vTexcoord + (_TEX_OFFSET * -2.0)) * 0.1;
    _result += texture2D(gm_BaseTexture, v_vTexcoord + (_TEX_OFFSET * -1.0)) * 0.2;
    _result += texture2D(gm_BaseTexture, v_vTexcoord)                        * 0.4;
    _result += texture2D(gm_BaseTexture, v_vTexcoord + (_TEX_OFFSET *  1.0)) * 0.2;
    _result += texture2D(gm_BaseTexture, v_vTexcoord + (_TEX_OFFSET *  2.0)) * 0.1;

    gl_FragColor = _result;
}
*/
