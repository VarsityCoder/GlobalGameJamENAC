extends Area3D


class_name PickUp

const GROUP_NAME = "Pickup"
@onready var effects: AudioStreamPlayer3D = $Effects

enum PickUpType {Coin, Mask}

@export var pickup_type: PickUpType = PickUpType.Coin

func _disable() -> void:
	hide()
	set_deferred("monitoring", false)
	

func _enter_tree() -> void:
	add_to_group(GROUP_NAME)
	
func kill() ->  void:
	effects.play()
	await effects.finished
	queue_free()


func _on_body_entered(body: Node3D) -> void:
	if body is Player:
		_disable()
		kill()
