//
// Based off: https://github.com/DragoniteSpam-GameMaker-Tutorials/TutorialSaturationAndBrightnessShader/blob/master/shaders/shd_saturation_brightness/shd_saturation_brightness.fsh
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float u_saturation;
uniform float u_brightness;

uniform int u_effect_type;


vec3 to_hsv(vec3 _COLOR) // _COLOR: rgb
{
    vec4 _K = vec4(0.0, -1.0/3.0, 2.0/3.0, -1.0); // _K: xyzw
    vec4 _P = mix(vec4(_COLOR.b,_COLOR.g, _K.w,    _K.z), vec4(_COLOR.g,_COLOR.b, _K.x,_K.y), step(_COLOR.b,_COLOR.g)); // _P: xyzw
    vec4 _Q = mix(vec4(    _P.x,    _P.y, _P.w,_COLOR.r), vec4(_COLOR.r,    _P.y, _P.z,_P.x), step(    _P.x,_COLOR.r)); // _Q: xyzw
    
    float _D = _Q.x - min(_Q.w,_Q.y);
    float _E = 0.00001;
    
    return vec3(abs(_Q.z+(_Q.w-_Q.y) / ((6.0*_D)+_E)), _D/(_Q.x+_E), _Q.x); // hsv: xyz
}


vec3 to_rgb(vec3 _COLOR) // _COLOR: hsv
{
    vec4 _K = vec4(1.0, 2.0/3.0, 1.0/3.0, 3.0); // _K: xyzw
    
    vec3 _a = vec3(_COLOR.x+_K.x, _COLOR.x+_K.y, _COLOR.x+_K.z);
    vec3 _P = abs((fract(_a)*6.0) - vec3(_K.www)); // _P: xyz
    
    _a = clamp(_P-vec3(_K.xxx), vec3(0.0), vec3(1.0));
    return mix(vec3(_K.xxx), _a, _COLOR.y) * _COLOR.z; // rgb
}


vec3 adjust_saturation_and_brightness(vec3 _COLOR) // _COLOR: rgb
{
    vec3 _hsv = to_hsv(_COLOR); // _hsv: xyz
    _hsv.y = clamp(_hsv.y+u_saturation, 0.0,1.0);
    
         if (u_effect_type==1) _hsv.z = clamp(_hsv.z+u_brightness, 0.0,1.0);
    else if (u_effect_type==2) _hsv.z = clamp(_hsv.z*u_brightness, 0.0,1.0);
    else if (u_effect_type==3)
    {
        if (_hsv.z>=0.65)      _hsv.z = clamp(_hsv.z*u_brightness, 0.0,1.0);
    }
    //else                       _hsv.z = clamp(_hsv.z+u_brightness, 0.0,1.0);
    //_hsv.y = max(0.0, _hsv.y+u_saturation);
    //_hsv.z = max(0.0, _hsv.z+u_brightness);
    return to_rgb(_hsv);
}


void main()
{
    gl_FragColor = v_vColour * texture2D(gm_BaseTexture,v_vTexcoord);
    gl_FragColor.rgb = adjust_saturation_and_brightness(gl_FragColor.rgb);
}

