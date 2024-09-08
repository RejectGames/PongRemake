extends CollisionShape2D

@export var paddle : Paddle

func _ready():
	_collision_draw()
	#_debug_draw()

func _collision_draw():
	var rect_shape = RectangleShape2D.new()
	rect_shape.size = Vector2(paddle.data.size.x, paddle.data.size.y)
	
	self.shape = rect_shape

func _debug_draw():
	var rect : ColorRect = ColorRect.new()

	get_parent().call_deferred("add_child", rect)
	
	rect.color = Color(1,0,0)
	rect.size = Vector2(paddle.data.size.x, paddle.data.size.y)
	

	
