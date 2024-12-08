extends AnimatedSprite2D

func _ready() -> void:
	$rest.connect("timeout", restTimeout)
	$appear.connect("timeout", appearTimeout)
	restStart()

func restTimeout() -> void:
	visible = true
	appearStart()

func appearTimeout() -> void:
	visible = false
	restStart()

func restStart() -> void:
	$rest.wait_time = randf_range(1.0, 3.0)
	$rest.start()

func appearStart() -> void:
	$appear.wait_time = randf_range(0.1, 0.4)
	$appear.start()
