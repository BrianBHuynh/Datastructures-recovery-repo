extends Node
class_name tree_nod

var num
var left
var right

func add(x):
	if x > num:
		if right != null:
			right.add(x)
		else:
			right = tree_nod.new()
			right.num = x
	if x < num:
		if left != null:
			left.add(x)
		else:
			left = tree_nod.new()
			left.num = x

func order() -> String:
	var ret = ""
	if left != null:
		ret = ret + left.order()
	ret = ret + str(num)
	if right!= null:
		ret = ret + right.order()
	return ret

func find(x):
	print(num)
	if num == x:
		return true
	elif x > num and right != null:
		return right.find(x)
	elif x < num and left != null:
		return left.find(x)
	return false
