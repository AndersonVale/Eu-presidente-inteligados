extends Node2D


#Esconder o mouse
func _ready():
	#Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	pass
	
#Fazer com que o sprite da caneta siga o mouse
func _process(_delta):
	self.position = self.get_global_mouse_position()
