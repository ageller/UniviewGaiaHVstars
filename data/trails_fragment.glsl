in vec4 color;
in vec2 texcoord;
in float trailTime;
in float simTime;

uniform float uv_fade;
uniform float alpha;

out vec4 fragColor;


void main()
{
	fragColor = color;

	if (trailTime > simTime || trailTime < 0){
		discard;
	}
	
	fragColor.a*=uv_fade*alpha;  
}
