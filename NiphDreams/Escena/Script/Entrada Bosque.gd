extends Area2D



func _on_Entrada_Bosque_body_entered(body):
	get_tree().change_scene("res://Escena/Lugares/Bosque.tscn")
