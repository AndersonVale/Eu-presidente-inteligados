extends Node2D

enum Tipos { PERGUNTA , MINIGAME , CONFIGURACAO , VCSABIA }
var textos = {}

func _ready():
	textos.sul = load("res://Cenas/autoloads/regioes/sul.gd").new().data
	textos.sudeste = load("res://Cenas/autoloads/regioes/sudeste.gd").new().data
	textos["centro-oeste"] = load("res://Cenas/autoloads/regioes/centrooeste.gd").new().data
	textos.norte = load("res://Cenas/autoloads/regioes/norte.gd").new().data
	textos.nordeste = load("res://Cenas/autoloads/regioes/nordeste.gd").new().data


var vcsabias = [
	"Você sabia que o papel do Poder Executivo consiste em executar as leis, propõem planos de ação e administram os interesses públicos. Este poder é composto pelo Presidente da República e os ministros por ele indicados; Governadores dos Estados e os Prefeitos das cidades?",
	"Você sabia que o papel do Poder Legislativo consiste em elaborar e criar as leis, além de fiscalizar a execução das mesmas pelo Executivo. Composto por Deputados federais, estaduais, senadores e vereadores?",
	"Você sabia que o papel do Poder Judiciário consiste em interpretar as leis e julgar os casos, de acordo com as regras constitucionais. Juízes, ministros e desembargadores compõem este poder.",
	"Você sabia que a sigla PEC significa Proposta de Emenda Constitucional? As PECs têm como objetivo modificar algumas partes do texto constitucional sem precisar convocar uma assembleia constituinte para escrever uma nova Constituição Federal.",
	"Você sabia que o Congresso Nacional é a sede do poder legislativo em âmbito federal e é um órgão bicameral (duas Câmaras ou Casas Legislativas), sendo composto pela Câmara dos Deputados, com 513 parlamentares em mandatos de quatro anos, e pelo Senado Federal, com 81 representantes em mandatos de oito anos. ",
	"Você sabia que as Cláusulas Pétreas são quatro normas existentes na Constituição Federal que não podem ser alteradas? São elas: a forma federativa do Estado; o voto direto, secreto, universal e periódico; a separação dos poderes e os direitos e garantias individuais.",
	"Você sabia que o Brasil segue o sistema de Separação dos Poderes (também denominado de “A teoria dos freios e contrapesos”)? De acordo com esse sistema, previsto no artigo 2º da Constituição Federal, o Poder Legislativo, Executivo e Judiciário são harmônicos e independentes entre si, tendo mecanismos de controle para manterem o equilíbrio entre si. ",
	"Você sabia que o Vereador é a pessoa responsável por, dentro do Poder Legislativo, elaborar, discutir e aprovar as matérias de leis que serão aplicadas especificamente no município, como o tema do saneamento ou da educação municipal. O cargo de vereador é para representação da população, cujo mandato dura 4 anos e é realizado por meio do voto direto em todo o País. ",
	"Você sabia que existe diferença entre o Governador e o Prefeito? O Governador é o representante do Poder Executivo pelo Estado que o elegeu. Aqui no Brasil, temos 27 governadores, correspondentes aos 26 Estados e ao Distrito Federal! Já o Prefeito, é o representante político do Poder Executivo pela cidade que o elegeu. O mandato de ambos os cargos dura 04 anos e é feito por meio da votação direta.",
	"Você sabia que votar nulo não anula a eleição, nem favorece qualquer candidato em específico? O voto branco ou nulo consiste em formas utilizadas pelo eleitor para anular o voto, mas apenas os votos válidos, ou seja, em algum candidato ou partido, é que são contabilizados para eleição. "
]

var vcsabiasLidos = []

func proximaPerguntaId(regiao):
	for a in textos[regiao]:
		if textos[regiao][a].tipo == Tipos.PERGUNTA and !textos[regiao][a]["respondido"]:
			return a
	return null

func perguntaRegiaoAtual(index):
	if index in textos[Global.fase]:
		return textos[Global.fase][index]
	else:
		return null

func regiaoCompleta(regiao):
	return perguntasRespondidasRegiaoAtual(regiao) == perguntasObrigatoriasRegiao(regiao)                                                                                                             

func perguntasObrigatoriasRegiao(regiao):
	var obrigatorias = 0
	for a in textos[regiao]:
		if textos[regiao][a].tipo == Tipos.PERGUNTA and textos[regiao][a].obrigatorio:
			obrigatorias += 1
	return obrigatorias

func perguntasObrigatoriasRegiaoAtual():
	return perguntasObrigatoriasRegiao(Global.fase)

func perguntasRegiaoRespondidas():
	return perguntasRespondidasRegiaoAtual(Global.fase)

func perguntasRespondidasRegiaoAtual(regiao):
	var total = 0
	for a in textos[regiao]:
		if textos[regiao][a].tipo == Tipos.PERGUNTA:
			total += int(textos[regiao][a]["respondido"])
	return total

func completouPerguntas():
	return perguntasRespondidasRegiaoAtual(Global.fase) == perguntasObrigatoriasRegiao(Global.fase)

func configuracaoRegiaoAtual():
	return textos[Global.fase]["configuracao"]

func mensagemIniciaisRegialAtual():
	return textos[Global.fase]["mensagem_inicial"]

func gameCompleto():
	var completo = true
	for regiao in textos:
		#print(regiao)
		if !regiaoCompleta(regiao):
			completo = false
	return completo

func vcsabiaAleatorio():
	if vcsabiasLidos.size() == vcsabias.size():
		vcsabiasLidos.clear()
	var i = randi() % vcsabias.size()
	while vcsabiasLidos.has(i):
		i = randi() % vcsabias.size()
	vcsabiasLidos.append(i)
	return vcsabias[i]
