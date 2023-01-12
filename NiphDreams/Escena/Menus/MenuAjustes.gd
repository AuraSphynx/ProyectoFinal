extends Control

func _ready():
	$Atras.grab_focus()

func _on_Atras_pressed():
	get_tree().change_scene("res://Escena/Menus/MenuPrincipal.tscn")
