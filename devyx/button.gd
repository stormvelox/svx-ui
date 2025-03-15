extends Control
## # docstring ## signals ## enums ## constants ## exported variables 
## public variables ## private variables ## onready variables
@onready var linkToWiki : String = "https://wiki.heatsynclabs.org/"
## optional built-in virtual _init method ## built-in virtual _ready method
func _ready() -> void:
	pass
## remaining built-in virtual methods
func _process(delta: float) -> void:
	pass
## public methods
func activate_browser_link() -> void:
	OS.shell_open(linkToWiki)
## private methods
func _on_pressed() -> void:
	activate_browser_link()
