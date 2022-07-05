extends Area2D

const MAXVEL = 320

var targetVel = 0
var vel = 0
var dir = Vector2.ZERO

func _physics_process(delta):
	
	var pitch = .4
	
	targetVel = 0

	if Input.is_action_pressed("left") or Input.is_action_pressed("right") or  Input.is_action_pressed("up") or  Input.is_action_pressed("down"):
		dir = Input.get_vector("left","right","up","down")
		targetVel = MAXVEL
		pitch = 1
		
	$plane.pitch_scale = lerp( $plane.pitch_scale , pitch , .05)
	vel = lerp(vel , targetVel , .1)
	translate(dir * vel * delta)
	rotation = lerp_angle(rotation , dir.angle() , .15)
