extends Node2D

@export var timeLeft : float
@onready var timer : Timer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var current_timer : Timer = _prep_timer(timer)
	current_timer.paused = true
	swooshControlUpward(%MainControlI, current_timer)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _prep_timer(timer: Timer) -> Timer:
	timer.start(timeLeft)
	return timer

func swooshControlUpward(control: Control, timer: Timer) -> void:
	control.position.y
