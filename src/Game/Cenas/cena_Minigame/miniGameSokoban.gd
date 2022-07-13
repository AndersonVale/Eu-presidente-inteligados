extends Node2D

func _ready():
	$sokoban.nivel = Global.ultimo_sokoban
	$sokoban.start() 

func _on_sokoban_undone():
	$error.play()

func _on_sokoban_moved():
	pass

func _on_sokoban_exited():
	Global.voltaMundoAberto()

func _on_sokoban_finished():
	Global.contador += 1
	Global.ultimo_sokoban = $sokoban.nivel
	$success.play()

func _on_sokoban_started():
	$HUD/nivel.text = "Nível: " + str($sokoban.nivel + 1)

func _on_sokoban_levels_completed():
	Global.voltaMundoAberto()

func _on_sokoban_box_pushed():
	$arrasta.play()


func _on_sokoban_box_fited():
	$blip.play()
