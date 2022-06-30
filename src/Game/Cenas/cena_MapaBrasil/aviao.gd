extends Area2D

const VEL = 320
var dir = Vector2.ZERO

func _physics_process(delta):

	if Input.is_action_pressed("left") or Input.is_action_pressed("right") or  Input.is_action_pressed("up") or  Input.is_action_pressed("down"):
		dir = Input.get_vector("left","right","up","down")
		translate(dir * VEL * delta)

	rotation = lerp_angle(rotation , dir.angle() , .15)
