in vec4 color;
in vec2 texcoord;
in float trailTime;
in float simTime;

uniform float trailLength;
uniform float uv_fade;
uniform float alpha;

out vec4 fragColor;


void main()
{
	fragColor = color;
	float fadeFac = (simTime-trailTime)/trailLength;
	//if (fadeFac >1.0 ) {
	//  discard;
	//}

	fragColor.a=1.-fadeFac;
	if ((simTime-trailTime)>trailLength ||trailTime>simTime){
		discard;
	}

	fragColor.a*=uv_fade*alpha;  
}
