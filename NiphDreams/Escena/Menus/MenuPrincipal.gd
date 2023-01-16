extends Control

func _ready():
	$VBoxContainer/NuevaPartida.grab_focus() # Para que use el teclado

# Menus
func _on_NuevaPartida_pressed():
	get_tree().change_scene("res://Escena/Lugares/Pueblo.tscn")

func _on_Ajustes_pressed():
	get_tree().change_scene("res://Escena/Menus/MenuAjustes.tscn")

func _on_Salir_pressed():
	get_tree().quit()
