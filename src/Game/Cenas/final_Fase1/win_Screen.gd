extends Node2D

#Animação da ana
func _ready():
	$win_1.play("ana_fase1")
	Global.posicao_horizontal = 594
	Global.posicao_vertical = 94


func _input(event):
	if Input.is_action_just_pressed("ui_accept"):
		get_tree().change_scene("res://Cenas/cena_MapaBrasil/mapa_Brasil.tscn")

#botão de voltar para o mundo aberto
#func _on_Button_pressed():
#	get_tree().change_scene("res://Cenas/cena_MapaBrasil/mapa_Brasil.tscn")

##Trocar cor do botão
#func _on_Button_mouse_entered():
#	$Button/MenuItem2.modulate = Color.cornflower
#func _on_Button_mouse_exited():
#	$Button/MenuItem2.modulate = Color.white
