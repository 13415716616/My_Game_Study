extends KinematicBody2D

var velocity=Vector2.ZERO

export var speed=3
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	velocity=Vector2.ZERO
	velocity.x=Input.get_action_strength("ui_right")-Input.get_action_strength("ui_left")
	velocity.y=Input.get_action_strength("ui_down")-Input.get_action_strength("ui_up")
	move_and_collide(velocity.normalized()*speed)
	pass
