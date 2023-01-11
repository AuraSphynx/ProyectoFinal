extends Area2D

func _on_EntradaPueblo_body_entered(body):
	get_tree().change_scene("res://Escena/Lugares/Pueblo.tscn")
