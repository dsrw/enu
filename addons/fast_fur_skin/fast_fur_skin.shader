shader_type spatial;
render_mode blend_mix,depth_draw_opaque,cull_back,diffuse_burley,specular_schlick_ggx, world_vertex_coords;
uniform vec4 albedo : hint_color;
uniform vec4 albedo_offset : hint_color;
uniform sampler2D texture_pattern : hint_albedo;
uniform float specular : hint_range(0,1);
uniform float metallic : hint_range(0,1);
uniform float grow;
uniform float roughness : hint_range(0,1);
uniform vec3 uv1_offset;
uniform float uv1_scale;
uniform vec2 wind;
uniform float fur_length;
uniform float fur_shape;
uniform float gravity;

void vertex() {
	UV=UV*uv1_scale+uv1_offset.xy;
	
	VERTEX+=NORMAL*grow;
	//scrolling 
	float power_scale = pow(grow/fur_length,2);
	vec2 scrollSpeed = wind*power_scale;
	vec2 scrollValue = scrollSpeed * sin(TIME* wind.x)/10.0;
	UV += scrollValue;
	//gravity
	VERTEX += clamp(vec3(0.0, -1.0, 0.0),-1,1)*power_scale*gravity;
}




void fragment() {
	vec2 base_uv = UV;
	vec4 albedo_tex = texture(texture_pattern,base_uv);
	//ALBEDO = vec3(1.0,0.0,0.0) - pow(grow*7.0, 3);
	ALBEDO = mix(albedo.rgb, albedo_offset.rgb, pow(grow/fur_length, 2));
	//ALBEDO.r += sin(noise.r) * 0.1;
	ALPHA = albedo_tex.a;
	ALPHA_SCISSOR = 0.1 + pow(grow/fur_length, fur_shape);
	METALLIC = metallic;
	ROUGHNESS = roughness;
	SPECULAR = specular;
}
