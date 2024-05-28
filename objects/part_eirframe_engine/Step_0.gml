//Improve rotation speed when the engine is turned off
engine_rotation_speed = engine_on ? engine_rotation_speed_on : engine_rotation_speed_off;
part_system_automatic_draw(engine_smoke_trail, engine_on ? 1 : 0);