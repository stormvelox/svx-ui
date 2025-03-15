## Character Script - for the uh... rolly HSL Logo thing :3
extends CharacterBody2D
## signals
## enums
## constants
const DEF_SPEED : float = 0.04
## exported variables
## public variables
## private variables
## onready variables

## optional built-in virtual _init method
## built-in virtual _ready method
func _ready() -> void:
	pass


## remaining built-in virtual methods
func _unhandled_input(event: InputEvent) -> void:
	if (event.is_action("jump")):
		jump(DEF_SPEED*200)
	elif (event.is_action_pressed("jump")):
		jump(DEF_SPEED*200)
	return

## public methods
func jump(power: float) -> void:
	velocity.y += power
	print_debug("jumping!")
	return
	
func crouch() -> void:
	return
	
func move_right() -> void:
	return
	
func move_left() -> void:
	get_real_velocity()
	return

## private methods
