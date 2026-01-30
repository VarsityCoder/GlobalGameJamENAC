extends Control

func _on_jugar_button_pressed() -> void:
	#Cambiar a escena principal
	$AudioStreamConfirm.play(0.0)
	get_tree().change_scene_to_file("res://main_menu.tscn")


func _on_ajustes_button_pressed() -> void:
	$AudioStreamConfirm.play(0.0)
	get_tree().change_scene_to_file("res://opciones.tscn")
