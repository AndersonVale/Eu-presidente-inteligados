extends Node2D

var vidas = 10
var acertos = 0
var completou = false

func _ready():
	Global.posicao_vertical += 18
	$memoria.preparaTabuleiro()
	$memoria.start()
	updateHud()
	
func _input(event):
	if completou and Input.is_action_just_pressed("ui_accept"):
		Global.voltaMundoAberto()
		
	if Input.is_action_just_pressed("ui_cancel"):
		Global.voltaMundoAberto()

func updateHud():
	$hud/acertos.text = "  Acertos : " + str(acertos)
	$hud/vidas.text = "Vidas : " + str(vidas) + "  "

func _on_memoria_flipped(c):
	$flip.play()


func _on_memoria_mactch(c1, c2):
	$success.play()
	acertos += 1
	updateHud()


func _on_memoria_miss(c1, c2):
	vidas -= 1
	updateHud()
	if vidas <= 0:
		$gameover.play()
		$memoria.stop()
		yield(get_tree().create_timer(4.3),"timeout")
		print("saindo da tela...")
		Global.contador += acertos
		Global.voltaMundoAberto()
	else:
		$error.play()

func _on_memoria_selected(c):
	$blip.play()


func _on_memoria_completou():
	completou = true
	$pressSpace.visible = true
	
