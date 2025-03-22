## description
extends Control
#region variables
#signal
#enum
#const
const dashboard_co_id := 01
@export_group("TestGroup")
@export_custom(PROPERTY_HINT_FLAGS, "No") var test : FileDialog
@export var test2 : bool
var dashboard_ready : bool = true
#var _
#@onready
#endregion 
#region methods
func _ready() -> void:
	print_rich("")

func _process(delta: float) -> void:
	pass

func initialize_dashboard() -> bool:
	if(dashboard_ready):
		return true
	else:
		return false

#endregion
