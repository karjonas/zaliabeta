// Based off: https://github.com/h3rb/gml-pro/blob/bf2d2a38c5aa3d1ff73bcb605dbae8e16aa7022b/GML-Pro-Pack2.gmx/shaders/gles_Bloom.shader
varying vec2 v_vTexcoord;

uniform sampler2D u_texture;
uniform float     u_texture_w;
uniform float     u_texture_h;
uniform float u_dist_x; // u_texture_w / 1.0.  The distance to the next pixel as a fraction (0.0-1.0) (or the width of one pixel?)
uniform float u_dist_y; // u_texture_h / 1.0.  The distance to the next pixel as a fraction (0.0-1.0) (or the width of one pixel?)
uniform float u_a;
uniform float u_b;
uniform float u_c;
uniform float u_d;
uniform float u_e;
uniform float u_f;
uniform float u_g;
uniform bool u_scanlines_effect_enabled;


void main()
{
    if(!u_scanlines_effect_enabled 
    ||  true )
    //||  mod(floor(v_vTexcoord.y*u_texture_h), 2.0) == 1.0 )
    {
        vec4 _sum = vec4(0.0);
        _sum += texture2D(u_texture, v_vTexcoord+(vec2(u_dist_x*-4.0,u_dist_y*-3.0)*u_a)) * u_g;
        _sum += texture2D(u_texture, v_vTexcoord+(vec2(u_dist_x*-3.0,u_dist_y*-3.0)*u_a)) * u_g;
        _sum += texture2D(u_texture, v_vTexcoord+(vec2(u_dist_x*-2.0,u_dist_y*-3.0)*u_a)) * u_g;
        _sum += texture2D(u_texture, v_vTexcoord+(vec2(u_dist_x*-1.0,u_dist_y*-3.0)*u_a)) * u_g;
        _sum += texture2D(u_texture, v_vTexcoord+(vec2(u_dist_x* 0.0,u_dist_y*-3.0)*u_a)) * u_g;
        _sum += texture2D(u_texture, v_vTexcoord+(vec2(u_dist_x* 1.0,u_dist_y*-3.0)*u_a)) * u_g;
        _sum += texture2D(u_texture, v_vTexcoord+(vec2(u_dist_x* 2.0,u_dist_y*-3.0)*u_a)) * u_g;
        _sum += texture2D(u_texture, v_vTexcoord+(vec2(u_dist_x* 3.0,u_dist_y*-3.0)*u_a)) * u_g;
        //                                                                              //
        _sum += texture2D(u_texture, v_vTexcoord+(vec2(u_dist_x*-4.0,u_dist_y*-2.0)*u_a)) * u_g;
        _sum += texture2D(u_texture, v_vTexcoord+(vec2(u_dist_x*-3.0,u_dist_y*-2.0)*u_a)) * u_g;
        _sum += texture2D(u_texture, v_vTexcoord+(vec2(u_dist_x*-2.0,u_dist_y*-2.0)*u_a)) * u_g;
        _sum += texture2D(u_texture, v_vTexcoord+(vec2(u_dist_x*-1.0,u_dist_y*-2.0)*u_a)) * u_g;
        _sum += texture2D(u_texture, v_vTexcoord+(vec2(u_dist_x* 0.0,u_dist_y*-2.0)*u_a)) * u_g;
        _sum += texture2D(u_texture, v_vTexcoord+(vec2(u_dist_x* 1.0,u_dist_y*-2.0)*u_a)) * u_g;
        _sum += texture2D(u_texture, v_vTexcoord+(vec2(u_dist_x* 2.0,u_dist_y*-2.0)*u_a)) * u_g;
        _sum += texture2D(u_texture, v_vTexcoord+(vec2(u_dist_x* 3.0,u_dist_y*-2.0)*u_a)) * u_g;
        //                                                                              //
        _sum += texture2D(u_texture, v_vTexcoord+(vec2(u_dist_x*-4.0,u_dist_y*-1.0)*u_a)) * u_g;
        _sum += texture2D(u_texture, v_vTexcoord+(vec2(u_dist_x*-3.0,u_dist_y*-1.0)*u_a)) * u_g;
        _sum += texture2D(u_texture, v_vTexcoord+(vec2(u_dist_x*-2.0,u_dist_y*-1.0)*u_a)) * u_g;
        _sum += texture2D(u_texture, v_vTexcoord+(vec2(u_dist_x*-1.0,u_dist_y*-1.0)*u_a)) * u_g;
        _sum += texture2D(u_texture, v_vTexcoord+(vec2(u_dist_x* 0.0,u_dist_y*-1.0)*u_a)) * u_g;
        _sum += texture2D(u_texture, v_vTexcoord+(vec2(u_dist_x* 1.0,u_dist_y*-1.0)*u_a)) * u_g;
        _sum += texture2D(u_texture, v_vTexcoord+(vec2(u_dist_x* 2.0,u_dist_y*-1.0)*u_a)) * u_g;
        _sum += texture2D(u_texture, v_vTexcoord+(vec2(u_dist_x* 3.0,u_dist_y*-1.0)*u_a)) * u_g;
        //                                                                              //
        _sum += texture2D(u_texture, v_vTexcoord+(vec2(u_dist_x*-4.0,u_dist_y* 0.0)*u_a)) * u_g;
        _sum += texture2D(u_texture, v_vTexcoord+(vec2(u_dist_x*-3.0,u_dist_y* 0.0)*u_a)) * u_g;
        _sum += texture2D(u_texture, v_vTexcoord+(vec2(u_dist_x*-2.0,u_dist_y* 0.0)*u_a)) * u_g;
        _sum += texture2D(u_texture, v_vTexcoord+(vec2(u_dist_x*-1.0,u_dist_y* 0.0)*u_a)) * u_g;
        _sum += texture2D(u_texture, v_vTexcoord+(vec2(u_dist_x* 0.0,u_dist_y* 0.0)*u_a)) * u_g;
        _sum += texture2D(u_texture, v_vTexcoord+(vec2(u_dist_x* 1.0,u_dist_y* 0.0)*u_a)) * u_g;
        _sum += texture2D(u_texture, v_vTexcoord+(vec2(u_dist_x* 2.0,u_dist_y* 0.0)*u_a)) * u_g;
        _sum += texture2D(u_texture, v_vTexcoord+(vec2(u_dist_x* 3.0,u_dist_y* 0.0)*u_a)) * u_g;
        //                                                                              //
        _sum += texture2D(u_texture, v_vTexcoord+(vec2(u_dist_x*-4.0,u_dist_y* 1.0)*u_a)) * u_g;
        _sum += texture2D(u_texture, v_vTexcoord+(vec2(u_dist_x*-3.0,u_dist_y* 1.0)*u_a)) * u_g;
        _sum += texture2D(u_texture, v_vTexcoord+(vec2(u_dist_x*-2.0,u_dist_y* 1.0)*u_a)) * u_g;
        _sum += texture2D(u_texture, v_vTexcoord+(vec2(u_dist_x*-1.0,u_dist_y* 1.0)*u_a)) * u_g;
        _sum += texture2D(u_texture, v_vTexcoord+(vec2(u_dist_x* 0.0,u_dist_y* 1.0)*u_a)) * u_g;
        _sum += texture2D(u_texture, v_vTexcoord+(vec2(u_dist_x* 1.0,u_dist_y* 1.0)*u_a)) * u_g;
        _sum += texture2D(u_texture, v_vTexcoord+(vec2(u_dist_x* 2.0,u_dist_y* 1.0)*u_a)) * u_g;
        _sum += texture2D(u_texture, v_vTexcoord+(vec2(u_dist_x* 3.0,u_dist_y* 1.0)*u_a)) * u_g;
        //                                                                              //
        _sum += texture2D(u_texture, v_vTexcoord+(vec2(u_dist_x*-4.0,u_dist_y* 2.0)*u_a)) * u_g;
        _sum += texture2D(u_texture, v_vTexcoord+(vec2(u_dist_x*-3.0,u_dist_y* 2.0)*u_a)) * u_g;
        _sum += texture2D(u_texture, v_vTexcoord+(vec2(u_dist_x*-2.0,u_dist_y* 2.0)*u_a)) * u_g;
        _sum += texture2D(u_texture, v_vTexcoord+(vec2(u_dist_x*-1.0,u_dist_y* 2.0)*u_a)) * u_g;
        _sum += texture2D(u_texture, v_vTexcoord+(vec2(u_dist_x* 0.0,u_dist_y* 2.0)*u_a)) * u_g;
        _sum += texture2D(u_texture, v_vTexcoord+(vec2(u_dist_x* 1.0,u_dist_y* 2.0)*u_a)) * u_g;
        _sum += texture2D(u_texture, v_vTexcoord+(vec2(u_dist_x* 2.0,u_dist_y* 2.0)*u_a)) * u_g;
        _sum += texture2D(u_texture, v_vTexcoord+(vec2(u_dist_x* 3.0,u_dist_y* 2.0)*u_a)) * u_g;
        
        
        vec4     _COLOR = texture2D(u_texture,v_vTexcoord);
             if (_COLOR.r<u_e) gl_FragColor = _sum*_sum*u_b + _COLOR;
        else if (_COLOR.r<u_f) gl_FragColor = _sum*_sum*u_c + _COLOR;
        else                   gl_FragColor = _sum*_sum*u_d + _COLOR;
    }
}






/*
varying vec2 v_vTexcoord;
uniform sampler2D bloom_texture;

void main()
{
    vec4  _BASE_COLOR = texture2D(gm_BaseTexture, v_vTexcoord);
    vec4 _BLOOM_COLOR = texture2D( bloom_texture, v_vTexcoord);

    // Combine bloom with original scene
    gl_FragColor = _BASE_COLOR + (_BLOOM_COLOR*0.5); // Adjust bloom intensity
}

*/
