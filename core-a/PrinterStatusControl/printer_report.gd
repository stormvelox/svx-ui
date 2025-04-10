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
@export var statusText : String = "ONNLINE"
#var
#var _
@onready var http_request: HTTPRequest = $HTTPRequest
#endregion
#region methods
#func _
func _ready() -> void:
	$HFlow/Name.text = printerName
	
func _process(delta: float) -> void:
	pass
#func
# Check address
func check_address(url: String) -> bool:
	var err : Error
	err = http_request.request(url)
	if (err != OK):
		return false
	else:
		print("Able to reach the URL!! Wahooo!")
		return true
#endregion
