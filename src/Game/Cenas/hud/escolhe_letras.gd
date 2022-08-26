extends Node2D


const letras = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

var index = 0

signal letraSelecionada(l)

func _ready():
	if !Global.isMobile():
		queue_free()
		pass

func _process(delta):
	if Input.is_action_just_pressed("ui_left"):
		index -= 1

	if Input.is_action_just_pressed("ui_right"):
		index += 1

	if Input.is_action_just_released("ui_accept"):
		emit_signal("letraSelecionada" , letraAtual())

	if index < 0:
		index = letras.length() - 1
	
	if index > letras.length() - 1:
		index = 0

	$letra.text = letraAtual()


func letraAtual():
	return letras.substr(index , 1)


func _on_escolhe_letras_visibility_changed():
	set_process(visible)
