event_inherited();
//==Header Stats==
stat_thrust = "F";
stat_rotation = "F";
stat_armor = "F";
stat_weight = "F";
stat_hardpoints = "F";
stat_melee = "F";
point_value = 0;

//==Stat Values==
stats_thrust = ds_map_create();
ds_map_add(stats_thrust, "A", 12);
ds_map_add(stats_thrust, "B", 9);
ds_map_add(stats_thrust, "C", 7);
ds_map_add(stats_thrust, "D", 5);
ds_map_add(stats_thrust, "F", 3);

stats_rotation = ds_map_create();
ds_map_add(stats_rotation, "A", 4);
ds_map_add(stats_rotation, "B", 3);
ds_map_add(stats_rotation, "C", 2);
ds_map_add(stats_rotation, "D", 1);
ds_map_add(stats_rotation, "F", .5);

stats_weight = ds_map_create();
ds_map_add(stats_weight, "A", 50);
ds_map_add(stats_weight, "B", 40);
ds_map_add(stats_weight, "C", 30);
ds_map_add(stats_weight, "D", 20);
ds_map_add(stats_weight, "F", 10);

stats_armor = ds_map_create();
ds_map_add(stats_armor, "A", 50);
ds_map_add(stats_armor, "B", 40);
ds_map_add(stats_armor, "C", 30);
ds_map_add(stats_armor, "D", 20);
ds_map_add(stats_armor, "F", 10);

stats_hardpoints = ds_map_create();
ds_map_add(stats_hardpoints, "A", 4);
ds_map_add(stats_hardpoints, "B", 3);
ds_map_add(stats_hardpoints, "C", 2);
ds_map_add(stats_hardpoints, "D", 1);
ds_map_add(stats_hardpoints, "F", 0);

stats_melee = ds_map_create();
ds_map_add(stats_melee, "A", 10);
ds_map_add(stats_melee, "B", 5);
ds_map_add(stats_melee, "C", 0);
ds_map_add(stats_melee, "D", -5);
ds_map_add(stats_melee, "F", -10);

//==Technical Details==
engine_on = false;
engine_thrust = 0;
engine_rotation_speed_on = 0;
engine_rotation_speed_off = 0;
engine_rotation_speed = engine_rotation_speed_off;

//particle effect
engine_smoke_trail = part_system_create(effect_engine_trail);