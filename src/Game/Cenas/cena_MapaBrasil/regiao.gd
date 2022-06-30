extends Area2D


export var id = ""
export(NodePath) var id_anterior 
export var nome = ""
#export(NodePath) var aviao

func _ready():
	if id_anterior:
		id_anterior = get_node(id_anterior)
		print(id_anterior)

func hilight():
	$hilight.frame = 1

func downlight():
	$hilight.frame = 0
	
func completa():
	var completa = false

	completa =  Mensagens.regiaoCompleta(id)

	return completa 

# Called when the node enters the scene tree for the first time.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
