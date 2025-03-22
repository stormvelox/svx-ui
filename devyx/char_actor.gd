#region header
## Description here (if using class_name) also see:[br]
## https://docs.godotengine.org/en/latest/tutorials/scripting/gdscript/gdscript_documentation_comments.html?highlight=bbcode#bbcode-and-class-reference

#@tool
#class_name Unknown
extends Node2D
## # docstring
# doscstring test
#endregion header
#region variables
#region signals
#endregion
#region enums
#enum InlineEnum {ZERO, ONE, TWO}
#enum SomeEnum {
#    ZERO,
#    ONE,
#    TWO,
#}
#endregion
#region constants
#const test : float =  0.00
#endregion
#region exported variables
#@export var show_debug : bool = false
#endregion
#region public variables
#var public_var : bool = true
#endregion
#region private variables
#var _private_var : bool = false
#endregion
#region onready variables
#@onready var onready_var : bool = true
#endregion
#endregion variables
#region methods
#region optional built-in virtual _init method
#func _init() -> void:
#    pass
#endregion

#region built-in virtual _ready method
func _ready() -> void:
	pass
#endregion

#region remaining built-in virtual methods
func _process(delta: float) -> void:
	pass


#endregion
#region public methods
#func public_method() -> void:
#    pass

#endregion
#region private methods
#func _on_some_signal() -> void:
#    pass

#endregion
#endregion methods
