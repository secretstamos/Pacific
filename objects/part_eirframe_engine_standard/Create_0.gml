event_inherited();

//Stats
stat_thrust = "C";
stat_rotation = "C";
stat_armor = "C";
stat_weight = "C";
stat_hardpoint = "F";
stat_melee = "F";

engine_thrust = ds_map_find_value(stats_thrust, stat_thrust);
engine_rotation_speed_on = ds_map_find_value(stats_rotation, stat_rotation);
engine_rotation_speed_off = 5;

engine_rotation_speed = engine_rotation_speed_off;
