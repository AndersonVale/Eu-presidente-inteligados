extends Node2D


export var show_direcionais = true
export var show_left = true
export var show_up = true
export var show_down = true
export var show_right = true
export var show_esc = true
export var show_space = true

# Called when the node enters the scene tree for the first time.
func _ready():
	if !Global.isMobile():
		queue_free()
		pass
	Global.connect("textando_changed", self , "on_textando_changed")
	
	$buttons.visible = show_direcionais
	$buttons/A.visible = show_left
	$buttons/w.visible = show_up
	$buttons/S.visible = show_down
	$buttons/D.visible = show_right
	$esc.visible = show_esc
	$space.visible = show_space


func on_textando_changed(v):
	$buttons.visible = !v and show_direcionais
	$super_space.visible = !$buttons.visible
