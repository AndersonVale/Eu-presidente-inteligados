extends Node2D



func _ready():
	pass # Replace with function body.

func _input(event):
	if Input.is_action_just_pressed("ui_cancel"):
		Global.voltaMundoAberto()

func _on_forca_acertouLetra():
	$success.play()


func _on_forca_acertouPalavra():
	Global.contador += 1


func _on_forca_acertouTodas():
	yield(get_tree().create_timer(3),"timeout")
	Global.voltaMundoAberto()


func _on_forca_enforcado():
	#$forca.visible = false
	$fimDeJogoLbl.visible = true
	$gameover.play()
	yield(get_tree().create_timer(5),"timeout")
	Global.voltaMundoAberto()


func _on_forca_errouLetra():
	$error.play()


func _on_forca_letraJaEscolhida():
	$blip.play()


func _on_escolhe_letras_letraSelecionada(l):
	$forca.escolheLetra(l)
