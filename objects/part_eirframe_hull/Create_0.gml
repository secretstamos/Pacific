event_inherited();
stat_armor = "F";
stat_weight = "F";
stat_hardpoints = "F";
stat_aura = "F";
point_value = 0;

//==Stat Values==
stats_weight = ds_map_create();
ds_map_add(stats_weight, "A", 60);
ds_map_add(stats_weight, "B", 50);
ds_map_add(stats_weight, "C", 40);
ds_map_add(stats_weight, "D", 30)
ds_map_add(stats_weight, "F", 20);

stats_armor = ds_map_create();
ds_map_add(stats_armor, "A", 70);
ds_map_add(stats_armor, "B", 60);
ds_map_add(stats_armor, "C", 50);
ds_map_add(stats_armor, "D", 40);
ds_map_add(stats_armor, "F", 30);

stats_hardpoints = ds_map_create();
ds_map_add(stats_hardpoints, "A", 4);
ds_map_add(stats_hardpoints, "B", 3);
ds_map_add(stats_hardpoints, "C", 2);
ds_map_add(stats_hardpoints, "D", 1);
ds_map_add(stats_hardpoints, "F", 0);

stats_aura = ds_map_create();
ds_map_add(stats_armor, "A", 10);
ds_map_add(stats_armor, "B", 4);
ds_map_add(stats_armor, "C", 2);
ds_map_add(stats_armor, "D", 1);
ds_map_add(stats_armor, "F", 0);