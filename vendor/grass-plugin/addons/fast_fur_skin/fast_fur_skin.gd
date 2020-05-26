tool
extends Spatial

var FAST_FUR_SKIN_SHADER = preload("res://addons/fast_fur_skin/fast_fur_skin.shader")
var FAST_FUR_SKIN_BASE_SHADER = preload("res://addons/fast_fur_skin/fast_fur_skin_base.shader")

var SkinLayers = 16
var SkinColor = Color("478a4d")
var FurColorOffset = Color("447f49")
var PatternTexture = preload("res://addons/fast_fur_skin/textures/patt.png")
var Specular = 0.5
var Metalic = 0.0
var Roughness = 1.0
var FurLength = 0.2
var FurScale = 10.0
var FurShape = 6.0
var FurWindEffect = Vector2()
var FurGravity = 0.0;
var CustomSkinMaterial = false

func generate_grass_shaders(i):
	var mat = ShaderMaterial.new()
	mat.set_shader(FAST_FUR_SKIN_SHADER)
	mat.set_shader_param("albedo", SkinColor)
	mat.set_shader_param("grow",FurLength/SkinLayers*i)
	mat.set_shader_param("texture_pattern", PatternTexture)
	mat.set_shader_param("uv1_scale", FurScale)
	mat.set_shader_param("uv1_offset", Vector3(0.0, 0.0, 0.0))
	mat.set_shader_param("albedo_offset", FurColorOffset)
	mat.set_shader_param("specular", Specular)
	mat.set_shader_param("metalic", Metalic)
	mat.set_shader_param("roughness", Roughness)
	mat.set_shader_param("wind", FurWindEffect)
	mat.set_shader_param("fur_length", FurLength)
	mat.set_shader_param("fur_shape", FurShape)
	mat.set_shader_param("gravity", FurGravity)
	return mat;

func get_base_material():
	var mat = ShaderMaterial.new()
	mat.set_shader(FAST_FUR_SKIN_BASE_SHADER)
	mat.set_shader_param("albedo", SkinColor)
	mat.set_shader_param("roughness",Roughness)
	mat.set_shader_param("metallic",Metalic)
	mat.set_shader_param("specular",Specular)
	return mat
	
func apply_material(node, material):
	var active_mat = node.get_surface_material(0)
	if active_mat == null or CustomSkinMaterial == false:
		node.set_surface_material(0, material)
	else:
		active_mat.next_pass = material.next_pass;

func generate():
	var mat = get_base_material()
	var next_mat = mat;
	for i in range(0, SkinLayers):
		next_mat.next_pass = generate_grass_shaders(i)
		next_mat = next_mat.next_pass
	for node in get_children():
		if node.is_class("MeshInstance"):
			apply_material(node, mat)
	

# Called when the node enters the scene tree for the first time.
func _ready():
	generate()

#Below methods only for real time editing preview 
func _get(property):
	if property == "FastFurSkin/SkinLayers":
		return SkinLayers
	if property == "FastFurSkin/SkinColor":
		return SkinColor
	if property == "FastFurSkin/FurColorOffset":
		return FurColorOffset
	if property == "FastFurSkin/PatternTexture":
		return PatternTexture
	if property == "FastFurSkin/Specular":
		return Specular
	if property == "FastFurSkin/Metalic":
		return Metalic
	if property == "FastFurSkin/Roughness":
		return Roughness
	if property == "FastFurSkin/FurLength":
		return FurLength
	if property == "FastFurSkin/FurScale":
		return FurScale
	if property == "FastFurSkin/FurWindEffect":
		return FurWindEffect
	if property == "FastFurSkin/FurShape":
		return FurShape
	if property == "FastFurSkin/FurGravity":
		return FurGravity
	if property == "FastFurSkin/CustomSkinMaterial":
		return CustomSkinMaterial
	return null
		
func _set(property, value):
	print("Property name %s" % property)
	if property == "FastFurSkin/SkinLayers":
		SkinLayers = value
	if property == "FastFurSkin/SkinColor":
		SkinColor = value
	if property == "FastFurSkin/FurColorOffset":
		FurColorOffset = value
	if property == "FastFurSkin/PatternTexture":
		PatternTexture = value
	if property == "FastFurSkin/Specular":
		Specular = value
	if property == "FastFurSkin/Metalic":
		Metalic = value
	if property == "FastFurSkin/Roughness":
		Roughness = value
	if property == "FastFurSkin/FurLength":
		FurLength = value
	if property == "FastFurSkin/FurScale":
		FurScale = value
	if property == "FastFurSkin/FurWindEffect":
		FurWindEffect = value
	if property == "FastFurSkin/FurShape":
		FurShape = value
	if property == "FastFurSkin/FurGravity":
		FurGravity = value
	if property == "FastFurSkin/CustomSkinMaterial":
		CustomSkinMaterial = value
	generate()

func _get_property_list():
	return [
		{
			"hint": PROPERTY_HINT_NONE,
			"usage": PROPERTY_USAGE_DEFAULT,
			"name": "FastFurSkin/SkinLayers",
			"type": TYPE_INT
		},
		{
			"hint": PROPERTY_HINT_NONE,
			"usage": PROPERTY_USAGE_DEFAULT,
			"name": "FastFurSkin/CustomSkinMaterial",
			"type": TYPE_BOOL
		},
		{
			"hint": PROPERTY_HINT_NONE,
			"usage": PROPERTY_USAGE_DEFAULT,
			"name": "FastFurSkin/SkinColor",
			"type": TYPE_COLOR
		},
		{
			"hint": PROPERTY_HINT_NONE,
			"usage": PROPERTY_USAGE_DEFAULT,
			"name": "FastFurSkin/FurColorOffset",
			"type": TYPE_COLOR
		},
		{
			"name": "FastFurSkin/PatternTexture",
			"type": TYPE_OBJECT,
			"usage": PROPERTY_USAGE_DEFAULT,
			"hint": PROPERTY_HINT_RESOURCE_TYPE,
			"hint_string": "Texture"
		},
		{
			"hint": PROPERTY_HINT_NONE,
			"usage": PROPERTY_USAGE_DEFAULT,
			"name": "FastFurSkin/Specular",
			"type": TYPE_REAL
		},
		{
			"hint": PROPERTY_HINT_NONE,
			"usage": PROPERTY_USAGE_DEFAULT,
			"name": "FastFurSkin/Metalic",
			"type": TYPE_REAL
		},
		{
			"hint": PROPERTY_HINT_NONE,
			"usage": PROPERTY_USAGE_DEFAULT,
			"name": "FastFurSkin/Roughness",
			"type": TYPE_REAL
		},
		{
			"hint": PROPERTY_HINT_NONE,
			"usage": PROPERTY_USAGE_DEFAULT,
			"name": "FastFurSkin/FurLength",
			"type": TYPE_REAL
		},
		{
			"hint": PROPERTY_HINT_NONE,
			"usage": PROPERTY_USAGE_DEFAULT,
			"name": "FastFurSkin/FurScale",
			"type": TYPE_REAL
		},
		{
			"hint": PROPERTY_HINT_NONE,
			"usage": PROPERTY_USAGE_DEFAULT,
			"name": "FastFurSkin/FurShape",
			"type": TYPE_REAL
		},
		{
			"hint": PROPERTY_HINT_NONE,
			"usage": PROPERTY_USAGE_DEFAULT,
			"name": "FastFurSkin/FurWindEffect",
			"type": TYPE_VECTOR2
		},
		{
			"hint": PROPERTY_HINT_NONE,
			"usage": PROPERTY_USAGE_DEFAULT,
			"name": "FastFurSkin/FurGravity",
			"type": TYPE_REAL
		},
	]