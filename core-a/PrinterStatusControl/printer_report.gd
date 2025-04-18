#region header
## Printer Report is a panel containing information about 3D printers.
class_name PrinterReport
extends PanelContainer
## # Printer Report
# Printer Report is a panel containing information about 3D printers.
#endregion
#region variables
#signal
enum StatusMode {
	ONLINE,
	OFFLINE
}

@export var printerName : String
@export var address : String

var onlineStylebox : StyleBoxFlat = load("res://core-a/PrinterStatusControl/stylebox_printer_online.tres")
var offlineStylebox : StyleBoxFlat = load("res://core-a/PrinterStatusControl/stylebox_printer_offline.tres")
var _status : StatusMode = StatusMode.OFFLINE
@onready var _statusText : Node = $VBoxContainer/HFlow/StatusText

@onready var http_request : HTTPRequest = $HTTPRequest

#endregion
#region methods
func _ready() -> void:
	# Set-up printer
	print_debug("_ready running...")
	$VBoxContainer/TopRow/Name.text = printerName
	$VBoxContainer/HFlow/StatusText.text = "OFFLINE"
	# Check if printer is online
	is_online(address)
	# End of Ready

# Process (every frame)
func _process(delta: float) -> void:
	pass

# Change the stylebox
func change_style(mode: StatusMode) -> void:
	print_debug("change_style() running...")
	if (mode == StatusMode.ONLINE):
		print_debug("Overriding theme ONLINE")
		add_theme_stylebox_override("panel", onlineStylebox)
	else:
		print_debug("Overriding theme OFFLINE")
		add_theme_stylebox_override("theme_override_styles/panel", offlineStylebox)

# Check if printer is online
func is_online(url: String) -> bool:
	
	print_debug("is_online() running...")
	var is_online : bool = false
	var was_pinged : bool = false
	
	# Ping thy server
	print_debug("Pinging server..")
	was_pinged = ping_server(url)
	
	if (was_pinged == true):
		set_online()
		is_online = true
	else:
		set_offline()
		is_online = false
	
	return is_online

# Ping a URL
func ping_server(url: String) -> bool:
	print_debug("Running 'ping_server()'")
	var err : Error
	# Do the HTTP Request
	err = http_request.request(url)
	# Handle HTTP errors
	if (err != OK):
		print_debug("Error is NOT OK")
		return false
	else:
		print("Able to reach the URL!! Wahooo!")
		return true

func set_online() -> void:
	print_debug("Printer is online!")
	_status = StatusMode.ONLINE
	change_style(_status)
	_statusText.text = "ONLINE"

func set_offline() -> void:
	print_debug("Printer is offline")
	_status = StatusMode.OFFLINE
	change_style(_status)
	_statusText.text = "OFFLINE"

#endregion
