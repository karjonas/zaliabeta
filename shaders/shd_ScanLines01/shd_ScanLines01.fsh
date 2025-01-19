// Simple passthrough fragment shader
//
// #############################################################
// Based off: GameMaker Casts - https://www.youtube.com/watch?v=jjUkQJJokCU
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float u_texture_w;
uniform float u_texture_h;

uniform float u_line_brightness;
uniform float u_line_height;


void main()
{
    vec4 _color = v_vColour * texture2D(gm_BaseTexture,v_vTexcoord);
    
    if (mod(floor(u_texture_h*v_vTexcoord.y), u_line_height*2.0) < u_line_height)
    {   _color.rgb *= vec3(u_line_brightness);  }
    
    gl_FragColor = _color;
}
// #############################################################


/*
// #############################################################
// Practicing shaders ---
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 sample_color = texture2D(gm_BaseTexture,v_vTexcoord);
    sample_color.rgb *= vec3(0.5,0.5,0.5); // darken color
    sample_color.r = 0.0; // remove all red
    gl_FragColor = sample_color;
}
// #############################################################
*/



/*
// #############################################################
varying vec2 v_vTexcoord;
uniform float time; // For animation, if needed
//uniform sampler2D gm_BaseTexture;
void main()
{
    vec2 uv = v_vTexcoord;
    uv.y += sin(uv.x * 120.0) * 0.005; // Simulate scanlines
    //uv.y += sin(uv.x * 120.0 + time * 5.0) * 0.005; // Simulate scanlines
    vec4 _color = texture2D(gm_BaseTexture, uv);
    gl_FragColor = vec4(_color.rgb * vec3(0.9, 1.0, 0.9), _color.a); // Slight green tint
}
// #############################################################
*/

/*
// #############################################################
varying vec2 v_vTexcoord;
//uniform sampler2D gm_BaseTexture;
uniform float time;

void main()
{
    vec4 base_color = texture2D(gm_BaseTexture, v_vTexcoord);

    // Create scan lines effect
    float scanline = sin(v_vTexcoord.y * 600.0 + time * 10.0) * 0.1;
    base_color.rgb -= scanline;

    gl_FragColor = base_color;
}
// #############################################################
*/

/*
// #############################################################
// Based off: https://github.com/h3rb/gml-pro/blob/master/GML-Pro-Pack2.gmx/shaders/gles_Scanlines2x.shader
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 sample_color = texture2D(gm_BaseTexture,v_vTexcoord);
    gl_FragColor = sample_color;
}
// #############################################################
*/
