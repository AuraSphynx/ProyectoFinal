extends Area2D

func _input(event):
	if event.is_action_pressed("aceptar") and len(get_overlapping_bodies()) > 0:
		use_dialogo()

func use_dialogo():
	var dialogo = get_parent().get_node("Dialogo")
	
	if dialogo:
		dialogo.start()
