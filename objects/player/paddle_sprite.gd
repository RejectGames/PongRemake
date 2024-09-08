extends Sprite2D

@export var paddle : Paddle
var image : Image

func _ready():
	_render()

func _process(_delta: float) -> void:
	pass

func _render():
	image = Image.create_empty(int(paddle.data.size.x), int(paddle.data.size.y), false, image.FORMAT_RGB8)

	image.fill(paddle.data.color)
	
	self.texture = ImageTexture.create_from_image(image)
