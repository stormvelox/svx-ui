extends AnimatedSprite2D # This is what it's based on

# keyword yourName : type = value #
var rotatation_speed : float = 0.02
var use_scrollbar    : bool  = false
var toggle_rotate    : bool  = false

func doTheRotatey() -> void: # Rotate!!
	if (toggle_rotate == true):
		self.rotate(rotatation_speed)
		if (use_scrollbar == false):
			self.rotate(0.07) # some default
		else:
			return # do nuffin'
	# --- #
	return
	
func _process(delta: float) -> void: # _process == every frame(not physics)
	doTheRotatey()
	return
