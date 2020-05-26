tool
extends "res://addons/fast_fur_skin/fast_fur_skin.gd"

var SelectiveTexture = preload("res://addons/fast_fur_skin/fast_fur_grass_selective/textures/texture.png")
var SelectiveTextureSize = Vector2(1,1)

func _init():
	FAST_FUR_SKIN_SHADER = preload("res://addons/fast_fur_skin/fast_fur_grass_selective/fast_fur_grass_selective.shader")
	#update some variables for better look on big meshes
	FurScale = 80.0
	FurLength = 0.5
	

#override processing method
func generate_grass_shaders(i):
	var mat = .generate_grass_shaders(i)
	mat.set_shader_param("texture_selective", SelectiveTexture)
	mat.set_shader_param("selective_size", SelectiveTextureSize)
	return mat
	
func _get(property):
	if property == "FastFurGrass/SelectiveTexure":
		return SelectiveTexture
	if property == "FastFurGrass/SelectiveTexureScale":
		return SelectiveTextureSize
	return null

func _set(property, value):
	if property == "FastFurGrass/SelectiveTexure":
		SelectiveTexture = value
	if property == "FastFurGrass/SelectiveTexureScale":
		SelectiveTextureSize = value
	
func _get_property_list():
	return [
		{
			"name": "FastFurGrass/SelectiveTexure",
			"type": TYPE_OBJECT,
			"usage": PROPERTY_USAGE_DEFAULT,
			"hint": PROPERTY_HINT_RESOURCE_TYPE,
			"hint_string": "Texture"
		},
		{
			"name": "FastFurGrass/SelectiveTexureScale",
			"hint": PROPERTY_HINT_NONE,
			"usage": PROPERTY_USAGE_DEFAULT,
			"type": TYPE_VECTOR2
		}
	]