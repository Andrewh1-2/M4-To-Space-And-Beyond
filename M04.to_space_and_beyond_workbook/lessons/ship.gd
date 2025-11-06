extends Sprite2D

var velocity := Vector2(0, 0)
var max_speed := 600
func _process(delta: float) -> void:
	var direction := Vector2(0,0)
	
	direction.x = Input.get_axis("move_left","move_right")
	direction.y = Input.get_axis("move_up","move_down")
#	position.y += 8 this is the same as position.x = position.x + 8
	velocity = direction * max_speed
	position += velocity * delta
	
	if direction.length() > 1:
		direction = direction.normalized()
	if direction.length() > 0:
		rotation = velocity.angle()
