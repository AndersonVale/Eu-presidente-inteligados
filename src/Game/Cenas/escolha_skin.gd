extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var selection = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Hand.global_position = get_node("player" + str(selection)).global_position + Vector2(0 , 150)
	
	if Input.is_action_just_pressed("right"):
		selection += 1
		
	if Input.is_action_just_pressed("left"):
		selection -= 1
		
	selection = clamp(selection , 0 , 3)
	
	if Input.is_action_just_pressed("ui_accept"):
		Global.skin = selection
		get_tree().change_scene("res://Cenas/cena_Cutscene/cutscene.tscn")
