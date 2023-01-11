extends Area2D



func _on_SalidaDungeon_body_entered(body):
	get_tree().change_scene("res://Escena/Lugares/MundoPrincipal.tscn")
