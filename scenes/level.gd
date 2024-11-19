extends Node2D

# load the scene
var meteor_scene: PackedScene = load("res://scenes/meteor.tscn")
var laser_scene: PackedScene = load("res://scenes/laser.tscn")

var health: int = 1

func _on_meteor_timer_timeout():
	#create an instance
	var meteor = meteor_scene.instantiate()
	
	#atttach the node to the scene tree
	$Meteors.add_child(meteor)

	#connects the signals
	meteor.connect('collision', _on_meteor_collision)

func _on_meteor_collision():
	health -= 1
	if health == 0:
		get_tree().change_scene_to_file("res://scenes/game_over.tscn")
	
	
func _on_node_2d_shoot(pos):
	var laser = laser_scene.instantiate()
	$Lasers.add_child(laser)
	laser.position = pos
