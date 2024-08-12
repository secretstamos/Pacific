event_inherited();
stat_armor = "F";
stat_weight = "F";
stat_pod_amount = "F";
stat_pod_quality = "F";

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

stat_pod_amount = ds_map_create();
ds_map_add(stat_pod_amount, "A", 8);
ds_map_add(stat_pod_amount, "B", 6);
ds_map_add(stat_pod_amount, "C", 4);
ds_map_add(stat_pod_amount, "D", 2);
ds_map_add(stat_pod_amount, "F", 0);

stat_pod_quality = ds_map_create();
ds_map_add(stat_pod_quality, "A", 100);
ds_map_add(stat_pod_quality, "B", 80);
ds_map_add(stat_pod_quality, "C", 60);
ds_map_add(stat_pod_quality, "D", 40);
ds_map_add(stat_pod_quality, "F", 20);

//Right pods
pod_right_root = undefined
pod_right_middle_root = undefined
pod_right_middle_tip = undefined
pod_right_tip = undefined

//Left pods
pod_left_root = undefined
pod_left_middle_root = undefined
pod_left_middle_tip = undefined
pod_left_tip = undefined

pods = [];

point_value = 0;