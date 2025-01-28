extends Control

@onready var score_label: Label = $ScoreLabel

func _ready() -> void:
	ScoreManager.score_changed.connect(_on_score_changed)
	Events.enemy_died.connect(_on_enemy_died)
	Events.ore_mined.connect(_on_ore_mined)
	_update_score_text(0)

func _on_score_changed(new_score: int) -> void:
	_update_score_text(new_score)

func _on_enemy_died(_enemy_position: Vector2) -> void:
	ScoreManager.increment_score(100)

func _on_ore_mined() -> void:
	ScoreManager.increment_score(10)

func _update_score_text(score: int) -> void:
	score_label.text = "SCORE: %d" % score
