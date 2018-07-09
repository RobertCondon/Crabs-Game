//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	vec4 base_col = v_vColour* texture2D(gm_BaseTexture, v_vTexcoord);
	base_col.rgb = pow(base_col.rgb, vec3(1.0/0.8));
    gl_FragColor = vec4(base_col.rgb - 0.05, base_col.a);
}
