extends Area2D


func _on_SalidaBosque_body_entered(body):
	get_tree().change_scene("res://Escena/Lugares/MundoPrincipal.tscn")
