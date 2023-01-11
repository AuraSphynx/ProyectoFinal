extends Area2D

# Cambia la escena
func _on_CambioEscena_body_entered(_body):
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://Escena/Lugares/MundoPrincipal.tscn")
