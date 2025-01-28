class_name GSAITargetAcceleration
var linear := Vector3.ZERO
var angular := 0.0

func set_zero() -> void:
	linear.x = 0.0
	linear.y = 0.0
	linear.z = 0.0
	angular = 0.0


func add_scaled_accel(accel: GSAITargetAcceleration, scalar: float) -> void:
	linear += accel.linear * scalar
	angular += accel.angular * scalar


func get_magnitude_squared() -> float:
	return linear.length_squared() + angular * angular


# Returns the magnitude of the linear and angular components.
func get_magnitude() -> float:
	return sqrt(get_magnitude_squared())
