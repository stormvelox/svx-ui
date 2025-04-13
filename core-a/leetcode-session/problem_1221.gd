## Given a balanced string s, split it into some number of substrings such tha
class_name Problem1221
extends Node
#signal
#enum
#const
#@export
#region examples
var example1 : String = "RLRRLLRLRL" 
# Explanation: s can be split into "RL",
#  "RRLL", "RL", "RL", each substring contains same number of 'L' and 'R'.
var example2 : String = "RLRRRLLRLL"
# s can be split into "RL", "RRRLLRLL",
#  each substring contains same number of 'L' and 'R'. Note that s cannot be
#  split into "RL", "RR", "RL", "LR", "LL", because the 2nd and 5th substrings
#  are not balanced.
var example3 : String = "LLLLRRRR" 
# Explanation: s can be split into "LLLLRRRR".
#endregion
var output : int
#var _
#@onready
#func _
func _ready() -> void:
	## Try the examples
	try_examples()

func try_examples():
	## Test with the examples
	print("Trying \"", example1, "\"!")
	split_string(example1)
	print("Trying \"", example2, "\"!")
	split_string(example2)
	print("Trying \"", example3, "\"!")
	split_string(example3)
	
func split_string(v: Variant):
	## The main shindig
	pass

func ensure_constraints(s: String) -> bool:
	if (is_correct_length(s) && is_l_or_r(s)):
		return true
	else:
		return false

func is_correct_length(s: String) -> bool:
	## 2 <= s.length <= 1000
	var len = s.length()
	
	if (len >= 2 && len <= 1000):
		print("Length is correct.")
		return true
	else:
		print("Length is incorrect.")
		return false

func is_l_or_r(s: String) -> bool:
	## s is either 'L' or 'R'
	if(s.to_upper() == 'L' || 'R'):
		print("String '", s, "' is 'L' or 'R'.")
		return true
	else:
		return false

func is_balanced_string(s: String) -> bool:
	## s is a balanced string
	var l_count : int = s.count('L')
	var r_count : int = s.count('R')
	if(l_count == r_count):
		print("R and L counts are equal.")
		return true
	else:
		print("R and L counts are NOT equal.")
		return false

func _process(delta: float) -> void:
	pass
#func
#endregion


func _on_run_test_pressed() -> void:
	pass # Replace with function body.
