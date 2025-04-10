@tool
class_name Printer extends Resource
@export_category("Printer")
@export var printerName : String
@export_color_no_alpha var printerColorCode : Color
@export var printerWebAddress : String
@export var printerMacAddress : String
@export var printerWikiLink : String
@export_tool_button("CheckEverything", "res://icon.svg") var test


# Check if name is valid
func check_name(printer_name: String) -> bool:
	print("Checking printer name \'", printer_name, "\'...")
	print("Name check successful.")
	return true #TODO

# Check if http/https URL is valid
func check_url(url: String) -> bool:
	print("Checking URL \'", url, "\'...")
	print("URL check successful.")
	return true #TODO

# Check if MAC address is valid
func check_mac_address(mac_address: String) -> bool:
	print("Checking printer MAC address \'", mac_address, "\'...")
	print("MAC address check successful.")
	return true #TODO
