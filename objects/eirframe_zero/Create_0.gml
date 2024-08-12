event_inherited();

//Eirframes parts
eirframe_wings = instance_create_layer(x, y, layer, part_eirframe_wings_standard_inboard);
eirframe_engine = instance_create_layer(x, y, layer, part_eirframe_engine_standard_sakae);
eirframe_rudder = instance_create_layer(x, y, layer, part_eirframe_rudder_agile_fin);
eirframe_hull = instance_create_layer(x, y, layer, part_eirframe_hull_zero);
eirframe_trail = instance_create_layer(x, y, layer, part_eirframe_trail_trail);
eirframe_eirnaut = instance_create_layer(x, y, layer, part_human_pilot_confed);

eirframe_parts = [
self,
eirframe_eirnaut,
eirframe_hull,
eirframe_engine,
eirframe_rudder,
eirframe_wings,
eirframe_trail,
];

eirframe_wings.pod_left_root.itemHeld = instance_create_layer(x, y, layer, part_eirframe_weapon_machinegun_light_double);
eirframe_wings.pod_right_root.itemHeld = instance_create_layer(x, y, layer, part_eirframe_weapon_machinegun_light_double);

eirframe_primary_weapons = [
	eirframe_wings.pod_left_root.itemHeld,
	eirframe_wings.pod_right_root.itemHeld,
];