#  "let me break it down for you, mark"
extends Control

#Title
@onready var infotitle: Label = $PanelContainer/VBoxContainer/HBoxContainer/ColorRect/VBoxContainer/INFOTITLE

#Description
@onready var infodesc: Label = $PanelContainer/VBoxContainer/HBoxContainer/ColorRect/VBoxContainer/INFODESC

@onready var vsync: Button = $PanelContainer/VBoxContainer/HBoxContainer/VBoxContainer/VSYNC
@onready var fullscreen: Button = $PanelContainer/VBoxContainer/HBoxContainer/VBoxContainer/FULLSCREEN

@onready var up: Button = $PanelContainer/VBoxContainer/HBoxContainer/VBoxContainer/UP
@onready var left: Button = $PanelContainer/VBoxContainer/HBoxContainer/VBoxContainer/LEFT
@onready var down: Button = $PanelContainer/VBoxContainer/HBoxContainer/VBoxContainer/DOWN
@onready var right: Button = $PanelContainer/VBoxContainer/HBoxContainer/VBoxContainer/RIGHT
@onready var interact: Button = $PanelContainer/VBoxContainer/HBoxContainer/VBoxContainer/INTERACT





#VSYNC, FULLSCREEN, MOVEMNT
func _ready() -> void:
	print(DisplayServer.WINDOW_MODE_FULLSCREEN)

# TOGGLES
func _on_vsync_toggled(toggled_on: bool) -> void:
	pass


func _on_fullscreen_toggled(toggled_on: bool) -> void:
	pass # Replace with function body.


func _on_up_pressed() -> void:
	pass # Replace with function body.


func _on_left_pressed() -> void:
	pass # Replace with function body.


func _on_down_pressed() -> void:
	pass # Replace with function body.


func _on_right_pressed() -> void:
	pass # Replace with function body.


func _on_interact_pressed() -> void:
	pass # Replace with function body.

# HOVER



func _on_vsync_mouse_entered() -> void:
	infotitle.text = "VSYNC"
	infodesc.text = "Limits FPS to displays current refresh rate. Turning off may affect how physics objects function."
	var current_mode = DisplayServer.window_get_vsync_mode(0)
	if current_mode == DisplayServer.VSyncMode.VSYNC_ENABLED:
		infodesc.text = "Limits FPS to displays current refresh rate. Turning off may affect how physics objects function. \n\nEnabled."
	elif current_mode == DisplayServer.VSyncMode.VSYNC_ADAPTIVE:
		infodesc.text = "Limits FPS to displays current refresh rate. Turning off may affect how physics objects function. \n\nAdaptive Mode Enabled."
	elif current_mode == DisplayServer.VSyncMode.VSYNC_MAILBOX:
		infodesc.text = "Limits FPS to displays current refresh rate. Turning off may affect how physics objects function. \n\nMailbox Mode Enabled."
	else:
		infodesc.text = "Limits FPS to displays current refresh rate. Turning off may affect how physics objects function. \n\nDisabled."
		


func _on_fullscreen_mouse_entered() -> void:
	infotitle.text = "FULLSCREEN"
	var current_mode = DisplayServer.window_get_mode(0)
	if current_mode == DisplayServer.WINDOW_MODE_FULLSCREEN:
		infodesc.text = "ON"
	else:
		infodesc.text = "OFF"


func _on_up_mouse_entered() -> void:
	infodesc.text = ""
	infotitle.text = "UP MOVEMENT"


func _on_left_mouse_entered() -> void:
	infodesc.text = ""
	infotitle.text = "LEFT MOVEMENT"


func _on_down_mouse_entered() -> void:
	infodesc.text = ""
	infotitle.text = "DOWN MOVEMENT"


func _on_right_mouse_entered() -> void:
	infodesc.text = ""
	infotitle.text = "RIGHT MOVEMENT"


func _on_interact_mouse_entered() -> void:
	infodesc.text = ""
	infotitle.text = "INTERACTION ACTION"
