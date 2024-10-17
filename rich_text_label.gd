extends RichTextLabel


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var node1 = tree_nod.new()
	node1.num = 5
	var array: Array = []
	for i in 5000:
		array.append(i)
	array.shuffle()
	for num in array:
		node1.add(num)
	text = node1.order()
	print(node1.find(999))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
