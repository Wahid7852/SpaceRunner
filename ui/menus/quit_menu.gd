extends MarginContainer

@onready var menu_sounds: MenuSoundPlayer = $MenuSoundPlayer

func _ready() -> void:
	visible = false
	set_process_input(false)


func _input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_cancel"):
		close()
		get_viewport().set_input_as_handled()


func open() -> void:
	get_tree().paused = true
	menu_sounds.play_open()
	show()
	set_process_input(true)
	request_quit()


func close() -> void:
	menu_sounds.play_close()
	get_tree().paused = false
	set_process_input(false)
	hide()


func request_quit() -> void:
	Events.quit_requested.emit()
	close()
