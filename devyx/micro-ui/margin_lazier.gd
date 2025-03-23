#region header
## Description
#@tool
class_name MarginLazier
extends MarginContainer
## # docstring
# doscstring description
#endregion
#region variables
#signal
#enum
#const
#@export
# Margin Container Lazier
@export var MarginLeft   : int = has_theme_constant_override("margin_left")
@export var MarginRight  : int = has_theme_constant_override("margin_right")
@export var MarginTop    : int = has_theme_constant_override("margin_top")
@export var MarginBottom : int = has_theme_constant_override("margin_bottom")
#var
#var _
#@onready
#endregion
#region methods
#func _
func _ready() -> void:
	MarginLeft = has_theme_constant_override("margin_left")
	has_theme_constant("")
#func _process(delta: float) -> void:
	#pass
#func
#endregion
