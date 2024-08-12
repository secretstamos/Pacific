event_inherited();

//Eirframes parts
eirframe_wings = instance_create_layer(x, y, layer, part_eirframe_wings_heavy_laminar);
eirframe_engine = instance_create_layer(x, y, layer, part_eirframe_engine_standard_alisturm);
eirframe_rudder = instance_create_layer(x, y, layer, part_eirframe_rudder_balanced_reversed);
eirframe_hull = instance_create_layer(x, y, layer, part_eirframe_hull_mustang);
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

eirframe_wings.pod_left_root.itemHeld = instance_create_layer(x, y, layer, part_eirframe_weapon_machinegun_light);
eirframe_wings.pod_right_root.itemHeld = instance_create_layer(x, y, layer, part_eirframe_weapon_machinegun_light);

eirframe_primary_weapons = [
	eirframe_wings.pod_left_root.itemHeld,
	eirframe_wings.pod_right_root.itemHeld,
];