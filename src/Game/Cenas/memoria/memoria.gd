extends Node2D

const PRECARTA = preload("res://Cenas/memoria/carta.tscn")
const fronts = ["A","B"]
export var autoStart = true
export var linhas = 3
export var colunas = 6
export var offset = Vector2(100 , 75)
export var deslocamento = Vector2(75 , 100)
export var espera = 4
export var apagaFundo = false
export var mostra_cartas = true

export var largura = 150
export var altura = 200
var cursorPos = Vector2.ZERO
var pronto = false
var cartaAtual 
var flippedCartas = []


signal selected(c)
signal flipped(c)
signal mactch(c1 , c2)
signal miss(c1 , c2)
signal completou

func _ready():
	randomize()
	if apagaFundo:
		$ColorRect.queue_free()

	if autoStart:
		preparaTabuleiro()
		start()

func _input(event):
	
	if !pronto:
		return
	
	if Input.is_action_just_pressed("ui_accept"):
		flippaCartaAtual()
		emit_signal("flipped" , cartaAtual)

	#print(event)

	if $cursor.visible and (event is InputEventKey and event.pressed and not event.echo)  or event is InputEventAction:
		if Input.is_action_just_pressed("left"):
			cursorPos += Vector2(-1,0)
		elif Input.is_action_just_pressed("right"):
			cursorPos += Vector2(1,0)
		elif Input.is_action_just_pressed("down"):
			cursorPos += Vector2(0,1)
		elif Input.is_action_just_pressed("up"):
			cursorPos += Vector2(0,-1)
			
		cursorPos.x = clamp(cursorPos.x , 0 , colunas - 1)
		cursorPos.y = clamp(cursorPos.y , 0 , linhas - 1)

		alocaCursor()


func preparaTabuleiro():
	$cursor.visible = false
	for c in $cartas.get_children():
		c.queue_free()
	criaCartas()
	embaralha()


func criaCartas():
	var a = 2
	for l in range(linhas):
		for c in range(colunas):
			var carta = PRECARTA.instance()
			$cartas.add_child(carta)
			carta.position = Vector2(c * (largura + offset.x) , l * (altura + offset.y)) + deslocamento 
			carta.setFront(str(a / 2) + fronts[a % 2])
			carta.setValor(a / 2)
			a += 1
			largura = carta.largura()
			altura = carta.altura()



func flipAll():
	for c in $cartas.get_children():
		c.flip()


func unFlipAll():
	for c in $cartas.get_children():
		c.unflip()


func flippaCartaAtual():
	if cartaAtual and !cartaAtual.flipped and flippedCartas.size() < 2:
		cartaAtual.flip()
		flippedCartas.append(cartaAtual)
	
	if flippedCartas.size() == 2:
		$cursor.hide()
		yield(get_tree().create_timer(2) ,"timeout")
		verificaMatch()
		if pronto:
			$cursor.visible = true


func embaralha():
	for a in range(randi() % 50 + 100):
		var carta1 = $cartas.get_child(randi() % $cartas.get_child_count())
		var carta2 = $cartas.get_child(randi() % $cartas.get_child_count())
		var vec1 = carta1.position
		carta1.position = carta2.position
		carta2.position = vec1


func start():
	if mostra_cartas:
		flipAll()
		yield(get_tree().create_timer(espera),"timeout")
		unFlipAll()
	$cursor.visible = true
	pronto = true
	alocaCursor()

func stop():
	print("it is over...")
	$cursor.visible = false
	pronto = false

func finish():
	$cursor.visible = false
	pronto = false


func alocaCursor():
	$cursor.position = Vector2(cursorPos.x * (largura + offset.x) + largura/2 , cursorPos.y * (altura + offset.y) + altura / 2) + deslocamento - Vector2(20,20)


func verificaMatch():
	if flippedCartas.size() == 2:
		if flippedCartas[0].valor == flippedCartas[1].valor:  #deu match
			emit_signal("mactch" , flippedCartas[0] , flippedCartas[1])
			flippedCartas[0].colected = true
			flippedCartas[1].colected = true
			flippedCartas.clear()
			verificaCompleto()
			
		else:
			emit_signal("miss" , flippedCartas[0] , flippedCartas[1])
			flippedCartas[0].unflip()
			flippedCartas[1].unflip()
			flippedCartas.clear()


func verificaCompleto():
	var completo = true
	
	for c in $cartas.get_children():
		if !c.colected:
			completo = false
			break
	
	if completo:
		emit_signal("completou")
	print("completou: " + str(completo))


func _on_cursor_area_entered(area):
	if !area.flipped:
		cartaAtual = area
		emit_signal("selected" , cartaAtual)
	else:
		cartaAtual = null


func _on_memoria_mactch(c1, c2):
	print("matched!!!")
	print(c1.valor)
	print(c2.valor)


func _on_memoria_miss(c1, c2):
	print("sorry.. you have a miss....")
	print(c1.valor)
	print(c2.valor)


func _on_memoria_flipped(c):
	print("Card Flipped " + str(c.valor))


func _on_memoria_selected(c):
	#print("selected card")
	pass
