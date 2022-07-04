extends KinematicBody2D

const VEL = 80

export(NodePath) var posicao_inicial

var posicao_vertical_inicial
var posicao_horizontal_inicial




onready var animationPlayer = $AnimationPlayer

func _ready():
	$Sprite.texture = load(Global.skins[Global.skin])
	if posicao_inicial:
		if !Global.posicao_horizontal:
			Global.posicao_horizontal = get_node(posicao_inicial).global_position.x
			Global.posicao_vertical = get_node(posicao_inicial).global_position.y

	global_position.x = Global.posicao_horizontal
	global_position.y = Global.posicao_vertical


func _physics_process(_delta):
	
	var vetor_entrada = Vector2.ZERO
	
	Global.posicao_horizontal = global_position.x
	Global.posicao_vertical = global_position.y

	#Movimentação do personagem
	if Input.is_action_pressed("ui_down") and vetor_entrada.x == 0:
		animationPlayer.play("walk_down")
		vetor_entrada.y += 1
	if Input.is_action_pressed("ui_up") and vetor_entrada.x == 0:
		animationPlayer.play("walk")
		vetor_entrada.y -= 1
	if Input.is_action_pressed("ui_left") and vetor_entrada.y == 0:
		animationPlayer.play("walk_left")
		vetor_entrada.x -= 1
	if Input.is_action_pressed("ui_right") and vetor_entrada.y == 0:
		animationPlayer.play("walk_right")
		vetor_entrada.x += 1

	#Parar o boneco ultima posição da animação
	if Input.is_action_just_released("ui_left"):
		animationPlayer.play("idleLeft") #replica a animação de andar para a esquerda
		vetor_entrada.x -= 1
	if Input.is_action_just_released("ui_right"):
		animationPlayer.play("idleRight") #replica a animação de andar para a esquerda
		vetor_entrada.x += 1
	if Input.is_action_just_released("ui_down"):
		animationPlayer.play("idleDown") #replica a animação de andar para a direita
		vetor_entrada.y += 1
	if Input.is_action_just_released("ui_up"):
		animationPlayer.play("idleTop") #replica a animação de andar para cima
		vetor_entrada.y -= 1

	if Global.textbox == 0:
		move_and_slide(vetor_entrada * VEL)
	else:
		move_and_slide(vetor_entrada*0) #para o personagem quando entrar em contato com uma textbox
		animationPlayer.play("idleTop") #fixa a posição do personagem virado para cima quando iniciar um diálogo



