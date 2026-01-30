extends Control


func _on_inicio_button_pressed() -> void:
	$AudioStreamBack.play(0.0)
	get_tree().change_scene_to_file("res://main_menu.tscn")
