local res = external_profile("Config/Input/Aircrafts/base_joystick_binding.lua")

join(res.keyCommands, {
	{ down = iCommandPlane_HOTAS_NoseWheelSteeringButtonOff, up = iCommandPlane_HOTAS_NoseWheelSteeringButtonOff, name = _("Nose Wheel Steering"), category = _("Systems") },
})

return res
