# Adds velocity, speed, and size data to `GSAIAgentLocation`.
#
# It is the character's responsibility to keep this information up to date for
# the steering toolkit to work correctly.
# @category - Base types
class_name GSAISteeringAgent
extends GSAIAgentLocation

var zero_linear_speed_threshold := 0.01
var linear_speed_max := 0.5
var linear_acceleration_max := 0.5
var angular_speed_max := 1.0
var angular_acceleration_max := 0.5
var linear_velocity := Vector3.ZERO
var angular_velocity := 0.0
var bounding_radius := 0.0
var is_tagged := true
