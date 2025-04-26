extends RigidBody3D

var time = 0.0
var count: int = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("player is ready.")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#time += delta
	#count += 1
	#print(time, count)
	
	if Input.is_action_pressed("ui_accept"):
		position.y += delta * 10
	
	if Input.is_action_pressed("ui_left"):
		rotate_z(delta)
	
	if Input.is_action_pressed("ui_right"):
		rotate_z(-delta)
