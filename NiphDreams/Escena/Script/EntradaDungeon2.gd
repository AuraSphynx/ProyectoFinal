extends Area2D



func _on_EntradaDungeon2_body_entered(body):
	get_tree().change_scene("res://Escena/Dungeon/Dungeon2.tscn")
