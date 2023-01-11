extends Area2D

onready var animacion = get_parent().get_node("AnimationPlayer2")
export (int) var damage := 10

func atacar():
	animacion.play("ataque")

# Daño
func _on_arma_body_entered(body):
	if body.has_method("handle_hit"):
		body.handle_hit(damage)
