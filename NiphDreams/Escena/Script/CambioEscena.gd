extends Area2D

export (String, FILE, "*.tscn,*.scn") var nueva_escena

func _input(event):
	if event.is_action_pressed("ui_accept"):
		if get_overlapping_bodies().size() > 0:
			next_level()
			
func next_level():
	var PTS = get_tree().change_scene(nueva_escena)
