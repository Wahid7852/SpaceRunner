extends Control

@onready var score_label: Label = $ScoreLabel

func _ready() -> void:
	ScoreManager.score_changed.connect(_on_score_changed)
	_update_score_text(0)

func _on_score_changed(new_score: int) -> void:
	_update_score_text(new_score)

func _update_score_text(score: int) -> void:
	score_label.text = "SCORE: %d" % score
