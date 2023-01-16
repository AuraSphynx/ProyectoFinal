extends Control


func _on_VolverInicio_pressed():
	get_tree().change_scene("res://Escena/Menus/MenuPrincipal.tscn")


func _on_Salir_pressed():
	get_tree().quit()
