extends CanvasLayer

var progress: float = 1.0
@onready var colorRect: ColorRect = get_node("ColorRect") 

func  _ready():
	visible = true

func _process(delta):
	progress = move_toward(progress, 0.0, 0.025)
	colorRect.color.a = progress
	if progress <= 0.0:
		queue_free()
