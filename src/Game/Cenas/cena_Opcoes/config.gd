extends CanvasLayer
var timelapsed = 0
func _process(delta):
	if timelapsed < 2:
		timelapsed += delta
		return

	if Input.is_action_just_pressed("quit") or $back_to_Menu.is_pressed(): #caso pressione a ferramenta da HUD 
		print("CONFIG")
		$Options.show() #mostra o menu
		$back_to_Menu.hide() #esconde a ferramenta
		get_tree().paused = true
