event_inherited();
//==Header Stats==
stat_rotation = "F";
stat_armor = "F";
stat_weight = "F";
point_value = 0;

//==Stat Values==
stats_rotation = ds_map_create();
ds_map_add(stats_rotation, "A", 7);
ds_map_add(stats_rotation, "B", 6);
ds_map_add(stats_rotation, "C", 5);
ds_map_add(stats_rotation, "D", 4);
ds_map_add(stats_rotation, "F", 2);

stats_weight = ds_map_create();
ds_map_add(stats_weight, "A", 17);
ds_map_add(stats_weight, "B", 15);
ds_map_add(stats_weight, "C", 10);
ds_map_add(stats_weight, "D", 5);
ds_map_add(stats_weight, "F", 2);

stats_armor = ds_map_create();
ds_map_add(stats_armor, "A", 40);
ds_map_add(stats_armor, "B", 30);
ds_map_add(stats_armor, "C", 20);
ds_map_add(stats_armor, "D", 15);
ds_map_add(stats_armor, "F", 10);

//==Technical Details==
rudder_rotation_speed = 0;