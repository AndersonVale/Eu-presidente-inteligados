extends Node2D

const vidasBase = 7
var enigma = ""
var vidas = vidasBase
var completo = false

signal errouLetra
signal acertouLetra
signal enforcado
signal acertouPalavra
signal acertouTodas
signal letraJaEscolhida

var enigmas = [
	{
		"palavra" : "paralelepipedo",
		"dica" : "Pedra pra fazer ruas",
		"usado" : false
	},{
		"palavra" : "presidente",
		"dica" : "Cargo maior do executivo",
		"usado" : false
	},{
		"palavra" : "Axioma",
		"dica" : "Premissa considerada evidente e verdadeira",
		"usado" : false
	},{
		"palavra" : "Azulejo",
		"dica" : "Plaqueta cerâmica vidrada",
		"usado" : false
	},{
		"palavra" : "carapaça",
		"dica" : "qualquer cobertura rija us. como proteção.",
		"usado" : false
	}
]

func _ready():
	escolhePalavra()

func escolhePalavra():
	
	if !temEnigma():
		set_process_input(false)
		return

	completo = false
	$reiniciar.visible = false
	$dica.text = ""
	$chances.visible = false
	set_process_input(false)
	$digite.visible = false
	randomize()
	var loops=randi() % 20 + 10
	for c in $hbox2.get_children():
		c.queue_free()
	for c in $hbox.get_children():
			c.queue_free()
	enigma = enigmas[randi() % enigmas.size()]

	while(enigma.usado):
		enigma = enigmas[randi() % enigmas.size()]

	for a in enigma.palavra.to_upper():
		var label = $modelo.duplicate()
		label.text = a
		$hbox.add_child(label)

	yield(get_tree().create_timer(.15),"timeout")
	enigma.usado = true
	set_process_input(true)
	$digite.visible = true
	$chances.visible = true


func _input(event):
	
	if Input.is_action_just_pressed("ui_accept") and completo:
		escolhePalavra()
		vidas = vidasBase
		return

	if event is InputEventKey and event.pressed and !event.echo:
		if event.as_text().length() > 1:
			return

		for c in $hbox2.get_children():
			if c.text ==  event.as_text().to_upper():
				emit_signal("letraJaEscolhida")
				#$blip.play()
				c.blink()
				return

		var repetido = false
		for c in $hbox.get_children():
			if c.text ==  event.as_text().to_upper() and c.mostrando():
				emit_signal("letraJaEscolhida")
				c.blink()
				repetido = true
		
		if repetido:
			return

		$digite.visible = false
		set_process_input(false)
		var i = 0
		var achou = false
		for l in enigma.palavra.to_upper():
			if l == event.as_text().to_upper():
				$hbox.get_child(i).mostra()
				achou = true
			i += 1
		if !achou:
			var letra = $modelo2.duplicate()
			letra.text =event.as_text().to_upper()
			$hbox2.add_child(letra)
			#$error.play()
			vidas -= 1
			$chances.text = "CHANCES : " + str(vidas)
			if vidas < 4:
				$dica.text = "Dica: " + enigma.dica
			emit_signal("errouLetra")
		else:
			emit_signal("acertouLetra")
			#$success.play()
		verificaCompletou()

func verificaCompletou():
	if vidas <= 0:
		#$gameover.play()
		for c in $hbox.get_children():
			c.vermelha()
		emit_signal("enforcado")
		return
	var completou = true
	for c in $hbox.get_children():
		if !c.mostrando():
			completou = false
	if !completou:
		yield(get_tree().create_timer(1.5),"timeout")
		$digite.visible = true
		set_process_input(true)
	else:
		var completouTodas = true
		for c in $hbox.get_children():
				c.win()

		for e in enigmas:
			if !e.usado:
				completouTodas = false
				
		if completouTodas:
			emit_signal("acertouTodas")
		else:
			$reiniciar.visible = true
			completo = true
			set_process_input(true)
			emit_signal("acertouPalavra")

func temEnigma():
	var tem = false
	for e in enigmas:
		if !e.usado:
			tem = true
			break
	return tem
