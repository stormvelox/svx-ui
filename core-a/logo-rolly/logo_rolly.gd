## HSL Rolly Ball - It's the HSL logo, as a.. ball, that rolls![br]
## WahooOOOOOOOOOOOOOO!!!
class_name HSLRollyBall
extends Node2D
# signal
# enum
# const
@export var skew_speed : float = 0.01
@export var sprite : Sprite2D
#var
#var _
#@onready
#func _init
#func _ready
func _ready() -> void:
	if not sprite:
		print_debug("No sprite set")
#func _
func _process(delta: float) -> void:
	# Skew-spin the sprite, right? I might.
	if(skew >= 100.0):
		sprite.skew = -100.00
		#Flip, for effect. Effect 4!
		sprite.flip_v != sprite.flip_v
	#Spinny zone - I demand that this skews the dew
	sprite.skew += skew_speed

#func
#func _
