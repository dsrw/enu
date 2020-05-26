tool
extends EditorPlugin


const FAST_FUR_SKIN = preload("res://addons/fast_fur_skin/fast_fur_skin.gd")
const FAST_FUR_GRASS = preload("res://addons/fast_fur_skin/fast_fur_grass_selective/fast_fur_grass_selective.gd")

static func get_icon(name):
	return load("res://addons/fast_fur_skin/%s.png" % name)

func _enter_tree():
	print("Fast fur skin plugin Enter tree")
	add_custom_type("FastFurSkin", "Spatial", FAST_FUR_SKIN, get_icon("icon-fur"))
	add_custom_type("FastFurGrassSelective", "Spatial", FAST_FUR_GRASS, get_icon("icon-fur"))
    # Initialization of the plugin goes here

func _exit_tree():
	print("Fast fur skin plugin Exit tree")
	remove_custom_type("FastFurSkin")
	remove_custom_type("FastFurGrassSelective")
