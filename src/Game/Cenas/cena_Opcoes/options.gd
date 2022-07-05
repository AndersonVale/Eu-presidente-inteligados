extends ColorRect

var bus_id

func _process(_delta): 
	bus_id = AudioServer.get_bus_index("Master")
	$audio_Icon.frame = bool(AudioServer.is_bus_mute(bus_id))
	if $menu/menu.is_pressed(): #volta para o menu 
		get_tree().change_scene("res://Cenas/cena_Menu/cena_Menu.tscn")
		get_tree().paused = false
	if $continue/continue.is_pressed(): #continua no mundo aberto
		get_tree().paused = false
		get_tree().change_scene("res://Cenas/cena_Mundo_Aberto/cena_Mundo_Aberto.tscn")
#	if Global.mudo == 1: 
#		$audio_Icon.frame = 1 #símbolo de mudo
#	if Global.mudo == 0: 
#		$audio_Icon.frame = 0 #símbolo de som

func _on_audio_pressed(): 
	AudioServer.set_bus_mute(bus_id, !AudioServer.is_bus_mute(bus_id))
	
#	if Global.mudo == 0: 
#		Global.mudo = 1 #ativa o som do jogo
#		$audio_Icon.frame = 1 #símbolo de mudo
#	else:
#		if Global.mudo ==  1:
#			Global.mudo = 0 #muta o som do jogo
#			$audio_Icon.frame = 0 #símbolo de som
