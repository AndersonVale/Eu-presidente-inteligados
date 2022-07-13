extends Node2D

const PREBOX = preload("res://Cenas/sokoban/box.tscn")

var tilesX = 40
var tilesY = 23

export var nivel = 0
var moving = false

var target 
var deslocamentoX
var deslocamentoY
var mapPos = Vector2.ZERO
var lastMove
export var auto_start = false

signal started
signal moved
signal box_pushed
signal box_fited
signal undone
signal finished
signal exited
signal levels_completed

onready var niveis = load("res://Cenas/sokoban/sokoban_levels.gd").new()

var tileMapping = {
	"#" : 0,
	"$" : 3,
}

var moves = []

func _ready():
	$player/sprite.texture = load(Global.skins[Global.skin])
	if auto_start:
		carregaNivel()
	
func start():
	if auto_start:
		carregaNivel()

func _process(delta):
	$player.global_position.x = lerp($player.global_position.x , target.x , .6)
	$player.global_position.y = lerp($player.global_position.y , target.y , .6)
	
	if target.distance_to($player.global_position) < .1 :
		$player.global_position = target
		moving = false
		
	mapPos = Vector2(int($player.global_position.x / 32 - deslocamentoX) , int($player.global_position.y / 32 - deslocamentoY))

func _input(event):
	
	if Input.is_action_just_pressed("ui_accept"):
		$exit_timer.start()
	
	if Input.is_action_just_released("ui_cancel"):
		
		carregaNivel()
		
	if Input.is_action_just_released("ui_accept"):
		$exit_timer.stop()
		voltaMovimento()

	var dir = Vector2.ZERO

	if Input.is_action_just_pressed("up"):
		$player/sprite.frame = 1
		dir = Vector2(0 , -1)
	elif Input.is_action_just_pressed("down") :
		$player/sprite.frame = 18
		dir = Vector2(0 , 1)
	elif Input.is_action_just_pressed("right") :
		$player/sprite.frame = 27
		dir = Vector2(1 , 0)
	elif Input.is_action_just_pressed("left") :
		$player/sprite.frame = 9
		dir = Vector2(-1 , 0)
	
	if !moving and dir.length() > 0:
		
		gravaPosicaoAtual()
		
		if getMapCellv(mapPos + dir) == 3:
			tentaMoverCaixa(mapPos + dir , dir)
				
			
		if getMapCellv(mapPos + dir) < 0:
			target = $player.global_position + dir * 32
			moving = true

		if moving:
			emit_signal("moved")
			salvaPosicao()


	if verificaCompleto():
		finished()
		emit_signal("finished")

func gravaPosicaoAtual():
	lastMove = {
		"tileset" : $tilemap.duplicate(),
		"player" : $player.global_position
	}

func salvaPosicao():
	moves.push_front(lastMove)
	if moves.size() > 10:
		moves.pop_back()

func voltaMovimento():
	if moves.size():
		var move = moves.pop_front()
		target = move.player
		$tilemap.clear()
		for v in move.tileset.get_used_cells():
			$tilemap.set_cell(v.x , v.y , move.tileset.get_cell(v.x , v.y))
		emit_signal("undone")

func carregaNivel():
	#reseta com chão
	set_process_input(false)
	set_process(false)

	$tilemap.clear()
	$tilemapBg.clear()
	$tilemapTargets.clear()
	moves.clear()

	var largura = 0
	var altura = niveis.maps[nivel].size()
	
	for a in niveis.maps[nivel]:
		if a.length() > largura:
			largura = a.length()

	var l = 0

	deslocamentoX = tilesX / 2 - largura / 2
	deslocamentoY = tilesY / 2 - altura / 2
	
	for a in niveis.maps[nivel]:
		var c = 0
		var firstHash = false
		for ch in a:
			if ch != " ":
				var valor = 1 if firstHash else -1
				$tilemapBg.set_cell(c + deslocamentoX, l + deslocamentoY , valor)
			if ["#"].has(ch):
				firstHash = true
				$tilemap.set_cell(c + deslocamentoX, l + deslocamentoY , tileMapping[ch])
			elif tileMapping.has(ch):
				$tilemap.set_cell(c + deslocamentoX, l + deslocamentoY , tileMapping[ch])
			if ch == "@": #coloca o player no jogo
				$player.global_position = Vector2((c+ deslocamentoX) * $tilemap.cell_size.x , (l + + deslocamentoY) * $tilemap.cell_size.y )
				target = $player.global_position
			if ch == ".":
				$tilemapTargets.set_cell(c + deslocamentoX, l + deslocamentoY , 2)
			c += 1
		l += 1
	emit_signal("started")
	set_process_input(true)
	set_process(true)

func getMapCell():
	return getMapCellv(mapPos)

func getMapCellv(pos):
	return $tilemap.get_cellv(pos + Vector2(deslocamentoX , deslocamentoY)) 

func tentaMoverCaixa(vec , dir):
	if getMapCellv(vec + dir) < 0:
		emit_signal("box_pushed")
		$tilemap.set_cell(vec.x + deslocamentoX, vec.y + deslocamentoY, -1)
		$tilemap.set_cell((vec + dir).x + deslocamentoX, (vec + dir).y + deslocamentoY, tileMapping["$"])
		if $tilemapTargets.get_cell((vec + dir).x + deslocamentoX, (vec + dir).y + deslocamentoY) > 0:
			emit_signal("box_fited")
		return true
		
	return false

func verificaCompleto():
	var completo = true
	for a in $tilemapTargets.get_used_cells():
		if $tilemap.get_cellv(a) < 0:
			completo = false
	return completo

func finished():
	set_process_input(false)
	nivel += 1
	yield(get_tree().create_timer(1.5),"timeout")
	if nivel >= niveis.maps.size():
		emit_signal("levels_completed")
	else:
		carregaNivel()


func _on_exit_timer_timeout():
	emit_signal("exited")
