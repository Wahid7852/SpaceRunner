class_name GSAIPursue
extends GSAISteeringBehavior

var target: GSAISteeringAgent
var predict_time_max: float

func _init(agent: GSAISteeringAgent, _target: GSAISteeringAgent, _predict_time_max := 1.0) -> void:
	super._init(agent)
	self.target = _target
	self.predict_time_max = _predict_time_max


func _calculate_steering(acceleration: GSAITargetAcceleration) -> void:
	var target_position := target.position
	var distance_squared := (target_position - agent.position).length_squared()

	var speed_squared := agent.linear_velocity.length_squared()
	var predict_time := predict_time_max

	if speed_squared > 0:
		var predict_time_squared := distance_squared / speed_squared
		if predict_time_squared < predict_time_max * predict_time_max:
			predict_time = sqrt(predict_time_squared)

	acceleration.linear = ((target_position + (target.linear_velocity * predict_time)) - agent.position).normalized()
	acceleration.linear *= _get_modified_acceleration()

	acceleration.angular = 0

func _get_modified_acceleration() -> float:
	return agent.linear_acceleration_max
