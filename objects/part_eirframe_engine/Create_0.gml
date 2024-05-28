event_inherited();
engine_on = false;
point_value = 0;
engine_thrust = 0;
engine_rotation_speed_on = 0;
engine_rotation_speed_off = 0;
engine_rotation_speed = engine_rotation_speed_off;

//particle effect
engine_smoke_trail = part_system_create(effect_engine_trail);