## Spawner2D:[br]
## Allows spawning other 2D scenes.
class_name Spawner2D
extends Marker2D
## # Spawner2D - A
# doscstring test
@export var WhatToSpawn : Node
var next_spawn

func _ready() -> void:
	pass
	#next_spawn = load(WhatToSpawn.get_path())
	#next_spawn.set_process()

func _process(delta: float) -> void:
	pass
	
func spawn_once() -> void:
	spawn(1)

func spawn(count: int) -> void:
	next_spawn.new().set_process()
	

func _on_iversia_spawn_from_all_spawners() -> void:
	spawn_once()
