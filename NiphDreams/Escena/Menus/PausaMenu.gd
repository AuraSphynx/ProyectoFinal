extends Control

var is_paused = false setget set_is_paused



func _unhandled_input(event):
	if event.is_action_pressed("Pausa"):
		get_node("Sonido").play()
		self.is_paused = !is_paused

func set_is_paused(value):
	is_paused = value
	get_tree().paused = is_paused
	visible = is_paused


func _on_Salir_pressed():
	get_tree().quit()
