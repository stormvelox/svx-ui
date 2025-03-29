#region header
## Description
#@tool
class_name HeatSync3d
extends Node3D
## # docstring
# doscstring description
#endregion
#region variables
#signal
#enum
#const
const SPEED : float = 3.0
#@export
#var
#var _
#@onready
#endregion
#region methods
#func _
func _ready() -> void:
	pass
	
func _process(delta: float) -> void:
	
	var direction := Input.get_axis("move_left", "move_right")
	if direction:
		$Camera3D.position.x = direction * SPEED
	else:
		$Camera3D.position.x = move_toward($Camera3D.position.x, 0, SPEED)
#func
#endregion
