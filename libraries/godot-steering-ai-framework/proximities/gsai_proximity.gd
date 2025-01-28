class_name GSAIProximity
extends RefCounted

var agent: GSAISteeringAgent
var agents := []


func _init(_agent: GSAISteeringAgent, _agents: Array) -> void:
	self.agent = _agent
	self.agents = _agents

func _find_neighbors(_callback: Callable) -> int:
	return 0
