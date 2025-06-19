extends Node2D
@onready var animPlayer: AnimationPlayer = $"../CutScene/AnimationPlayer"


func _ready() -> void:
	DialogueManager.show_dialogue_balloon(load("res://dialogue/cs_office.dialogue"), "office")
	await (DialogueManager.dialogue_ended)
	animPlayer.play("cs_office")
	await get_tree().create_timer(4.0).timeout
	DialogueManager.show_dialogue_balloon(load("res://dialogue/cs_office.dialogue"), "banter")
	await DialogueManager.dialogue_ended
	await get_tree().create_timer(2.0).timeout 
	DialogueManager.show_dialogue_balloon(load("res://dialogue/cs_office.dialogue"), "banter2")
	await animPlayer.animation_finished
	DialogueManager.show_dialogue_balloon(load("res://dialogue/cs_office.dialogue"), "office")
	await animPlayer.animation_finished
	animPlayer.play("cs_officeEND")
