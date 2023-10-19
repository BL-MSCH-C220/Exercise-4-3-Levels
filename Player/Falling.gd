extends Node

@onready var SM = get_parent()
@onready var player = get_node("../..")

func _ready():
	await player.ready

func start():
	player.set_animation("Falling")

func physics_process(_delta):
	player.velocity.y += player.gravity * _delta
	var direction = Input.get_axis("left", "right")
	if direction: 
		player.velocity.x = player.direction * player.SPEED
	else: 
		player.velocity.x = move_toward(player.velocity.x, 0, player.SPEED)

	player.set_direction(direction)
	player.move_and_slide()

	if player.is_on_floor():
		player.velocity.y = 0
		SM.set_state("Idle")
	if player.is_on_ceiling():
		player.velocity.y = 0
