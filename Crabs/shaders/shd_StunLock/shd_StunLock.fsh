varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float pixelH;
uniform float pixelW;
//From shuan spualding and xorshaders. It's a mix of both shuan's outline shader and xor colourshader.
void main()
{
    vec2 offsetx;
    offsetx.x = pixelW;
    vec2 offsety;
    offsety.y = pixelH;
   
    float alpha = texture2D(gm_BaseTexture, v_vTexcoord).a;
   
    alpha = max(alpha, texture2D(gm_BaseTexture, v_vTexcoord + offsetx).a);
    alpha = max(alpha, texture2D(gm_BaseTexture, v_vTexcoord - offsetx).a);
    alpha = max(alpha, texture2D(gm_BaseTexture, v_vTexcoord + offsety).a);
    alpha = max(alpha, texture2D(gm_BaseTexture, v_vTexcoord - offsety).a);

	//colour stuff
	vec4 Color = texture2D( gm_BaseTexture, v_vTexcoord );
    vec3 lum = vec3(0.299, 0.587, 0.114);
    float bw = dot( Color.rgb, lum);//black and white result

    //gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	gl_FragColor = vec4( bw * vec3( 0.4, 0.8, 1.0), Color.a);
    gl_FragColor.a = alpha;
}