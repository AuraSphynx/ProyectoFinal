extends KinematicBody2D

onready var animationPlayer = $AnimationPlayer
onready var animationTree = $AnimationTree
onready var animationState = animationTree.get("parameters/playback")
onready var atacar = $arma

const ACELERACION = 500
const MAX_VELOCIDAD = 80
const FRICCION = 500

var velocidad = Vector2.ZERO

# Movimiento jugador
func _physics_process(delta):
	var input_vector = Vector2.ZERO
	input_vector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left") # Pulsa derecha y el personaje va hacia la derecha de lo contrario se ira a la izquierda
	input_vector.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")# Pulsa abajo y el personaje va hacia abajo de lo contrario se ira a arriba
	input_vector = input_vector.normalized()
	
	if input_vector != Vector2.ZERO:
		animationTree.set("parameters/Parado/blend_position", input_vector)
		animationTree.set("parameters/Caminar/blend_position", input_vector)
		animationState.travel("Caminar")
		velocidad = velocidad.move_toward(input_vector * MAX_VELOCIDAD, ACELERACION * delta)
	else:
		animationState.travel("Parado")
		velocidad = velocidad.move_toward(Vector2.ZERO, FRICCION * delta)
		
	velocidad = move_and_slide(velocidad)

# Movimiento de combate
func _unhandled_input(event: InputEvent):
	if event.is_action_pressed("atacar"):
		get_node("Punch").play()
		atacar.atacar()


