#region header
## Printer Report is a panel containing information about 3D printers.
#@tool
class_name PrinterReport
extends PanelContainer
## # Printer Report
# Printer Report is a panel containing information about 3D printers.
#endregion
#region variables
#signal
#enum
#const
@export var printerName : String = "Printer-Name"
#var
#var _
@onready var http_request: HTTPRequest = $HTTPRequest
#endregion
#region methods
#func _
func _ready() -> void:
	pass
func _process(delta: float) -> void:
	pass
#func
#endregion
