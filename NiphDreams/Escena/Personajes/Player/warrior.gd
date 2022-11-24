extends Node2D

var velocidad = 70
var movimiento = Vector2()

var arriba = false
var abajo = false
var izquierda = false
var derecha = false

# Movimiento del jugador

func _process(_delta):

	coliciones()
	movimiento = Vector2()

	if Input.is_action_pressed("ui_up") && arriba == false:
		movimiento.y -= velocidad
		$AnimationPlayer.play("c_arriba") # Cuando pulse el boton hace la animacion

	if Input.is_action_pressed("ui_down") && abajo == false:
		movimiento.y += velocidad
		$AnimationPlayer.play("c_abajo")

	if Input.is_action_pressed("ui_left") && izquierda == false:
		movimiento.x -= velocidad
		$AnimationPlayer.play("c_izquierda")

	if Input.is_action_pressed("ui_right") && derecha == false:
		movimiento.x += velocidad
		$AnimationPlayer.play("c_derecha")
	
	if movimiento.length() > 0:
		movimiento = movimiento.normalized() * velocidad
	
	position += movimiento * _delta


func coliciones():
	if $arriba.is_colliding():
		arriba = true
	elif not $arriba.is_colliding():
		arriba = false
	if $abajo.is_colliding():
		abajo = true
	elif not $abajo.is_colliding():
		abajo = false
	if $izquierda.is_colliding():
		izquierda = true
	elif not $izquierda.is_colliding():
		izquierda = false
	if $derecha.is_colliding():
		derecha = true
	elif not $derecha.is_colliding():
		derecha = false

