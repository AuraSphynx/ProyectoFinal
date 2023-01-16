extends Area2D

func _input(event):
	if event.is_action_pressed("aceptar") and len (get_overlapping_bodies()) > 0:
		uso_dialogo()

func uso_dialogo():
	var dialogo = get_parent().get_node("Gui_dialogo")
	
	if dialogo:
		dialogo.start()

