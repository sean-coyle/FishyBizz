//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec2 u_vtime;

void main()
{
	vec3 night_shade = vec3(0.52941, 0.5300, 0.039215);
	
	float time_percent = (u_vtime.x / u_vtime.y);
	
	vec4 color = texture2D( gm_BaseTexture, v_vTexcoord );
	
	color.rgb = color.rgb - (vec3(time_percent) * night_shade);
	
    gl_FragColor = color;
}
