extends Control

@onready var shield_bar := $ShieldBar
@onready var cargo_gauge := $CargoGauge
@onready var score_display := $ScoreDisplay

func initialize(player: PlayerShip) -> void:
	shield_bar.initialize(player)
	cargo_gauge.initialize(player)
