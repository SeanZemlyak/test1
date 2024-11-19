extends Area2D

var speed: int
var direction_x: float

signal collision

func _ready():
	var rng := RandomNumberGenerator.new()

	var path: String = "res://art/ratpos" + str(rng.randi_range(1,2)) + ".png"
	$Sprite2D.texture = load(path)

	#var width = get_viewport().get_visible_rect().size[0]
	var random_x := rng.randi_range(-200,300)
	var random_y := rng.randi_range(-150,-50)
	position = Vector2(random_x, random_y)
	speed = rng.randi_range(200,400)
	#direction_x = rng.randf_range(-1,1)
	
func _process(delta):
	position += Vector2(direction_x,1.0) * speed * delta


func _on_body_entered(_body):
	collision.emit()


func _on_area_entered(area):
	area.queue_free()
	queue_free()
