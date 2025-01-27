extends Node

signal contadorAlterado
signal perguntaRespondida

var contador = 5 setget setContador, getContador #variável que comanda a HUD
var index = 0 #variável que comanda qual pergunta será chamada de cada vez
var posicao_horizontal = 0 #variável que armazena a posição horizontal do jogador
var posicao_vertical = 0 #variável que armazena a posição vertical do jogador
var textbox = 0 #variável que armazena informações sobre a caixa de texto
var indexMundoAberto = 0 #variável que armazena o index do mundo aberto
var indexPrefeitura = 9 #variável que determina a pergunta a ser chamada na prefeitura
var indexEscola = 7 #variável que determina a pergunta a ser chamada no mercad
var indexMercado = 11 #variável que determina a pergunta a ser chamada no mercado
var stop = 0 #variável que impede do jogador respondar a mesma pergunta diversas vezes
var colidiu = 0 #variável que determina se o corpo colidiu com um foguete no minigame
#var venceu_minigame = 0 #variável que determina se o jogador venceu o minigame
var correto = 0 #variável que armazena a informação se o jogador acertou ou não a pergunta
var acertouPrefeitura = 0 #variável que determina se ele acertou a pergunta da prefeitura
var acertouEscola = 0#variável que determina se ele acertou a pergunta da escola
var acertouMercado = 0 #variável que determina se ele acertou a pergunta do mercado
var contador_easter_egg = 0 #variável que deterimina quando o easter egg será chamado
var reiniciar = 0 #variável que determina se o jogo pode ser reiniciado
var mudo = 0 #variável que controla a reprodução ou não do som
var subiuRua = 0 #variável que determina se o presidente chegou ao mundo aberto passando pelo mundo aberto ou pelo menu
var skin = 3

var fase = "sul"
var quiz = null
var retornoMinigame 
var ultimo_sokoban = 0

var textando = false setget setTextando

signal textando_changed(v)

var skins = [
	"res://Imagens/NPC/avatar1_Oficial.png",
	"res://Imagens/NPC/npc_garoto_negro.png",
	"res://Imagens/NPC/npc_garota_negra.png",
	"res://Imagens/NPC/npc_garota_branca.png"
]

func setContador(val):
	contador = val
	contador = clamp(contador , 0, 10)
	emit_signal("contadorAlterado")
	
func getContador():
	return contador

func respondeuPergunta():
	emit_signal("perguntaRespondida")

func voltaMundoAberto():
	posicao_vertical += 10
	get_tree().change_scene(retornoMinigame)

func setTextando(val):
	textando = val
	emit_signal("textando_changed", textando)

func isMobile():
	if OS.has_feature('JavaScript'):
		JavaScript.eval("console.log(new URLSearchParams(window.location.search).get('mobile') )")
		return JavaScript.eval("new URLSearchParams(window.location.search).get('mobile') ") != null
		#return JavaScript.eval(" ( window.innerWidth <= 800 ) || ( window.innerHeight <= 600 ) ")
	else:
		return OS.has_feature("mobile")
