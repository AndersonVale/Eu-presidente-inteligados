extends Node2D

var selection = 0

func _process(delta):

	$Hand.global_position = get_node("player" + str(selection)).global_position + Vector2(0 , 150)

	if Input.is_action_just_pressed("right"):
		selection += 1
		$blip.play()

	if Input.is_action_just_pressed("left"):
		selection -= 1
		$blip.play()

	selection = clamp(selection , 0 , 3)

	if Input.is_action_just_pressed("ui_accept"):
		$start.play()
		$music.stop()
		set_process(false)
		Global.skin = selection
		$Hand/anim.play("blink")
		yield(get_tree().create_timer(2),"timeout")
		get_tree().change_scene("res://Cenas/cena_Cutscene/cutscene.tscn")
