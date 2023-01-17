extends Area2D

export (String) var escena

func _on_Portal_body_entered(body):
	if body.name == "Heroe":
		get_tree().change_scene("res://Escena/Lugares/" + escena + ".tscn")
