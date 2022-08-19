extends Area2D

export(NodePath) var npc_texto
export(String , "mercado", "escola", "prefeitura", "minigame1" , "comum") var tipo = "comum"
export(PoolStringArray) var mensagens
export(PoolStringArray) var mensagens_acertou
export(PoolStringArray) var mensagens_errou

var falou = false
# Called when the node enters the scene tree for the first time.
func _ready():
	if npc_texto:
		npc_texto = get_node(npc_texto)
	connect("body_entered" , self , "on_player_entered")

func on_player_entered(body):
	print("NPC colidiu com:" + body.name)
	if npc_texto:
		if falou:
			faleUmVcSabia()
		else:
			npc_texto.hide_textbox()
			var pergunta = Mensagens.perguntaRegiaoAtual(tipo)
			if !pergunta:
				if mensagens:
					for txt in mensagens:
						npc_texto.fila_texto(txt)
					falou = true
			else:
				if pergunta.respondido:
					if pergunta.acertou:
						for txt in pergunta.mensagens_npc.acertou:
							npc_texto.fila_texto(txt)
					else:
						for txt in pergunta.mensagens_npc.errou:
							npc_texto.fila_texto(txt)
				else:
					
					for txt in pergunta.mensagens_npc.neutro:
							npc_texto.fila_texto(txt)
			falou = true
			npc_texto.mudar_estado(npc_texto.State.PRONTO)

func faleUmVcSabia():
	npc_texto.fila_texto(Mensagens.vcsabiaAleatorio())
