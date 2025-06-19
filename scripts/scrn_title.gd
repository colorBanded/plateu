extends Control


func _on_play_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/titlemenu/saves.tscn")


func _on_options_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/titlemenu/settings.tscn")


func _on_quit_pressed() -> void:
	get_tree().quit()
