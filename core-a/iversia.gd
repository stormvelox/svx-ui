extends Node

signal SpawnFromAllSpawners
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _input(event: InputEvent) -> void:
	if (Input.is_action_just_pressed("utility_key_1")):
		emit_signal("SpawnFromAllSpawners")


func _on_spawner_2d_do_the_spawn() -> void:
	pass # Replace with function body.
