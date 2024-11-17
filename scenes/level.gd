extends Node2D

# load the scene
var meteor_scene: PackedScene = load("res://scenes/meteor.tscn")

func _on_meteor_timer_timeout():
	#create an instance
	var meteor = meteor_scene.instantiate()
	
	#atttach the node to the scene tree
	$Meteors.add_child(meteor)
