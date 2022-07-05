extends Node2D

var podeAcessar = false

func _ready(): #muta o jogo
#	if Global.mudo == 1:
#		$AudioStreamPlayer2D.stop()
#	if Global.mudo == 0:
#		$AudioStreamPlayer2D.play()
	#Global.posicao_vertical += 42 #modifica a posição personagem no mundo aberto
	$aviao.connect("area_entered" , self , "on_regiao_entered")
	$aviao.connect("area_exited" , self , "on_regiao_exited")

func on_regiao_entered(regiao):
	
	$mapas_text.text = regiao.nome
	
	podeAcessar = !regiao.id_anterior || regiao.id_anterior.completa()

	if  podeAcessar:
		$mapas_text.text = "Pressione barra de espaço para jogar!"
		regiao.hilight()
		Global.fase = regiao.id
		$blip.play()
	else:
		$mapas_text.text = "Região " + regiao.nome + " bloqueada..."
		Global.fase = null

		
func on_regiao_exited(regiao):
	podeAcessar = false
	regiao.downlight()
	Global.fase = null
	$mapas_text.text = "Use as setas para viajar pelo Brasil!"

#Centro
#func _on_centro_body_entered(_body):
#	if Global.fase >= 3:
#		$centro/centro.frame = 1 #colore a região central
#		$MenuItem2.modulate = Color.orange #colore a label
#	else:
#		$mapas_text.text = "Região Centro-Oeste bloqueada"
#func _on_centro_body_exited(_body):
#	$centro/centro.frame = 0 #descolore essa região
#	$mapas_text.text = "Use as setas para viajar pelo Brasil!"
#
##Nordeste
#func _on_Nordeste_body_entered(_body):
#	if Global.fase >= 4:
#		$Nordeste/nordeste.frame = 1 #colore a região nordeste
#		$MenuItem2.modulate = Color.red #colore a label
#	else:
#		$mapas_text.text = "Região Nordeste bloqueada"
#func _on_Nordeste_body_exited(_body):
#	$Nordeste/nordeste.frame = 0 #descolore essa região
#	$mapas_text.text = "Use as setas para viajar pelo Brasil!"
#
##Sudeste
#func _on_Sudeste_body_entered(_body):
#	if Global.fase >= 2:
#		$Sudeste/sudeste.frame = 1 #colore a região sudeste
#		$MenuItem2.modulate = Color.yellow #colore a label
#	else:
#		$mapas_text.text = "Região Sudeste bloqueada"
#func _on_Sudeste_body_exited(_body):
#	$Sudeste/sudeste.frame = 0 #descolore essa região
#	$mapas_text.text = "Use as setas para viajar pelo Brasil!"
#
##Sul
#func _on_Sul_body_entered(_body):
#	$Sul/sul.frame = 1 #colore a região sul
#	$mapas_text.text = "Pressione barra de espaço para jogar!"
#	$MenuItem2.modulate = Color.cyan #colore a label
#	sul = 1
#func _on_Sul_body_exited(_body):
#	$Sul/sul.frame = 0 #descolore essa região
#	$mapas_text.text = "Use as setas para viajar pelo Brasil!"
#	sul = 0
#
##Norte
#func _on_Norte_body_entered(_body):
#	if Global.fase >= 5:
#		$Norte/norte.frame = 1 #colore a região norte
#		$MenuItem2.modulate = Color.chartreuse #colore a label
#	else:
#		$mapas_text.text = "Região Norte bloqueada"
#func _on_Norte_body_exited(_body):
#	$Norte/norte.frame = 0 #descolore essa região
#	$mapas_text.text = "Use as setas para viajar pelo Brasil!"

func _process(_delta):
	
	$Space.visible = bool(podeAcessar)
	
	
	if Input.is_action_pressed("ui_accept") and Global.fase and podeAcessar:
		$aviao.connect("area_entered" , self , "on_regiao_entered")
		$aviao.disconnect("area_exited", self , "on_regiao_exited")
		
		get_tree().change_scene("res://Cenas/cena_Mundo_Aberto/cena_Mundo_Aberto.tscn")
#			if Global.reiniciar == 0: #se ele começou o jogo agora, vai diretamente para o mundo aberto
#				get_tree().change_scene("res://Cenas/cena_Mundo_Aberto/cena_Mundo_Aberto.tscn")
#			if Global.reiniciar == 1: #comando que só é atendido quando o personagem apresenta algum progresso na campanha
#				if Global.subiuRua == 0:
#					Global.posicao_vertical -= 42 #envia o personagem para a mesma posição do mundo aberto
#					get_tree().change_scene("res://Cenas/cena_Mundo_Aberto/cena_Mundo_Aberto.tscn")
#				else: #caso ele tenha saído do mapa subindo a rua do mundo aberto, envia o personagem para baixo da posição de quando entrou
#					get_tree().change_scene("res://Cenas/cena_Mundo_Aberto/cena_Mundo_Aberto.tscn")
	
		pass
	if $aviao.position.x > 1300: #retorna o avião para o início da tela caso ele esteja no final horizontal
		$aviao.position.x = -100
	if $aviao.position.x < -100: #retorna o avião para o início da tela caso ele esteja no final horizontal
		$aviao.position.x = 1300

	if $aviao.position.y < -100: #retorna o avião para o início da tela caso ele esteja no final vertical
		$aviao.position.y = 790
	if $aviao.position.y > 790: #retorna o avião para o início da tela caso ele esteja no final vertical
		$aviao.position.y = -100
