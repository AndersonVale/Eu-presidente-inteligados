extends Node2D

var pronto = false

func _ready(): 
	set_process(false)
	$musica_cutscene.play()
	$inicio_jogo/jogar.hide()
	$inicio_jogo.play("intro")
	yield(get_tree().create_timer(2.2), "timeout")
	iniciaFalas()

func _process(_delta):
	#if $inicio_jogo/jogar.is_pressed():
	if Input.is_action_just_pressed("ui_accept"):
		get_tree().change_scene("res://Cenas/cena_MapaBrasil/mapa_Brasil.tscn")

func iniciaFalas():
	$NPC_texto.hide_textbox()
	$NPC_texto.fila_texto("???: Olá, Presidente! Aperte a barra de espaço para continuar falando comigo")
	$NPC_texto.fila_texto("Presidente: Presidente? onde eu estou????")
	$NPC_texto.fila_texto("???: Como assim, Presidente? Hoje é primeiro dia do seu mandato, não lembra?")
	$NPC_texto.fila_texto("Presidente: Pare com essas brincadeiras, onde eu estou e quem é você?")
	$NPC_texto.fila_texto("???: Oh, desculpe por não me apresentar, meu nome é Ana")
	$NPC_texto.fila_texto("Ana: Acho que seu problema de memória te afetou novamente...")
	$NPC_texto.fila_texto("Presidente: É, eu realmente tenho problema de memória, acho que tinha esquecido disso também...")
	$NPC_texto.fila_texto("Ana: Presidente, mesmo com memória ou não, nosso país está cheio de problemas e você deve trabalhar duro para nos ajudar....")
	$NPC_texto.fila_texto("Ana: Que tal começar pela região Sul?")
	$NPC_texto.mudar_estado($NPC_texto.State.PRONTO)

func _on_NPC_texto_texto_completo():
	#$inicio_jogo/jogar.show()
	$pressSpace.visible = true
	yield(get_tree().create_timer(1),"timeout")
	set_process(true)
