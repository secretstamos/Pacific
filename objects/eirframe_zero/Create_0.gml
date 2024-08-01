event_inherited();

//Eirframes parts
eirframe_wings = instance_create_layer(x, y, layer, part_eirframe_wings_standard_inboard);
eirframe_engine = instance_create_layer(x, y, layer, part_eirframe_engine_standard_sakae);
eirframe_rudder = instance_create_layer(x, y, layer, part_eirframe_rudder_agile_fin);
eirframe_hull = instance_create_layer(x, y, layer, part_eirframe_hull_zero);
eirframe_trail = instance_create_layer(x, y, layer, part_eirframe_trail_trail);
eirframe_eirnaut = instance_create_layer(x, y, layer, part_human_pilot_confed);
