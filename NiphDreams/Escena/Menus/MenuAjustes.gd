extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$Atras.grab_focus()


func _on_Atras_pressed():
	get_tree().change_scene("res://Escena/Menus/MenuPrincipal.tscn")
