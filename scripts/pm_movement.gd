extends CharacterBody2D

@onready var animChar: AnimatedSprite2D = $AnimatedSprite2D

var speed_current = 70

var speed_sprinting = 200

func _ready():
	animChar.flip_h = false
	animChar.play("idle_fwd")

func _unhandled_key_input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("ui_accept"):
		DialogueManager.show_dialogue_balloon(load("res://dialogue/dialogue.dialogue"))


	

func get_input():
	var input_direction = Input.get_vector("pm_left", "pm_right", "pm_up", "pm_down")
	
	velocity = input_direction * speed_current
	if Input.is_action_pressed("pm_left"):
		animChar.flip_h = false
		animChar.play("walk_side")
	elif Input.is_action_pressed("pm_right"):
		animChar.flip_h = true
		animChar.play("walk_side")
	elif Input.is_action_pressed("pm_up"):
		animChar.flip_h = false
		animChar.play("walk_bwd")
	elif Input.is_action_pressed("pm_down"):
		animChar.flip_h = false
		animChar.play("walk_fwd")
	elif Input.is_action_just_released("pm_left"):
		animChar.flip_h = false
		animChar.play("idle_side")
	elif Input.is_action_just_released("pm_right"):
		animChar.flip_h = true
		animChar.play("idle_side")
	elif Input.is_action_just_released("pm_down"):
		animChar.flip_h = false
		animChar.play("idle_fwd")
	elif Input.is_action_just_released("pm_up"):
		animChar.flip_h = false
		animChar.play("idle_bwd")
	
	if Input.is_action_pressed("pm_sprint"):
		speed_current = 120
	else:
		speed_current = 70




func _physics_process(_delta):
	get_input()
	move_and_slide()
