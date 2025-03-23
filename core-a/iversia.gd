#region header
## Iversia - The main node.
#@tool
class_name Iversia
extends Node
## # Iversia is averse t'ya
# Nay, I am ja-kidn
#endregion
#region variables
#signal
signal SpawnFromAllSpawners
#enum
#const
#@export
#var
var systems_checked : bool
var systems_failing : bool
#var _
#@onready
#endregion
#region methods
#func _
func _init() -> void:
	systems_checked = false
	systems_failing = true
func _ready() -> void:
	var someTestSystems = PackedDataContainer.new()
	systems_failing = systems_check(someTestSystems)

#func _

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _input(event: InputEvent) -> void:
	if (Input.is_action_just_pressed("utility_key_1")):
		emit_signal("SpawnFromAllSpawners")


func _on_spawner_2d_do_the_spawn() -> void:
	pass # Replace with function body.

#func
func systems_check(systems: PackedDataContainer) -> bool:
	var systems_good = false # As if we know they're good yet? Pff
	
	send_systems_to_doctor_y_u_broken(systems) # Y. U. Broken will check 'em
	# Return Systems Goodness/Ungoodliness
	if (systems_good == false):
		push_warning("Systems Check Init = NOT Good!")
		return false # systems NOT good
	elif (systems_good == true):
		return true # systems are a-go, go-go, and dancing
	else:
		push_error("How?") # Neither true nor false? Boolasphemy!
	return false # If all else fails, fail else all iF

func send_systems_to_doctor_y_u_broken(systems) -> MissingResource:
	return MissingResource.new()
#endregion
