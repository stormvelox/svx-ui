## Description here (if using class_name) also see:[br]
## https://docs.godotengine.org/en/latest/tutorials/scripting/gdscript/gdscript_documentation_comments.html?highlight=bbcode#bbcode-and-class-reference

#@tool
#class_name Unknown
extends Node
## # docstring
# doscstring test

## signals
#signal some_signal()

## enums
#enum InlineEnum {ZERO, ONE, TWO}
#enum SomeEnum {
#    ZERO,
#    ONE,
#    TWO,
#}

## constants
#const test : float =  0.00

## exported variables
#@export var show_debug : bool = false

## public variables
#var public_var : bool = true

## private variables
#var _private_var : bool = false

## onready variables
#@onready var onready_var : bool = true

## optional built-in virtual _init method
#func _init() -> void:
#    pass


## built-in virtual _ready method
func _ready() -> void:
	pass


## remaining built-in virtual methods
func _process(delta: float) -> void:
	pass


## public methods
#func public_method() -> void:
#    pass


## private methods
#func _on_some_signal() -> void:
#    pass
