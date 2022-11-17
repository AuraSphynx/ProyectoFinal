extends Node2D

var velocidad = 70
var movimiento = Vector2()

# Movimiento del jugador

func _process(_delta):
	movimiento = Vector2()
	if Input.is_action_pressed("ui_up"):
		movimiento.y -= velocidad
		$AnimationPlayer.play("c_arriba") # Cuando pulse el boton hace la animacion
	if Input.is_action_pressed("ui_down"):
		movimiento.y += velocidad
		$AnimationPlayer.play("c_abajo")
	if Input.is_action_pressed("ui_left"):
		movimiento.x -= velocidad
		$AnimationPlayer.play("c_izquierda")
	if Input.is_action_pressed("ui_right"):
		movimiento.x += velocidad
		$AnimationPlayer.play("c_derecha")
	
	if movimiento.length() > 0:
		movimiento = movimiento.normalized() * velocidad
	
	position += movimiento * _delta
