event_inherited();
stat_armor = "B";
stat_weight = "B";
stat_pod_amount = "B";
stat_pod_quality = "B";
point_value = 0;

//Right pods
pod_right_root = instance_create_layer(x, y, layer, pod_type_a);
pod_right_middle_root = instance_create_layer(x, y, layer, pod_type_a);
pod_right_middle_tip = instance_create_layer(x, y, layer, pod_type_d);

//Left pods
pod_left_root = instance_create_layer(x, y, layer, pod_type_a);
pod_left_middle_root = instance_create_layer(x, y, layer, pod_type_a);
pod_left_middle_tip = instance_create_layer(x, y, layer, pod_type_d);

pods = [
	pod_right_root,
	pod_right_middle_root,
	pod_right_middle_tip,
	pod_left_root,
	pod_left_middle_root,
	pod_left_middle_tip,
];

stat_pod_quality = string(part_eirframe_wings_get_pod_quality(pods));