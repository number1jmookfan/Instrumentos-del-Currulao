extends Area2D

@export var new_sound: String
var sound

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	sound = load(new_sound)
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if  event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		
		$AudioStreamPlayer.stream = sound
		$AudioStreamPlayer.play()	
	pass
