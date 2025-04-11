#region header
## Printer Report is a panel containing information about 3D printers.
class_name PrinterReport
extends PanelContainer
## # Printer Report
# Printer Report is a panel containing information about 3D printers.
#endregion
#region variables
#signal
#enum
const onlineStylebox 	: StyleBoxFlat = preload(
	"res://core-a/PrinterStatusControl/stylebox_printer_online.tres")
const offlineStylebox 	: StyleBoxFlat = preload(
	"res://core-a/PrinterStatusControl/stylebox_printer_offline.tres")

@export var printerName : String = "unknown_name"
@export var address 	: String
var _status 			: bool   = false
var _statusText 		: String = "unknown_status"
#var
#var _
@onready var http_request: HTTPRequest = $HTTPRequest
#endregion
#region methods

# Ready
func _ready() -> void:
	$VBoxContainer/TopRow/Name.text = printerName
	_status = is_online(address)
	


# Process (every frame)
func _process(delta: float) -> void:
	pass

# Change the stylebox
func change_style() -> void:
	if (is_online(address)):
		add_theme_stylebox_override("panel", onlineStylebox)
	else:
		add_theme_stylebox_override("panel", offlineStylebox)

# Check if printer is online
func is_online(url: String) -> bool:
	var status : bool = false
	# Ping server, actually
	status = ping_server(url)
	if (status == true):
		_statusText = "ONLINE"
	else:
		_statusText = "OFFLINE"
	return status

# Ping a URL
func ping_server(url: String) -> bool:
	var err : Error
	# 
	err = http_request.request(url)
	if (err != OK):
		return false
	else:
		print("Able to reach the URL!! Wahooo!")
		return true

#endregion
