extends Area2D



func _on_SalidaDungeon2_body_entered(body):
	get_tree().change_scene("res://Escena/Dungeon/Dungeon2.tscn")
