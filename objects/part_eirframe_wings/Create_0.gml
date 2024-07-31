event_inherited();
stat_armor = "F";
stat_weight = "F";
stat_hardpoints = "F";

//==Stat Values==
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

stats_hardpoints = ds_map_create();
ds_map_add(stats_hardpoints, "A", 8);
ds_map_add(stats_hardpoints, "B", 6);
ds_map_add(stats_hardpoints, "C", 4);
ds_map_add(stats_hardpoints, "D", 2);
ds_map_add(stats_hardpoints, "F", 0);

point_value = 0;