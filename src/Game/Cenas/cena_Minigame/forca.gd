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
#	{
#		"palavra" : "Quociente Eleitoral",
#		"dica" : "metodo de distribuicao das vagas do legislativo nas eleições pelo sistema proporcional de votos ",
#		"usado" : false
#	},
#	{
#		"palavra" : "Clausula Petrea",
#		"dica" : "Clausulas da Constituicao Federal que nao podem ser alteradas",
#		"usado" : false
#	},
	{
		"palavra" : "prefeito",
		"dica" : "chefe do poder executivo municipal",
		"usado" : false
	},
	{
		"palavra" : "PEC",
		"dica" : "Proposta para alterar a Constituicao Federal",
		"usado" : false
	},
	{
		"palavra" : "Vereador",
		"dica" : "Representante do poder legislativo municipal",
		"usado" : false
	},
	{
		"palavra" : "Governador",
		"dica" : "Chefe do poder executivo estadual",
		"usado" : false
	},
	{
		"palavra" : "municipio",
		"dica" : "Divisão do Estado que tem autonomia administrativa",
		"usado" : false
	},{
		"palavra" : "Impeachment",
		"dica" : "Processo político-criminal que visa destituir alguém de um cargo governativo",
		"usado" : false
	},{
		"palavra" : "Imposto",
		"dica" : "tributo obrigatório cobrado pelo governo",
		"usado" : false
	},
	{
		"palavra" : "tributo",
		"dica" : "contribuição monetária imposta pelo Estado ao povo, sobre mercadorias etc",
		"usado" : false
	},{
		"palavra" : "cidadao",
		"dica" : "indivíduo que, como membro de um Estado, possui deveres e usufrui de direitos civis e políticos",
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
	for c in $caixaTexto/hbox.get_children():
			c.queue_free()
	enigma = enigmas[randi() % enigmas.size()]

	while(enigma.usado):
		enigma = enigmas[randi() % enigmas.size()]

	var maiorLargura = 0
	
	var ps =  enigma.palavra.rsplit(" " , true , 1)
	for p in ps:
		if p.length() > maiorLargura:
			maiorLargura = p.length()

	#print(maiorLargura)
	$caixaTexto/hbox.columns = maiorLargura + 1
	
	for a in enigma.palavra.to_upper():
		var label = $modelo.duplicate()
		label.text = a
		$caixaTexto/hbox.add_child(label)

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
		for c in $caixaTexto/hbox.get_children():
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
				$caixaTexto/hbox.get_child(i).mostra()
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
		for c in $caixaTexto/hbox.get_children():
			c.vermelha()
		emit_signal("enforcado")
		return
	var completou = true
	for c in $caixaTexto/hbox.get_children():
		if !c.mostrando():
			completou = false
	if !completou:
		yield(get_tree().create_timer(1.5),"timeout")
		$digite.visible = true
		set_process_input(true)
	else:
		var completouTodas = true
		for c in $caixaTexto/hbox.get_children():
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
