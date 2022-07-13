extends Node2D

enum Tipos { PERGUNTA , MINIGAME , CONFIGURACAO }
var textos = {}

func _ready():
	textos.sul = load("res://Cenas/autoloads/regioes/sul.gd").new().data
	textos.sudeste = load("res://Cenas/autoloads/regioes/sudeste.gd").new().data
	textos["centro-oeste"] = load("res://Cenas/autoloads/regioes/centrooeste.gd").new().data
	textos.norte = load("res://Cenas/autoloads/regioes/norte.gd").new().data
	textos.nordeste = load("res://Cenas/autoloads/regioes/nordeste.gd").new().data

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
	
func gameCompleto():
	var completo = true
	for regiao in textos:
		#print(regiao)
		if !regiaoCompleta(regiao):
			completo = false
	return completo
