extends Label

@export var buttonType : String

func _ready() -> void:
	mouse_entered.connect(mouseEntered)

func mouseEntered() -> void:
	if get_tree().paused == false:
		if not $"../arrow".position.y == position.y:
			$"../select".play()
		$"../arrow".position.y = position.y

func _gui_input(event : InputEvent) -> void:
	if event.is_action_pressed("leftMouse"):
		if buttonType == "new game":
			print("new game button clicked")
		elif buttonType == "continue":
			print("continue button clicked")

