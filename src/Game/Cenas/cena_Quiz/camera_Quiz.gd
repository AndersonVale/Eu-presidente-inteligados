extends Sprite

onready var destPos = position.x

var escolher_esquerda = 0
var escolher_direita = 1

var flipou = false

func _process(delta):
	
	if get_parent().respondeu:
		return
	
	#Alterar entre as telas de pergunta e resposta no teclado
	if Input.is_action_just_pressed("ui_right") and escolher_esquerda == 0:
		#position.x -= 1310
		destPos = 1920
		escolher_esquerda = 1
		escolher_direita = 0
		$flip.play()
	if Input.is_action_just_pressed("ui_left") and escolher_direita == 0:
		#position.x += 1310
		destPos = 570
		escolher_direita = 1
		escolher_esquerda = 0
		$flip.play()
	
	position.x = lerp(position.x , destPos , .2)
	
	

#Alterar entre as telas de pergunta e resposta no mouse
func _on_Button_pressed():
	position.x += 1310
	escolher_direita = 1
	escolher_esquerda = 0

func _on_Button2_pressed():
	position.x -= 1310
	escolher_esquerda = 1
	escolher_direita = 0
