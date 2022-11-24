extends Node


func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("ui_pausa"):
		get_tree().paused = not get_tree().paused
		$Popup.visible = not $Popup.visible

func _on_Salir_pressed():
	get_tree().change_scene("res://Escena/Menus/MenuPrincipal.tscn")


