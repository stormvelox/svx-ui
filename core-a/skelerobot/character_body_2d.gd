extends CharacterBody2D

const SPEED : float = 300.0
const JUMP_VELOCITY : float = -400.0
const SQUISH_MIN : float = 0.0
var _originalScale : Vector2
@export_range(SQUISH_MIN, 2.0, 0.01) var SquishScale : float = 0.5

func _ready() -> void:
	_originalScale = scale

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
	
	# Handle jump.
	if Input.is_action_just_pressed("jump"):
		velocity.y = JUMP_VELOCITY
		
	# Handle crouch.
	if Input.is_action_just_pressed("crouch"):
		squish()
	if Input.is_action_just_released("crouch"):
		unsquish()
		
	if Input.is_action_just_pressed("utility_key_1"):
		pass
	
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("move_left", "move_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	move_and_slide()

func squish() -> void:
	scale.y *= SquishScale
func unsquish() -> void:
	scale.y = _originalScale.y
