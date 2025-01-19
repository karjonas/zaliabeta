

//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

// Get palette as texture
uniform sampler2D Palette;

// Color Offset Index
uniform float Offset;


void main()
{
    // reference color
    // gm_BaseTexture = the sprite image
    vec4 ref = texture2D(gm_BaseTexture, v_vTexcoord);
    // vec2 uv_coord = vec2(column, row);
    vec2 uv_coord = vec2(ref.r, Offset);
    // vec2 uv_coord = vec2(0.013, Offset);
    
    vec4 new_color = texture2D(Palette, uv_coord);
    gl_FragColor = new_color;
    gl_FragColor.a = ref.a;
}
