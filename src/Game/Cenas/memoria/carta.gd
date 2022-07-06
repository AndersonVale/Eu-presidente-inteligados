extends Area2D


export(int , 1, 9) var valor = 1

var flipped = false
var colected = false

func flip():
	if flipped:
		return
	flipped = true
	$anim.play("flip")

func unflip():
	if !flipped:
		return
	flipped = false
	$anim.play("unflip")

func largura():
	return $back.texture.get_width()

func altura():
	return $back.texture.get_height()

func setFront(f):
	valor = f
	$front.texture = load("res://Imagens/memoria/carta" + str(f) + ".png")
