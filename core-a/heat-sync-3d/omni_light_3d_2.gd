#region header
## Description
@tool
class_name OmniLight3d2
extends OmniLight3D
## # docstring
# doscstring description
#endregion
#region variables
#signal
#enum
const MAX_XMOVE := 200.00
#@export
var t : Tween
@export var movement_amount : float = 3
@export var tween_duration : float = 2.00
#var _
#@onready 
#endregion
#region methods
#func _
func _ready() -> void:
	t = get_tree().create_tween()
	#Seemingly... the first movification.
	t.tween_property(
		self,
		"position:y",
		movement_amount,
		tween_duration).as_relative()
	t.tween_property(
		self,
		"rotation:y",
		movement_amount,
		tween_duration).as_relative()
	
	t.set_ease(Tween.EASE_IN_OUT)
	t.set_trans(Tween.TRANS_CIRC)
	
	t.set_loops(INF)
	
	t.tween_property(
		self,
		"position:y",
		-movement_amount,
		tween_duration).as_relative()
	t.play()
func _process(delta: float) -> void:
	pass
#func
#endregion


func _on_woosh_slider_drag_ended(value_changed: bool) -> void:
	pass # Replace with function body.
