extends Area2D

func _on_EntradaDungeon_body_entered(body):
	get_tree().change_scene("res://Escena/Dungeon/Dungeon1.tscn")
