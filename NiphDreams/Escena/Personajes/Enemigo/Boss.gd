extends KinematicBody2D

export (int) var health := 110

var speed = 25
var motion = Vector2.ZERO

var player = null

# Movimiento Automatico del enemigo al ver el personaje
func _physics_process(delta):
	motion = Vector2.ZERO
	if player:
		motion = position.direction_to(player.position) * speed
	motion = move_and_slide(motion)

func _on_Deteccin_body_entered(body):
	player = body

func _on_Deteccin_body_exited(body):
	player = null

# Combate
func handle_hit(damage: int):
	health -= damage
	print(str(health))
	if health <= 0:
		queue_free() # Si muere el enemigo desaparece
