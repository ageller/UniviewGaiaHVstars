uniform float uv_fade;
uniform float alpha;

in vec4 color;
in vec2 texcoord;

out vec4 fragColor;

void main()
{

	

    fragColor = color;
    fragColor.a *= uv_fade*alpha;
    vec2 fromCenter = texcoord * 2 - vec2(1);
    float dist = dot(fromCenter, fromCenter);
    if (dist > 1){
    	discard;
    }
}
