extends Area2D

var speed: int
func _ready():
	var rng := RandomNumberGenerator.new()

	var width = get_viewport().get_visible_rect().size[0]
	print(width)
	var random_x := rng.randi_range(34,width)
	var random_y := rng.randi_range(-150,-50)
	position = Vector2(random_x, random_y)
	speed = rng.randi_range(200,500)
func _process(delta):
	position += Vector2(0,1.0) * speed * delta


func _on_body_entered(body):
	print('body entered')
	print(body)
