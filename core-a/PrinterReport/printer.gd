class_name Printer extends Resource
@export_category("Printer")
@export var printerName : String
@export_color_no_alpha var printerColorCode : Color
@export var printerWebAddress : String
@export var printerMacAddress : String
@export var printerWikiLink : String



# Check if name is valid
func check_name(printer_name: String) -> bool:
	return true #TODO

# Check if http/https URL is valid
func check_url(url: String) -> bool:
	return true #TODO

# Check if MAC address is valid
func check_mac_address(mac_address: String) -> bool:
	return true #TODO
