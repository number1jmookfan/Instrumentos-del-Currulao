extends Area2D

var screen_size

var kitty_bool = 0


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	screen_size = get_viewport_rect().size
	$AnimatedSprite2D.animation = "kitty_serious"
	$AnimatedSprite2D.play()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if  event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		if kitty_bool == 0:
			$AnimatedSprite2D.animation = "kitty_stupid"
			kitty_bool = 1
		else:
			$AnimatedSprite2D.animation = "kitty_serious"
			kitty_bool = 0
