extends Control


func _on_igrat_pressed() -> void:
	get_tree().change_scene_to_file("res://base/game/koridor.scn")


func _on_vihod_pressed() -> void:
	get_tree().quit()
