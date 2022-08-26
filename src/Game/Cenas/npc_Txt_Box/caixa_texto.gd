extends CanvasLayer
const CHAR_READ_RATE = 0.02
onready var texto_container = $caixaDeTexto
onready var iniciar = $caixaDeTexto/MarginContainer/HBoxContainer/asterisco
onready var finalizar = $caixaDeTexto/MarginContainer/HBoxContainer/proximo
onready var texto = $caixaDeTexto/MarginContainer/HBoxContainer/texto

signal texto_completo

#estados da text box
enum State {
	PRONTO,
	LENDO,
	TERMINADO,
	INATIVO
}
var estado_atual = State.INATIVO
var texto_fila = []
var id_npc = 0
#fila de textos

func _ready():
	pass

func _txt():

	return

	if id_npc == 0 and false:
		pass
#		#print("Estado inicial: State.PRONTO")
#		hide_textbox()
#		fila_texto("???: Olá, Presidente! Aperte a barra de espaço para continuar falando comigo")
#		fila_texto("Presidente: Presidente? onde eu estou????")
#		fila_texto("???: Como assim? Você é o presidente hoje é primeiro dia do seu mandato, não lembra?")
#		fila_texto("Presidente: Pare com essas brincadeiras, onde eu estou e quem é você?")
#		fila_texto("???: Oh, desculpe por não me apresentar, meu nome é Ana")
#		fila_texto("Ana: Acho que seu problema de memória te afetou novamente...")
#		fila_texto("Presidente: É, eu realmente tenho problema de memória, acho que tinha esquecido disso também...")
#		fila_texto("Ana: Senhor presidente, mesmo com memória ou não, noss país está cheio de problemas e você deve trabalhar duro para nos ajudar....")
#		fila_texto("Ana: Que tal começar pela região Sul?")


#	if id_npc == 1:
#		print("Estado inicial: State.PRONTO")
#		hide_textbox()
#		fila_texto("Ana: Quando terminarmos de conversar, você poderá usar as setas do seu teclado para se movimentar pelo mapa")
#		fila_texto("Ana: Estamos rodeados de problemas no país. Precisamos de sua ajuda!")
#		fila_texto("Ana: Ao encontrar uma porta que apresenta um ponto de exclamação vermelho, o problema que nos afeta será apresentado.")
#		fila_texto("Ana: Fique atento às noticias do jornal e faça as escolhas que considerar ser melhor para o país.")
#		fila_texto("Ana: Está vendo essa barra no canto superior esquerdo da tela? Ela indica o quão bom o seu governo está")
#		fila_texto("Ana: Agora explore o mapa e ajude a tornar o Brasil um lugar melhor!")
#
#	if id_npc == 2 and Global.indexMercado != 12 and false:
#		print("Estado inicial: State.PRONTO")
#		hide_textbox()
#		fila_texto("Rodrigo: Eu adoro comprar neste mercado!")
#		fila_texto("Rodrigo: É uma pena que os preços estejam tão caros ultimamente...")
#		fila_texto("Rodrigo: Isso tem feito até alguns pararem de comprar aqui...")
#		fila_texto("Rodrigo: No fundo do mercado você pode conferir como os preços estão absurdos ")
	
#	elif id_npc == 2 and Global.indexMercado == 12 and false:
#		if Global.acertouMercado == 1:
#			print("Estado inicial: State.PRONTO")
#			hide_textbox()
#			fila_texto("Rodrigo: Muito obrigado por resolver nosso problema, presidente!")
#			fila_texto("Rodrigo: A partir de sua decisão correta, o mercado melhorou e as pessoas passaram a gostar ainda mais de comprar aqui!")
#			fila_texto("Rodrigo: Veja só! O crescimento foi tanto que ele até comprou o terreno ao lado e virou um supermercado!")
#		elif false:
#			print("Estado inicial: State.PRONTO")
#			hide_textbox()
#			fila_texto("Rodrigo: Presidente, infelizmente o problema não foi solucionado corretamente")
#			fila_texto("Rodrigo: Presidente, isso fez com que os consumidores diminuíssem e o mercado fechou...")
#	if id_npc == 3 and Global.venceu_minigame == 0 and false:
#		print("Estado inicial: State.PRONTO")
#		hide_textbox()
#		fila_texto("Pablo: Oi! está perdendo muitos pontos durante as problemáticas?")
#		fila_texto("Pablo: Caso deseje tentar recuperar seus pontos, entre na porta ao lado e jogue o minigame!")
	
#	elif id_npc == 3 and Global.venceu_minigame == 1 and false:
#		print("Estado inicial: State.PRONTO")
#		hide_textbox()
#		fila_texto("Pablo: Não posso acreditar! Você venceu mesmo o minigame!")
#		fila_texto("Pablo: Parabéns! Estou sem palavras! Poucos dos que tentaram conseguiram vencer esse desafio!")
#	elif id_npc == 3 and Global.venceu_minigame == 2 and false:
#		print("Estado inicial: State.PRONTO")
#		hide_textbox()
#		fila_texto("Pablo: Você quase conseguiu, presidente! Continue tentando!")
#		fila_texto("Pablo: Tenho certeza que você vencerá em uma outra tentativa!")
#
	if id_npc == 9  and Global.contador_easter_egg == 9 and false:
		print("Estado inicial: State.PRONTO")
		hide_textbox()
		fila_texto("Caramelo: Parabéns por ter finalizado a campanha perfeitamente!")
		fila_texto("Caramelo: Com toda certeza você é um ótimo presidente!.")
		fila_texto("Caramelo: Quer dizer... auau!")
		
	if id_npc == 10 and Global.indexPrefeitura != 9 and Global.indexEscola != 7 and Global.indexMercado != 11 and Global.index > 5  and false:
		print("Estado inicial: State.PRONTO")
		hide_textbox()
		fila_texto("Muito obrigado pelo serviço prestado, presidente!")

#	if id_npc == 4 and Global.index == 0:
#		print("Estado inicial: State.PRONTO")
#		hide_textbox()
#		fila_texto("Leo: Quando você encontrar estes pontos de exclamação vermelhos, é possivel entrar no edificio em questão para resolver uma problematica.")
#		fila_texto("Leo: Olha só, parece que temos um objetivo logo ao nosso lado!")
#		fila_texto("Leo: Porque não entra para conferir?")
#	elif id_npc == 4 and Global.index == 1 :
#		hide_textbox()
#		fila_texto("Leo: Que bom te ver de novo, presidente! Isso significa respondeu a ultima problemática")
#		fila_texto("Leo: Vamos para a próxima?")
#	elif id_npc == 4 and Global.index == 2:
#		hide_textbox()
#		fila_texto("Leo: Olá, presidente, os problemas não param de aparecer")
#		fila_texto("Leo: Ajude-nos, tome as decisões que ajudarão a mudar o país.")
#	elif id_npc == 4 and Global.index == 3:
#		hide_textbox()
#		fila_texto("Leo: Presidente! Estamos enfrentando severos problemas ambientais!")
#		fila_texto("Leo: Essas questões estão degradando nossas florestas")
#		fila_texto("Leo: Ajude-nos a resolver esse problema!")
#	elif id_npc == 4 and Global.index == 4:
#		hide_textbox()
#		fila_texto("Leo: Presidente! Que surpresa vê-lo por aqui, como você pode ver, o transporte público" \
#		+ " não está tendo o devido cuidado")
#		fila_texto("O que será que as empresas de transporte vão propor dessa vez? Entre no ônibus"\
#		+ " e descubra.")
#	elif id_npc == 4 and Global.index == 5:
#		hide_textbox()
#		fila_texto("Leo: Olá, presidente, os cidadãos estão atentos à sua conduta e por isso é bom" \
#		+ " agir de forma íntegra no seu mandato, fique atento à suas ações e responda a próxima questão")
	elif id_npc == 4 and Global.index == 6 and false:
		hide_textbox()
		fila_texto("Leo: Olá, presidente! Você resolveu todas as principais problemáticas da nossa região!")
		fila_texto("Leo: Você estar aqui significa que as suas decisões estão sendo corretas e constitucionais")
		fila_texto("Leo: Mas não perca tempo; o Brasil ainda tem muitos problemas e precisa de você")
		fila_texto("Leo: Boa sorte na sua jornada!")
		
#	if id_npc == 5 and Global.indexEscola != 8 and false:
#		print("Estado inicial: State.PRONTO")
#		hide_textbox()
#		fila_texto("Thainá: Olá presidente, estamos passando por diversos problemas em nossa escola...")
#		fila_texto("Thainá: Gostaria de entrar para nos ajudar, certo?")
#		fila_texto("Thainá: Vá a porta ao meu lado.")
#
#	elif id_npc == 5 and Global.indexEscola == 8 and false:
#		if Global.acertouEscola == 1:
#			print("Estado inicial: State.PRONTO")
#			hide_textbox()
#			fila_texto("Thainá: Presidente, muito obrigado pela sua orientação!")
#			fila_texto("Thainá: Graças a isso, nossa escola será um lugar melhor!")
#		else:
#			print("Estado inicial: State.PRONTO")
#			hide_textbox()
#			fila_texto("Thainá: Presidente, repense suas deisões")
#
#	if id_npc == 6 and false:
#		print("Estado inicial: State.PRONTO")
#		hide_textbox()
#		fila_texto("Mario: Olá senhor presidente")
#		fila_texto("Mario: Sou o prefeito desta cidade!")
#		fila_texto("Mario: Precisamos conversar, sente-se na cadeira, por favor!")


#	if id_npc == 7 and false:
#		print("Estado inicial: State.PRONTO")
#		hide_textbox()
#		fila_texto("Eliza: Olá senhor presidente")
#		fila_texto("Eliza: Preciso da sua ajuda para orientar os alunos da nossa escola!")
#		fila_texto("Eliza: Sente-se na cadeira porque já vamos começar nossa aula.")
#
#	if id_npc == 8 and false:
#		print("Estado inical: State.Pronto")
#		hide_textbox()
#		fila_texto("Caio: Olá, Presidente, trabalho nesse mercado há alguns anos")
#		fila_texto("Caio: Depois que a gerencia foi trocada, comecei a ver algumas coisas estranhas")
#		fila_texto("Caio: Vá para a nossa peixaria para que possamos conversar melhor.")
#
#	if id_npc == 11 and Global.indexPrefeitura != 10 and false:
#		print("Estado inicial: State.PRONTO")
#		hide_textbox()
#		fila_texto("Frederico: Olá senhor presidente! É um prazer tê-lo aqui")
#		fila_texto("Isabela: O prefeito está te aguardando para uma conversa")
#	if id_npc == 11 and Global.indexPrefeitura == 10 and false:
#		if Global.acertouPrefeitura == 1:
#			print("Estado inicial: State.PRONTO")
#			hide_textbox()
#			fila_texto("Frederico: Boa resposta Presidente, continue assim!")
#			fila_texto("Isabela: Vou agendar uma festa na frente da prefeitura, assim que acabar suas missões, volte aqui!")
#		else: 
#			print("Estado inicial: State.PRONTO")
#			hide_textbox()
#			fila_texto("Frederico: Essa foi por pouco presidente! continue tentando.")
#			fila_texto("Isabela: Não desista, precisamos que você continue seu mandato!")
#mostrar textos e alterar os estados da text box enquanto os textos são lidos


func _process(_delta):

	if texto.percent_visible == 1:
		finalizar.text = "v"
	else:
		finalizar.text = ""


	match estado_atual:
		State.INATIVO:
			Global.textbox = 0
			hide_textbox()
		State.PRONTO:
			Global.textbox = 0
			if !texto_fila.empty():
				mostrar_texto()
		State.LENDO:
			Global.textbox = 1
			if Input.is_action_just_pressed("ui_accept"):
				if texto.percent_visible == 1:
					Global.textbox = 1
					mudar_estado(State.PRONTO)
					hide_textbox()
					if texto_fila.empty():
						hide_textbox()
						Global.textando = false
						emit_signal("texto_completo")
				else:
					texto.percent_visible = 1.0
					$Tween.remove_all()
					mudar_estado(State.TERMINADO)
					
		State.TERMINADO:
			Global.textbox = 1
			if Input.is_action_just_pressed("ui_accept"):
				mudar_estado(State.PRONTO)
				if texto_fila.empty():
					hide_textbox()
					Global.textando = false
					emit_signal("texto_completo")



#função passar para o proximo texto
func fila_texto(proximo_texto):
	texto_fila.push_back(proximo_texto)

#esconder a text box após o estado terminado ter sido lido
func hide_textbox():
	iniciar.text = ""
	finalizar.text = ""
	texto.text = ""
	texto_container.hide()


#função mostrar a text box
func show_textbox():
	iniciar.text = "*"
	texto_container.show()


#função mostrar texto dentro da text box
func mostrar_texto():
	var proximo_texto = texto_fila.pop_front()
	texto.text = proximo_texto
	texto.percent_visible = 0.0
	mudar_estado(State.LENDO)
	show_textbox()
	$Tween.interpolate_property(texto, "percent_visible", 0.0, 1.0, len(proximo_texto) * CHAR_READ_RATE, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	$Tween.start()


#Printar o estado atual no terminal
func mudar_estado(proximo_estado):
	set_process(true)
	estado_atual = proximo_estado
	Global.textando = true
#	match estado_atual:
#		State.PRONTO:
#			print("Estado atual: PRONTO")
#		State.LENDO:
#			print("Estado atual: LENDO")
#		State.TERMINADO:
#			print("Estado atual: TERMINADO")
#		State.INATIVO:
#			print("Estado atual: INATIVO")



#Mudar estado para terminado após o text box ser lido completamente
#func _on_Tween_tween_all_completed(_object, _key):
#	finalizar.text = "v"
#	mudar_estado(State.INATIVO)
#	print("terminou texto")
#
##Ativar o texto ao entrar em uma area 2d
#func _on_ativar_body_entered(_body):
#	id_npc = 0
#	mudar_estado(State.PRONTO)
#	_txt()
#
#func _on_NPC_body_entered(_body):
#	id_npc = 1
#	mudar_estado(State.PRONTO)
#	_txt()
#
#func _on_NPC1_body_entered(_body):
#	id_npc = 2
#	mudar_estado(State.PRONTO)
#	_txt()
#
#func _on_NPC8_body_entered(_body):
#	id_npc = 3
#	mudar_estado(State.PRONTO)
#	_txt()
#
#func _on_NPC9_body_entered(_body):
#	id_npc = 4
#	mudar_estado(State.PRONTO)
#	_txt()
#
#func _on_NPC4_body_entered(_body):
#	id_npc = 5
#	mudar_estado(State.PRONTO)
#	_txt()
#
#func _on_npc3_body_entered(_body):
#	id_npc = 6
#	mudar_estado(State.PRONTO)
#	_txt()
#
#func _on_Area2D3_body_entered(_body):
#	id_npc = 7
#	mudar_estado(State.PRONTO)
#	_txt()
#
#func _on_NPC6_2_body_entered(_body):
#	id_npc = 8
#	mudar_estado(State.PRONTO)
#	_txt()
#
#func _on_Caramelo_body_entered(_body):
#	id_npc = 9
#	mudar_estado(State.PRONTO)
#	_txt()
#
#func _on_Agradecimento_body_entered(_body):
#	id_npc = 10
#	mudar_estado(State.PRONTO)
#	_txt()
#
#func _on_NPC2e3_body_entered(body):
#	id_npc = 11
#	mudar_estado(State.PRONTO)
#	_txt()


#texto, "percent_visible", 0.0, 1.0, len(proximo_texto) * CHAR_READ_RATE, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
func _on_Tween_tween_step(object, key, elapsed, value):
	#
	if int(value * 100) % 2 == 0:
		$blip.play()
